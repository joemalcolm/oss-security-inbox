X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2195" "Monday" "20" "March" "2017" "10:31:24" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<620190.49757825-sendEmail@localhost>" "59" "[oss-security] libpcre: invalid memory read in _pcre32_xclass (pcre_xclass.c)" nil nil nil "3" "2017032010:31:24" "[oss-security] libpcre: invalid memory read in _pcre32_xclass (pcre_xclass.c)" (number mark "U       ago@gentoo.o Mar 20   59/2195  " thread-indent "\"[oss-security] libpcre: invalid memory read in _pcre32_xclass (pcre_xclass.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7400 invoked by uid 550); 20 Mar 2017 10:31:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7369 invoked from network); 20 Mar 2017 10:31:42 -0000
Message-ID: <620190.49757825-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 20 Mar 2017 10:31:24 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-946360.448216186"
Subject: [oss-security] libpcre: invalid memory read in _pcre32_xclass (pcre_xclass.c)

------MIME delimiter for sendEmail-946360.448216186
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libpcre is a perl-compatible regular expression library.

A fuzz on libpcre1 through the pcretest utility revealed an invalid memory read. Upstream says that this bug is fixed by one of the previous commit. However I’m providing as usual the stacktrace and the 
reproducer, so if you are not running the latest upstream release, like happen on debian/rhel based distros, you may want to check better the status of this bug.

The complete ASan output:

# pcretest -32 -d $FILE
==27914==ERROR: AddressSanitizer: SEGV on unknown address 0x7f3f580efe04 (pc 0x7f3f577b8048 bp 0x7ffcb035b390 sp 0x7ffcb035b320 T0)
==27914==The signal is caused by a READ memory access.
    #0 0x7f3f577b8047 in _pcre32_xclass /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_xclass.c:135:30
    #1 0x7f3f576137ca in match /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_exec.c:3203:16
    #2 0x7f3f575e7226 in pcre32_exec /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_exec.c:6936:8
    #3 0x527d6c in main /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:5218:9
    #4 0x7f3f565b478f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x41b438 in _init (/usr/bin/pcretest+0x41b438)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcre_xclass.c:135:30 in _pcre32_xclass
==27914==ABORTING

Affected version:
8.40

Fixed version:
8.41 (not released atm)

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

Reproducer:
https://github.com/asarubbo/poc/blob/master/00206-pcre-invalidread-_pcre32_xclass

Timeline:
2017-02-24: bug discovered and reported to upstream
2017-03-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/20/libpcre-invalid-memory-read-in-_pcre32_xclass-pcre_xclass-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-946360.448216186--

