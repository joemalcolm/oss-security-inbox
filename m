X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3085" "Monday" "1" "February" "2016" "18:02:28" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<56AF8FA4.9020409@igalia.com>" "73" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0001" "^Cc:" nil nil "2" "2016020117:02:28" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0001" (number mark "U       clopez@igali Feb  1   73/3085  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0001\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7317 invoked by uid 550); 1 Feb 2016 17:03:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7204 invoked from network); 1 Feb 2016 17:02:52 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CsAgDqjq9W/5tjdVteGQEBAQEHAQcBAQEBgwpSbYhYqiuHMg6BZBMPhW2BPjgUAQEBAQEBAYEKhGtVATwWCwILAwIBAgFYCAKIGwEJrkuOUCIIgh+DcAGFbINIgjSBOgWHU48cgnqBY2qIBIFbSoN4hzmBGo4+HgFDgg+BXmmIfQEBAQ
X-IPAS-Result: A2CsAgDqjq9W/5tjdVteGQEBAQEHAQcBAQEBgwpSbYhYqiuHMg6BZBMPhW2BPjgUAQEBAQEBAYEKhGtVATwWCwILAwIBAgFYCAKIGwEJrkuOUCIIgh+DcAGFbINIgjSBOgWHU48cgnqBY2qIBIFbSoN4hzmBGo4+HgFDgg+BXmmIfQEBAQ
X-IronPort-AV: E=Sophos;i="5.22,381,1449529200"; 
   d="asc'?scan'208";a="80221001"
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <56AF8FA4.9020409@igalia.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="AIh7isNnuBnFqvJrKxrQrXP7KXWEd5ER1"
Cc: bugtraq@securityfocus.com, oss-security@lists.openwall.com
Date: Mon, 1 Feb 2016 18:02:28 +0100
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0001
To: webkit-gtk@lists.webkit.org

--AIh7isNnuBnFqvJrKxrQrXP7KXWEd5ER1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0001
------------------------------------------------------------------------

Date reported      : February 01, 2016
Advisory ID        : WSA-2016-0001
Advisory URL       : http://webkitgtk.org/security/WSA-2016-0001.html
CVE identifiers    : CVE-2015-7096, CVE-2015-7098.

Several vulnerabilities were discovered on WebKitGTK+.

CVE-2015-7096
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit in Apple iOS before 9.2, Safari before 9.0.2, and tvOS before
    9.1 allows remote attackers to execute arbitrary code or cause a
    denial of service (memory corruption and application crash) via a
    crafted web site, a different vulnerability than CVE-2015-7048,
    CVE-2015-7095, CVE-2015-7097, CVE-2015-7098, CVE-2015-7099,
    CVE-2015-7100, CVE-2015-7101, CVE-2015-7102, and CVE-2015-7103.

CVE-2015-7098
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit in Apple iOS before 9.2, Safari before 9.0.2, and tvOS before
    9.1 allows remote attackers to execute arbitrary code or cause a
    denial of service (memory corruption and application crash) via a
    crafted web site, a different vulnerability than CVE-2015-7048,
    CVE-2015-7095, CVE-2015-7096, CVE-2015-7097, CVE-2015-7099,
    CVE-2015-7100, CVE-2015-7101, CVE-2015-7102, and CVE-2015-7103.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: http://webkitgtk.org/security.html

The WebKitGTK+ team,
February 01, 2016


--AIh7isNnuBnFqvJrKxrQrXP7KXWEd5ER1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJWr4+kAAoJEJZQic5rlfiCfikQAJ9tDkwaVFVcq7Jm/1uLpKuV
iSgA06oLsy78w55Q7K+mVK+k5MKabLVpQ9c8jBCrK43saI+hV3NqclgtZmq++34e
LL2jO41rxIWO6JSDbv9R/xZzorBycC77ENWd+KgVfA9yz1oqv06j9b8d7P2+a8V/
IikHMeySP9vR0xL3cXHOn6zCzUQpTXV05H93WErsEJfhj/USOYH5W9n//a6ZLNNF
m6TiQrWvnrJuSg9djk50M+pqRDK7lzkBQ4+3ukNjLvxRw1ptGdd/SPcs8aigEr4L
GSgLJGQRzV3nxpD065PbejgmfZAe3U/b/DnN+na8PEeSwotTGsaA2BkkOAJf5LFd
JDmtjyyFuSxnp3mMDiskigcCBq7zImf4WfzyjLvK/7toipK+rUkF9qGO+eNJ6XTd
ow1ptmR8W8ugGSf39ry2st2u3UDcJMKBS6KvOOMaVJq7zZWEDWtrX8vNKrhbInWu
pnB+SM2VJFuhcZj9Pg0K5q+w7cDhRVesm3AT8UOJw84bvQw84jl9m0mIbmECzpoT
VDl3YIPQAEUQJ9Q+E1ZA+mGCPDvifYegN4+Obi+ZoHLGCFquf4WzOtwzBzqrDfZe
cDrrNd16bfGYHgmwXT/EAejYtltiu4mgAdMOWm+7qgQCSxjC01JZya6WYsMChKFQ
+r3yDrvn/h9s+N/fg492
=sVgu
-----END PGP SIGNATURE-----

--AIh7isNnuBnFqvJrKxrQrXP7KXWEd5ER1--
