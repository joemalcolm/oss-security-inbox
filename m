X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3577" "Thursday" "14" "September" "2017" "07:05:44" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<706317.355713935-sendEmail@localhost>" "88" "[oss-security] mp3gain: memcpy-param-overlap in set_pointer (mpglibDBL/common.c)" nil nil nil "9" "2017091407:05:44" "[oss-security] mp3gain: memcpy-param-overlap in set_pointer (mpglibDBL/common.c)" (number mark "U       ago@gentoo.o Sep 14   88/3577  " thread-indent "\"[oss-security] mp3gain: memcpy-param-overlap in set_pointer (mpglibDBL/common.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7351 invoked by uid 550); 14 Sep 2017 07:06:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7236 invoked from network); 14 Sep 2017 07:06:01 -0000
Message-ID: <706317.355713935-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 14 Sep 2017 07:05:44 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-863772.737401636"
Subject: [oss-security] mp3gain: memcpy-param-overlap in set_pointer (mpglibDBL/common.c)

------MIME delimiter for sendEmail-863772.737401636
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Additionally to the previous discovered bugs there a memcpy-param-overlap. Under a non-asan build the crash does not occur, so there is no CVE, but you may want to have it fixed in your repository.


Description:
mp3gain is a program to analyze and adjust MP3 files to same volume.

The fuzz was done via the aacgain command-line tool which uses mp3gain which bundles an old-modified version of mpg123 called mpglibDBL.
The upstream project seems to be dead, so the issue wasn’t communicated to them.

The complete ASan output of the issue:

# aacgain -f $FILE
==23175==ERROR: AddressSanitizer: memcpy-param-overlap: memory ranges [0x7f004fb593ff,0x7f004fb594fd) and [0x7f004fb59381, 0x7f004fb5947f) overlap
    #0 0x7f00532d5906  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libasan.so.3+0x5c906)
    #1 0x8e9b25 in set_pointer /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/common.c:328
    #2 0x8cd58d in do_layer3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/layer3.c:1582
    #3 0x8ac2f9 in decodeMP3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:643
    #4 0x43e767 in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2262
    #5 0x7f00525ee680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #6 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

Address 0x7f004fb593ff is located in stack of thread T0 at offset 21503 in frame
    #0 0x4341ff in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:1411

  This frame has 7 object(s):
    [32, 33) 'maxgain'
    [96, 97) 'mingain'
    [160, 164) 'nprocsamp'
    [224, 232) 'maxsample'
    [288, 9504) 'lsamples'
    [9536, 18752) 'rsamples'
    [18784, 50704) 'mp' <== Memory access at offset 21503 is inside this variable
HINT: this may be a false positive if your program uses some custom stack unwind mechanism or swapcontext
      (longjmp and C++ exceptions *are* supported)
Address 0x7f004fb59381 is located in stack of thread T0 at offset 21377 in frame
    #0 0x4341ff in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:1411

  This frame has 7 object(s):
    [32, 33) 'maxgain'
    [96, 97) 'mingain'
    [160, 164) 'nprocsamp'
    [224, 232) 'maxsample'
    [288, 9504) 'lsamples'
    [9536, 18752) 'rsamples'
    [18784, 50704) 'mp' <== Memory access at offset 21377 is inside this variable
HINT: this may be a false positive if your program uses some custom stack unwind mechanism or swapcontext
      (longjmp and C++ exceptions *are* supported)
SUMMARY: AddressSanitizer: memcpy-param-overlap (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libasan.so.3+0x5c906) 
==23175==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

Reproducer:
https://github.com/asarubbo/poc/blob/master/00349-aacgain-memcpyparamoverlap-set_pointer

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-memcpy-param-overlap-in-set_pointer-mpglibdblcommon-c

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-863772.737401636--

