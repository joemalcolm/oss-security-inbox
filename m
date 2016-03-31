X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4657" "Thursday" "31" "March" "2016" "21:01:38" "+0200" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<56FD7412.2080905@igalia.com>" "110" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0003" "^Cc:" nil nil "3" "2016033119:01:38" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0003" (number mark "U       clopez@igali Mar 31  110/4657  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0003\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9415 invoked by uid 550); 31 Mar 2016 19:02:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9353 invoked from network); 31 Mar 2016 19:01:59 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DADAAJc/1W/5tjdVtdHYMXU32zS4dKDhQZgUQSD4VsgUU4FAEBAQEBAQFlJ4RrVQE8FgsCCwMCAQIBWAgCiCcBCbIAhTGLSQEBCAIBFQiCIIN+hX2GB4JWBYdrhWeKIIMggWZtiBWBZk6Df4c/gRuPFR4BQ4IRgVg6MIhtAQEB
X-IPAS-Result: A2DADAAJc/1W/5tjdVtdHYMXU32zS4dKDhQZgUQSD4VsgUU4FAEBAQEBAQFlJ4RrVQE8FgsCCwMCAQIBWAgCiCcBCbIAhTGLSQEBCAIBFQiCIIN+hX2GB4JWBYdrhWeKIIMggWZtiBWBZk6Df4c/gRuPFR4BQ4IRgVg6MIhtAQEB
X-IronPort-AV: E=Sophos;i="5.24,423,1454972400"; 
   d="asc'?scan'208";a="124029010"
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <56FD7412.2080905@igalia.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="cb5clDwUTP0Gs8hNAkCCP13DAqAMjkj0U"
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
Date: Thu, 31 Mar 2016 21:01:38 +0200
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0003
To: webkit-gtk@lists.webkit.org

--cb5clDwUTP0Gs8hNAkCCP13DAqAMjkj0U
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0003
------------------------------------------------------------------------

Date reported      : March 31, 2016
Advisory ID        : WSA-2016-0003
Advisory URL       : http://webkitgtk.org/security/WSA-2016-0003.html
CVE identifiers    : CVE-2016-1778, CVE-2016-1779, CVE-2016-1781,
                     CVE-2016-1782, CVE-2016-1783, CVE-2016-1785,
                     CVE-2016-1786.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2016-1778
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to 0x1byte working with Trend Micro's Zero Day Initiative
    (ZDI).
    WebKit in Apple iOS before 9.3 and Safari before 9.1 allows remote
    attackers to execute arbitrary code or cause a denial of service
    (memory corruption) via a crafted web site.

CVE-2016-1779
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to xisigr of Tencent's Xuanwu Lab (http://www.tencent.com).
    WebKit in Apple iOS before 9.3 and Safari before 9.1 allows remote
    attackers to bypass the Same Origin Policy and obtain physical-
    location data via a crafted geolocation request.

CVE-2016-1781
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Devdatta Akhawe of Dropbox, Inc.
    WebKit in Apple iOS before 9.3 and Safari before 9.1 mishandles
    attachment URLs, which makes it easier for remote web servers to
    track users via unspecified vectors.

CVE-2016-1782
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Muneaki Nishimura (nishimunea) of Recruit Technologies
    Co.,Ltd.
    WebKit in Apple iOS before 9.3 and Safari before 9.1 does not
    properly restrict redirects that specify a TCP port number, which
    allows remote attackers to bypass intended port restrictions via a
    crafted web site.

CVE-2016-1783
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Mihai Parparita of Google.
    WebKit in Apple iOS before 9.3, Safari before 9.1, and tvOS before
    9.2 allows remote attackers to execute arbitrary code or cause a
    denial of service (memory corruption) via a crafted web site.

CVE-2016-1785
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to an anonymous researcher.
    The Page Loading implementation in WebKit in Apple iOS before 9.3
    and Safari before 9.1 mishandles character encoding during access to
    cached data, which allows remote attackers to bypass the Same Origin
    Policy and obtain sensitive information via a crafted web site.

CVE-2016-1786
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to ma.la of LINE Corporation.
    The Page Loading implementation in WebKit in Apple iOS before 9.3
    and Safari before 9.1 mishandles HTTP responses with a 3xx (aka
    redirection) status code, which allows remote attackers to spoof the
    displayed URL, bypass the Same Origin Policy, and obtain sensitive
    cached information via a crafted web site.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: http://webkitgtk.org/security.html

The WebKitGTK+ team,
March 31, 2016


--cb5clDwUTP0Gs8hNAkCCP13DAqAMjkj0U
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJW/XQSAAoJEJZQic5rlfiCnG8P/1YMzpsrv0tRjISzy5YnAHOr
nyU9kyFcV+Iwk6Q1TM7visQxEpKnEMZQkiQk6/wEABCDJi55/m5dNgfAIslnbAA3
88XBdcLiBT7Nak7I+zF9y3S6TvBOkk/iD84V1K/nnNOGRrACeKErr54eeFvwTbRZ
Hf4oylsN/ItuoY1PXSuOSCqknxr6wAPw3MklLl3wQEeDWg3eP/I+8+/mASRIs7ET
RFbCM3r3ZH2n4sG/2H1kh7LWLGGGUUvCPakAOu2IE+Hrdxgz2p802EcrSC9nWGCP
xl2lZF6RZuJrdKBXWYLLlJEMsRf8tTT6UUwPATj0dPXgLQ59MSJ2t43ndGd6lv88
Ns1CyJcX6lIBnmYnUKIadWsGYNEdWftUS6r/0yArjHNKnI54/5CaVpQB+T5cOdUX
aePwn1SKEQ5qBmBKJdv8T3fOOxqgL66Kz0kteNO+fp08Jw4PElwAnenp1DpLGUQI
JdHHh1ZCqDp3xKdl4SzHVmqqbWeFnGMVrHQ9euETgzHvK7G736itiZYuX/sR5DoJ
UyYq4qAChdqW20inUsIEJIFtLAvCZg7/JjPS/TfDXjk7n/49a2Fl6pUty5efNRMn
QyxgWYEN26G6HCxsyt5kqftflKxXwLVHvV5lM7GmaUx7ERmR+91Yn4idixrJFxWE
m0btEe3335gRhRtGaf4i
=coYc
-----END PGP SIGNATURE-----

--cb5clDwUTP0Gs8hNAkCCP13DAqAMjkj0U--
