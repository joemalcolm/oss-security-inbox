X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2818" "Thursday" "2" "March" "2017" "16:36:03" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<972966.932549269-sendEmail@localhost>" "65" "[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace (graphicsstack.h)" nil nil nil "3" "2017030216:36:03" "[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace (graphicsstack.h)" (number mark "U       ago@gentoo.o Mar  2   65/2818  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace (graphicsstack.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24277 invoked by uid 550); 2 Mar 2017 16:36:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23999 invoked from network); 2 Mar 2017 16:36:19 -0000
Message-ID: <972966.932549269-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:36:03 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-318045.25999269"
Subject: [oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace (graphicsstack.h)

------MIME delimiter for sendEmail-318045.25999269
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a null pointer dereference. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==32192==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x000000525f24 bp 0x7ffe0a1fdc90 sp 0x7ffe0a1fdc00 T0)
==32192==The signal is caused by a READ memory access.
==32192==Hint: address points to the zero page.
    #0 0x525f23 in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace(PoDoFo::EPdfColorSpace) /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/graphicsstack.h:83:38
    #1 0x525f23 in GraphicsStack::SetNonStrokingColorSpace(PoDoFo::EPdfColorSpace) /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/graphicsstack.h:129
    #2 0x525f23 in ColorChanger::ProcessColor(ColorChanger::EKeywordType, int, std::vector<PoDoFo::PdfVariant, std::allocator >&, GraphicsStack&) /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/colorchanger.cpp:478
    #3 0x521b3c in ColorChanger::ReplaceColorsInPage(PoDoFo::PdfCanvas*) /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/colorchanger.cpp:214:31
    #4 0x51ed8e in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/colorchanger.cpp:120:15
    #5 0x51c06d in main /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/podofocolor.cpp:116:12
    #6 0x7fc21680761f in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #7 0x428718 in _start (/usr/bin/podofocolor+0x428718)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/graphicsstack.h:83:38 in GraphicsStack::TGraphicsStackElement::SetNonStrokingColorSpace(PoDoFo::EPdfColorSpace)
==32192==ABORTING

Affected version:
0.9.4

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00173-podofo-nullptr-GraphicsStack-TGraphicsStackElement-SetNonStrokingColorSpace

Timeline:
2017-02-13: bug discovered
2017-03-02: bug reported to upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-null-pointer-dereference-in-podofopdfcoloroperator-pdfcolor-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-318045.25999269--

