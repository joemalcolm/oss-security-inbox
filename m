X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2571" "Thursday" "2" "March" "2017" "16:33:13" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<921525.047483982-sendEmail@localhost>" "64" "[oss-security] podofo: invalid memory read in ColorChanger::GetColorFromStack (colorchanger.cpp)" nil nil nil "3" "2017030216:33:13" "[oss-security] podofo: invalid memory read in ColorChanger::GetColorFromStack (colorchanger.cpp)" (number mark "U       ago@gentoo.o Mar  2   64/2571  " thread-indent "\"[oss-security] podofo: invalid memory read in ColorChanger::GetColorFromStack (colorchanger.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3421 invoked by uid 550); 2 Mar 2017 16:33:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3388 invoked from network); 2 Mar 2017 16:33:31 -0000
Message-ID: <921525.047483982-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:33:13 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-782956.760450364"
Subject: [oss-security] podofo: invalid memory read in ColorChanger::GetColorFromStack (colorchanger.cpp)

------MIME delimiter for sendEmail-782956.760450364
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered an invalid memory read. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==9073==ERROR: AddressSanitizer: SEGV on unknown address 0xffffffffffffffe0 (pc 0x000000537d67 bp 0x7ffc54cb3c50 sp 0x7ffc54cb3ba0 T0)
==9073==The signal is caused by a READ memory access.
    #0 0x537d66 in ColorChanger::GetColorFromStack(int, std::vector<PoDoFo::PdfVariant, std::allocator >&) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:416:32
    #1 0x530d50 in ColorChanger::ProcessColor(ColorChanger::EKeywordType, int, std::vector<PoDoFo::PdfVariant, std::allocator >&, GraphicsStack&) 
/tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:449:28
    #2 0x52c2a9 in ColorChanger::ReplaceColorsInPage(PoDoFo::PdfCanvas*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:214:31
    #3 0x526921 in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:120:15
    #4 0x523b8d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/podofocolor.cpp:116:12
    #5 0x7f36fe7fe78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #6 0x4300e8 in _start (/usr/bin/podofocolor+0x4300e8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:416:32 in ColorChanger::GetColorFromStack(int, std::vector<PoDoFo::PdfVariant, std::allocator >&)
==9073==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00215-podofo-invalidread-colorchanger-cpp

Timeline:
2017-03-01: bug discovered
2017-03-02: bug reported upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-invalid-memory-read-in-colorchangergetcolorfromstack-colorchanger-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-782956.760450364--

