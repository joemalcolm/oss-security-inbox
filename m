X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1727" "Thursday" "9" "February" "2017" "14:49:10" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2211995.q60Yp6Jerj@blackgate>" "59" "[oss-security] zziplib: NULL pointer dereference in main (unzzipcat.c)" nil nil nil "2" "2017020913:49:10" "[oss-security] zziplib: NULL pointer dereference in main (unzzipcat.c)" (number mark "U       ago@gentoo.o Feb  9   59/1727  " thread-indent "\"[oss-security] zziplib: NULL pointer dereference in main (unzzipcat.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7329 invoked by uid 550); 9 Feb 2017 13:49:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5239 invoked from network); 9 Feb 2017 13:49:27 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:49:10 +0100
Message-ID: <2211995.q60Yp6Jerj@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: NULL pointer dereference in main (unzzipcat.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an a NULL pointer access.

The complete ASan output:

# unzzipcat $FILE
==22686==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000008 (pc 
0x7f6de98b259a bp 0x7ffddc25a080 sp 0x7ffddc259f98 T0)
==22686==The signal is caused by a READ memory access.
==22686==Hint: address points to the zero page.
    #0 0x7f6de98b2599 in strlen /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76
    #1 0x7f6de989b7ab in _IO_puts /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/libio/ioputs.c:36
    #2 0x509d73 in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat.c:94:6
    #3 0x7f6de985161f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #4 0x419848 in _init (/usr/bin/unzzipcat+0x419848)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-libs/glibc-2.22-
r4/work/glibc-2.22/string/../sysdeps/x86_64/strlen.S:76 in strlen
==22686==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00158-zziplib-nullptr-main

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-null-pointer-dereference-in-main-unzzipcat-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
