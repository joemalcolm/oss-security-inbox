X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2391" "Monday" "10" "April" "2017" "07:10:44" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<542373.786305205-sendEmail@localhost>" "63" "[oss-security] libtiff: divide-by-zero in JPEGSetupEncode (tiff_jpeg.c)" nil nil nil "4" "2017041007:10:44" "[oss-security] libtiff: divide-by-zero in JPEGSetupEncode (tiff_jpeg.c)" (number mark "U       ago@gentoo.o Apr 10   63/2391  " thread-indent "\"[oss-security] libtiff: divide-by-zero in JPEGSetupEncode (tiff_jpeg.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9500 invoked by uid 550); 10 Apr 2017 07:11:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9469 invoked from network); 10 Apr 2017 07:11:02 -0000
Message-ID: <542373.786305205-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Mon, 10 Apr 2017 07:10:44 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-617608.459972875"
Subject: [oss-security] libtiff: divide-by-zero in JPEGSetupEncode (tiff_jpeg.c)

------MIME delimiter for sendEmail-617608.459972875
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
Libtiff is a software that provides support for the Tag Image File Format (TIFF), a widely used format for storing image data.

A crafted tiff can crash the library.

The complete ASan output:

# tiffcp -i $FILE /tmp/out
==28692==ERROR: AddressSanitizer: FPE on unknown address 0x7f03239af35b (pc 0x7f03239af35b bp 0x7ffc7923f730 sp 0x7ffc7923f600 T0)
    #0 0x7f03239af35a in JPEGSetupEncode /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_jpeg.c:1687:26
    #1 0x7f0323a00312 in TIFFWriteEncodedTile /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_write.c:446:8     
    #2 0x510f06 in writeBufferToContigTiles /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:1539:8     
    #3 0x50f1ce in cpImage /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:1236:14   
    #4 0x50dc1b in cpContigTiles2ContigTiles /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:1673:9    
    #5 0x50c5b6 in tiffcp /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:815:15     
    #6 0x50c5b6 in main /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/tools/tiffcp.c:304    
    #7 0x7f0322a4661f in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289  
    #8 0x419f18 in _init (/usr/bin/tiffcp+0x419f18)    
 
AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: FPE /tmp/portage/media-libs/tiff-4.0.7/work/tiff-4.0.7/libtiff/tif_jpeg.c:1687:26 in JPEGSetupEncode 
Affected version:
4.0.7

Fixed version:
N/A

Commit fix:
https://github.com/vadz/libtiff/commit/47f2fb61a3a64667bce1a8398a8fcb1b348ff122

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7595

Reproducer:
https://github.com/asarubbo/poc/blob/master/00123-libtiff-fpe-JPEGSetupEncode

Timeline:
2017-01-04: bug discovered and reported to upstream
2017-01-11: upstream released a patch
2017-04-01: blog post about the issue
2017-04-09: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/04/01/libtiff-divide-by-zero-in-jpegsetupencode-tiff_jpeg-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-617608.459972875--

