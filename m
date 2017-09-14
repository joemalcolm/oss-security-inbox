X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2172" "Thursday" "14" "September" "2017" "07:02:46" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<696458.548397885-sendEmail@localhost>" "65" "[oss-security] mp3gain: invalid memory write in copy_mp (mpglibDBL/interface.c)" nil nil nil "9" "2017091407:02:46" "[oss-security] mp3gain: invalid memory write in copy_mp (mpglibDBL/interface.c)" (number mark "U       ago@gentoo.o Sep 14   65/2172  " thread-indent "\"[oss-security] mp3gain: invalid memory write in copy_mp (mpglibDBL/interface.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21994 invoked by uid 550); 14 Sep 2017 07:03:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21912 invoked from network); 14 Sep 2017 07:03:03 -0000
Message-ID: <696458.548397885-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 14 Sep 2017 07:02:46 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-309371.439580904"
Subject: [oss-security] mp3gain: invalid memory write in copy_mp (mpglibDBL/interface.c)

------MIME delimiter for sendEmail-309371.439580904
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
mp3gain is a program to analyze and adjust MP3 files to same volume.

The fuzz was done via the aacgain command-line tool which uses mp3gain which bundles an old-modified version of mpg123 called mpglibDBL.
The upstream project seems to be dead, so the issue wasn’t communicated to them.

The complete ASan output of the issue:

# aacgain -f $FILE
ASAN:DEADLYSIGNAL
=================================================================
==15053==ERROR: AddressSanitizer: SEGV on unknown address 0x104db559357d (pc 0x7f06b1457af7 bp 0x7ffed0c702a0 sp 0x7ffed0c6fa30 T0)
    #0 0x7f06b1457af6  (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libasan.so.3+0x5caf6)
    #1 0x8a8ad0 in copy_mp /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:188
    #2 0x8ad77e in decodeMP3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:538
    #3 0x43e767 in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2262
    #4 0x7f06b0770680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #5 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libasan.so.3+0x5caf6) 
==15053==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14412

Reproducer:
https://github.com/asarubbo/poc/blob/master/00352-aacgain-invalidwrite-copy_mp

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue
2017-09-13: CVE Assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-invalid-memory-write-in-copy_mp-mpglibdblinterface-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-309371.439580904--

