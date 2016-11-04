X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["11111" "Friday" "4" "November" "2016" "20:11:26" "+0100" "Carlos Alberto Lopez Perez" "clopez@igalia.com" "<e6956736-b884-6a5d-3e37-0fd46a52cc6e@igalia.com>" "255" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0006" nil nil nil "11" "2016110419:11:26" "[oss-security] WebKitGTK+ Security Advisory WSA-2016-0006" (number mark "U       clopez@igali Nov  4  255/11111 " thread-indent "\"[oss-security] WebKitGTK+ Security Advisory WSA-2016-0006\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11496 invoked by uid 550); 4 Nov 2016 19:11:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11453 invoked from network); 4 Nov 2016 19:11:50 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CMAgBd3BxY/5tjdVtdGwEBAQMBAQEJAQEBgy4BAQEBAR9YKlKNOKtGgggYEIV7gho/FAECAQEBAQEBAWIdC4ULVl0CSwETDQgCiFgBCa8yjHMBAQgCFwkFgi+EEIF9hBSCWxyCYAstglwFiEuRWINKgXlxigyBboRviASBKY0hhAQeNzApCgmDNYFtcYUIAQEkB4IPAQEB
X-IPAS-Result: A2CMAgBd3BxY/5tjdVtdGwEBAQMBAQEJAQEBgy4BAQEBAR9YKlKNOKtGgggYEIV7gho/FAECAQEBAQEBAWIdC4ULVl0CSwETDQgCiFgBCa8yjHMBAQgCFwkFgi+EEIF9hBSCWxyCYAstglwFiEuRWINKgXlxigyBboRviASBKY0hhAQeNzApCgmDNYFtcYUIAQEkB4IPAQEB
X-IronPort-AV: E=Sophos;i="5.31,444,1473112800"; 
   d="asc'?scan'208";a="190791322"
To: "webkit-gtk@lists.webkit.org" <webkit-gtk@lists.webkit.org>
Cc: security@webkit.org, distributor-list@gnome.org,
 oss-security@lists.openwall.com, bugtraq@securityfocus.com
From: Carlos Alberto Lopez Perez <clopez@igalia.com>
Openpgp: id=B5D2B50BC48EC7F1EE90D9AB965089CE6B95F882;
 url=http://key.neutrino.es
Organization: Igalia S.L.
Message-ID: <e6956736-b884-6a5d-3e37-0fd46a52cc6e@igalia.com>
Date: Fri, 4 Nov 2016 20:11:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="s62dBqe82QvIAiFfb7nnIEAnVvwuDG5cL"
Subject: [oss-security] WebKitGTK+ Security Advisory WSA-2016-0006

--s62dBqe82QvIAiFfb7nnIEAnVvwuDG5cL
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

------------------------------------------------------------------------
WebKitGTK+ Security Advisory                               WSA-2016-0006
------------------------------------------------------------------------

Date reported      : November 04, 2016
Advisory ID        : WSA-2016-0006
Advisory URL       : https://webkitgtk.org/security/WSA-2016-0006.html
CVE identifiers    : CVE-2016-4611, CVE-2016-4613, CVE-2016-4657,
                     CVE-2016-4666, CVE-2016-4707, CVE-2016-4728,
                     CVE-2016-4729, CVE-2016-4730, CVE-2016-4731,
                     CVE-2016-4733, CVE-2016-4734, CVE-2016-4735,
                     CVE-2016-4758, CVE-2016-4759, CVE-2016-4760,
                     CVE-2016-4761, CVE-2016-4762, CVE-2016-4764,
                     CVE-2016-4765, CVE-2016-4766, CVE-2016-4767,
                     CVE-2016-4768, CVE-2016-4769, CVE-2016-7578.

Several vulnerabilities were discovered in WebKitGTK+.

CVE-2016-4611
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Apple.
    WebKit in Apple iOS before 10, Safari before 10, and tvOS before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4730, CVE-2016-4733, CVE-2016-4734, and
    CVE-2016-4735.

CVE-2016-4613
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Chris Palmer.
    Impact: Processing maliciously crafted web content may result in the
    disclosure of user information. Description: An input validation
    issue was addressed through improved state management.

CVE-2016-4657
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Citizen Lab and Lookout.
    WebKit in Apple iOS before 9.3.5 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site.

CVE-2016-4666
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed through improved memory handling.

CVE-2016-4707
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Anonymous Researcher.
    CFNetwork in Apple iOS before 10 and OS X before 10.12 mishandles
    Local Storage deletion, which allows local users to discover the
    visited web sites of arbitrary users via unspecified vectors.

CVE-2016-4728
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Daniel Divricean.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 mishandles error prototypes, which
    allows remote attackers to execute arbitrary code via a crafted web
    site.

CVE-2016-4729
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Apple.
    WebKit in Apple iOS before 10 and Safari before 10 allows remote
    attackers to execute arbitrary code or cause a denial of service
    (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4731.

CVE-2016-4730
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Apple.
    WebKit in Apple iOS before 10, Safari before 10, and tvOS before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4611, CVE-2016-4733, CVE-2016-4734, and
    CVE-2016-4735.

CVE-2016-4731
    Versions affected: WebKitGTK+ before 2.12.0.
    Credit to Apple.
    WebKit in Apple iOS before 10 and Safari before 10 allows remote
    attackers to execute arbitrary code or cause a denial of service
    (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4729.

CVE-2016-4733
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Natalie Silvanovich of Google Project Zero.
    WebKit in Apple iOS before 10, Safari before 10, and tvOS before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4611, CVE-2016-4730, CVE-2016-4734, and
    CVE-2016-4735.

CVE-2016-4734
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Natalie Silvanovich of Google Project Zero.
    WebKit in Apple iOS before 10, Safari before 10, and tvOS before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4611, CVE-2016-4730, CVE-2016-4733, and
    CVE-2016-4735.

CVE-2016-4735
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Andr=C3=A9 Bargull.
    WebKit in Apple iOS before 10, Safari before 10, and tvOS before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption) via a crafted web site, a different
    vulnerability than CVE-2016-4611, CVE-2016-4730, CVE-2016-4733, and
    CVE-2016-4734.

CVE-2016-4758
    Versions affected: WebKitGTK+ before 2.12.1.
    Credit to Masato Kinugawa of Cure53.
    WebKit in Apple iOS before 10, iTunes before 12.5.1 on Windows, and
    Safari before 10 does not properly restrict access to the location
    variable, which allows remote attackers to obtain sensitive
    information via a crafted web site.

CVE-2016-4759
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Tongbo Luo of Palo Alto Networks.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site, a different vulnerability than CVE-2016-4765,
    CVE-2016-4766, CVE-2016-4767, and CVE-2016-4768.

CVE-2016-4760
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Jordan Milne.
    WebKit in Apple iOS before 10, iTunes before 12.5.1 on Windows, and
    Safari before 10 allows remote attackers to conduct DNS rebinding
    attacks against non-HTTP Safari sessions by leveraging HTTP/0.9
    support.

CVE-2016-4761
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    An use-after-free vulnerability allows remote attackers to cause a
    denial of service or possibly have unspecified other impact via
    unknown vectors.

CVE-2016-4762
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Zheng Huang of Baidu Security Lab.
    WebKit in Apple iOS before 10, iTunes before 12.5.1 on Windows,
    iCloud before 6.0 on Windows, and Safari before 10 allows remote
    attackers to execute arbitrary code or cause a denial of service
    (memory corruption) via a crafted web site.

CVE-2016-4764
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed through improved state management.

CVE-2016-4765
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site, a different vulnerability than CVE-2016-4759,
    CVE-2016-4766, CVE-2016-4767, and CVE-2016-4768.

CVE-2016-4766
    Versions affected: WebKitGTK+ before 2.12.4.
    Credit to Apple.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site, a different vulnerability than CVE-2016-4759,
    CVE-2016-4765, CVE-2016-4767, and CVE-2016-4768.

CVE-2016-4767
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site, a different vulnerability than CVE-2016-4759,
    CVE-2016-4765, CVE-2016-4766, and CVE-2016-4768.

CVE-2016-4768
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Anonymous working with Trend Micro's Zero Day Initiative.
    WebKit in Apple iOS before 10, tvOS before 10, iTunes before 12.5.1
    on Windows, and Safari before 10 allows remote attackers to execute
    arbitrary code or cause a denial of service (memory corruption) via
    a crafted web site, a different vulnerability than CVE-2016-4759,
    CVE-2016-4765, CVE-2016-4766, and CVE-2016-4767.

CVE-2016-4769
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Tongbo Luo of Palo Alto Networks.
    WebKit in Apple iTunes before 12.5.1 on Windows and Safari before 10
    allows remote attackers to execute arbitrary code or cause a denial
    of service (memory corruption and application crash) via a crafted
    web site.

CVE-2016-7578
    Versions affected: WebKitGTK+ before 2.14.0.
    Credit to Apple.
    Impact: Processing maliciously crafted web content may lead to
    arbitrary code execution. Description: Multiple memory corruption
    issues were addressed through improved memory handling.


We recommend updating to the last stable version of WebKitGTK+. It is
the best way of ensuring that you are running a safe version of
WebKitGTK+. Please check our website for information about the last
stable releases.

Further information about WebKitGTK+ Security Advisories can be found
at: https://webkitgtk.org/security.html

The WebKitGTK+ team,
November 04, 2016


--s62dBqe82QvIAiFfb7nnIEAnVvwuDG5cL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2
Comment: You can fetch my GnuPG key from http://key.neutrino.es

iQIcBAEBCgAGBQJYHN1eAAoJEJZQic5rlfiCTAkP/jUx4pceDJyFFxzkCP69gXsw
+PVD2Hn9gcwuLNyr5YgTArhpCLWGiggH1IvI4IriZZgmwoqt1YU2ek7T0F84mkrG
ai8lXoRRrdAwnshI2wwURG5vWrchFZqJr5OXL7A6sV4ul8yge+pm/O3Bfk2626Mc
HCTkdlki61AoyDi2H7DFO1kp4GK3v5h6YyAwbnbu51IyzWJGDio2e9tupGTn1/9N
cf5N/TZHJaBNijpptBNkCl1GiYENYAk0AOuQG7bPKKXHxlX2eIjXcFCyFDdjk4YV
dQ8orsAJAC6vz4wfpudSsjtkojBvea0VECvMgh8/8HkJEyMjLJp2S8mIIOSybiNI
033H37dJEVoNejpWrLTRJAfEhNuZu+7ONDEVZHWMPaLu+Bw0+WS1uXXpSca2fvNA
VnXnocjGqldgKkppKtBz8Dvf48N2QmHeGliQOutTYUlFRHr3Pw98YGE7MQMjUAAJ
QcZ4DaPb2ViV4/HrOZux1uD5f+9tmvuFt/i7R6x9Zh0Hwo/6w3DDe9CtkJtNSlr1
VrOO2QFxl6T/Akket/8XfAgJ2e4hf0ywkM4S2JTKFFfMVEjz76p8ZHopi2iqZewW
l1Yg7WG0/A6AdxPIWfnnobUG9Gre9f8wesF7F7vMQZ6TFSSv2NMdUAAOck+egPAP
yqpdpuaO3+gQ1I7hv+C3
=tzNv
-----END PGP SIGNATURE-----

--s62dBqe82QvIAiFfb7nnIEAnVvwuDG5cL--
