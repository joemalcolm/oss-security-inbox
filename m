X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4378" "Friday" "11" "March" "2016" "15:25:39" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<56E2D563.2070106@igalia.com>" "104" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0002" "^Cc:" nil nil "3" "2016031114:25:39" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0002" (number mark "        clopez@igali Mar 11  104/4378  " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0002\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5714 invoked by uid 550); 11 Mar 2016 14:26:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5665 invoked from network); 11 Mar 2016 14:26:03 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AcAwCK1OJW/5tjdVteGQEDEgEBgw1SbbJxhzkOgW0SD4VsgTE4FAEBAQEBAQFkJ4RrVQE8FgsCCwMCAQIBWAgCiCQBCa1XjyIiCIIgg3iFeYNPgjSBOgWHX49kgxqBZm2ID4FkS4N9hzyBGo5xHgFDghCBVWmKUQEBAQ
X-IPAS-Result: A2AcAwCK1OJW/5tjdVteGQEDEgEBgw1SbbJxhzkOgW0SD4VsgTE4FAEBAQEBAQFkJ4RrVQE8FgsCCwMCAQIBWAgCiCQBCa1XjyIiCIIgg3iFeYNPgjSBOgWHX49kgxqBZm2ID4FkS4N9hzyBGo5xHgFDghCBVWmKUQEBAQ
X-IronPort-AV: E=Sophos;i="5.24,320,1454972400"; 
   d="asc'?scan'208";a="96752129"
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
X-Enigmail-Draft-Status: N1110
Organization: Igalia S.L.
Message-ID: <56E2D563.2070106@igalia.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="iHQkVrJGaddWgjjtO4vAv5juDTBFnPWje"
Cc: bugtraq@securityfocus.com, oss-security@lists.openwall.com
Date: Fri, 11 Mar 2016 15:25:39 +0100
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0002
To: webkit-gtk@lists.webkit.org

--iHQkVrJGaddWgjjtO4vAv5juDTBFnPWje
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0002
------------------------------------------------------------------------

Date reported      : March 11, 2016
Advisory ID        : WSA-2016-0002
Advisory URL       : http://webkitgtk.org/security/WSA-2016-0002.html
CVE identifiers    : CVE-2016-1723, CVE-2016-1724, CVE-2016-1725,
                     CVE-2016-1726, CVE-2016-1727, CVE-2016-1728.

Several vulnerabilities were discovered on WebKitGTK+.

CVE-2016-1723
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit, as used in Apple iOS before 9.2.1 and Safari before 9.0.3,
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-1725 and CVE-2016-1726.

CVE-2016-1724
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit, as used in Apple iOS before 9.2.1, Safari before 9.0.3, and
    tvOS before 9.1.1, allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-1727.

CVE-2016-1725
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit, as used in Apple iOS before 9.2.1 and Safari before 9.0.3,
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-1723 and CVE-2016-1726.

CVE-2016-1726
    Versions affected: WebKitGTK+ before 2.10.8.
    Credit to Apple.
    WebKit, as used in Apple iOS before 9.2.1 and Safari before 9.0.3,
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-1723 and CVE-2016-1725.

CVE-2016-1727
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to Apple.
    WebKit, as used in Apple iOS before 9.2.1, Safari before 9.0.3, and
    tvOS before 9.1.1, allows remote attackers to execute arbitrary code
    or cause a denial of service (memory corruption) via a crafted web
    site, a different vulnerability than CVE-2016-1724.

CVE-2016-1728
    Versions affected: WebKitGTK+ before 2.10.5.
    Credit to an anonymous researcher coordinated via Joe Vennix.
    The Cascading Style Sheets (CSS) implementation in Apple iOS before
    9.2.1 and Safari before 9.0.3 mishandles the "a:visited button"
    selector during height processing, which makes it easier for remote
    attackers to obtain sensitive browser-history information via a
    crafted web site.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: http://webkitgtk.org/security.html

The WebKitGTK+ team,
March 11, 2016



--iHQkVrJGaddWgjjtO4vAv5juDTBFnPWje
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJW4tVkAAoJEJZQic5rlfiCpcMP/ibT3ADAyz57ySdVFonNSA8o
a/zbHhHbYDWTxY2AGWhGTGx4dxjduckLbJOuEVCeS4GcodgF/mr05g/K6/ggu7vy
r/h9rOrHThNqtsDW5k02r8asPASEiVgLuv5m3Um6bDPTPZyvJ2fHhH+z/qFpW7o8
hMjcUaFAMqK18ymu1Wne8BSxJUI9bXHMCNdTjALZvEK5+xAxm2kxHcRTGLNuXErh
GdQ6pjD2HJDdbyHSzZlNrLjztXY0Ca1k1TAEzttyMMguf8TFT+K4PmHPJGxzv9x6
Rt0q1V8gpjvD81iR1L2em0wweMlvUg7HvEvu2JhT1I63osWbsk1zq1CQ2rUo/9Rc
DBdYcpq6qpDB9tVj5phnt2BjSmflZbfFkrhuYg/qxJ2v6jTm6+3frTFa/y/csBsv
ZuzJ8NpoWnqie9+PaItzxJuwIYQUHSQx86ehThCKK1RNgo1yPYZImkUj3CoAl5xG
ahR35ppu+IbvIOrNC137iwLVLaUz5huG4M6x/VP07BCs6Gmen8eHE6sGw9k+n5RC
5EWYv+yrdVDor9AUbDB551POrxBk5xVNic5vROK/6nxnlnS+/CwBaszXHl4z5fTe
mtXEouY2jWuBIS7k/UznaDd0xo/BDiEyGXoQP5ywGaAm1GoTbFH52PvU8ir2ubeU
SxUv/PfVh6buVsmAysMJ
=y81H
-----END PGP SIGNATURE-----

--iHQkVrJGaddWgjjtO4vAv5juDTBFnPWje--
