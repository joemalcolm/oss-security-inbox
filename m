X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3269" "Thursday" "14" "September" "2017" "06:59:47" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<919635.76744044-sendEmail@localhost>" "96" "[oss-security] mp3gain: stack-based buffer overflow in filterYule (gain_analysis.c)" "^Date:" nil nil "9" "2017091406:59:47" "[oss-security] mp3gain: stack-based buffer overflow in filterYule (gain_analysis.c)" (number mark "        ago@gentoo.o Sep 14   96/3269  " thread-indent "\"[oss-security] mp3gain: stack-based buffer overflow in filterYule (gain_analysis.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32412 invoked by uid 550); 14 Sep 2017 07:00:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32390 invoked from network); 14 Sep 2017 07:00:05 -0000
Message-ID: <919635.76744044-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-580598.824731172"
Date: Thu, 14 Sep 2017 06:59:47 +0000
From: "Agostino Sarubbo" <ago@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] mp3gain: stack-based buffer overflow in filterYule (gain_analysis.c)
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------MIME delimiter for sendEmail-580598.824731172
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
mp3gain is a program to analyze and adjust MP3 files to same volume.

The fuzz was done via the aacgain command-line tool which uses mp3gain.
The upstream project seems to be dead, so the issue wasn’t communicated to them.

The complete ASan output of the issue:

# aacgain -f $FILE
==18941==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7f2d1e9cd520 at pc 0x00000088af27 bp 0x7ffc10f47b20 sp 0x7ffc10f47b18
READ of size 8 at 0x7f2d1e9cd520 thread T0
    #0 0x88af26 in filterYule /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/gain_analysis.c:195
    #1 0x88bfcc in AnalyzeSamples /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/gain_analysis.c:344
    #2 0x43e89a in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2281
    #3 0x7f2d21465680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #4 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

Address 0x7f2d1e9cd520 is located in stack of thread T0 at offset 9504 in frame
    #0 0x4341ff in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:1411

  This frame has 7 object(s):
    [32, 33) 'maxgain'
    [96, 97) 'mingain'
    [160, 164) 'nprocsamp'
    [224, 232) 'maxsample'
    [288, 9504) 'lsamples' 0x0fe623d31aa0: 00 00 00 00[f2]f2 f2 f2 00 00 00 00 00 00 00 00
  0x0fe623d31ab0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe623d31ac0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe623d31ad0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe623d31ae0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0fe623d31af0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==18941==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14407

Reproducer:
https://github.com/asarubbo/poc/blob/master/00345-aacgain-stackoverflow-filterYule

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue
2017-09-13: CVE Assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-stack-based-buffer-overflow-in-filteryule-gain_analysis-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-580598.824731172--

