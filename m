X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1739" "Thursday" "9" "February" "2017" "14:45:49" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<4365957.OJeqqsgQBT@blackgate>" "59" "[oss-security] zziplib: NULL pointer dereference in main (unzzipcat-mem.c)" nil nil nil "2" "2017020913:45:49" "[oss-security] zziplib: NULL pointer dereference in main (unzzipcat-mem.c)" (number mark "U       ago@gentoo.o Feb  9   59/1739  " thread-indent "\"[oss-security] zziplib: NULL pointer dereference in main (unzzipcat-mem.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26342 invoked by uid 550); 9 Feb 2017 13:48:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11818 invoked from network); 9 Feb 2017 13:46:06 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:45:49 +0100
Message-ID: <4365957.OJeqqsgQBT@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: NULL pointer dereference in main (unzzipcat-mem.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an a NULL pointer access.

The complete ASan output:

# unzzipcat-mem $FILE
==7919==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008 (pc 
0x7f9a138fb59a bp 0x7ffe1c0b0050 sp 0x7ffe1c0aff78 T0)
==7919==The signal is caused by a READ memory access.
==7919==Hint: address points to the zero page.
    #0 0x7f9a138fb599 in strlen /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76
    #1 0x7f9a138e47ab in _IO_puts /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/libio/ioputs.c:36
    #2 0x509c8b in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat-mem.c:94:6
    #3 0x7f9a1389a61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #4 0x419748 in _init (/usr/bin/unzzipcat-mem+0x419748)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76 in strlen
==7919==ABORTING

Affected version:
0.13.62

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00155-zziplib-nullptr-main

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-mem-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
