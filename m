X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["8262" "Wednesday" "12" "April" "2017" "09:12:58" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<513133.504052774-sendEmail@localhost>" "92" "[oss-security] libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" "^Date:" nil nil "4" "2017041209:12:58" "[oss-security] libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" (number mark "        ago@gentoo.o Apr 12   92/8262  " thread-indent "\"[oss-security] libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5574 invoked by uid 550); 12 Apr 2017 09:13:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5556 invoked from network); 12 Apr 2017 09:13:17 -0000
Message-ID: <513133.504052774-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-994904.928215878"
Date: Wed, 12 Apr 2017 09:12:58 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-994904.928215878
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libsamplerate is a Sample Rate Converter for audio.

This bug was initially discovered and silently fixed by the upstream author Erik de Castro Lopo (erikd). As usual I’m providing the stacktrace and the reproducer so that all release distros can test and 
patch their own version of the package.

# sndfile-resample -to 24000 -c 1 $FILE out
==13807==ERROR: AddressSanitizer: global-buffer-overflow on address 0x7f44bc709a3c at pc 0x7f44bc6b1d6b bp 0x7fffec8f5e20 sp 0x7fffec8f5e18                                                                       
READ of size 4 at 0x7f44bc709a3c thread T0                                                                                                                                                                        
    #0 0x7f44bc6b1d6a in calc_output_single /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/src/src_sinc.c:296:48                                                                         
    #1 0x7f44bc6b1d6a in sinc_mono_vari_process /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/src/src_sinc.c:400                                                                        
    #2 0x7f44bc6a3659 in src_process /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/src/samplerate.c:174:11                                                                              
    #3 0x51369a in sample_rate_convert /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:221:16                                                                 
    #4 0x51369a in main /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/examples/sndfile-resample.c:163                                                                                   
    #5 0x7f44bb55278f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                        
    #6 0x419f88 in _init (/usr/bin/sndfile-resample+0x419f88)                                                                                                                                                     
                                                                                                                                                                                                                  
0x7f44bc709a3c is located 0 bytes to the right of global variable 'slow_mid_qual_coeffs' defined in '/tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/src/mid_qual_coeffs.h:37:3' 
(0x7f44bc6f3ba0) of size 89756
SUMMARY: AddressSanitizer: global-buffer-overflow /tmp/portage/media-libs/libsamplerate-0.1.8-r1/work/libsamplerate-0.1.8/src/src_sinc.c:296:48 in calc_output_single                                             
Shadow bytes around the buggy address:                                                                                                                                                                            
  0x0fe9178d92f0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                 
  0x0fe9178d9300: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                 
  0x0fe9178d9310: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                 
  0x0fe9178d9320: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                 
  0x0fe9178d9330: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00                                                                                                                                                 
=>0x0fe9178d9340: 00 00 00 00 00 00 00[04]f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
  0x0fe9178d9350: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
  0x0fe9178d9360: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
  0x0fe9178d9370: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
  0x0fe9178d9380: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
  0x0fe9178d9390: f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9 f9                                                                                                                                                 
Shadow byte legend (one shadow byte represents 8 application bytes):                                                                                                                                              
  Addressable:           00                                                                                                                                                                                       
  Partially addressable: 01 02 03 04 05 06 07                                                                                                                                                                     
  Heap left redzone:       fa                                                                                                                                                                                     
  Freed heap region:       fd                                                                                                                                                                                     
  Stack left redzone:      f1                                                                                                                                                                                     
  Stack mid redzone:       f2                                                                                                                                                                                     
  Stack right redzone:     f3                                                                                                                                                                                     
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
==13807==ABORTING
Affected version:
1.0.8

Fixed version:
1.0.9

Commit fix:
N/A

Credit:
This bug was discovered by Erik de Castro Lopo and Agostino Sarubbo.

CVE:
CVE-2017-7697

Reproducer:
https://github.com/asarubbo/poc/blob/master/00262-libsamplerate-globaloverflow-calc_output_single

Timeline:
2017-04-11: bug discovered and reported to upstream
2017-04-11: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/11/libsamplerate-global-buffer-overflow-in-calc_output_single-src_sinc-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-994904.928215878--

