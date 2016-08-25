X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6871" "Thursday" "25" "August" "2016" "02:02:16" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<57BE3588.40608@igalia.com>" "163" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0005" nil nil nil "8" "2016082500:02:16" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0005" (number mark "U       clopez@igali Aug 25  163/6871  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0005\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28586 invoked by uid 550); 25 Aug 2016 00:02:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28536 invoked from network); 25 Aug 2016 00:02:43 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2D3AQDhNL5X/5tjdVtcHAEBgwsBAQEBAR5WfI0uqmWBfhQQhXmBTDgUAQEBAQEBAQEBXhwLhQtWPBQNAhECTA0IAogyAQmwEY9tAQEBAQYCARYOgimEBYYGhgmCWgWIK4YAix2DPoFzb4kDgW2EXIMQhFSBI4xAg3keNoIigV1uiFcBAQE
X-IPAS-Result: A2D3AQDhNL5X/5tjdVtcHAEBgwsBAQEBAR5WfI0uqmWBfhQQhXmBTDgUAQEBAQEBAQEBXhwLhQtWPBQNAhECTA0IAogyAQmwEY9tAQEBAQYCARYOgimEBYYGhgmCWgWIK4YAix2DPoFzb4kDgW2EXIMQhFSBI4xAg3keNoIigV1uiFcBAQE
X-IronPort-AV: E=Sophos;i="5.28,573,1464645600"; 
   d="asc'?scan'208";a="164997982"
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <57BE3588.40608@igalia.com>
Date: Thu, 25 Aug 2016 02:02:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="dCnJfacq2LEMW83bt7PtN76ooCi1pwbRM"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0005

--dCnJfacq2LEMW83bt7PtN76ooCi1pwbRM
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0005
------------------------------------------------------------------------

Date reported      : August 25, 2016
Advisory ID        : WSA-2016-0005
Advisory URL       : https://webkitgtk.org/security/WSA-2016-0005.html
CVE identifiers    : CVE-2016-4583, CVE-2016-4585, CVE-2016-4586,
                     CVE-2016-4587, CVE-2016-4588, CVE-2016-4589,
                     CVE-2016-4590, CVE-2016-4591, CVE-2016-4592,
                     CVE-2016-4622, CVE-2016-4623, CVE-2016-4624,
                     CVE-2016-4651.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2016-4583
    Versions affected: WebKitGTK+ before 2.12.2.
    Credit to Roeland Krak.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to bypass the Same Origin
    Policy and obtain image date from an unintended web site via a
    timing attack involving an SVG document.

CVE-2016-4585
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to Takeshi Terada of Mitsui Bussan Secure Directions, Inc.
    (www.mbsd.jp).
    Cross-site scripting (XSS) vulnerability in the WebKit Page Loading
    implementation in Apple iOS before 9.3.3, Safari before 9.1.2, and
    tvOS before 9.2.2 allows remote attackers to inject arbitrary web
    script or HTML via an HTTP response specifying redirection that is
    mishandled by Safari.

CVE-2016-4586
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to Apple.
    WebKit in Apple Safari before 9.1.2 and tvOS before 9.2.2 allows
    remote attackers to execute arbitrary code or cause a denial of
    service (memory corruption) via a crafted web site.

CVE-2016-4587
    Versions affected: WebKitGTK+ before 2.10.1.
    Credit to Apple.
    WebKit in Apple iOS before 9.3.3 and tvOS before 9.2.2 allows remote
    attackers to obtain sensitive information from uninitialized process
    memory via a crafted web site.

CVE-2016-4588
    Versions affected: WebKitGTK+ before 2.12.3.
    Credit to Apple.
    WebKit in Apple tvOS before 9.2.2 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site.

CVE-2016-4589
    Versions affected: WebKitGTK+ before 2.12.3.
    Credit to Tongbo Luo and Bo Qu of Palo Alto Networks.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-4622, CVE-2016-4623,
    and CVE-2016-4624.

CVE-2016-4590
    Versions affected: WebKitGTK+ before 2.12.4.
    Credit to xisigr of Tencent's Xuanwu Lab (www.tencent.com).
    WebKit in Apple iOS before 9.3.3 and Safari before 9.1.2 mishandles
    about: URLs, which allows remote attackers to bypass the Same Origin
    Policy via a crafted web site.

CVE-2016-4591
    Versions affected: WebKitGTK+ before 2.12.4.
    Credit to ma.la of LINE Corporation.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 mishandles the location variable, which allows remote
    attackers to access the local filesystem via unspecified vectors.

CVE-2016-4592
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Mikhail.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to cause a denial of service
    (memory consumption) via a crafted web site.

CVE-2016-4622
    Versions affected: WebKitGTK+ before 2.12.4.
    Credit to Samuel Gross working with Trend Micro's Zero Day
    Initiative.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-4589, CVE-2016-4623,
    and CVE-2016-4624.

CVE-2016-4623
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Apple.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-4589, CVE-2016-4622,
    and CVE-2016-4624.

CVE-2016-4624
    Versions affected: WebKitGTK+ before 2.12.4.
    Credit to Apple.
    WebKit in Apple iOS before 9.3.3, Safari before 9.1.2, and tvOS
    before 9.2.2 allows remote attackers to execute arbitrary code or
    cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-4589, CVE-2016-4622,
    and CVE-2016-4623.

CVE-2016-4651
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Obscure.
    Cross-site scripting (XSS) vulnerability in the WebKit JavaScript
    bindings in Apple iOS before 9.3.3 and Safari before 9.1.2 allows
    remote attackers to inject arbitrary web script or HTML via a
    crafted HTTP/0.9 response, related to a "cross-protocol cross-site
    scripting (XPXSS)" vulnerability.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
August 25, 2016


--dCnJfacq2LEMW83bt7PtN76ooCi1pwbRM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJXvjWIAAoJEJZQic5rlfiC67gQAKob7Hab+1HJbWsvTFeWJvbF
2RBfRcD22PtuaI79T2A/dcJ5gPni0kLV6KS9xI9E0Frq/9fOsgt7AqQ5ccyFxBAL
GyXEp3GGKHZYcuru9a6WazAN7cgfVxD68KaSbYyvhgWvosvW7THR/e7SGSOXuFDt
U7PB6wbDmlt/DdeV2pcmljneKVCFr9CDOebICG8FQlANmediUP4lb+EVupcw8Mi4
sgFbo7ydll4FTfCa12NQwo+xKXHbqVtt7cY/CEwJmKM/jv8gCDpAVrvx2pM2wPyu
3+C2u9XC+ckiQeQZ1WsrFXxoCprTJAioqWv0xu0IRW3i9L5GklzYc8ctHYYUyqZ1
p1IlbtEiCmC+Mmg+04zA9p98eB/KqILRRMbOR8XLgxsQ8AFrQt+3Nqyx67n77sJy
TRIiwrzoKofl8qnEOri8IPEBE20N7e0yNN8ObaUXhkutNVhvbAP9/Q6nQLYc13/C
Sntlju9l5g4PbFkekpUKy7AUc5JW6C2Hi1Uodjg03YKhLoSkGfQCSE6fiU+M0yBD
RRWES+j6HqKMiCHo07jbR5Yg374R9fcPoA2V4Y1YLGRGJROkPR+wSkEsRlKYWxpw
kIY0x60DkTfZ1wkfDzeDS0JopuMnTCjfmKDtDQa/SKrPHgX/7CX5u0cSmEeTvd+y
OVFGyFzesuv95XW8su7m
=OGm1
-----END PGP SIGNATURE-----

--dCnJfacq2LEMW83bt7PtN76ooCi1pwbRM--
