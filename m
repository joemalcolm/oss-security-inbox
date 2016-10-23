X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7941" "Sunday" "23" "October" "2016" "10:01:07" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<295468895.Z3kUJlH9qt@arcadia>" "136" "[oss-security] jasper: heap-based buffer overflow in jpc_dec_tiledecode (jpc_dec.c)" nil nil nil "10" "2016102308:01:07" "[oss-security] jasper: heap-based buffer overflow in jpc_dec_tiledecode (jpc_dec.c)" (number mark "U       ago@gentoo.o Oct 23  136/7941  " thread-indent "\"[oss-security] jasper: heap-based buffer overflow in jpc_dec_tiledecode (jpc_dec.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29792 invoked by uid 550); 23 Oct 2016 08:00:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29774 invoked from network); 23 Oct 2016 08:00:40 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Sun, 23 Oct 2016 10:01:07 +0200
Message-ID: <295468895.Z3kUJlH9qt@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: heap-based buffer overflow in jpc_dec_tiledecode (jpc_dec.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing on an updated version (1.900.10) a buffer over read 
because of an integer overflow.

The complete ASan output:

# imginfo -f $FILE
warning: not enough tile data (9 bytes)                                                                                                                                                        
=================================================================                                                                                                                              
==15870==ERROR: AddressSanitizer: heap-buffer-overflow on address 
0x7f0c6a964770 at pc 0x7f0c729e93a4 bp 0x7ffd08758cf0 sp 0x7ffd08758ce8                                                      
READ of size 8 at 0x7f0c6a964770 thread T0                                                                                                                                                     
    #0 0x7f0c729e93a3 in jpc_dec_tiledecode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:1126:43                                                   
    #1 0x7f0c729d9567 in jpc_dec_process_eoc /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:1170:8                                                   
    #2 0x7f0c729e20c4 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:390:10                                                        
    #3 0x7f0c729e20c4 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:254                                                               
    #4 0x7f0c729afc41 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_dec.c:215:21                                                            
    #5 0x7f0c7293fa29 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_image.c:392:16                                                   
    #6 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/appl/imginfo.c:188:16                                                                                 
    #7 0x7f0c71a4c61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                        
    #8 0x418e68 in _init (/usr/bin/imginfo+0x418e68)                                                                                                                                           

0x7f0c6a964770 is located 0 bytes to the right of 64749424-byte region 
[0x7f0c66ba4800,0x7f0c6a964770)                                                                                         
allocated by thread T0 here:                                                                                                                                                                   
    #0 0x4c03b8 in malloc /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:52                                                   
    #1 0x7f0c7297efbe in jas_malloc /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_malloc.c:105:11                                                        
    #2 0x7f0c7297efbe in jas_alloc2 /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_malloc.c:136                                                           
    #3 0x7f0c7297fb44 in jas_matrix_create /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_seq.c:129:25                                                    
    #4 0x7f0c7297f71b in jas_seq2d_create /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_seq.c:90:17                                                      
    #5 0x7f0c729d4280 in jpc_dec_tileinit /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:702:23                                                      
    #6 0x7f0c729d4280 in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:559                                                      
    #7 0x7f0c729e20c4 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:390:10                                                        
    #8 0x7f0c729e20c4 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:254                                                               
    #9 0x7f0c729afc41 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jp2/jp2_dec.c:215:21                                                            
    #10 0x7f0c7293fa29 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/base/jas_image.c:392:16                                                  
    #11 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/appl/imginfo.c:188:16
    #12 0x7f0c71a4c61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/media-
libs/jasper-1.900.10/work/jasper-1.900.10/src/libjasper/jpc/jpc_dec.c:1126:43 
in jpc_dec_tiledecode
Shadow bytes around the buggy address:
  0x0fe20d524890: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe20d5248a0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe20d5248b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe20d5248c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe20d5248d0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0fe20d5248e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00[fa]fa
  0x0fe20d5248f0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fe20d524900: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fe20d524910: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fe20d524920: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fe20d524930: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==15870==ABORTING

Affected version:
1.900.10

Fixed version:
1.900.12

Commit fix:
https://github.com/mdadams/jasper/commit/988f8365f7d8ad8073b6786e433d34c553ecf568

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00001-jasper-heapoverflow-jpc_dec_tiledecode

Timeline:
2016-10-22: bug discovered
2016-10-22: bug reported to upstream
2016-10-22: upstream released the patch
2016-10-23: upstream released 1.900.12
2016-10-23: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/23/jasper-heap-based-buffer-overflow-in-jpc_dec_tiledecode-jpc_dec-c/


-- 
Agostino Sarubbo
Gentoo Linux Developer
