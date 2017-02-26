X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4849" "Sunday" "26" "February" "2017" "11:49:46" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<278043.289060832-sendEmail@localhost>" "102" "[oss-security] audiofile: global buffer overflow in decodeSample (IMA.cpp)" "^Date:" nil nil "2" "2017022611:49:46" "[oss-security] audiofile: global buffer overflow in decodeSample (IMA.cpp)" (number mark "U       ago@gentoo.o Feb 26  102/4849  " thread-indent "\"[oss-security] audiofile: global buffer overflow in decodeSample (IMA.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26584 invoked by uid 550); 26 Feb 2017 11:50:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26555 invoked from network); 26 Feb 2017 11:50:03 -0000
Message-ID: <278043.289060832-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-896087.224668921"
Date: Sun, 26 Feb 2017 11:49:46 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] audiofile: global buffer overflow in decodeSample (IMA.cpp)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-896087.224668921
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
audiofile is a C-based library for reading and writing audio files in many common formats.

A fuzz on it discovered a global overflow.

The complete ASan output:

# sfconvert @@ out.mp3 format aiff                                                                                                                                                                                                                                               
==1779==ERROR: AddressSanitizer: global-buffer-overflow on address 0x7f0add7e6a7a at pc 0x7f0add77c221 bp 0x7ffe13caabf0 sp 0x7ffe13caabe8
READ of size 2 at 0x7f0add7e6a7a thread T0
    #0 0x7f0add77c220 in decodeSample(adpcmState&, unsigned char) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:144:13
    #1 0x7f0add77c220 in IMA::decodeBlockWAVE(unsigned char const*, short*) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:186
    #2 0x7f0add77b671 in IMA::decodeBlock(unsigned char const*, short*) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:110:10
    #3 0x7f0add777ac9 in BlockCodec::runPull() /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/BlockCodec.cpp:55:3
    #4 0x7f0add7b0c20 in RebufferModule::runPull() /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/RebufferModule.cpp:122:3
    #5 0x7f0add76105a in afReadFrames /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/data.cpp:222:14
    #6 0x50bbeb in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:340:29
    #7 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17
    #8 0x7f0adc83678f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #9 0x419f48 in _init (/usr/bin/sfconvert+0x419f48)

0x7f0add7e6a7a is located 6 bytes to the left of global variable 'indexTable' defined in 
'/tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:116:21' (0x7f0add7e6a80) of size 16
0x7f0add7e6a7a is located 40 bytes to the right of global variable 'stepTable' defined in 
'/tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:122:22' (0x7f0add7e69a0) of size 178
SUMMARY: AddressSanitizer: global-buffer-overflow /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/IMA.cpp:144:13 in decodeSample(adpcmState&, 
unsigned char)
Shadow bytes around the buggy address:
  0x0fe1dbaf4cf0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe1dbaf4d00: 00 00 00 00 00 00 00 00 00 00 00 00 00 07 f9 f9
  0x0fe1dbaf4d10: f9 f9 f9 f9 00 00 00 00 00 00 00 04 f9 f9 f9 f9
  0x0fe1dbaf4d20: 00 00 00 00 00 00 01 f9 f9 f9 f9 f9 00 00 01 f9
  0x0fe1dbaf4d30: f9 f9 f9 f9 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0fe1dbaf4d40: 00 00 00 00 00 00 00 00 00 00 02 f9 f9 f9 f9[f9]
  0x0fe1dbaf4d50: 00 00 f9 f9 f9 f9 f9 f9 00 00 03 f9 f9 f9 f9 f9
  0x0fe1dbaf4d60: 00 00 05 f9 f9 f9 f9 f9 00 00 00 00 00 00 00 00
  0x0fe1dbaf4d70: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe1dbaf4d80: 00 00 00 00 01 f9 f9 f9 f9 f9 f9 f9 00 00 00 00
  0x0fe1dbaf4d90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==1779==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00183-audiofile-globaloverflow-decodeSample

Timeline:
2017-02-20: bug discovered and reported to upstream
2017-02-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/20/audiofile-global-buffer-overflow-in-decodesample-ima-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-896087.224668921--

