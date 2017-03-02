X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2391" "Thursday" "2" "March" "2017" "16:36:23" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<910426.377874927-sendEmail@localhost>" "64" "[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfVariant::DelayedLoad (PdfVariant.h)" nil nil nil "3" "2017030216:36:23" "[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfVariant::DelayedLoad (PdfVariant.h)" (number mark "U       ago@gentoo.o Mar  2   64/2391  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfVariant::DelayedLoad (PdfVariant.h)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26427 invoked by uid 550); 2 Mar 2017 16:36:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26250 invoked from network); 2 Mar 2017 16:36:40 -0000
Message-ID: <910426.377874927-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:36:23 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-370246.599734859"
Subject: [oss-security] podofo: NULL pointer dereference in PoDoFo::PdfVariant::DelayedLoad (PdfVariant.h)

------MIME delimiter for sendEmail-370246.599734859
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a null pointer dereference. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==5768==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000018 (pc 0x7f6504f1742c bp 0x7fffc41a0df0 sp 0x7fffc41a0d00 T0)
==5768==The signal is caused by a READ memory access.
==5768==Hint: address points to the zero page.
    #0 0x7f6504f1742b in PoDoFo::PdfVariant::DelayedLoad() const /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfVariant.h:545:10
    #1 0x7f6504f1742b in PoDoFo::PdfVariant::GetArray() /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfVariant.h:795
    #2 0x7f6504f1742b in PoDoFo::PdfXObject::PdfXObject(PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/src/doc/PdfXObject.cpp:264
    #3 0x51ff55 in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/colorchanger.cpp:137:28
    #4 0x51c06d in main /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/tools/podofocolor/podofocolor.cpp:116:12
    #5 0x7f650358c61f in __libc_start_main /var/tmp/portage/sys-libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #6 0x428718 in _start (/usr/bin/podofocolor+0x428718)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfVariant.h:545:10 in PoDoFo::PdfVariant::DelayedLoad() const
==5768==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00174-podofo-nullptr-PoDoFo-PdfVariant-DelayedLoad

Timeline:
2017-02-13: bug discovered
2017-03-02: bug reported to upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-null-pointer-dereference-in-podofopdfvariantdelayedload-pdfvariant-h

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-370246.599734859--

