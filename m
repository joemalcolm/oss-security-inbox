X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1910" "Monday" "20" "March" "2017" "10:25:22" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<363108.313034417-sendEmail@localhost>" "58" "[oss-security] libpcre: NULL pointer dereference in main (pcretest.c)" nil nil nil "3" "2017032010:25:22" "[oss-security] libpcre: NULL pointer dereference in main (pcretest.c)" (number mark "U       ago@gentoo.o Mar 20   58/1910  " thread-indent "\"[oss-security] libpcre: NULL pointer dereference in main (pcretest.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28116 invoked by uid 550); 20 Mar 2017 10:25:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28084 invoked from network); 20 Mar 2017 10:25:40 -0000
Message-ID: <363108.313034417-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 20 Mar 2017 10:25:22 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-584141.214451851"
Subject: [oss-security] libpcre: NULL pointer dereference in main (pcretest.c)

------MIME delimiter for sendEmail-584141.214451851
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libpcre is a perl-compatible regular expression library.

A fuzz on libpcre1 through the pcretest utility revealed a null pointer dereference in the utility itself. For the nature of the crash, it is not security relevant because the library is not affected 
but if you have a web application that calls directly the pcretest utility to parse untrusted data, then you are affected.
Also, it is important share the details because some distros/packagers may want to take the patch in their repository.

The complete ASan output:

# pcretest -16 -d $FILE
==26399==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x00000052db1c bp 0x7ffc7de68070 sp 0x7ffc7de67ba0 T0)
==26399==The signal is caused by a READ memory access.
==26399==Hint: address points to the zero page.
    #0 0x52db1b in main /tmp/portage/dev-libs/libpcre-8.40/work/pcre-8.40/pcretest.c:5083:25
    #1 0x7f70603bc78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #2 0x41b438 in _init (/usr/bin/pcretest+0x41b438) 

Affected version:
8.40

Fixed version:
8.41 (not released atm)

Commit fix:
https://vcs.pcre.org/pcre/code/trunk/pcretest.c?r1=1685&r2=1686&sortby=date

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00195-pcre-nullptr-main

Timeline:
2017-02-22: bug discovered and reported to upstream
2017-02-23: upstream released a patch
2017-03-14: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/14/libpcre-null-pointer-dereference-in-main-pcretest-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-584141.214451851--

