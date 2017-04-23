X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4510" "Sunday" "23" "April" "2017" "12:43:30" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<13452201.C1oyba3XSE@arcadia>" "75" "[oss-security] imageworsener: divide-by-zero in iwgif_record_pixel (imagew-gif.c)" nil nil nil "4" "2017042310:43:30" "[oss-security] imageworsener: divide-by-zero in iwgif_record_pixel (imagew-gif.c)" (number mark "U       ago@gentoo.o Apr 23   75/4510  " thread-indent "\"[oss-security] imageworsener: divide-by-zero in iwgif_record_pixel (imagew-gif.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11320 invoked by uid 550); 23 Apr 2017 10:43:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10116 invoked from network); 23 Apr 2017 10:43:43 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 23 Apr 2017 12:43:30 +0200
Message-ID: <13452201.C1oyba3XSE@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] imageworsener: divide-by-zero in iwgif_record_pixel (imagew-gif.c)

Description:
imageworsener is a utility for image scaling and processing.

A fuzz on it discovered a divide-by-zero.

The complete ASan output:

# imagew $FILE /tmp/out -outfmt bmp
==20305==ERROR: AddressSanitizer: FPE on unknown address 0x7f8e57340cd6 (pc 
0x7f8e57340cd6 bp 0x7ffc0fee8910 sp 0x7ffc0fee87e0 T0)                                                                                
    #0 0x7f8e57340cd5 in iwgif_record_pixel /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:213:13                                                                           
    #1 0x7f8e57340cd5 in lzw_emit_code /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:312                                                                                   
    #2 0x7f8e57339a94 in lzw_process_code /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:376:3                                                                              
    #3 0x7f8e57339a94 in lzw_process_bytes /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:433                                                                               
    #4 0x7f8e57339a94 in iwgif_read_image /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:669                                                                                
    #5 0x7f8e57339a94 in iwgif_read_main /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:724                                                                                 
    #6 0x7f8e5732fb71 in iw_read_gif_file /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:773:6                                                                              
    #7 0x7f8e572e9091 in iw_read_file_by_fmt /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-allfmts.c:61:12                                                                       
    #8 0x519304 in iwcmd_run /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:1191:6                                                                                          
    #9 0x515326 in iwcmd_main /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:3018:7                                                                                         
    #10 0x515326 in main /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-cmd.c:3067                                                                                                
    #11 0x7f8e562f078f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-
r3/work/glibc-2.23/csu/../csu/libc-start.c:289                                                                                       
    #12 0x41b028 in _init (/usr/bin/imagew+0x41b028)                                                                                                                                                              
                                                                                                                                                                                                                  
AddressSanitizer can not provide additional info.                                                                                                                                                                 
SUMMARY: AddressSanitizer: FPE /tmp/portage/media-
gfx/imageworsener-1.3.0/work/imageworsener-1.3.0/src/imagew-gif.c:213:13 in 
iwgif_record_pixel                                                                  
==20305==ABORTING

Affected version:
1.3.0

Fixed version:
N/A

Commit fix:
https://github.com/jsummers/imageworsener/commit/ca3356eb49fee03e2eaf6b6aff826988c1122d93

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7962

Reproducer:
https://github.com/asarubbo/poc/blob/master/00270-imageworsener-FPE-iwgif_record_pixel

Timeline:
2017-04-12: bug discovered and reported to upstream
2017-04-14: upstream released a patch
2017-04-17: blog post about the issue
2017-04-19: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/17/imageworsener-divide-by-zero-in-iwgif_record_pixel-imagew-gif-c/

-- 
Agostino Sarubbo
Gentoo Linux Developer
