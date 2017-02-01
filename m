X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4794" "Wednesday" "1" "February" "2017" "10:09:19" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1903146.QE5K2f7Vg6@blackgate>" "76" "[oss-security] mp3splt: NULL pointer dereference in free_options (options_manager.c)" nil nil nil "2" "2017020109:09:19" "[oss-security] mp3splt: NULL pointer dereference in free_options (options_manager.c)" (number mark "U       ago@gentoo.o Feb  1   76/4794  " thread-indent "\"[oss-security] mp3splt: NULL pointer dereference in free_options (options_manager.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29725 invoked by uid 550); 1 Feb 2017 09:09:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28636 invoked from network); 1 Feb 2017 09:09:36 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 10:09:19 +0100
Message-ID: <1903146.QE5K2f7Vg6@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mp3splt: NULL pointer dereference in free_options (options_manager.c)

Description:
mp3splt is a command line utility to split mp3 and ogg files without decoding.

A fuzz on it discovered a NULL pointer access.

The complete ASan output:

# mp3splt -P -f -t 0.1 -a $FILE
==3026==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000041ea65 bp 0x331bdacc2c238b55 sp 0x7fff34d2c400 T0)                                                                                                                                         
    #0 0x41ea64 in atomic_compare_exchange_strong /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81                                                          
    #1 0x41ea64 in 
__asan::Allocator::AtomicallySetQuarantineFlagIfAllocated(__asan::AsanChunk*, 
void*, __sanitizer::BufferedStackTrace*) /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_allocator.cc:468                         
    #2 0x41ea64 in __asan::Allocator::Deallocate(void*, unsigned long, 
__sanitizer::BufferedStackTrace*, __asan::AllocType) /tmp/portage/sys-
devel/llvm-3.9.0-r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/asan_allocator.cc:522                                       
    #3 0x41ea64 in __asan::asan_free(void*, __sanitizer::BufferedStackTrace*, 
__asan::AllocType) /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_allocator.cc:725                                                                  
    #4 0x4d374c in free /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:50                                                                                                                                         
    #5 0x50db0e in free_options /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/options_manager.c:61:9                                                                                                                                                           
    #6 0x515623 in free_main_struct /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/data_manager.c:74:7                                                                                                                                                          
    #7 0x50ffa5 in process_confirmation_error /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/print_utils.c:266:7                                                                                                                                                
    #8 0x51df29 in main /tmp/portage/media-
sound/mp3splt-2.6.2/work/mp3splt-2.6.2/src/mp3splt.c:873:9                                                                                                                                                                          
    #9 0x7f8a687f861f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                        
    #10 0x41ad08 in _init (/usr/bin/mp3splt+0x41ad08)                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                               
AddressSanitizer can not provide additional info.                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-devel/llvm-3.9.0-
r1/work/llvm-3.9.0.src/projects/compiler-
rt/lib/asan/../sanitizer_common/sanitizer_atomic_clang.h:81 in 
atomic_compare_exchange_strong                                          
==3026==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00127-mp3splt-nullptr-free_options

Timeline:
2017-01-01: privately poked upstream about
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/mp3splt-null-pointer-dereference-in-free_options-options_manager-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
