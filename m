X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1276" "Thursday" "2" "February" "2017" "01:07:10" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<452d9ee52081437e940914230d7641db@imshyb01.MITRE.ORG>" "31" "[oss-security] Re: podofo: signed integer overflow in PdfParser.cpp" nil nil nil "2" "2017020206:07:10" "[oss-security] Re: podofo: signed integer overflow in PdfParser.cpp" (number mark "U       cve-assign@m Feb  2   31/1276  " thread-indent "\"[oss-security] Re: podofo: signed integer overflow in PdfParser.cpp\"\n") "<5355415.NrOqTsZ7u2@blackgate>" ("<5355415.NrOqTsZ7u2@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32695 invoked by uid 550); 2 Feb 2017 06:07:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32667 invoked from network); 2 Feb 2017 06:07:22 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <5355415.NrOqTsZ7u2@blackgate>
Message-ID: <452d9ee52081437e940914230d7641db@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:07:10 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: podofo: signed integer overflow in PdfParser.cpp

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/02/01/podofo-signed-integer-overflow-in-pdfparser-cpp
> base/PdfParser.cpp:757:23
> signed integer overflow: 9223372036854775807 + 9 cannot be represented in type 'long'

Use CVE-2017-5853.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYksccAAoJEHb/MwWLVhi2KtcP/RPXFhE/48/qEcYDPurBglJ1
lr8iO0O4kxomYc824syNx3W9DiVPTCl1b/V9w8kmKcYv5ST/Jau+jK8L/Ru1shCA
munHxDPKJ6aLtbITZClfw8Xaxm4aN+Kw31ymk8p07SDsxnleRtIrD2ycikFuRfE4
6m9grxkGSSCuom2LKeYQxdvc12WkyXYUXCrPw9j/psGv9qPcVJFbg/HGXRqPlyCX
b8b4yPj44/e6aIEm+xlIArAdHv13SHm9Y5yD48VKDYsHuN4a29l23MW3C2iUUTpX
vkW/TVfGY+/posT4UZBaRo79O4Yg7sjwQlWgCA94oyzFdWycQ2jWuBul8dlFsYBv
oxzJdeohLdzsXnYMHaStfF8V4a1co1sFbrAWsqvpV7ZVaXqqYx6WfWHTRIVjkjZF
xEW/7y1SSxnX3hHZHO79931OD9IserWTjQdCTXvkI2+ZW5vEJRdn6WLkN8kqeypS
a+75z5vr+CkY3ilYDiTI4dSq2KHfWrXZkkSHdZd1FQWjlZNElOLQOSAnDEk0zCxr
sZbkKu0Ik6eS27HsOpqhrobYqujxPiXUwh+MG/7m7zEEOCnL9dbFw7BPOpXKFf7s
q5AG9gW9J+Y/iSJJ2FHTnkxUp6nbNklYSqrqqYsTL801Ae5l3d0KaCp4UqLhKqhD
AObpfPPx/2QbA1pZXYIG
=cD7a
-----END PGP SIGNATURE-----
