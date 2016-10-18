X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5075" "Tuesday" "18" "October" "2016" "16:50:41" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<1731353.bZ4GPg8qyj@blackgate>" "89" "[oss-security] jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" nil nil nil "10" "2016101814:50:41" "[oss-security] jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)" (number mark "U       ago@gentoo.o Oct 18   89/5075  " thread-indent "\"[oss-security] jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9394 invoked by uid 550); 18 Oct 2016 14:51:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9372 invoked from network); 18 Oct 2016 14:51:00 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign <cve-assign@mitre.org>
Date: Tue, 18 Oct 2016 16:50:41 +0200
Message-ID: <1731353.bZ4GPg8qyj@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: two NULL pointer dereference in bmp_getdata (bmp_dec.c) (Incomplete fix for CVE-2016-8690)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing on an updated version (1.900.5) revealed that the 
previous issues, reported as CVE-2016-8690, are unfixed.

The complete ASan output:

# imginfo -f $FILE
THE BMP FORMAT IS NOT FULLY SUPPORTED!                                                                                                                                                                                                                                         
THAT IS, THE JASPER SOFTWARE CANNOT DECODE ALL TYPES OF BMP DATA.                                                                                                                                                                                                              
IF YOU HAVE ANY PROBLEMS, PLEASE TRY CONVERTING YOUR IMAGE DATA                                                                                                                                                                                                                
TO THE PNM FORMAT, AND USING THIS FORMAT INSTEAD.                                                                                                                                                                                                                              
skipping unknown data in BMP file                                                                                                                                                                                                                                              
ASAN:DEADLYSIGNAL                                                                                                                                                                                                                                                              
=================================================================                                                                                                                                                                                                              
==19659==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x7f90527a18fe bp 0x7ffcfacc8070 sp 0x7ffcfacc7ee0 T0)
    #0 0x7f90527a18fd in bmp_getdata /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:394:5
    #1 0x7f90527a18fd in bmp_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:201
    #2 0x7f9052748f39 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/base/jas_image.c:380:16
    #3 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/appl/imginfo.c:188:16
    #4 0x7f905185761f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #5 0x418e68 in _init (/usr/bin/imginfo+0x418e68)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:394:5 in 
bmp_getdata
==19659==ABORTING

# imginfo -f $FILE
THE BMP FORMAT IS NOT FULLY SUPPORTED!
THAT IS, THE JASPER SOFTWARE CANNOT DECODE ALL TYPES OF BMP DATA.
IF YOU HAVE ANY PROBLEMS, PLEASE TRY CONVERTING YOUR IMAGE DATA
TO THE PNM FORMAT, AND USING THIS FORMAT INSTEAD.
ASAN:DEADLYSIGNAL
=================================================================
==11248==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x7f888b2f5a44 bp 0x7ffea5b3b070 sp 0x7ffea5b3aee0 T0)
    #0 0x7f888b2f5a43 in bmp_getdata /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:398:5
    #1 0x7f888b2f5a43 in bmp_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:201
    #2 0x7f888b29cf39 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/base/jas_image.c:380:16
    #3 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/appl/imginfo.c:188:16
    #4 0x7f888a3ab61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #5 0x418e68 in _init (/usr/bin/imginfo+0x418e68)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/bmp/bmp_dec.c:398:5 in 
bmp_getdata
==11248==ABORTING

Affected version:
1.900.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-10-17: bug discovered
2016-10-17: bug reported to upstream
2016-10-18: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/18/jasper-two-null-pointer-dereference-in-bmp_getdata-bmp_dec-c-incomplete-fix-for-cve-2016-8690
