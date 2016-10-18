X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5889" "Tuesday" "18" "October" "2016" "16:52:29" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<2700333.W9CT5MSJyE@blackgate>" "79" "[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)" nil nil nil "10" "2016101814:52:29" "[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)" (number mark "U       ago@gentoo.o Oct 18   79/5889  " thread-indent "\"[oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22195 invoked by uid 550); 18 Oct 2016 14:52:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22014 invoked from network); 18 Oct 2016 14:52:47 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign <cve-assign@mitre.org>
Date: Tue, 18 Oct 2016 16:52:29 +0200
Message-ID: <2700333.W9CT5MSJyE@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: NULL pointer dereference in jp2_colr_destroy (jp2_cod.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing on an updated version (1.900.5) revealed a NULL 
pointer access in jp2_colr_destroy

The complete ASan output:

# imginfo -f $FILE
cannot copy box data                                                                                                                                                                                                                                                           
ASAN:DEADLYSIGNAL                                                                                                                                                                                                                                                              
=================================================================                                                                                                                                                                                                              
==19664==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000041defd bp 0xbebebebebebebebe sp 0x7ffc50768570 T0)                                                                                                                                        
    #0 0x41defc in atomic_compare_exchange_strong /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81                                                      
    #1 0x41defc in 
__asan::Allocator::AtomicallySetQuarantineFlag(__asan::AsanChunk*, void*, 
__sanitizer::BufferedStackTrace*) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:465                                
    #2 0x41defc in __asan::Allocator::Deallocate(void*, unsigned long, 
__sanitizer::BufferedStackTrace*, __asan::AllocType) /var/tmp/portage/sys-
devel/llvm-3.8.1-r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:525                                   
    #3 0x41defc in __asan::asan_free(void*, __sanitizer::BufferedStackTrace*, 
__asan::AllocType) /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_allocator.cc:709                                                              
    #4 0x4c008c in free /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:41                                                                                                                                     
    #5 0x7f8dcb5bc940 in jp2_colr_destroy /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jp2/jp2_cod.c:443:3                                                                                                                                         
    #6 0x7f8dcb5c1f69 in jp2_box_destroy /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jp2/jp2_cod.c:211:3                                                                                                                                          
    #7 0x7f8dcb5c1f69 in jp2_box_get /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jp2/jp2_cod.c:307                                                                                                                                                
    #8 0x7f8dcb5c5dc0 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jp2/jp2_dec.c:156:16                                                                                                                                              
    #9 0x7f8dcb556f39 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/base/jas_image.c:380:16                                                                                                                                     
    #10 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/appl/imginfo.c:188:16                                                                                                                                                                  
    #11 0x7f8dca66561f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                       
    #12 0x418e68 in _init (/usr/bin/imginfo+0x418e68)                                                                                                                                                                                                                          

AddressSanitizer can not provide additional info.                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/sys-devel/llvm-3.8.1-
r2/work/llvm-3.8.1.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81 in 
atomic_compare_exchange_strong                                      
==19664==ABORTING

Affected version:
1.900.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-10-17: bug discovered
2016-10-17: bug reported to upstream
2016-10-18: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/18/jasper-null-pointer-dereference-in-jp2_colr_destroy-jp2_cod-c
