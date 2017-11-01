X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1465" "Wednesday" "1" "November" "2017" "19:12:09" "+0100" "Solar Designer" "solar@openwall.com" "<20171101181209.GB22752@openwall.com>" "37" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110118:12:09" "[oss-security] Fw: Security risk of vim swap files" (number mark "        solar@openwa Nov  1   37/1465  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>" ("<20171031132352.2df6d2ad@pc1>" "<20171031175407.jcniviupwyab6qcl@sentinelchicken.org>" "<20171101023330.GK30551@takahe.colorado.edu>" "<20171101144927.srk7stiwoia4qt57@sentinelchicken.org>" "<CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com>" "<20171101180222.5j6wqmmqakwvu72q@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3262 invoked by uid 550); 1 Nov 2017 18:13:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32382 invoked from network); 1 Nov 2017 18:12:15 -0000
Message-ID: <20171101181209.GB22752@openwall.com>
References: <20171031132352.2df6d2ad@pc1> <20171031175407.jcniviupwyab6qcl@sentinelchicken.org> <20171101023330.GK30551@takahe.colorado.edu> <20171101144927.srk7stiwoia4qt57@sentinelchicken.org> <CAH8yC8=KKh8SPtDUUSAL_GuDHT7eYBrmHvVjzeQ5n4ocFh4m5Q@mail.gmail.com> <20171101180222.5j6wqmmqakwvu72q@jwilk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171101180222.5j6wqmmqakwvu72q@jwilk.net>
User-Agent: Mutt/1.4.2.3i
Date: Wed, 1 Nov 2017 19:12:09 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

On Wed, Nov 01, 2017 at 07:02:22PM +0100, Jakub Wilk wrote:
> Unfortunately, glibc's implementation of tmpfile(3), which is the most 
> fool-proof interface for dealing with temporary files that the C library 
> offers, doesn't honour TMPDIR. :(

We've been carrying a patch for this for ages:

* Sun Dec 07 2003 Solar Designer <solar-at-owl.openwall.com> 2.1.3-owl37
- Allow tmpfile(3) to use $TMPDIR, thanks to the report and patch by
(GalaxyMaster).  Certain other implementations are known to do the same.

diff -uNrp glibc-2.3.2.orig/libio/oldtmpfile.c glibc-2.3.2/libio/oldtmpfile.c
--- glibc-2.3.2.orig/libio/oldtmpfile.c	2002-04-08 07:02:09 +0000
+++ glibc-2.3.2/libio/oldtmpfile.c	2004-03-08 08:07:57 +0000
@@ -35,7 +35,7 @@ __old_tmpfile (void)
   int fd;
   FILE *f;
 
-  if (__path_search (buf, FILENAME_MAX, NULL, "tmpf", 0))
+  if (__path_search (buf, FILENAME_MAX, NULL, "tmpf", 1))
     return NULL;
   fd = __gen_tempname (buf, __GT_FILE);
   if (fd < 0)
diff -uNrp glibc-2.3.2.orig/sysdeps/generic/tmpfile.c glibc-2.3.2/sysdeps/generic/tmpfile.c
--- glibc-2.3.2.orig/sysdeps/generic/tmpfile.c	2002-06-12 20:57:46 +0000
+++ glibc-2.3.2/sysdeps/generic/tmpfile.c	2004-03-08 08:21:53 +0000
@@ -43,7 +43,7 @@ tmpfile (void)
   int fd;
   FILE *f;
 
-  if (__path_search (buf, FILENAME_MAX, NULL, "tmpf", 0))
+  if (__path_search (buf, FILENAME_MAX, NULL, "tmpf", 1))
     return NULL;
   fd = __gen_tempname (buf, GEN_THIS);
   if (fd < 0)

Alexander
