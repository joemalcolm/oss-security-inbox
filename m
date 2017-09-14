X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2480" "Thursday" "14" "September" "2017" "07:00:25" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<427445.19640425-sendEmail@localhost>" "64" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" nil nil nil "9" "2017091407:00:25" "[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)" (number mark "U       ago@gentoo.o Sep 14   64/2480  " thread-indent "\"[oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5445 invoked by uid 550); 14 Sep 2017 07:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5363 invoked from network); 14 Sep 2017 07:00:41 -0000
Message-ID: <427445.19640425-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 14 Sep 2017 07:00:25 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-365125.299970718"
Subject: [oss-security] mp3gain: NULL pointer dereference in sync_buffer (mpglibDBL/interface.c)

------MIME delimiter for sendEmail-365125.299970718
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
==23063==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000010 (pc 0x0000008aafe0 bp 0x7ffe06c66450 sp 0x7ffe06c663f0 T0)
    #0 0x8aafdf in sync_buffer /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:393
    #1 0x8ae64c in decodeMP3 /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:665
    #2 0x43e767 in main /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mp3gain.c:2262
    #3 0x7fa37f734680 in __libc_start_main (/lib64/libc.so.6+0x20680)
    #4 0x4426c8 in _start (/usr/bin/aacgain+0x4426c8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-sound/aacgain-1.9/work/aacgain-1.9/mp3gain/mpglibDBL/interface.c:393 in sync_buffer
==23063==ABORTING

Affected version:
1.5.2

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-14406

Reproducer:
https://github.com/asarubbo/poc/blob/master/00347-aacgain-NULLptr-sync_buffer

Timeline:
2017-08-28: bug discovered
2017-09-08: blog post about the issue
2017-09-13: CVE Assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/09/08/mp3gain-null-pointer-dereference-in-sync_buffer-mpglibdblinterface-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-365125.299970718--

