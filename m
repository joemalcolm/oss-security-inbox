X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9889" "Thursday" "22" "September" "2016" "17:47:16" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1840743.uk7qesaqqd@willoughby>" "115" "[oss-security] mupdf: use-after-free in pdf_to_num (pdf-object.c)" nil nil nil "9" "2016092215:47:16" "[oss-security] mupdf: use-after-free in pdf_to_num (pdf-object.c)" (number mark "U       ago@gentoo.o Sep 22  115/9889  " thread-indent "\"[oss-security] mupdf: use-after-free in pdf_to_num (pdf-object.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17491 invoked by uid 550); 22 Sep 2016 15:47:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17437 invoked from network); 22 Sep 2016 15:47:35 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 22 Sep 2016 17:47:16 +0200
Message-ID: <1840743.uk7qesaqqd@willoughby>
User-Agent: KMail/4.14.10 (Linux/4.4.6-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] mupdf: use-after-free in pdf_to_num (pdf-object.c)

If it is suitable for a CVE please assign one. 
Thanks.


Description:
mupdf is a lightweight PDF viewer and toolkit written in portable C.

A fuzzing through mutool revealed a use-after-free.

The complete ASan output:

# mutool info $FILE
==5430==ERROR: AddressSanitizer: heap-use-after-free on address 0x60300000ea42 
at pc 0x7fbc4c3824e5 bp 0x7ffee68ead70 sp 0x7ffee68ead68                                                                                                                                       
READ of size 1 at 0x60300000ea42 thread T0                                                                                                                                                                                                                                    
    #0 0x7fbc4c3824e4 in pdf_to_num /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/pdf/pdf-object.c:375:35                                                                                                                                                       
    #1 0x53f042 in gatherfonts /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:259:46                                                                                                                                                             
    #2 0x53f042 in gatherresourceinfo /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:595                                                                                                                                                         
    #3 0x53913a in gatherpageinfo /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:661:2                                                                                                                                                           
    #4 0x53913a in showinfo /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:957                                                                                                                                                                   
    #5 0x537d46 in pdfinfo_info /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:1029:3                                                                                                                                                            
    #6 0x537d46 in pdfinfo_main /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/pdfinfo.c:1077                                                                                                                                                              
    #7 0x4f8ace in main /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/tools/mutool.c:104:12                                                                                                                                                                     
    #8 0x7fbc4ae1f61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                       
    #9 0x41f9c8 in _init (/usr/bin/mutool+0x41f9c8)                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                              
0x60300000ea42 is located 2 bytes inside of 24-byte region 
[0x60300000ea40,0x60300000ea58)                                                                                                                                                                                    
freed by thread T0 here:                                                                                                                                                                                                                                                      
    #0 0x4c6c10 in free /var/tmp/portage/sys-devel/llvm-3.8.0-
r3/work/llvm-3.8.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:38                                                                                                                                    
    #1 0x7fbc4bf33830 in fz_free /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/fitz/memory.c:187:2                                                                                                                                                              
                                                                                                                                                                                                                                                                              
previously allocated by thread T0 here:                                                                                                                                                                                                                                       
    #0 0x4c6f18 in malloc /var/tmp/portage/sys-devel/llvm-3.8.0-
r3/work/llvm-3.8.0.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:52                                                                                                                                  
    #1 0x7fbc4bf2a86f in do_scavenging_malloc /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/fitz/memory.c:17:7                                                                                                                                                  
    #2 0x7fbc4bf2a86f in fz_malloc /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/fitz/memory.c:57                                                                                                                                                               
    #3 0x7fbc4c37f94d in pdf_new_indirect /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/pdf/pdf-object.c:186:8                                                                                                                                                  
                                                                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: heap-use-after-free /var/tmp/portage/app-
text/mupdf-1.9a/work/mupdf-1.9a/source/pdf/pdf-object.c:375:35 in pdf_to_num                                                                                                                              
Shadow bytes around the buggy address:                                                                                                                                                                                                                                        
  0x0c067fff9cf0: fd fd fa fa fd fd fd fa fa fa fd fd fd fa fa fa                                                                                                                                                                                                             
  0x0c067fff9d00: fd fd fd fd fa fa fd fd fd fa fa fa fd fd fd fa                                                                                                                                                                                                             
  0x0c067fff9d10: fa fa fd fd fd fd fa fa fd fd fd fa fa fa fd fd                                                                                                                                                                                                             
  0x0c067fff9d20: fd fa fa fa fd fd fd fd fa fa fd fd fd fa fa fa
  0x0c067fff9d30: fd fd fd fa fa fa fd fd fd fa fa fa fd fd fd fa
=>0x0c067fff9d40: fa fa 00 00 00 fa fa fa[fd]fd fd fa fa fa fd fd
  0x0c067fff9d50: fd fd fa fa 00 00 00 fa fa fa 00 00 00 fa fa fa
  0x0c067fff9d60: 00 00 00 fa fa fa 00 00 00 00 fa fa 00 00 00 fa
  0x0c067fff9d70: fa fa 00 00 00 fa fa fa 00 00 00 06 fa fa 00 00
  0x0c067fff9d80: 01 fa fa fa 00 00 05 fa fa fa 00 00 00 fa fa fa
  0x0c067fff9d90: 00 00 00 00 fa fa 00 00 00 00 fa fa 00 00 00 fa
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
==5430==ABORTING

Affected version:
1.9a

Fixed version:
1.10 (not yet released)

Commit fix:
http://git.ghostscript.com/?p=mupdf.git;h=1e03c06456d997435019fb3526fa2d4be7dbc6ec

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:

Timeline:
2016-08-05: bug discovered
2016-08-05: bug reported privately to upstream
2016-09-22: upstream released a patch
2016-09-22: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/09/22/mupdf-use-after-free-in-pdf_to_num-pdf-object-c
