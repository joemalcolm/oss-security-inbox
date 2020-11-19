X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2298" "Thursday" "19" "November" "2020" "18:47:22" "-0500" "Rich Felker" "dalias@libc.org" "<20201119234717.GA18029@brightrain.aerifal.cx>" "89" "[oss-security] CVE-2020-28928: musl libc: wcsnrtombs destination buffer overflow" nil nil nil "11" "2020111923:47:22" "[oss-security] CVE-2020-28928: musl libc: wcsnrtombs destination buffer overflow" (number mark "U       dalias@libc. Nov 19   89/2298  " thread-indent "\"[oss-security] CVE-2020-28928: musl libc: wcsnrtombs destination buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-28928: musl libc: wcsnrtombs destination buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5361 invoked by uid 550); 20 Nov 2020 11:03:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3623 invoked from network); 19 Nov 2020 23:47:35 -0000
Date: Thu, 19 Nov 2020 18:47:22 -0500
From: Rich Felker <dalias@libc.org>
To: musl@lists.openwall.com, oss-security@lists.openwall.com
Message-ID: <20201119234717.GA18029@brightrain.aerifal.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE-2020-28928: musl libc: wcsnrtombs destination buffer overflow

--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The wcsnrtombs function in all musl libc versions up through 1.2.1 has
been found to have multiple bugs in handling of destination buffer
size when limiting the input character count, which can lead to
infinite loop with no forward progress (no overflow) or writing past
the end of the destination buffera.

This function is not used internally in musl and is not widely used,
but does appear in some applications. The non-input-limiting form
wcsrtombs is not affected.

All users of musl 1.2.1 and prior versions should apply the attached
patch, which replaces the overly complex and erroneous implementation.
The upcoming 1.2.2 release will adopt this new implementation.

--6TrnltStXW4iwmi0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="wcsnrtombs-cve-2020-28928.diff"

diff --git a/src/multibyte/wcsnrtombs.c b/src/multibyte/wcsnrtombs.c
index 676932b5..95e25e70 100644
--- a/src/multibyte/wcsnrtombs.c
+++ b/src/multibyte/wcsnrtombs.c
@@ -1,41 +1,33 @@
 #include <wchar.h>
+#include <limits.h>
+#include <string.h>
 
 size_t wcsnrtombs(char *restrict dst, const wchar_t **restrict wcs, size_t wn, size_t n, mbstate_t *restrict st)
 {
-	size_t l, cnt=0, n2;
-	char *s, buf[256];
 	const wchar_t *ws = *wcs;
-	const wchar_t *tmp_ws;
-
-	if (!dst) s = buf, n = sizeof buf;
-	else s = dst;
-
-	while ( ws && n && ( (n2=wn)>=n || n2>32 ) ) {
-		if (n2>=n) n2=n;
-		tmp_ws = ws;
-		l = wcsrtombs(s, &ws, n2, 0);
-		if (!(l+1)) {
-			cnt = l;
-			n = 0;
+	size_t cnt = 0;
+	if (!dst) n=0;
+	while (ws && wn) {
+		char tmp[MB_LEN_MAX];
+		size_t l = wcrtomb(n<MB_LEN_MAX ? tmp : dst, *ws, 0);
+		if (l==-1) {
+			cnt = -1;
 			break;
 		}
-		if (s != buf) {
-			s += l;
+		if (dst) {
+			if (n<MB_LEN_MAX) {
+				if (l>n) break;
+				memcpy(dst, tmp, l);
+			}
+			dst += l;
 			n -= l;
 		}
-		wn = ws ? wn - (ws - tmp_ws) : 0;
-		cnt += l;
-	}
-	if (ws) while (n && wn) {
-		l = wcrtomb(s, *ws, 0);
-		if ((l+1)<=1) {
-			if (!l) ws = 0;
-			else cnt = l;
+		if (!*ws) {
+			ws = 0;
 			break;
 		}
-		ws++; wn--;
-		/* safe - this loop runs fewer than sizeof(buf) times */
-		s+=l; n-=l;
+		ws++;
+		wn--;
 		cnt += l;
 	}
 	if (dst) *wcs = ws;

--6TrnltStXW4iwmi0--
