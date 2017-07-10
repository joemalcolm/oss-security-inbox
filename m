X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1888" "Monday" "10" "July" "2017" "09:11:48" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<329641.122228594-sendEmail@localhost>" "60" "[oss-security] xar: NULL pointer dereference in xar_unserialize (archive.c)" nil nil nil "7" "2017071009:11:48" "[oss-security] xar: NULL pointer dereference in xar_unserialize (archive.c)" (number mark "U       ago@gentoo.o Jul 10   60/1888  " thread-indent "\"[oss-security] xar: NULL pointer dereference in xar_unserialize (archive.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12108 invoked by uid 550); 10 Jul 2017 09:12:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12058 invoked from network); 10 Jul 2017 09:12:13 -0000
Message-ID: <329641.122228594-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Jul 2017 09:11:48 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-34071.3342457128"
Subject: [oss-security] xar: NULL pointer dereference in xar_unserialize (archive.c)

------MIME delimiter for sendEmail-34071.3342457128
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
xar is an easily extensible archive format.

The complete ASan output of the issue:

# xar -t -f $FILE
==7615==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008 (pc 0x7f71a859ebd6 bp 0x7fffd8ace150 sp 0x7fffd8acde80 T0)
==7615==The signal is caused by a WRITE memory access.
==7615==Hint: address points to the zero page.
    #0 0x7f71a859ebd5 in xar_unserialize /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/lib/archive.c:1767:27
    #1 0x7f71a859ebd5 in xar_open /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/lib/archive.c:340
    #2 0x5139ee in list /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/src/xar.c:1492:6
    #3 0x5139ee in main /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/src/xar.c:2666
    #4 0x7f71a76a2680 in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x41af38 in _init (/usr/bin/xar+0x41af38)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/app-arch/xar-1.6.1-r1/work/xar-1.6.1/lib/archive.c:1767:27 in xar_unserialize
==7615==ABORTING
Affected version:
1.6.1

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-11124

Reproducer:
https://github.com/asarubbo/poc/blob/master/00288-xar-nullptr-xar_unserialize

Timeline:
2017-06-17: bug discovered and reported to upstream
2017-06-28: blog post about the issue
2017-07-10: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/06/28/xar-null-pointer-dereference-in-xar_unserialize-archive-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-34071.3342457128--

