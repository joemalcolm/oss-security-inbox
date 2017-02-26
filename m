X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4309" "Sunday" "26" "February" "2017" "11:50:44" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<591403.244153725-sendEmail@localhost>" "102" "[oss-security] audiofile: heap-based buffer overflow in alaw2linear_buf (G711.cpp)" "^Date:" nil nil "2" "2017022611:50:44" "[oss-security] audiofile: heap-based buffer overflow in alaw2linear_buf (G711.cpp)" (number mark "U       ago@gentoo.o Feb 26  102/4309  " thread-indent "\"[oss-security] audiofile: heap-based buffer overflow in alaw2linear_buf (G711.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3814 invoked by uid 550); 26 Feb 2017 11:51:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3720 invoked from network); 26 Feb 2017 11:51:01 -0000
Message-ID: <591403.244153725-sendEmail@localhost>
X-Mailer: sendEmail-1.56
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-768989.968885766"
Date: Sun, 26 Feb 2017 11:50:44 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] audiofile: heap-based buffer overflow in alaw2linear_buf (G711.cpp)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-768989.968885766
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
audiofile is a C-based library for reading and writing audio files in many common formats.

A fuzz on it discovered an heap overflow.

The complete ASan output:

# sfconvert @@ out.mp3 format aiff
==2480==ERROR: AddressSanitizer: heap-buffer-overflow on address 0x7f5eb894d800 at pc 0x7f5eb85a699f bp 0x7ffe19064df0 sp 0x7ffe19064de8
WRITE of size 2 at 0x7f5eb894d800 thread T0
    #0 0x7f5eb85a699e in alaw2linear_buf(unsigned char const*, short*, int) /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/G711.cpp:54:13
    #1 0x7f5eb85a699e in G711::runPull() /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/G711.cpp:209
    #2 0x7f5eb858d05a in afReadFrames /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/data.cpp:222:14
    #3 0x50bbeb in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:340:29
    #4 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17
    #5 0x7f5eb766278f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x419f48 in _init (/usr/bin/sfconvert+0x419f48)

0x7f5eb894d800 is located 0 bytes to the right of 393216-byte region [0x7f5eb88ed800,0x7f5eb894d800)
allocated by thread T0 here:
    #0 0x4d2d08 in malloc /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/asan/asan_malloc_linux.cc:64
    #1 0x50bb48 in copyaudiodata /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:327:17
    #2 0x50b050 in main /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/sfcommands/sfconvert.c:248:17
    #3 0x7f5eb766278f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289

SUMMARY: AddressSanitizer: heap-buffer-overflow /tmp/portage/media-libs/audiofile-0.3.6-r1/work/audiofile-0.3.6/libaudiofile/modules/G711.cpp:54:13 in alaw2linear_buf(unsigned char 
const*, short*, int)
Shadow bytes around the buggy address:
  0x0fec57121ab0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fec57121ac0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fec57121ad0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fec57121ae0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fec57121af0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
=>0x0fec57121b00:[fa]fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fec57121b10: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fec57121b20: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fec57121b30: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fec57121b40: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
  0x0fec57121b50: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
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
==2480==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00184-audiofile-heapoverflow-alaw2linear_buf

Timeline:
2017-02-20: bug discovered and reported to upstream
2017-02-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/20/audiofile-heap-based-buffer-overflow-in-alaw2linear_buf-g711-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-768989.968885766--

