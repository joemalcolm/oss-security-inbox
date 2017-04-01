X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7247" "Saturday" "1" "April" "2017" "14:22:07" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<658335.788033099-sendEmail@localhost>" "128" "[oss-security] podofo: four null pointer dereference" nil nil nil "4" "2017040114:22:07" "[oss-security] podofo: four null pointer dereference" (number mark "U       ago@gentoo.o Apr  1  128/7247  " thread-indent "\"[oss-security] podofo: four null pointer dereference\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28032 invoked by uid 550); 1 Apr 2017 14:22:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27979 invoked from network); 1 Apr 2017 14:22:23 -0000
Message-ID: <658335.788033099-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Sat, 1 Apr 2017 14:22:07 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-696324.358302267"
Subject: [oss-security] podofo: four null pointer dereference

------MIME delimiter for sendEmail-696324.358302267
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it through the podofotxtextract command line tool reavealed some NULL dereferences. This post will be forwarded on the upstream mailing list.

The complete ASan output:

# podofotxtextract $FILE
==21905==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f2e6fad8bd8 bp 0x7ffee4f96d10 sp 0x7ffee4f96ca0 T0)
==21905==The signal is caused by a READ memory access.
==21905==Hint: address points to the zero page.
    #0 0x7f2e6fad8bd7 in PoDoFo::PdfPage::GetFromResources(PoDoFo::PdfName const&, PoDoFo::PdfName const&) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfPage.cpp:614:20
    #1 0x51dda3 in TextExtractor::ExtractText(PoDoFo::PdfMemDocument*, PoDoFo::PdfPage*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:98:47
    #2 0x51d021 in TextExtractor::Init(char const*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:48:15
    #3 0x539f6d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/podofotxtextract.cpp:52:17
    #4 0x7f2e6db4e6ff in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x420d48 in _start (/usr/bin/podofotxtextract+0x420d48)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfPage.cpp:614:20 in PoDoFo::PdfPage::GetFromResources(PoDoFo::PdfName const&, 
PoDoFo::PdfName const&)
Reproducer:
https://github.com/asarubbo/poc/blob/master/00250-podofo-nullptr1
CVE:
CVE-2017-7380

##############################################################

# podofotxtextract $FILE
==23885==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f44177e97b7 bp 0x7ffe130bed10 sp 0x7ffe130beca0 T0)
==23885==The signal is caused by a READ memory access.
==23885==Hint: address points to the zero page.
    #0 0x7f44177e97b6 in PoDoFo::PdfPage::GetFromResources(PoDoFo::PdfName const&, PoDoFo::PdfName const&) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfPage.cpp:609:23
    #1 0x51dda3 in TextExtractor::ExtractText(PoDoFo::PdfMemDocument*, PoDoFo::PdfPage*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:98:47
    #2 0x51d021 in TextExtractor::Init(char const*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:48:15
    #3 0x539f6d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/podofotxtextract.cpp:52:17
    #4 0x7f441585f6ff in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #5 0x420d48 in _start (/usr/bin/podofotxtextract+0x420d48)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfPage.cpp:609:23 in PoDoFo::PdfPage::GetFromResources(PoDoFo::PdfName const&, 
PoDoFo::PdfName const&)
Reproducer:
https://github.com/asarubbo/poc/blob/master/00251-podofo-nullptr2
CVE:
CVE-2017-7381

##############################################################

# podofotxtextract $FILE
==20388==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f08c6a3c3de bp 0x7ffd52235bd0 sp 0x7ffd52235b20 T0)
==20388==The signal is caused by a READ memory access.
==20388==Hint: address points to the zero page.
    #0 0x7f08c6a3c3dd in PoDoFo::PdfFontFactory::CreateFont(FT_LibraryRec_**, PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontFactory.cpp:200:88
    #1 0x7f08c6a1028d in PoDoFo::PdfFontCache::GetFont(PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontCache.cpp:362:22
    #2 0x51debb in TextExtractor::ExtractText(PoDoFo::PdfMemDocument*, PoDoFo::PdfPage*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:104:43
    #3 0x51d021 in TextExtractor::Init(char const*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:48:15
    #4 0x539f6d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/podofotxtextract.cpp:52:17
    #5 0x7f08c4c9a6ff in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x420d48 in _start (/usr/bin/podofotxtextract+0x420d48)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontFactory.cpp:200:88 in PoDoFo::PdfFontFactory::CreateFont(FT_LibraryRec_**, 
PoDoFo::PdfObject*)
Reproducer:
https://github.com/asarubbo/poc/blob/master/00251-podofo-nullptr3
CVE:
CVE-2017-7382

##############################################################

# podofotxtextract $FILE
==26727==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7f4c23dd5e41 bp 0x7ffd6ce24bd0 sp 0x7ffd6ce24b20 T0)
==26727==The signal is caused by a READ memory access.
==26727==Hint: address points to the zero page.
    #0 0x7f4c23dd5e40 in PoDoFo::PdfFontFactory::CreateFont(FT_LibraryRec_**, PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontFactory.cpp:195:62
    #1 0x7f4c23daa28d in PoDoFo::PdfFontCache::GetFont(PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontCache.cpp:362:22
    #2 0x51debb in TextExtractor::ExtractText(PoDoFo::PdfMemDocument*, PoDoFo::PdfPage*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:104:43
    #3 0x51d021 in TextExtractor::Init(char const*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/TextExtractor.cpp:48:15
    #4 0x539f6d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofotxtextract/podofotxtextract.cpp:52:17
    #5 0x7f4c220346ff in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x420d48 in _start (/usr/bin/podofotxtextract+0x420d48)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfFontFactory.cpp:195:62 in PoDoFo::PdfFontFactory::CreateFont(FT_LibraryRec_**, 
PoDoFo::PdfObject*)
Reproducer:
https://github.com/asarubbo/poc/blob/master/00252-podofo-nullptr4
CVE:
CVE-2017-7383

##############################################################

Affected version:
0.9.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
These bugs were discovered by Agostino Sarubbo of Gentoo.

Timeline:
2017-03-31: bug discovered and reported to upstream
2017-03-31: blog post about the issue
2017-03-31: CVE assigned

Note:
These bugs were found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/31/podofo-four-null-pointer-dereference

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-696324.358302267--

