X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3314" "Friday" "18" "August" "2017" "13:54:45" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<815123.168143572-sendEmail@localhost>" "68" "[oss-security] graphicsmagick: invalid memory read in SetImageColorCallBack (image.c)" nil nil nil "8" "2017081813:54:45" "[oss-security] graphicsmagick: invalid memory read in SetImageColorCallBack (image.c)" (number mark "U       ago@gentoo.o Aug 18   68/3314  " thread-indent "\"[oss-security] graphicsmagick: invalid memory read in SetImageColorCallBack (image.c)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32015 invoked by uid 550); 18 Aug 2017 13:55:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30610 invoked from network); 18 Aug 2017 13:55:01 -0000
Message-ID: <815123.168143572-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Fri, 18 Aug 2017 13:54:45 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-886541.85093856"
Subject: [oss-security] graphicsmagick: invalid memory read in SetImageColorCallBack (image.c)

------MIME delimiter for sendEmail-886541.85093856
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
graphicsmagick is a collection of tools and libraries for many image formats.

The complete ASan output of the issue:

# gm convert -clip -negate $FILE out
==11324==ERROR: AddressSanitizer: SEGV on unknown address 0x7f9ccac18000 (pc 0x7f9dbacf58ce bp 0x7ffec95349c0 sp 0x7ffec9534980 T0)
    #0 0x7f9dbacf58cd in SetImageColorCallBack /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/image.c:2090:15
    #1 0x7f9dbaf16bbd in .omp_outlined..4 /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/pixel_iterator.c:378:23
    #2 0x7f9dbaf11873 in PixelIterateMonoModifyImplementation /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/pixel_iterator.c:348:33
    #3 0x7f9dbaf111be in PixelIterateMonoSet /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/pixel_iterator.c:415:10
    #4 0x7f9dbacf379b in SetImageEx /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/image.c:2125:10
    #5 0x7f9db448bc86 in ReadMNGImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/coders/png.c:5016:26
    #6 0x7f9dbaa14e88 in ReadImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/constitute.c:1607:13
    #7 0x7f9dba8a7f18 in ConvertImageCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:4348:22
    #8 0x7f9dba8e40c5 in MagickCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:8869:17
    #9 0x7f9dba98f85b in GMCommandSingle /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17396:10
    #10 0x7f9dba98c991 in GMCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17449:16
    #11 0x7f9db91f7680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #12 0x419cd8 in _init (/usr/bin/gm+0x419cd8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/image.c:2090:15 in SetImageColorCallBack
==11324==ABORTING

Affected version:
1.3.26

Fixed version:
N/A

Commit fix:
http://hg.code.sf.net/p/graphicsmagick/code/rev/cd699a44f188

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-12935

Reproducer:
https://github.com/asarubbo/poc/blob/master/00303-graphicsmagick-invalidread-SetImageColorCallBack

Timeline:
2017-07-12: bug discovered and reported to upstream
2017-07-26: upstream released a fix
2017-08-05: blog post about the issue
2017-08-18: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/05/graphicsmagick-invalid-memory-read-in-setimagecolorcallback-image-c/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-886541.85093856--

