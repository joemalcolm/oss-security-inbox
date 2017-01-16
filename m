X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Monday" "16" "January" "2017" "12:00:26" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1672685.X2bF2OodFF@blackgate>" "67" "[oss-security] jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" nil nil nil "1" "2017011611:00:26" "[oss-security] jasper: invalid memory read in jas_matrix_asl (jas_seq.c)" (number mark "U       ago@gentoo.o Jan 16   67/2323  " thread-indent "\"[oss-security] jasper: invalid memory read in jas_matrix_asl (jas_seq.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7364 invoked by uid 550); 16 Jan 2017 11:00:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7186 invoked from network); 16 Jan 2017 11:00:44 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 16 Jan 2017 12:00:26 +0100
Message-ID: <1672685.X2bF2OodFF@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: invalid memory read in jas_matrix_asl (jas_seq.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing shows that a crafted image causes an invalid memory 
read.

The complete ASan output:

# imginfo -f $FILE
==26941==ERROR: AddressSanitizer: SEGV on unknown address 0x62c80000a400 (pc 
0x7f28c74e48ee bp 0x7ffcececdb70 sp 0x7ffcececdaf0 T0)
==26941==The signal is caused by a READ memory access.
    #0 0x7f28c74e48ed in jas_matrix_asl /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/base/jas_seq.c:376:11
    #1 0x7f28c7545f0e in jpc_dec_tiledecode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1107:6
    #2 0x7f28c7536cdf in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:658:7
    #3 0x7f28c75406b3 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:425:10
    #4 0x7f28c75406b3 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:262
    #5 0x7f28c74a2b84 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/base/jas_image.c:444:16
    #6 0x509eed in main /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/appl/imginfo.c:219:16
    #7 0x7f28c65aa61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #8 0x419978 in _init (/usr/bin/imginfo+0x419978)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/base/jas_seq.c:376:11 
in jas_matrix_asl
==26941==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00053-jasper-invalidread-jas_matrix_asl

Timeline:
2016-11-20: bug discovered and reported upstream
2017-01-16: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jas_matrix_asl-jas_seq-c

--
Agostino
