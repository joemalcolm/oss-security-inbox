X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2114" "Thursday" "2" "March" "2017" "16:36:42" "+0000" "Agostino Sarubbo" "ago@gentoo.org" "<393990.264830308-sendEmail@localhost>" "62" "[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfXObject::PdfXObject (PdfXObject.cpp)" nil nil nil "3" "2017030216:36:42" "[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfXObject::PdfXObject (PdfXObject.cpp)" (number mark "U       ago@gentoo.o Mar  2   62/2114  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in PoDoFo::PdfXObject::PdfXObject (PdfXObject.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29980 invoked by uid 550); 2 Mar 2017 16:37:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28506 invoked from network); 2 Mar 2017 16:36:58 -0000
Message-ID: <393990.264830308-sendEmail@localhost>
From: "Agostino Sarubbo" <ago@gentoo.org>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Date: Thu, 2 Mar 2017 16:36:42 +0000
MIME-Version: 1.0
Content-Type: multipart/related; boundary="----MIME delimiter for sendEmail-466483.419136242"
Subject: [oss-security] podofo: NULL pointer dereference in PoDoFo::PdfXObject::PdfXObject (PdfXObject.cpp)

------MIME delimiter for sendEmail-466483.419136242
Content-Type: text/plain;
        charset="UTF-8"
Content-Transfer-Encoding: 7bit

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a null pointer dereference. The upstream project denies me to open a new ticket. So, I just will forward this on the -users mailing list.

The complete ASan output:

# podofocolor dummy $FILE foo
==21036==ERROR: AddressSanitizer: SEGV on unknown address 0x000000000000 (pc 0x7fc5cfd94743 bp 0x7ffc1eaffe50 sp 0x7ffc1eaffd40 T0)
==21036==The signal is caused by a READ memory access.
==21036==Hint: address points to the zero page.
    #0 0x7fc5cfd94742 in PoDoFo::PdfXObject::PdfXObject(PoDoFo::PdfObject*) /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfXObject.cpp:264:74
    #1 0x529308 in ColorChanger::start() /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/colorchanger.cpp:137:28
    #2 0x523b8d in main /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/tools/podofocolor/podofocolor.cpp:116:12
    #3 0x7fc5cd8d178f in __libc_start_main /tmp/portage/sys-libs/glibc-2.23-r3/work/glibc-2.23/csu/../csu/libc-start.c:289
    #4 0x4300e8 in _start (/usr/bin/podofocolor+0x4300e8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-text/podofo-0.9.5/work/podofo-0.9.5/src/doc/PdfXObject.cpp:264:74 in PoDoFo::PdfXObject::PdfXObject(PoDoFo::PdfObject*)
==21036==ABORTING

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
https://github.com/asarubbo/poc/blob/master/00214-podofo-nullptr-PdfXObject-cpp

Timeline:
2017-03-01: bug discovered
2017-03-02: bug reported upstream
2017-03-02: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/03/02/podofo-null-pointer-dereference-in-podofopdfxobjectpdfxobject-pdfxobject-cpp

--
Agostino Sarubbo
Gentoo Linux Developer


------MIME delimiter for sendEmail-466483.419136242--

