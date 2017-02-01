X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1891" "Wednesday" "1" "February" "2017" "16:13:57" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<5047388.q5AdsWxC1J@blackgate>" "66" "[oss-security] podofo: NULL pointer dereference in PdfInfo::GuessFormat (pdfinfo.cpp)" nil nil nil "2" "2017020115:13:57" "[oss-security] podofo: NULL pointer dereference in PdfInfo::GuessFormat (pdfinfo.cpp)" (number mark "U       ago@gentoo.o Feb  1   66/1891  " thread-indent "\"[oss-security] podofo: NULL pointer dereference in PdfInfo::GuessFormat (pdfinfo.cpp)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1400 invoked by uid 550); 1 Feb 2017 15:14:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32444 invoked from network); 1 Feb 2017 15:14:13 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 16:13:57 +0100
Message-ID: <5047388.q5AdsWxC1J@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] podofo: NULL pointer dereference in PdfInfo::GuessFormat (pdfinfo.cpp)

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it discovered a NULL pointer access. The upstream project denies =
me=20
to open a new ticket. So, I=E2=80=99m unable to communicate with them.

The complete ASan output:

# podofopdfinfo $FILE
=3D=3D24654=3D=3DERROR: AddressSanitizer: SEGV on unknown address 0x0000000=
00000 (pc=20
0x0000005149a7 bp 0x7ffe59e91e70 sp 0x7ffe59e91d80 T0)
=3D=3D24654=3D=3DThe signal is caused by a READ memory access.
=3D=3D24654=3D=3DHint: address points to the zero page.
    #0 0x5149a6 in PdfInfo::GuessFormat() /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofopdfinfo/pdfinfo.cpp:210:19
    #1 0x512351 in PdfInfo::OutputDocumentInfo(std::ostream&)=20
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofopdfinfo/pdfinfo.cpp:40:35
    #2 0x522132 in main /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofopdfinfo/podofopdfinfo.cpp:1=
17:18
    #3 0x7fcaaf4b861f in __libc_start_main /var/tmp/portage/sys-
libs/glibc-2.22-r4/work/glibc-2.22/csu/libc-start.c:289
    #4 0x41e8f8 in _start (/usr/bin/podofopdfinfo+0x41e8f8)

AddressSanitizer can not provide additional info.
SUMMARY: AddressSanitizer: SEGV /tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/tools/podofopdfinfo/pdfinfo.cpp:210:19 =
in=20
PdfInfo::GuessFormat()
=3D=3D24654=3D=3DABORTING

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
https://github.com/asarubbo/poc/blob/master/00133-podofo-nullptr-pdfinfo-cpp

Timeline:
2017-01-05: bug discovered
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/podofo-null-pointer-dereference-in-=
pdfinfoguessformat-pdfinfo-cpp

--=20
Agostino Sarubbo
Gentoo Linux Developer
