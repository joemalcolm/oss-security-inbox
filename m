X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3886" "Tuesday" "18" "October" "2016" "19:06:13" "-0400" "Rich Felker" "dalias@libc.org" "<20161018230613.GH19318@brightrain.aerifal.cx>" "104" "[oss-security] CVE Request - TRE & musl libc regex integer overflows in buffer size computations" nil nil nil "10" "2016101823:06:13" "[oss-security] CVE Request - TRE & musl libc regex integer overflows in buffer size computations" (number mark "U       dalias@libc. Oct 18  104/3886  " thread-indent "\"[oss-security] CVE Request - TRE & musl libc regex integer overflows in buffer size computations\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30427 invoked by uid 550); 19 Oct 2016 00:35:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32330 invoked from network); 18 Oct 2016 23:06:26 -0000
Date: Tue, 18 Oct 2016 19:06:13 -0400
From: Rich Felker <dalias@libc.org>
To: oss-security@lists.openwall.com
Cc: musl@lists.openwall.com, Ville Laurikari <ville@laurikari.net>
Message-ID: <20161018230613.GH19318@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: Rich Felker <dalias@aerifal.cx>
Subject: [oss-security] CVE Request - TRE & musl libc regex integer overflows in buffer size
 computations

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Due to incorrect use of integer types and missing overflow checks in
the tre_tnfa_run_parallel function's buffer overflow logic, the TRE
regex implementation (both original version and the one used in musl
libc) are subject to integer overflows in buffer size computation.

If the caller passes to regcomp a regular expression whose internal
representation requires a large number of states and/or a large number
of tags, too little space will be allocated during regexec, resulting
in out-of-bound memory writes.

An attacker who controls the regular expression and/or the string
being searched can potentially exploit these writes to achieve
controlled heap corruption.

All versions of the TRE library and musl libc are affected. The
attached patch fixes the issue in musl and should be easy to adapt for
use with original TRE. musl git master is fixed as of commit
c3edc06d1e1360f3570db9155d6b318ae0d0f0f7.

Rich

--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="0001-fix-missing-integer-overflow-checks-in-regexec-buffe.patch"

>From c3edc06d1e1360f3570db9155d6b318ae0d0f0f7 Mon Sep 17 00:00:00 2001
From: Rich Felker <dalias@aerifal.cx>
Date: Thu, 6 Oct 2016 18:34:58 -0400
Subject: [PATCH] fix missing integer overflow checks in regexec buffer size
 computations

most of the possible overflows were already ruled out in practice by
regcomp having already succeeded performing larger allocations.
however at least the num_states*num_tags multiplication can clearly
overflow in practice. for safety, check them all, and use the proper
type, size_t, rather than int.

also improve comments, use calloc in place of malloc+memset, and
remove bogus casts.
---
 src/regex/regexec.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/src/regex/regexec.c b/src/regex/regexec.c
index 16c5d0a..dd52319 100644
--- a/src/regex/regexec.c
+++ b/src/regex/regexec.c
@@ -34,6 +34,7 @@
 #include <wchar.h>
 #include <wctype.h>
 #include <limits.h>
+#include <stdint.h>
 
 #include <regex.h>
 
@@ -206,11 +207,24 @@ tre_tnfa_run_parallel(const tre_tnfa_t *tnfa, const void *string,
 
   /* Allocate memory for temporary data required for matching.	This needs to
      be done for every matching operation to be thread safe.  This allocates
-     everything in a single large block from the stack frame using alloca()
-     or with malloc() if alloca is unavailable. */
+     everything in a single large block with calloc(). */
   {
-    int tbytes, rbytes, pbytes, xbytes, total_bytes;
+    size_t tbytes, rbytes, pbytes, xbytes, total_bytes;
     char *tmp_buf;
+
+    /* Ensure that tbytes and xbytes*num_states cannot overflow, and that
+     * they don't contribute more than 1/8 of SIZE_MAX to total_bytes. */
+    if (num_tags > SIZE_MAX/(8 * sizeof(int) * tnfa->num_states))
+      goto error_exit;
+
+    /* Likewise check rbytes. */
+    if (tnfa->num_states+1 > SIZE_MAX/(8 * sizeof(*reach_next)))
+      goto error_exit;
+
+    /* Likewise check pbytes. */
+    if (tnfa->num_states > SIZE_MAX/(8 * sizeof(*reach_pos)))
+      goto error_exit;
+
     /* Compute the length of the block we need. */
     tbytes = sizeof(*tmp_tags) * num_tags;
     rbytes = sizeof(*reach_next) * (tnfa->num_states + 1);
@@ -221,10 +235,9 @@ tre_tnfa_run_parallel(const tre_tnfa_t *tnfa, const void *string,
       + (rbytes + xbytes * tnfa->num_states) * 2 + tbytes + pbytes;
 
     /* Allocate the memory. */
-    buf = xmalloc((unsigned)total_bytes);
+    buf = calloc(total_bytes, 1);
     if (buf == NULL)
       return REG_ESPACE;
-    memset(buf, 0, (size_t)total_bytes);
 
     /* Get the various pointers within tmp_buf (properly aligned). */
     tmp_tags = (void *)buf;
-- 
2.10.0


--fdj2RfSjLxBAspz7--
