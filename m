X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["996" "Wednesday" "1" "February" "2017" "16:12:19" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1546901.H7UEmAlt5H@blackgate>" "51" "[oss-security] podofo: NULL pointer dereference in PdfOutputStream.cpp" nil nil nil "2" "2017020115:12:19" "[oss-security] podofo: NULL pointer dereference in PdfOutputStream.cpp" (number mark "U       ago@gentoo.o Feb  1   51/996   " thread-indent "\"[oss-security] podofo: NULL pointer dereference in PdfOutputStream.cpp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20055 invoked by uid 550); 1 Feb 2017 15:12:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19617 invoked from network); 1 Feb 2017 15:12:35 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 16:12:19 +0100
Message-ID: <1546901.H7UEmAlt5H@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] podofo: NULL pointer dereference in PdfOutputStream.cpp

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it with the UBSAN discovered a NULL pointer access. The upstream=
=20
project denies me to open a new ticket. So, I=E2=80=99m unable to communica=
te with=20
them.

The complete UBSan output:

# podofopdfinfo $FILE
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfOutputStream.cpp:116:33:=20
runtime error: null pointer passed as argument 2, which is declared to neve=
r=20
be null

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
https://github.com/asarubbo/poc/blob/master/00143-podofo-nullptr-PdfOutputS=
tream

Timeline:
2017-01-05: bug discovered
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/podofo-null-pointer-dereference-in-=
pdfoutputstream-cpp

--=20
Agostino Sarubbo
Gentoo Linux Developer
