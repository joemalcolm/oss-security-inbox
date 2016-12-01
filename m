X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9603" "Thursday" "1" "December" "2016" "17:04:26" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<2637042.StuLhmWT5T@arcadia>" "174" "[oss-security] libming: listswf: NULL pointer dereference in dumpBuffer (read.c)" nil nil nil "12" "2016120116:04:26" "[oss-security] libming: listswf: NULL pointer dereference in dumpBuffer (read.c)" (number mark "U       ago@gentoo.o Dec  1  174/9603  " thread-indent "\"[oss-security] libming: listswf: NULL pointer dereference in dumpBuffer (read.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18349 invoked by uid 550); 1 Dec 2016 16:03:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18043 invoked from network); 1 Dec 2016 16:03:20 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 01 Dec 2016 17:04:26 +0100
Message-ID: <2637042.StuLhmWT5T@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libming: listswf: NULL pointer dereference in dumpBuffer (read.c)

If suitable for a CVE please assign one. Thanks.

Description:
libming is a Flash (SWF) output library. It can be used from PHP, Perl, Ruby, 
Python, C, C++, Java, and probably more on the way..

A fuzzing revealed a null pointer access in listswf. The bug does not reside 
in any shared object but if you have a web application that calls directly the 
listswf binary to parse untrusted swf, then you are affected.

The complete ASan output:

# listswf $FILE
header indicates a filesize of 7917 but filesize is 187
File version: 100
File size: 187
Frame size: (8452,8981)x(-4096,0)
Frame rate: 67.851562 / sec.
Total frames: 16387
 Stream out of sync after parse of blocktype 2 (SWF_DEFINESHAPE). 166 but 
expecting 23.

Offset: 21 (0x0015)
Block type: 2 (SWF_DEFINESHAPE)
Block length: 0

 CharacterID: 55319
 RECT:  (-2048,140)x(0,-1548):12
 FillStyleArray:  FillStyleCount:     18  FillStyleCountExtended:      0
 FillStyle:  FillStyleType: 0
 RGBA: ( 0, 1,9a,ff)
 FillStyle:  FillStyleType: 7f
 FillStyle:  FillStyleType: b
 FillStyle:  FillStyleType: fb
 FillStyle:  FillStyleType: 82                                                                                                                                                                 
 FillStyle:  FillStyleType: 24                                                                                                                                                                 
 FillStyle:  FillStyleType: 67                                                                                                                                                                 
 FillStyle:  FillStyleType: 67                                                                                                                                                                 
 FillStyle:  FillStyleType: 18                                                                                                                                                                 
 FillStyle:  FillStyleType: 9d                                                                                                                                                                 
 FillStyle:  FillStyleType: 6d                                                                                                                                                                 
 FillStyle:  FillStyleType: d7                                                                                                                                                                 
 FillStyle:  FillStyleType: 97                                                                                                                                                                 
 FillStyle:  FillStyleType: 1                                                                                                                                                                  
 FillStyle:  FillStyleType: 26                                                                                                                                                                 
 FillStyle:  FillStyleType: 1a                                                                                                                                                                 
 FillStyle:  FillStyleType: 17                                                                                                                                                                 
 FillStyle:  FillStyleType: 9a                                                                                                                                                                 
 LineStyleArray:  LineStyleCount: 19                                                                                                                                                           
 LineStyle:  Width: 1722                                                                                                                                                                       
 RGBA: (7a,38,df,ff)                                                                                                                                                                           
 LineStyle:  Width: 42742                                                                                                                                                                      
 RGBA: ( 0, 0, 0,ff)                                                                                                                                                                           
 LineStyle:  Width: 70                                                                                                                                                                         
 RGBA: (10,91,64,ff)                                                                                                                                                                           
 LineStyle:  Width: 37031                                                                                                                                                                      
 RGBA: (e7,c7,15,ff)                                                                                                                                                                           
 LineStyle:  Width: 9591                                                                                                                                                                       
 RGBA: (dc,ee,81,ff)                                                                                                                                                                           
 LineStyle:  Width: 4249                                                                                                                                                                       
 RGBA: ( 0,ee,ed,ff)                                                                                                                                                                           
 LineStyle:  Width: 60909                                                                                                                                                                      
 RGBA: (ed,ed,ed,ff)                                                                                                                                                                           
 LineStyle:  Width: 60909
 RGBA: (ed,ed,ed,ff)
 LineStyle:  Width: 60909
 RGBA: (ed,ed,ed,ff)
 LineStyle:  Width: 60909
 RGBA: (ed,ed,ed,ff)
 LineStyle:  Width: 60909
 RGBA: (ed,ed,ed,ff)
 LineStyle:  Width: 60909
 RGBA: (ed,ed,a7,ff)
 LineStyle:  Width: 42919
 RGBA: (a7,a7,9c,ff)
 LineStyle:  Width: 40092
 RGBA: (9c,9c,9c,ff)
 LineStyle:  Width: 32156
 RGBA: (9c,bc,9c,ff)
 LineStyle:  Width: 33948
 RGBA: (9c,9c,9c,ff)
 LineStyle:  Width: 26404
 RGBA: ( 0, c,80,ff)
 LineStyle:  Width: 42752
 RGBA: (a7, 2, 2,ff)
 LineStyle:  Width: 514
 RGBA: (c6, 2, 0,ff)
 NumFillBits: 11
 NumLineBits: 13
 Curved EdgeRecord: 9 Control(-145,637) Anchor(-735,-1010)
 Curved EdgeRecord: 7 Control(-177,156) Anchor(16,32)
 StyleChangeRecord:
  StateNewStyles: 0 StateLineStyle: 1  StateFillStyle1: 0
  StateFillStyle0: 0 StateMoveTo: 0
   LineStyle: 257
  ENDSHAPE

Offset: 23 (0x0017)
Block type: 864 (Unknown Block Type)
Block length: 23


0000: 64 00 00 00 46 4f a3 12  00 00 01 9a 7f 0b fb 82    d...FO.. .......
0010: 24 67 67 18 9d 6d d7                               $gg..m.



Offset: 48 (0x0030)
Block type: 6 (SWF_DEFINEBITS)
Block length: 23

 CharacterID: 6694

Offset: 73 (0x0049)
Block type: 87 (SWF_DEFINEBINARYDATA)
Block length: 7


0000: ASAN:DEADLYSIGNAL
=================================================================
==27703==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x00000059d2ff bp 0x7ffe859e6fc0 sp 0x7ffe859e6f50 T0)
==27703==The signal is caused by a READ memory access.
==27703==Hint: address points to the zero page.
    #0 0x59d2fe in dumpBuffer /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/read.c:441:23
    #1 0x51c305 in outputSWF_UNKNOWNBLOCK /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/outputtxt.c:2870:3
    #2 0x51c305 in outputBlock /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/outputtxt.c:2937
    #3 0x527e83 in readMovie /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/main.c:277:4
    #4 0x527e83 in main /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/main.c:350
    #5 0x7f0186c4461f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x419b38 in _init (/usr/bin/listswf+0x419b38)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/ming-0.4.7/work/ming-0_4_7/util/read.c:441:23 in dumpBuffer
==27703==ABORTING

Affected version:
0.4.7

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00078-libming-nullptr-dumpBuffer

Timeline:
2016-11-24: bug discovered and reported to upstream
2016-12-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/12/01/libming-listswf-null-pointer-dereference-in-dumpbuffer-read-c

-- 
Agostino Sarubbo
Gentoo Linux Developer
