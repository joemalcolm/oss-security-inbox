X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2827" "Wednesday" "25" "January" "2017" "10:12:23" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<3307797.rmYh5dmluK@blackgate>" "76" "[oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)" nil nil nil "1" "2017012509:12:23" "[oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)" (number mark "U       ago@gentoo.o Jan 25   76/2827  " thread-indent "\"[oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16254 invoked by uid 550); 25 Jan 2017 09:12:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16210 invoked from network); 25 Jan 2017 09:12:39 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 25 Jan 2017 10:12:23 +0100
Message-ID: <3307797.rmYh5dmluK@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: invalid memory read in jas_matrix_bindsub (jas_seq.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing shows that a crafted image causes an invalid memory 
read.

The complete ASan output:

# imginfo -f $FILE
warning: ignoring unknown marker segment (0xff59)
type = 0xff59 (UNKNOWN); len = 20;00 40 40 00 00 00 00 69 00 00 00 00 00 00 00 
00 00 00 warning: ignoring unknown marker segment (0xff46)
type = 0xff46 (UNKNOWN); len = 20;01 40 40 00 00 00 00 00 00 00 00 00 00 00 12 
00 94 7f ASAN:DEADLYSIGNAL
=================================================================
==22653==ERROR: AddressSanitizer: SEGV on unknown address 0x60180000ec30 (pc 
0x7f410df421b7 bp 0x7ffdc80abaf0 sp 0x7ffdc80aba60 T0)
==22653==The signal is caused by a READ memory access.
    #0 0x7f410df421b6 in jas_matrix_bindsub /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_seq.c:254:18
    #1 0x7f410df951a1 in jpc_dec_tileinit /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:835:5
    #2 0x7f410df951a1 in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:594
    #3 0x7f410dfa1853 in jpc_dec_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:425:10
    #4 0x7f410dfa1853 in jpc_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jpc/jpc_dec.c:262
    #5 0x7f410df71231 in jp2_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/jp2/jp2_dec.c:218:21
    #6 0x7f410df33214 in jas_image_decode /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_image.c:444:16
    #7 0x50a3be in main /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/appl/imginfo.c:238:16
    #8 0x7f410d01378f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #9 0x419cd8 in _start (/usr/bin/imginfo+0x419cd8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-2.0.10/work/jasper-2.0.10/src/libjasper/base/jas_seq.c:254:18 in 
jas_matrix_bindsub
==22653==ABORTING

Affected version:
2.0.10

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00125-jasper-invalidread-jas_matrix_bindsub

Timeline:
2017-01-21: bug discovered and reported upstream
2017-01-25: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/25/jasper-invalid-memory-read-in-jas_matrix_bindsub-jas_seq-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
