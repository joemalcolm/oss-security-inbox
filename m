X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3478" "Thursday" "14" "September" "2017" "07:00:58" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<153103.090913163-sendEmail@localhost>" "99" "[oss-security] mp3gain: stack-based buffer overflow in copy_mp (mpglibDBL/interface.c)" nil nil nil "9" "2017091407:00:58" "[oss-security] mp3gain: stack-based buffer overflow in copy_mp (mpglibDBL/interface.c)" (number mark "U       ago@gentoo.o Sep 14   99/3478  " thread-indent "\"[oss-security] mp3gain: stack-based buffer overflow in copy_mp (mpglibDBL/interface.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9391 invoked by uid 550); 14 Sep 2017 07:01:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9316 invoked from network); 14 Sep 2017 07:01:15 -0000
Message-ID: <153103.090913163-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 14 Sep 2017 07:00:58 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-242396.121685491"
Subject: [oss-security] mp3gain: stack-based buffer overflow in copy_mp (mpglibDBL/interface.c)

------MIME delimiter for sendEmail-242396.121685491
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
mp3gain is a program to analyze and adjust MP3 files to same volume.

The fuzz was done via the aacgain command-line tool which uses mp3gain which bundles an old-modified version of mpg123 called mpglibDBL.
The upstream project seems to be dead, so the issue wasn’t communicated to them.

The complete ASan output of the issue:

# aacgain -f $FILE
==17667==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7f71080af610 at pc 0x7f710b824cfb bp 0x7ffd67817fa0 sp 0x7ffd67817750
WRITE of size 72 at 0x7f71080af610 thread T0
    #0 0x7f710b824cfa  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libasan.so.3+0x5ccfa)
    #1 0x8a8ad0 in copy_mp /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:188
    #2 0x8ac8bd in decodeMP3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:685
    #3 0x43e767 in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2262
    #4 0x7f710ab3d680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #5 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

Address 0x7f71080af610 is located in stack of thread T0 at offset 50704 in frame
    #0 0x4341ff in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:1411

  This frame has 7 object(s):
    [32, 33) 'maxgain'
    [96, 97) 'mingain'
    [160, 164) 'nprocsamp'
    [224, 232) 'maxsample'
    [288, 9504) 'lsamples'
    [9536, 18752) 'rsamples'
    [18784, 50704) 'mp' 0x0feea100dec0: 00 00[f4]f4 f3 f3 f3 f3 00 00 00 00 00 00 00 00
  0x0feea100ded0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0feea100dee0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0feea100def0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0feea100df00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0feea100df10: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==17667==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14411

Reproducer:
https://github.com/asarubbo/poc/blob/master/00348-aacgain-stackoverflow-copy_mp

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue
2017-09-13: CVE Assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-stack-based-buffer-overflow-in-copy_mp-mpglibdblinterface-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-242396.121685491--

