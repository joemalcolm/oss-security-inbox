X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11703" "Sunday" "26" "February" "2017" "11:55:48" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<773106.230746151-sendEmail@localhost>" "103" "[oss-security] audiofile: heap-based buffer overflow in Expand3To4Module::run (SimpleModule.h)" "^Date:" nil nil "2" "2017022611:55:48" "[oss-security] audiofile: heap-based buffer overflow in Expand3To4Module::run (SimpleModule.h)" (number mark "U       ago@gentoo.o Feb 26  103/11703 " thread-indent "\"[oss-security] audiofile: heap-based buffer overflow in Expand3To4Module::run (SimpleModule.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11754 invoked by uid 550); 26 Feb 2017 11:56:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11641 invoked from network); 26 Feb 2017 11:56:07 -0000
Message-ID: <773106.230746151-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-676439.371964992"
Date: Sun, 26 Feb 2017 11:55:48 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] audiofile: heap-based buffer overflow in Expand3To4Module::run (SimpleModule.h)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-676439.371964992
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
audiofile is a C-based library for reading and writing audio files in many common formats.

A fuzz on it discovered an heap overflow.

The complete ASan output:

# sfconvert @@ out.mp3 format aiff
==1731==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x7fd325141800 at pc 0x7fd324dab3e7 bp 0x7fff5fd78e20 sp 0x7fff5fd78e18                                                                                                                                       
WRITE of size 4 at 0x7fd325141800 thread T0                                                                                                                                                                                                                                    
    #0 0x7fd324dab3e6 in void Expand3To4Module::run(unsigned char const*, int*, int) 
/tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/SimpleModule.h:268:14                                                                           
    #1 0x7fd324dab3e6 in Expand3To4Module::run(Chunk&, Chunk&) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/SimpleModule.h:241                                                                                                         
    #2 0x7fd324d8105a in afReadFrames /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/data.cpp:222:14                                                                                                                                             
    #3 0x50bbeb in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:340:29                                                                                                                                                 
    #4 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17                                                                                                                                                          
    #5 0x7fd323e5678f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                                                                                     
    #6 0x419f48 in _init (/usr/bin/sfconvert+0x419f48)                                                                                                                                                                                                                         
                                                                                                                                                                                                                                                                               
0x7fd325141800 is located 0 bytes to the right of 524288-byte region [0x7fd3250c1800,0x7fd325141800)                                                                                                                                                                           
allocated by thread T0 here:                                                                                                                                                                                                                                                   
    #0 0x4d2d08 in malloc /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:64                                                                                                                                       
    #1 0x50bb48 in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:327:17                                                                                                                                                 
    #2 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17                                                                                                                                                          
    #3 0x7fd323e5678f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                                                                                     
                                                                                                                                                                                                                                                                               
SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/SimpleModule.h:268:14 in void 
Expand3To4Module::run(unsigned char const*, int*, int)                                                 
Shadow bytes around the buggy address:                                                                                                                                                                                                                                         
  0x0ffae4a202b0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                                                                              
  0x0ffae4a202c0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                                                                              
  0x0ffae4a202d0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                                                                              
  0x0ffae4a202e0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                                                                              
  0x0ffae4a202f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                                                                              
=>0x0ffae4a20300:[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0ffae4a20310: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0ffae4a20320: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0ffae4a20330: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0ffae4a20340: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
  0x0ffae4a20350: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa                                                                                                                                                                                                              
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
==1731==ABORTING

Affected version:
0.3.6

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00190-audiofile-heapoverflow-Expand3To4Module-run

Timeline:
2017-02-20: bug discovered and reported to upstream
2017-02-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/20/audiofile-heap-based-buffer-overflow-in-expand3to4modulerun-simplemodule-h

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-676439.371964992--

