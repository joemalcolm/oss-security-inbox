X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1273" "Thursday" "2" "February" "2017" "01:08:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<6894c38550b74c359fe000e3a47fbdfc@imshyb01.MITRE.ORG>" "31" "[oss-security] Re: podofo: NULL pointer dereference in PdfOutputStream.cpp" nil nil nil "2" "2017020206:08:48" "[oss-security] Re: podofo: NULL pointer dereference in PdfOutputStream.cpp" (number mark "U       cve-assign@m Feb  2   31/1273  " thread-indent "\"[oss-security] Re: podofo: NULL pointer dereference in PdfOutputStream.cpp\"\n") "<1546901.H7UEmAlt5H@blackgate>" ("<1546901.H7UEmAlt5H@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13599 invoked by uid 550); 2 Feb 2017 06:09:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13536 invoked from network); 2 Feb 2017 06:09:00 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <1546901.H7UEmAlt5H@blackgate>
Message-ID: <6894c38550b74c359fe000e3a47fbdfc@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:08:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: podofo: NULL pointer dereference in PdfOutputStream.cpp

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/02/01/podofo-null-pointer-dereference-in-pdfoutputstream-cpp
> base/PdfOutputStream.cpp:116:33
> null pointer passed as argument 2, which is declared to never be null

Use CVE-2017-5854.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscmAAoJEHb/MwWLVhi2n5QQALNRqal5Rg2zsFOPzryh+zyD
f+rk+2P/wXRHWKsTDD36YHrePJWu9f4sdcawq5SLQ5E4dLmqhCkFcKxrlf66Y2b5
kFDOvNicb/X0CcJ4TLj/XH5J26v3x1CI+sacRU4WuEy7U1yOTqgSuIycrlxysOaQ
4ze/4RYT6hwkdESM6PHwO2KGEOJ9ZLvMXGJaVtXHEsycqya4FgQlbbHabNhfWBDv
HRKiUnBukaSmRd+82ZU21u4CmYz/3vDp9vjkWPTnrfZ0kPQlgO+vsanGAd1UZLZu
nZXb++ApsB3yZm2qJ2LUuMuw6scxfp/baDJtOeRZKq/17DarGSQ/jb2Z+cN5ZEoj
VAT1AOoPIymK7H46erniJYL1gIsCPq47lmhfVyjBAL3zHAYeMeuPHxBT/lUwYh/I
5fWi46WL08x1nOo2H6EXkMq76YIEHXMS+SXIf+O7VGGxy46lYS2e0Wucemr/PGGP
l7hKdY8uPaFsWLMyBDDhTY/2K+wbOSP1JipCxCCc/MMTBqypArtshBwXJoONWGme
yglZBhO6cjv1dxfidYO+eBzz5lTV6efxaIGoX/DHqZwVoAKL9jsR1UOpRM71DiEY
KKJmm5xpyJ6CB77Ca042VlxJU5WpH1g26rcTuErnY9D5LNe622ix1//pvZ39cqqz
yunPm/rZRwmZKIKwikVH
=DC0Z
-----END PGP SIGNATURE-----
