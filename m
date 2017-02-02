X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1268" "Thursday" "2" "February" "2017" "01:02:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<3d6e79c054e549a9962c037935bdb1b0@imshyb01.MITRE.ORG>" "31" "[oss-security] Re: podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)" nil nil nil "2" "2017020206:02:48" "[oss-security] Re: podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)" (number mark "U       cve-assign@m Feb  2   31/1268  " thread-indent "\"[oss-security] Re: podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)\"\n") "<2630972.8N57SaZZCj@blackgate>" ("<2630972.8N57SaZZCj@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15728 invoked by uid 550); 2 Feb 2017 06:03:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15647 invoked from network); 2 Feb 2017 06:03:00 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2630972.8N57SaZZCj@blackgate>
Message-ID: <3d6e79c054e549a9962c037935bdb1b0@imshyb01.MITRE.ORG>
Date: Thu, 2 Feb 2017 01:02:48 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: podofo: infinite loop in PoDoFo::PdfPage::GetInheritedKeyFromObject (PdfPage.cpp)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://blogs.gentoo.org/ago/2017/02/01/podofo-infinite-loop-in-podofopdfpagegetinheritedkeyfromobject-pdfpage-cpp
> AddressSanitizer: stack-overflow
> podofo-0.9.4/src/base/PdfVariant.cpp:151:20

Use CVE-2017-5852.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYkscVAAoJEHb/MwWLVhi2hy4P/1YzMOcoVFBE7j0E1WraZt9p
WZmGqpJMH/5IPc+cFMn/wGnMPssMn3G+mMOp9u1/f6+dqhSaShM7kBE2U3tYuLsX
trcvaH3cxQy39uAxje2JUZ32de4s4fYoAJnydN4fCDLVtLK7DgRRwmB0LN8xbB9r
D8eC16ISD2WBbqWshkW+w8cjIqZ6B+hOl4Z7iJDgYvm5YF/oXt3h8p8pjnnvlbd+
BGKbukI59xcqamyxQmftO+14BcrjJBGgOHN8V8Xu8uf7JppS50FS4IAYk5ikV4eZ
WEDuZNIey9vuxIAFY29yPc4ZfQYu7ngCGeSgXSAqKLYyUlcrTnLBDRxxuCyhd65V
ul03poDIG/6kAF7zjFA6sKSVNhpRPOoRNTTqvrEXSKZK7GxqYNlHXQM/gtXjF2rY
ZpWaXeaGBnHKOOxCWjdErZfriIB91Cd2UBiSSUw1kmF46uthFcuhUhQCVhSA2MVa
jX9LkI6gKrdAZjDu8IND9sDHxZiiUtL/QX4zeIh80ZtDVD7HfDp+ukZRKRz3d1Me
rdHOcQWkEGiZFwi4ErJ3LBr2oSag1DDR89jgCo3euu4LqCZ9ighv1WQkc8sGVnO1
qsboBNp+eXYf9aCzMl/tNA5qp6qmefowOCFxqE1476QP6PRuDG10F/XisQRjeGJq
hzk+CuS03nK65fnN+Vu8
=2dWy
-----END PGP SIGNATURE-----
