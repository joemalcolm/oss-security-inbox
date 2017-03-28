X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3017" "Tuesday" "28" "March" "2017" "13:54:49" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<547957.629987167-sendEmail@localhost>" "63" "[oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862 and CVE-2016-8866)" nil nil nil "3" "2017032813:54:49" "[oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862 and CVE-2016-8866)" (number mark "U       ago@gentoo.o Mar 28   63/3017  " thread-indent "\"[oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862 and CVE-2016-8866)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7994 invoked by uid 550); 28 Mar 2017 13:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7972 invoked from network); 28 Mar 2017 13:55:08 -0000
Message-ID: <547957.629987167-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Tue, 28 Mar 2017 13:54:49 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-717826.667082594"
Subject: [oss-security] imagemagick: memory allocation failure in AcquireMagickMemory (memory.c) (incomplete fix for CVE-2016-8862 and CVE-2016-8866)

------MIME delimiter for sendEmail-717826.667082594
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

It is probably one of the last issues reported by me on imagemagick because it is always a fight make upstream able to reproduce the issue, however I'm not doing anything special.

Description:
imagemagick is a software suite to create, edit, compose, or convert bitmap images.

Another round of fuzzing pointed out that the memory allocation failure I discovered, known as CVE-2016-8862 and CVE-2016-8866 is still reproducible in the 7.0.4.9 version.
As usual, the upstream security policy are enabled.

The interesting part of the ASan stacktrace(not full because is a copy past of the one in the previous post):

# identify $FILE
    #8 0x7f2aeaea2812 in AcquireMagickMemory /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/memory.c:460:10
    #9 0x7f2aeaea2812 in AcquireVirtualMemory /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/memory.c:642
    #10 0x7f2ae32d941a in ReadPCXImage /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/coders/pcx.c:400:16
    #11 0x7f2aea9cdb26 in ReadImage /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/constitute.c:497:13
    #12 0x7f2aeb3a2df9 in ReadStream /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/stream.c:1013:9
    #13 0x7f2aea9cb3a6 in PingImage /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/constitute.c:226:9
    #14 0x7f2aea9cc2a6 in PingImages /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickCore/constitute.c:327:10
    #15 0x7f2ae97a6118 in IdentifyImageCommand /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickWand/identify.c:319:18
    #16 0x7f2ae98f800a in MagickCommandGenesis /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/MagickWand/mogrify.c:183:14
    #17 0x50a389 in MagickMain /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/utilities/magick.c:149:10
    #18 0x50a389 in main /tmp/portage/media-gfx/imagemagick-7.0.4.9/work/ImageMagick-7.0.4-9/utilities/magick.c:180
    #19 0x7f2ae7dda78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #20 0x419da8 in _init (/usr/bin/magick+0x419da8)

Affected version:
7.0.4.9

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-7275

Timeline:
2017-02-19: bug re-discovered and re-reported upstream
2017-03-27: blog post about the issue
2017-03-27: CVE assigned

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2016/03/27/imagemagick-memory-allocation-failure-in-acquiremagickmemory-memory-c-incomplete-fix-for-cve-2016-8862-and-cve-2016-8866

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-717826.667082594--

