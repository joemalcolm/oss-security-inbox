X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2024" "Wednesday" "7" "June" "2017" "12:53:10" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<569426.726873161-sendEmail@localhost>" "61" "[oss-security] ytnef: NULL pointer dereference in MAPIPrint (ytnef.c)" "^Date:" nil nil "6" "2017060712:53:10" "[oss-security] ytnef: NULL pointer dereference in MAPIPrint (ytnef.c)" (number mark "        ago@gentoo.o Jun  7   61/2024  " thread-indent "\"[oss-security] ytnef: NULL pointer dereference in MAPIPrint (ytnef.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15709 invoked by uid 550); 7 Jun 2017 12:53:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14313 invoked from network); 7 Jun 2017 12:53:25 -0000
Message-ID: <569426.726873161-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-550891.119129123"
Date: Wed, 7 Jun 2017 12:53:10 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] ytnef: NULL pointer dereference in MAPIPrint (ytnef.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-550891.119129123
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
ytnef is Yeraze’s TNEF Stream Reader – for winmail.dat files.

The complete ASan output of the issue:

# ytnefprint $FILE
==12467==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f59364c62b6 bp 0x7ffe1b8d4af0 sp 0x7ffe1b8d4278 T0)
==12467==The signal is caused by a READ memory access.
==12467==Hint: address points to the zero page.
    #0 0x7f59364c62b5 in strlen /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/string/../sysdeps/x86_64/strlen.S:76
    #1 0x43e99c in __interceptor_strlen.part.31 /tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.0/work/compiler-rt-4.0.0.src/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:282
    #2 0x7f593734a162 in MAPIPrint /tmp/ytnef-1.9.2/lib/ytnef.c:1437:15
    #3 0x508f50 in PrintTNEF /tmp/ytnef-1.9.2/ytnefprint/main.c:169:5
    #4 0x50882e in main /tmp/ytnef-1.9.2/ytnefprint/main.c:84:5
    #5 0x7f593646878f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x419c38 in _start (/usr/bin/ytnefprint+0x419c38)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/string/../sysdeps/x86_64/strlen.S:76 in strlen
==12467==ABORTING
Affected version:
1.9.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-9470

Reproducer:
https://github.com/asarubbo/poc/blob/master/00241-ytnef-nullptr-MAPIPrint

Timeline:
2017-03-27: bug discovered and reported to upstream
2017-05-24: blog post about the issue
2017-06-07: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/05/24/ytnef-null-pointer-dereference-in-mapiprint-ytnef-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-550891.119129123--

