X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4003" "Thursday" "9" "February" "2017" "14:42:25" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<23235157.DjIO37ESfJ@blackgate>" "107" "[oss-security] zziplib: heap-based buffer overflow in __zzip_get64 (fetch.c)" nil nil nil "2" "2017020913:42:25" "[oss-security] zziplib: heap-based buffer overflow in __zzip_get64 (fetch.c)" (number mark "U       ago@gentoo.o Feb  9  107/4003  " thread-indent "\"[oss-security] zziplib: heap-based buffer overflow in __zzip_get64 (fetch.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25643 invoked by uid 550); 9 Feb 2017 13:42:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24567 invoked from network); 9 Feb 2017 13:42:42 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:42:25 +0100
Message-ID: <23235157.DjIO37ESfJ@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: heap-based buffer overflow in __zzip_get64 (fetch.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an heap overflow.

The complete ASan output:

# unzzipcat-mem $FILE
READ of size 1 at 0x60400000dff3 thread T0
    #0 0x7ff28ab675dc in __zzip_get64 /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/fetch.c:59:10
    #1 0x7ff28ab64968 in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:221:30
    #2 0x7ff28ab64968 in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137
    #3 0x7ff28ab638b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5
    #4 0x50982d in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat-mem.c:82:12
    #5 0x7ff289ca361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x419748 in _init (/usr/bin/unzzipcat-mem+0x419748)

0x60400000dff3 is located 0 bytes to the right of 35-byte region 
[0x60400000dfd0,0x60400000dff3)
allocated by thread T0 here:
    #0 0x4d2508 in malloc /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:64
    #1 0x7ff28ab64187 in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:200:25
    #2 0x7ff28ab64187 in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137
    #3 0x7ff28ab638b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5
    #4 0x7ff289ca361f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/fetch.c:59:10 in 
__zzip_get64
Shadow bytes around the buggy address:
  0x0c087fff9ba0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9bb0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9bc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9bd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9be0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
=>0x0c087fff9bf0: fa fa fa fa fa fa fa fa fa fa 00 00 00 00[03]fa
  0x0c087fff9c00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9c10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9c20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9c30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0c087fff9c40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
Shadow byte legend (one shadow byte represents 8 application bytes):
  Addressable:           00
  Partially addressable: 01 02 03 04 05 06 07 
  Heap left redzone:       fa
  Heap right redzone:      fb
  Freed heap region:       fd
  Stack left redzone:      f1
  Stack mid redzone:       f2
  Stack right redzone:     f3
  Stack partial redzone:   f4
  Stack after return:      f5
  Stack use after scope:   f8
  Global redzone:          f9
  Global init order:       f6
  Poisoned by user:        f7
  Container overflow:      fc
  Array cookie:            ac
  Intra object redzone:    bb
  ASan internal:           fe
  Left alloca redzone:     ca
  Right alloca redzone:    cb
==7924==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00151-zziplib-heapoverflow-__zzip_get64

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-heap-based-buffer-overflow-in-__zzip_get64-fetch-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
