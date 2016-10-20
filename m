X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3413" "Thursday" "20" "October" "2016" "09:43:40" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<5184269.v1vKSl7Lqd@blackgate>" "71" "[oss-security] jasper: NULL pointer dereference in jpc_tsfb_synthesize (jpc_tsfb.c)" nil nil nil "10" "2016102007:43:40" "[oss-security] jasper: NULL pointer dereference in jpc_tsfb_synthesize (jpc_tsfb.c)" (number mark "U       ago@gentoo.o Oct 20   71/3413  " thread-indent "\"[oss-security] jasper: NULL pointer dereference in jpc_tsfb_synthesize (jpc_tsfb.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28497 invoked by uid 550); 20 Oct 2016 07:44:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28008 invoked from network); 20 Oct 2016 07:43:58 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Date: Thu, 20 Oct 2016 09:43:40 +0200
Message-ID: <5184269.v1vKSl7Lqd@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] jasper: NULL pointer dereference in jpc_tsfb_synthesize (jpc_tsfb.c)

Description:
jasper is an open-source initiative to provide a free software-based reference 
implementation of the codec specified in the JPEG-2000 Part-1 standard.

Another round of fuzzing on an updated version (1.900.5) revealed another NULL 
pointer access

The complete ASan output:

# imginfo -f $FILE
warning: trailing garbage in marker segment (14 bytes)
warning: not enough tile data (15 bytes)
warning: bad segmentation symbol
warning: bad segmentation symbol
ASAN:DEADLYSIGNAL
=================================================================
==7144==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 
0x7f6d3c37d0b0 bp 0x7ffdc7407a90 sp 0x7ffdc7407a30 T0)
    #0 0x7f6d3c37d0af in jpc_tsfb_synthesize /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_tsfb.c:152:4
    #1 0x7f6d3c2f5140 in jpc_dec_tiledecode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_dec.c:1068:3
    #2 0x7f6d3c2e5c40 in jpc_dec_process_sod /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_dec.c:623:7
    #3 0x7f6d3c2ef294 in jpc_dec_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_dec.c:390:10
    #4 0x7f6d3c2ef294 in jpc_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_dec.c:254
    #5 0x7f6d3c2bd061 in jp2_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jp2/jp2_dec.c:215:21
    #6 0x7f6d3c24df39 in jas_image_decode /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/base/jas_image.c:380:16
    #7 0x4f1686 in main /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/appl/imginfo.c:188:16
    #8 0x7f6d3b35c61f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289                                                                                                                                                        
    #9 0x418e68 in _init (/usr/bin/imginfo+0x418e68)                                                                                                                                                                                                                           

AddressSanitizer can not provide additional info.                                                                                                                                                                                                                              
SUMMARY: AddressSanitizer: SEGV /tmp/portage/media-
libs/jasper-1.900.5/work/jasper-1.900.5/src/libjasper/jpc/jpc_tsfb.c:152:4 in 
jpc_tsfb_synthesize                                                                                                                           
==7144==ABORTING

Affected version:
1.900.5

Fixed version:
1.900.9

Commit fix:
https://github.com/mdadams/jasper/commit/2e82fa00466ae525339754bb3ab0a0474a31d4bd

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Timeline:
2016-10-19: bug discovered
2016-10-19: bug reported to upstream
2016-10-20: upstream released the patch and 1.900.9
2016-10-20: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/10/20/jasper-null-pointer-dereference-in-jpc_tsfb_synthesize-jpc_tsfb-c/

