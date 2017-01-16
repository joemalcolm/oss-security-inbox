X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2602" "Monday" "16" "January" "2017" "11:57:55" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2047603.jilSxc2Osk@blackgate>" "71" "[oss-security] jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" nil nil nil "1" "2017011610:57:55" "[oss-security] jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)" (number mark "U       ago@gentoo.o Jan 16   71/2602  " thread-indent "\"[oss-security] jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18422 invoked by uid 550); 16 Jan 2017 10:58:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18383 invoked from network); 16 Jan 2017 10:58:13 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Mon, 16 Jan 2017 11:57:55 +0100
Message-ID: <2047603.jilSxc2Osk@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: invalid memory write in dec_clnpass (jpc_t1dec.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing shows that a crafted image causes an invalid memory 
write.

The complete ASan output:

# imginfo -f $FILE
==24746==ERROR: AddressSanitizer: SEGV on unknown address 0x7ef94fe46c88 (pc 
0x7efd4faa510d bp 0x7ffde2235af0 sp 0x7ffde2235900 T0)
==24746==The signal is caused by a WRITE memory access.
    #0 0x7efd4faa510c in dec_clnpass /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:869:4
    #1 0x7efd4faa510c in jpc_dec_decodecblk /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:283
    #2 0x7efd4fa9ef89 in jpc_dec_decodecblks /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:177:11
    #3 0x7efd4fa394f1 in jpc_dec_tiledecode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1085:6
    #4 0x7efd4fa2acdf in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:658:7
    #5 0x7efd4fa346b3 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:425:10
    #6 0x7efd4fa346b3 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:262
    #7 0x7efd4f996b84 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/base/jas_image.c:444:16
    #8 0x509eed in main /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/appl/imginfo.c:219:16
    #9 0x7efd4ea9e61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #10 0x419978 in _init (/usr/bin/imginfo+0x419978)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.27/work/jasper-1.900.27/src/libjasper/jpc/jpc_t1dec.c:869:4 
in dec_clnpass
==24746==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00055-jasper-invalidwrite-dec_clnpass

Timeline:
2016-11-20: bug discovered and reported upstream
2017-01-16: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-write-in-dec_clnpass-jpc_t1dec-c

--
Agostino
