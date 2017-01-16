X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2313" "Monday" "16" "January" "2017" "11:59:06" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2287406.W50YOaXYaS@blackgate>" "67" "[oss-security] jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" nil nil nil "1" "2017011610:59:06" "[oss-security] jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" (number mark "U       ago@gentoo.o Jan 16   67/2313  " thread-indent "\"[oss-security] jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29993 invoked by uid 550); 16 Jan 2017 10:59:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28463 invoked from network); 16 Jan 2017 10:59:23 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 16 Jan 2017 11:59:06 +0100
Message-ID: <2287406.W50YOaXYaS@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing shows that a crafted image causes an invalid memory 
read.

The complete ASan output:

# imginfo -f $FILE
==22872==ERROR: AddressSanitizer: SEGV on unknown address 0x7f8a4a950800 (pc 
0x7f8e4a543b93 bp 0x7ffe29bfdcd0 sp 0x7ffe29bfdb80 T0)
==22872==The signal is caused by a READ memory access.
    #0 0x7f8e4a543b92 in jpc_undo_roi /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1925:10
    #1 0x7f8e4a543b92 in jpc_dec_tiledecode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1104
    #2 0x7f8e4a534cdf in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:658:7
    #3 0x7f8e4a53e6b3 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:425:10
    #4 0x7f8e4a53e6b3 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:262
    #5 0x7f8e4a4a0b84 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/base/jas_image.c:444:16
    #6 0x509eed in main /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/appl/imginfo.c:219:16
    #7 0x7f8e495a861f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #8 0x419978 in _init (/usr/bin/imginfo+0x419978)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1925:10 
in jpc_undo_roi
==22872==ABORTING

Affected version:
1.900.27

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00054-jasper-invalidread-jpc_undo_roi

Timeline:
2016-11-20: bug discovered and reported upstream
2017-01-16: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jpc_undo_roi-jpc_dec-c

--
Agostino
