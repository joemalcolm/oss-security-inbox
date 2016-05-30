X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4277" "Monday" "30" "May" "2016" "15:50:43" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<574C4533.6020504@igalia.com>" "99" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0004" nil nil nil "5" "2016053013:50:43" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0004" (number mark "U       clopez@igali May 30   99/4277  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0004\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5817 invoked by uid 550); 30 May 2016 13:51:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5721 invoked from network); 30 May 2016 13:51:09 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DoAgBqRExX/5tjdVtdHQGDHlZ9jSVtpBSHXg6BeRIQhW+BMTgUAQEBAQEBAWUnhG9VATwWCwILAwIBAgFYCAKILwEJqwqRESMOgiSEA4YGg1OCPYJZBYgEjVaCXYMrgWhtiCCBaU6EAYdJgRuPTB4BQ4ITgVxsiT0BAQE
X-IPAS-Result: A2DoAgBqRExX/5tjdVtdHQGDHlZ9jSVtpBSHXg6BeRIQhW+BMTgUAQEBAQEBAWUnhG9VATwWCwILAwIBAgFYCAKILwEJqwqRESMOgiSEA4YGg1OCPYJZBYgEjVaCXYMrgWhtiCCBaU6EAYdJgRuPTB4BQ4ITgVxsiT0BAQE
X-IronPort-AV: E=Sophos;i="5.26,389,1459807200"; 
   d="asc'?scan'208";a="150993145"
To: webkit-gtk@lists.webkit.org
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <574C4533.6020504@igalia.com>
Date: Mon, 30 May 2016 15:50:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="jbjnB7vUNdC3UrBga7OmxotFO8Ldh18wO"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0004

--jbjnB7vUNdC3UrBga7OmxotFO8Ldh18wO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0004
------------------------------------------------------------------------

Date reported      : May 30, 2016
Advisory ID        : WSA-2016-0004
Advisory URL       : http://webkitgtk.org/security/WSA-2016-0004.html
CVE identifiers    : CVE-2016-1854, CVE-2016-1856, CVE-2016-1857,
                     CVE-2016-1858, CVE-2016-1859.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2016-1854
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to Anonymous working with Trend Micro's Zero Day Initiative.
    WebKit, as used in Apple iOS before 9.3.2, Safari before 9.1.1, and
    tvOS before 9.2.1, allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-1855, CVE-2016-1856,
    and CVE-2016-1857.

CVE-2016-1856
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to lokihardt working with Trend Micro's Zero Day Initiative.
    WebKit, as used in Apple iOS before 9.3.2, Safari before 9.1.1, and
    tvOS before 9.2.1, allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-1854, CVE-2016-1855,
    and CVE-2016-1857.

CVE-2016-1857
    Versions affected: WebKitGTK+ before 2.12.3.
    Credit to Jeonghoon Shin@A.D.D and Liang Chen, Zhen Feng, wushi of
    KeenLab, Tencent working with Trend Micro's Zero Day Initiative.
    WebKit, as used in Apple iOS before 9.3.2, Safari before 9.1.1, and
    tvOS before 9.2.1, allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-1854, CVE-2016-1855,
    and CVE-2016-1856.

CVE-2016-1858
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Anonymous.
    WebKit, as used in Apple iOS before 9.3.2, Safari before 9.1.1, and
    tvOS before 9.2.1, improperly tracks taint attributes, which allows
    remote attackers to obtain sensitive information via a crafted web
    site.

CVE-2016-1859
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to Liang Chen, wushi of KeenLab, Tencent working with Trend
    Micro's Zero Day Initiative.
    The WebKit Canvas implementation in Apple iOS before 9.3.2, Safari
    before 9.1.1, and tvOS before 9.2.1 allows remote attackers to
    execute arbitrary code or cause a denial of service (memory
    corruption) via a crafted web site.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: http://webkitgtk.org/security.html

The WebKitGTK+ team,
May 30, 2016


--jbjnB7vUNdC3UrBga7OmxotFO8Ldh18wO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXTEUzAAoJEJZQic5rlfiCJ88QALhMslQtEOUuFsyRg+2DY4Fh
XALr/lxCECObm144TDauyRU9cgUkJj29ntK+ktQQXm1/KN8AlmtQB/64/QJYLPim
nrmp/5MTR7JAYYJxt9L7x6kIihsnR8AKPa+iN+0f2uuMxitzojsjoq6/F1UbaswB
uyE9IouzdT9nv0nlanMLcO5zpyif3N7uqloyttqhsKwE/9mMuuhw4MhStX9wP+HG
kcwdNHJbZwApWLj5VVedfiGq9J6nJr4mSFei3PQwdrIDSL51/s4ieIAJ4ueXXgXa
SogCkh/bw66evNKv2WCpP/W6Dh3Hnqkc6/yvh114TwDHFOAygOnEvJznDXcTD+Ft
NKavplOI+RI9Ec9Zl3D2s8jAE+ooOwbpyWe5ElPm2NeCEF8l/xnTJjWzvzfgVkCN
BQ8l2keO98R+O3fnQlD7ZWABF19qmjyLB5g265tqc2mU6DOo57vK0XdKyZfaaefO
dKLFombeBrXgx5OBtW7j4ObYZ6lKpUZx7JUQmiagKujIm/PkOSX/GjYwVsodyb7C
NGhk0cy6ENiG53IOzCE6q5aM64NDDy7noTfDHE43kOnJYTl7ZLGrLxVOk9hEVgVN
LCbWcHCXPi/WgVxn32KYFiUuwdSWI3XnBNWk8uBmkntVXnQj1I1OduuddprPXnqo
fj1xmrMTWW11u6tVtfAm
=f2y7
-----END PGP SIGNATURE-----

--jbjnB7vUNdC3UrBga7OmxotFO8Ldh18wO--
