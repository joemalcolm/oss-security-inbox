X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3248" "Thursday" "2" "March" "2017" "16:34:17" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<201613.082873763-sendEmail@localhost>" "69" "[oss-security] podofo: NULL pointer dereference in ColorChanger::GetColorFromStack (colorchanger.cpp)" nil nil nil "3" "2017030216:34:17" "[oss-security] podofo: NULL pointer dereference in ColorChanger::GetColorFromStack (colorchanger.cpp)" (number mark "U       ago@gentoo.o Mar  2   69/3248  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in ColorChanger::GetColorFromStack (colorchanger.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11529 invoked by uid 550); 2 Mar 2017 16:34:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11295 invoked from network); 2 Mar 2017 16:34:33 -0000
Message-ID: <201613.082873763-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:34:17 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-522225.322275521"
Subject: [oss-security] podofo: NULL pointer dereference in ColorChanger::GetColorFromStack (colorchanger.cpp)

------MIME delimiter for sendEmail-522225.322275521
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a null pointer access. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==18954==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x00000052302d bp 0x7fc24b8e2000 sp 0x7ffcaaf21810 T0)
==18954==The signal is caused by a READ memory access.
==18954==Hint: address points to the zero page.
    #0 0x52302c in getVtablePrefix /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/ubsan/ubsan_type_hash_itanium.cc:198
    #1 0x52302c in __ubsan::checkDynamicType(void*, void*, unsigned long) /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/ubsan/ubsan_type_hash_itanium.cc:221
    #2 0x521082 in HandleDynamicTypeCacheMiss /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/ubsan/ubsan_handlers_cxx.cc:37
    #3 0x521922 in __ubsan_handle_dynamic_type_cache_miss /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/ubsan/ubsan_handlers_cxx.cc:87
    #4 0x538eb2 in ColorChanger::GetColorFromStack(int, std::vector<PoDoFo::PdfVariant, std::allocator >&) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:430:33
    #5 0x530d50 in ColorChanger::ProcessColor(ColorChanger::EKeywordType, int, std::vector<PoDoFo::PdfVariant, std::allocator >&, GraphicsStack&) 
/tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:449:28
    #6 0x52c2a9 in ColorChanger::ReplaceColorsInPage(PoDoFo::PdfCanvas*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:214:31
    #7 0x526921 in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:120:15
    #8 0x523b8d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/podofocolor.cpp:116:12
    #9 0x7fc2490df78f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #10 0x4300e8 in _start (/usr/bin/podofocolor+0x4300e8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/sys-devel/llvm-3.9.1-r1/work/llvm-3.9.1.src/projects/compiler-rt/lib/ubsan/ubsan_type_hash_itanium.cc:198 in getVtablePrefix
==18954==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00217-podofo-nullptr-colorchanger-cpp

Timeline:
2017-03-01: bug discovered
2017-03-02: bug reported upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-null-pointer-dereference-in-colorchangergetcolorfromstack-colorchanger-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-522225.322275521--

