X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1733" "Sunday" "29" "January" "2017" "17:52:34" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<70750590.5axfNR7Pl0@arcadia>" "60" "[oss-security] mp3splt: NULL pointer dereference in main (mp3splt.c)" nil nil nil "1" "2017012916:52:34" "[oss-security] mp3splt: NULL pointer dereference in main (mp3splt.c)" (number mark "U       ago@gentoo.o Jan 29   60/1733  " thread-indent "\"[oss-security] mp3splt: NULL pointer dereference in main (mp3splt.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32486 invoked by uid 550); 29 Jan 2017 16:52:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32289 invoked from network); 29 Jan 2017 16:52:50 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 29 Jan 2017 17:52:34 +0100
Message-ID: <70750590.5axfNR7Pl0@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mp3splt: NULL pointer dereference in main (mp3splt.c)

Description:
mp3splt is a command line utility to split mp3 and ogg files without decoding.

A fuzz on it discovered a NULL pointer access.

The complete ASan output:

# mp3splt -P -f -t 0.1 -a $FILE
==3081==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000046dbd9 bp 0x7ffc4cdabdb0 sp 0x7ffc4cdab520 T0)
==3081==The signal is caused by a READ memory access.
==3081==Hint: address points to the zero page.
    #0 0x46dbd8 in __interceptor_strncmp /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:302
    #1 0x51d727 in main /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/mp3splt.c:906:11
    #2 0x7f8512cf061f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #3 0x41ad08 in _init (/usr/bin/mp3splt+0x41ad08)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_common_interceptors.inc:302 in 
__interceptor_strncmp
==3081==ABORTING

Affected version:
0.9.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00128-mp3splt-nullptr-main

Timeline:
2017-01-01: private report to upstream via mail
2017-01-29: public upstream report on sourceforge
2017-01-29: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/29/mp3splt-null-pointer-dereference-in-mp3splt-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
