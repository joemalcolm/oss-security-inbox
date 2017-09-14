X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3619" "Thursday" "14" "September" "2017" "07:02:19" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<250752.937604801-sendEmail@localhost>" "100" "[oss-security] mp3gain: stack-based buffer overflow in dct36 (mpglibDBL/layer3.c)" nil nil nil "9" "2017091407:02:19" "[oss-security] mp3gain: stack-based buffer overflow in dct36 (mpglibDBL/layer3.c)" (number mark "U       ago@gentoo.o Sep 14  100/3619  " thread-indent "\"[oss-security] mp3gain: stack-based buffer overflow in dct36 (mpglibDBL/layer3.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18193 invoked by uid 550); 14 Sep 2017 07:02:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18127 invoked from network); 14 Sep 2017 07:02:35 -0000
Message-ID: <250752.937604801-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 14 Sep 2017 07:02:19 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-783937.435903685"
Subject: [oss-security] mp3gain: stack-based buffer overflow in dct36 (mpglibDBL/layer3.c)

------MIME delimiter for sendEmail-783937.435903685
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
mp3gain is a program to analyze and adjust MP3 files to same volume.

The fuzz was done via the aacgain command-line tool which uses mp3gain which bundles an old-modified version of mpg123 called mpglibDBL.
The upstream project seems to be dead, so the issue wasn’t communicated to them.

The complete ASan output of the issue:

# aacgain -f $FILE
==13869==ERROR: AddressSanitizer: stack-buffer-overflow on address 0x7fa590d1b958 at pc 0x0000008b2341 bp 0x7ffc23c02b70 sp 0x7ffc23c02b68
READ of size 8 at 0x7fa590d1b958 thread T0
    #0 0x8b2340 in dct36 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/layer3.c:1279
    #1 0x8d26e6 in III_hybrid /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/layer3.c:1504
    #2 0x8d26e6 in do_layer3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/layer3.c:1695
    #3 0x8ac2f9 in decodeMP3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:643
    #4 0x43e767 in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2262
    #5 0x7fa5937b1680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #6 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

Address 0x7fa590d1b958 is located in stack of thread T0 at offset 18776 in frame
    #0 0x4341ff in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:1411

  This frame has 7 object(s):
    [32, 33) 'maxgain'
    [96, 97) 'mingain'
    [160, 164) 'nprocsamp'
    [224, 232) 'maxsample'
    [288, 9504) 'lsamples'
    [9536, 18752) 'rsamples'
    [18784, 50704) 'mp' 0x0ff53219b720: 00 00 00 00 00 00 00 00 f2 f2 f2[f2]00 00 00 00
  0x0ff53219b730: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ff53219b740: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ff53219b750: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ff53219b760: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
  0x0ff53219b770: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
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
==13869==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14408

Reproducer:
https://github.com/asarubbo/poc/blob/master/00351-aacgain-stackoverflow-dct36

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue
2017-09-13: CVE Assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-stack-based-buffer-overflow-in-dct36-mpglibdbllayer3-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-783937.435903685--

