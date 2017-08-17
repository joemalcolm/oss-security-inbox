X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5698" "Thursday" "17" "August" "2017" "20:20:23" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<801485.169070901-sendEmail@localhost>" "89" "[oss-security] libfpx: double-free in DfFromLB (docfile.cxx)" nil nil nil "8" "2017081720:20:23" "[oss-security] libfpx: double-free in DfFromLB (docfile.cxx)" (number mark "U       ago@gentoo.o Aug 17   89/5698  " thread-indent "\"[oss-security] libfpx: double-free in DfFromLB (docfile.cxx)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11560 invoked by uid 550); 17 Aug 2017 20:20:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11346 invoked from network); 17 Aug 2017 20:20:40 -0000
Message-ID: <801485.169070901-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 17 Aug 2017 20:20:23 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-133959.46293986"
Subject: [oss-security] libfpx: double-free in DfFromLB (docfile.cxx)

------MIME delimiter for sendEmail-133959.46293986
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
libfpx is a library for manipulating FlashPIX images.

I’m aware that the link to the upstream website does not work. I’m keeping it as well because in the future the upstream website could appear 
again.
Libfpx is not actively developed, I contacted the imagemagick project if they were available to patch security issues, but they said the they 
are only accepting patches and push new releases.
This issue was found using the gm command line tool of graphicsmagick.

The complete ASan output of the issue:

# gm identify $FILE
==11267==ERROR: AddressSanitizer: attempting double-free on 0x602000001830 in thread T0:
    #0 0x4cf4d0 in __interceptor_cfree /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:55
    #1 0x7f1b6fa8bb12 in DfFromLB(ILockBytes*, unsigned short, unsigned int, unsigned short**, CExposedDocFile**, _XGUID*) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/docfile.cxx:76
    #2 0x7f1b6fa8bdfc in DfOpenStorageOnILockBytesW(ILockBytes*, IStorage*, unsigned int, unsigned short**, unsigned int, IStorage**, _XGUID*) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/docfile.cxx:277
    #3 0x7f1b6fa88878 in DfOpenStorageOnILockBytes(ILockBytes*, IStorage*, unsigned int, char**, unsigned int, IStorage**, _XGUID*) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/ascii.cxx:461
    #4 0x7f1b6fa9458e in StgOpenStorageOnILockBytes /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/storage.cxx:116
    #5 0x7f1b6fa9461a in StgOpenStorage /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/storage.cxx:70
    #6 0x7f1b6fa7008e in OLEFile::OpenOLEFile(_XGUID&, OLEStorage**, unsigned int) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/ole/olefiles.cpp:184
    #7 0x7f1b6fa70557 in OLEFile::GetCLSID(_XGUID*) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/ole/olefiles.cpp:346
    #8 0x7f1b6fa52d64 in PFlashPixImageView::PFlashPixImageView(FicNom&, char const*, mode_Ouverture, long, PSearchHookObject*, FPXStatus*) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/fpx/fpximgvw.cpp:389
    #9 0x7f1b6fa55c81 in OpenImageByFilename(FicNom&, char const*, unsigned long, unsigned int*, unsigned int*, unsigned int*, unsigned int*, FPXColorspace*, PFlashPixImageView**) /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/fpx/fpxlibio.cpp:1629
    #10 0x7f1b6fa55dc9 in FPX_OpenImageByFilename /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/fpx/fpxlibio.cpp:1686
    #11 0x7f1b6fcc45e6 in ReadFPXImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/coders/fpx.c:226:16
    #12 0x7f1b754f1e2b in ReadImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/constitute.c:1607:13
    #13 0x7f1b754eee8c in PingImage /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/constitute.c:1370:9
    #14 0x7f1b753baae5 in IdentifyImageCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:8379:17
    #15 0x7f1b753c1065 in MagickCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:8869:17
    #16 0x7f1b7546c7fb in GMCommandSingle /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17396:10
    #17 0x7f1b75469931 in GMCommand /var/tmp/portage/media-gfx/graphicsmagick-1.3.26/work/GraphicsMagick-1.3.26/magick/command.c:17449:16
    #18 0x7f1b73cd4680 in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.23-r4/work/glibc-2.23/csu/../csu/libc-start.c:289
    #19 0x419cd8 in _init (/usr/bin/gm+0x419cd8)

0x602000001830 is located 0 bytes inside of 16-byte region [0x602000001830,0x602000001840)
freed by thread T0 here:
    #0 0x4cf4d0 in __interceptor_cfree /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:55
    #1 0x7f1b6fa8c001 in CDFBasis::Release() /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/dfbasis.hxx:109
    #2 0x7f1b6fa8c001 in CExposedDocFile::~CExposedDocFile() /var/tmp/portage/media-libs/libfpx-1.3.1_p6/work/libfpx-1.3.1-6/oless/expdf.cxx:115

previously allocated by thread T0 here:
    #0 0x4cf688 in malloc /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:66
    #1 0x7f1b6f6c5337 in operator new(unsigned long) (/usr/lib/gcc/x86_64-pc-linux-gnu/6.4.0/libstdc++.so.6+0xb2337)

SUMMARY: AddressSanitizer: double-free /var/tmp/portage/sys-libs/compiler-rt-sanitizers-4.0.1/work/compiler-rt-4.0.1.src/lib/asan/asan_malloc_linux.cc:55 in __interceptor_cfree
==11267==ABORTING

Affected version:
1.3.1_p6

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
CVE-2017-12925

Reproducer:
https://github.com/asarubbo/poc/blob/master/00307-libfpx-doublefree-DfFromLB

Timeline:
2017-08-01: bug discovered
2017-08-09: blog post about the issue
2017-08-17: CVE assigned

Note:
This bug was found with American Fuzzy Lop.
This bug was identified with bare metal servers donated by Packet. This work is also supported by the Core Infrastructure Initiative.

Permalink:
https://blogs.gentoo.org/ago/2017/08/09/libfpx-double-free-in-dffromlb-docfile-cxx/

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-133959.46293986--

