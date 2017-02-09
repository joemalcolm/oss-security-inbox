X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["12779" "Thursday" "9" "February" "2017" "14:41:45" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1850762.GB9BvVVKKV@blackgate>" "109" "[oss-security] zziplib: heap-based buffer overflow in __zzip_get32 (fetch.c)" nil nil nil "2" "2017020913:41:45" "[oss-security] zziplib: heap-based buffer overflow in __zzip_get32 (fetch.c)" (number mark "U       ago@gentoo.o Feb  9  109/12779 " thread-indent "\"[oss-security] zziplib: heap-based buffer overflow in __zzip_get32 (fetch.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24039 invoked by uid 550); 9 Feb 2017 13:42:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24013 invoked from network); 9 Feb 2017 13:42:05 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Thu, 09 Feb 2017 14:41:45 +0100
Message-ID: <1850762.GB9BvVVKKV@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] zziplib: heap-based buffer overflow in __zzip_get32 (fetch.c)

Description:
zziplib is an intentionally lightweight library that offers the ability to 
easily extract data from files archived in a single zip file.

A fuzz on it discovered an heap overflow.

The complete ASan output:

# unzzipcat-mem $FILE
==7574==ERROR: AddressSanitizer: heap-buffer-overflow on address 
0x60300000ef9f at pc 0x7f98d2d1d3bf bp 0x7fff57e59e20 sp 0x7fff57e59e18                                                                                                                                       
READ of size 1 at 0x60300000ef9f thread T0                                                                                                                                                                                                                                     
    #0 0x7f98d2d1d3be in __zzip_get32 /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/zzip/fetch.c:32:24                                                                                                                                                         
    #1 0x7f98d2d1a9d9 in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:224:34                                                                                                                                                
    #2 0x7f98d2d1a9d9 in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137                                                                                                                                                   
    #3 0x7f98d2d198b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5                                                                                                                                                  
    #4 0x50982d in main /tmp/portage/dev-libs/zziplib-0.13.62-
r1/work/zziplib-0.13.62/bins/unzzipcat-mem.c:82:12                                                                                                                                                               
    #5 0x7f98d1e5961f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                        
    #6 0x419748 in _init (/usr/bin/unzzipcat-mem+0x419748)                                                                                                                                                                                                                     
                                                                                                                                                                                                                                                                               
0x60300000ef9f is located 1 bytes to the right of 30-byte region 
[0x60300000ef80,0x60300000ef9e)                                                                                                                                                                               
allocated by thread T0 here:                                                                                                                                                                                                                                                   
    #0 0x4d2508 in malloc /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:64                                                                                                                                       
    #1 0x7f98d2d1a260 in zzip_mem_entry_new /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:208:25                                                                                                                                                
    #2 0x7f98d2d1a260 in zzip_mem_disk_load /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:137                                                                                                                                                   
    #3 0x7f98d2d198b7 in zzip_mem_disk_open /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/memdisk.c:89:5                                                                                                                                                  
    #4 0x7f98d1e5961f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                        
                                                                                                                                                                                                                                                                               
SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/dev-
libs/zziplib-0.13.62-r1/work/zziplib-0.13.62/zzip/fetch.c:32:24 in 
__zzip_get32                                                                                                                               
Shadow bytes around the buggy address:                                                                                                                                                                                                                                         
  0x0c067fff9da0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9db0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9dc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9dd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9de0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
=>0x0c067fff9df0: 00 00 00[06]fa fa 00 00 00 02 fa fa 00 00 00 fa                                                                                                                                                                                                              
  0x0c067fff9e00: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9e10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9e20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9e30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0c067fff9e40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
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
==7574==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00150-zziplib-heapoverflow-__zzip_get32

Timeline:
2017-01-17: bug discovered and poked upstream
2017-02-09: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/09/zziplib-heap-based-buffer-overflow-in-__zzip_get32-fetch-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
