X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1007" "Wednesday" "1" "February" "2017" "16:11:32" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<5355415.NrOqTsZ7u2@blackgate>" "52" "[oss-security] podofo: signed integer overflow in PdfParser.cpp" nil nil nil "2" "2017020115:11:32" "[oss-security] podofo: signed integer overflow in PdfParser.cpp" (number mark "U       ago@gentoo.o Feb  1   52/1007  " thread-indent "\"[oss-security] podofo: signed integer overflow in PdfParser.cpp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11961 invoked by uid 550); 1 Feb 2017 15:11:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11934 invoked from network); 1 Feb 2017 15:11:48 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Wed, 01 Feb 2017 16:11:32 +0100
Message-ID: <5355415.NrOqTsZ7u2@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] podofo: signed integer overflow in PdfParser.cpp

Description:
podofo is a C++ library to work with the PDF file format.

A fuzz on it with the UBSAN discovered a signed integer overflow. The upstr=
eam=20
project denies me to open a new ticket. So, I=E2=80=99m unable to communica=
te with=20
them.

The complete UBSan output:

# podofopdfinfo $FILE
/tmp/portage/app-
text/podofo-0.9.4/work/podofo-0.9.4/src/base/PdfParser.cpp:757:23: runtime=
=20
error: signed integer overflow: 9223372036854775807 + 9 cannot be represent=
ed=20
in type 'long'

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
https://github.com/asarubbo/poc/blob/master/00144-podofo-signintoverflow-Pd=
fParser

Timeline:
2017-01-05: bug discovered
2017-02-01: blog post about the issue

Note:
This bug was found with American Fuzzy Lop.

Permalink:
https://blogs.gentoo.org/ago/2017/02/01/podofo-signed-integer-overflow-in-p=
dfparser-cpp

--=20
Agostino Sarubbo
Gentoo Linux Developer
