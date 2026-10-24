X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/24/1
Message-Id: <6677C59F-8BA4-4FA1-8A51-34984AC4775A@mynetx.net>
Date: Sat, 24 Oct 2026 07:52:46 +0000
From: "Joachim Rütter" <mynetx1@...il.com>
To: oss-security@...ts.openwall.com
Subject: jxrlib: memory bugs on damaged JPEG XR files, fixed in mircomir/jxrlib 1.4.4, still in most distributions
Content-Type: text/plain; charset=utf-8

Hello,

jxrlib, Microsoft's JPEG XR library (abandoned upstream), has memory bugs that a damaged
JPEG XR file of a few hundred bytes triggers, including a heap buffer overflow write. All of
them are fixed in public in the maintained fork github.com/mircomir/jxrlib (1.4.4, released
2026-10-09), but most distributions still ship older code. I found them while fuzzing the
decoders in my image viewer, Featherview.

Bugs (line numbers from github.com/Tom94/jxrlib 0e1337d, the same code as Debian's
1.2~git20170615.f752187-5.3), and where mircomir fixed each:

1. ReadBinaryData, jxrgluelib/JXRMeta.c:677. A metadata count from the file is allocated as
   uCount + 2, which overflows 32 bits, so a tiny buffer is allocated and then written past
   (the uCount-byte read for a file stream, and the pbData[uCount] terminator in any case).
   Heap buffer overflow, write. Shown by source review and an allocation-intercept harness,
   not by an end-to-end crashing file. Fixed in cb97e6d (2024-12-16).
2. ReadWMIHeader, image/decode/strdec.c:2965. strstr on an unterminated 8-byte signature
   buffer. Stack buffer over-read. Fixed in d6e5f8d (2026-05-05).
3. DecodeSignificantRun, image/decode/segdec.c:362. Run length from the file indexes
   gSignificantRunBin unchecked. Global buffer over-read. Fixed in debe47a (2024-10-10).
4. initLookupTables, image/decode/strdec.c:2617. Bit depth from the file indexes a table
   unchecked. Global buffer over-read. Fixed in ba86c04 (2024-11-08).
5. ImageStrDecDecode, image/decode/strdec.c:3536. memset on a row buffer never allocated
   (colour format with no channels). NULL write, crash. Fixed in 190078d (2024-06-13).
6. ParsePFDEntry, jxrgluelib/JXRGlueJxr.c:1573. assert on the orientation tag; only builds
   with asserts enabled. Fixed in 7d2d462 (2026-05-13).

Items 2 to 5 reproduce under AddressSanitizer with upstream's own JxrDecApp
(JxrDecApp -i case.jxr -o out.bmp) on both Tom94 0e1337d and Debian's 1.2~git20170615.f752187-5.3.
mircomir 1.4.4 built with -DNDEBUG, as its Makefile and the Arch, MacPorts and openSUSE
packages build it, survives all 1,201 crash files from my fuzzing under AddressSanitizer.

Impact: a crash in any program that decodes an untrusted JPEG XR file, a few bytes of
adjacent memory possibly in the decoded output (items 2 to 4), and a heap overflow write
(item 1). I have no evidence of code execution. Exposure includes Calibre and ImageMagick
(through JxrDecApp), FreeImage and the image viewers built on it, KDE's kimageformats JXR
plugin where enabled (Arch, Fedora 43's kf6-kimageformats 6.18.0), and Wine's WIC decoder
(its bundled copy of jxrlib 1.1).

Still on unfixed code, as far as I can see:
- Debian (all releases) and Ubuntu: 1.2~git20170615.f752187
- Fedora, EPEL, openSUSE Leap: 1.1 (codeplex)
- Homebrew: Debian's orig tarball without Debian's patches
- vcpkg (4creators f7521879), conda-forge (1.1)
- Wine: bundled jxrlib 1.1 in libs/jxr
Already on 1.4.4: Arch, openSUSE Tumbleweed, MacPorts.
I reproduced the bugs on the Tom94 fork and on Debian's build only; the others are
inferred from their version.

Recommendation: move to mircomir/jxrlib 1.4.4. Test files and sanitizer logs are available
on request.

I don't know of CVE IDs for these; the fixes went in without advisories, several from
OSS-Fuzz reports. If someone with a CNA can assign them, that would help the distributions
track this.

Joachim Ruetter
https://featherview.mynetx.net

