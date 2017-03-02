X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2525" "Thursday" "2" "March" "2017" "16:33:47" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<313929.373256059-sendEmail@localhost>" "64" "[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement (graphicsstack.h)" nil nil nil "3" "2017030216:33:47" "[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement (graphicsstack.h)" (number mark "U       ago@gentoo.o Mar  2   64/2525  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement (graphicsstack.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7851 invoked by uid 550); 2 Mar 2017 16:34:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7638 invoked from network); 2 Mar 2017 16:34:04 -0000
Message-ID: <313929.373256059-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:33:47 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-964812.880921276"
Subject: [oss-security] podofo: NULL pointer dereference in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement (graphicsstack.h)

------MIME delimiter for sendEmail-964812.880921276
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a null pointer dereference. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==7677==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x00000054b701 bp 0x7ffe64ec7cb0 sp 0x7ffe64ec7c80 T0)
==7677==The signal is caused by a READ memory access.
==7677==Hint: address points to the zero page.
    #0 0x54b700 in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement() /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/graphicsstack.h:29:11
    #1 0x55b772 in std::deque<GraphicsStack::TGraphicsStackElement, std::allocator >::pop_back() /usr/lib/gcc/x86_64-pc-linux-gnu/4.9.4/include/g++-v4/bits/stl_deque.h:1459:4
    #2 0x52c84d in ColorChanger::ReplaceColorsInPage(PoDoFo::PdfCanvas*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:190:35
    #3 0x526921 in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:120:15
    #4 0x523b8d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/podofocolor.cpp:116:12
    #5 0x7fc9a444f78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x4300e8 in _start (/usr/bin/podofocolor+0x4300e8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/graphicsstack.h:29:11 in GraphicsStack::TGraphicsStackElement::~TGraphicsStackElement()
==7677==ABORTING

Affected version:
0.9.5

Fixed version:
N/A

Commit fix:
N/A

Credit:
This bug was discovered by Agostino Sarubbo of Gentoo.

CVE:
N/A

Reproducer:
https://github.com/asarubbo/poc/blob/master/00216-podofo-nullptr-graphicsstack-h

Timeline:
2017-03-01: bug discovered
2017-03-02: bug reported to upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-null-pointer-dereference-in-graphicsstacktgraphicsstackelementtgraphicsstackelement-graphicsstack-h

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-964812.880921276--

