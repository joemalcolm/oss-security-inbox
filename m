X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2039" "Monday" "20" "March" "2017" "10:22:38" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<890963.317451195-sendEmail@localhost>" "59" "[oss-security] libpcre: invalid memory read in phar (pcretest.c)" nil nil nil "3" "2017032010:22:38" "[oss-security] libpcre: invalid memory read in phar (pcretest.c)" (number mark "U       ago@gentoo.o Mar 20   59/2039  " thread-indent "\"[oss-security] libpcre: invalid memory read in phar (pcretest.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16030 invoked by uid 550); 20 Mar 2017 10:22:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15999 invoked from network); 20 Mar 2017 10:22:57 -0000
Message-ID: <890963.317451195-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 20 Mar 2017 10:22:38 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-760931.869343953"
Subject: [oss-security] libpcre: invalid memory read in phar (pcretest.c)

------MIME delimiter for sendEmail-760931.869343953
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libpcre is a perl-compatible regular expression library.

A fuzz on libpcre1 through the pcretest utility revealed an invalid read in the utility itself. For the nature of the crash, it is not security relevant because the library is not affected but if you 
have a web application that calls directly the pcretest utility to parse untrusted data, then you are affected.
Also, it is important share the details because some distros/packagers may want to take the patch in their repository.

The complete ASan output:

# pcretest -16 -d $FILE
==28444==ERROR: AddressSanitizer: SEGV on unknown address 0x7f3c2de3e2dd (pc 0x0000005409dd bp 0x7fff0423db40 sp 0x7fff0423dac0 T0)
==28444==The signal is caused by a READ memory access.
    #0 0x5409dc in pchar /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:1986:5
    #1 0x54006f in pchars16 /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:2115:12
    #2 0x52e3e1 in main /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:5092:15
    #3 0x7f3c2dc3878f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x41b438 in _init (/usr/bin/pcretest+0x41b438)

Affected version:
8.40

Fixed version:
8.41 (not released atm)

Commit fix:
https://vcs.pcre.org/pcre/code/trunk/pcretest.c?r1=1665&r2=1685&sortby=date

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00194-pcre-invalidread-phar

Timeline:
2017-02-22: bug discovered and reported to upstream
2017-02-22: upstream released a patch
2017-03-14: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/14/libpcre-invalid-memory-read-in-phar-pcretest-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-760931.869343953--

