X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2020" "Thursday" "9" "February" "2017" "14:44:44" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1759408.Gi8KIJCgpj@blackgate>" "62" "[oss-security] zziplib: invalid memory read in zzip_mem_entry_extra_block (memdisk.c)" nil nil nil "2" "2017020913:44:44" "[oss-security] zziplib: invalid memory read in zzip_mem_entry_extra_block (memdisk.c)" (number mark "U       ago@gentoo.o Feb  9   62/2020  " thread-indent "\"[oss-security] zziplib: invalid memory read in zzip_mem_entry_extra_block (memdisk.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26543 invoked by uid 550); 9 Feb 2017 13:48:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4094 invoked from network); 9 Feb 2017 13:45:01 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:44:44 +0100
Message-ID: <1759408.Gi8KIJCgpj@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: invalid memory read in zzip_mem_entry_extra_block (memdisk.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an invalid memory read.

The complete ASan output:

# unzzipcat-mem $FILE
==7950==ERROR: AddressSanitizer: SEGV on unknown address 0x603000014e32 (pc 
0x7f414b4c8693 bp 0x7fff48f3ff70 sp 0x7fff48f3fe40 T0)
==7950==The signal is caused by a READ memory access.
    #0 0x7f414b4c8692 in zzip_mem_entry_extra_block /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:248:20
    #1 0x7f414b4c8692 in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:218
    #2 0x7f414b4c8692 in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137
    #3 0x7f414b4c78b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5
    #4 0x50982d in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat-mem.c:82:12
    #5 0x7f414a60761f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x419748 in _init (/usr/bin/unzzipcat-mem+0x419748)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/memdisk.c:248:20 in zzip_mem_entry_extra_block
==7950==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00153-zziplib-invalidread-zzip_mem_entry_extra_block

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-invalid-memory-read-in-zzip_mem_entry_extra_block-memdisk-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
