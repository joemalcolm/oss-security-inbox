X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3184" "Wednesday" "12" "October" "2016" "15:26:23" "+0200" "Sysdream Labs" "labs@sysdream.com" "<bba41ca7-d5c1-bb07-47fc-dcec4898e81f@sysdream.com>" "102" "[oss-security] CVE-2016-7980: SPIP 3.1.2 Exec Code Cross-Site Request Forgery" nil nil nil "10" "2016101213:26:23" "[oss-security] CVE-2016-7980: SPIP 3.1.2 Exec Code Cross-Site Request Forgery" (number mark "U       labs@sysdrea Oct 12  102/3184  " thread-indent "\"[oss-security] CVE-2016-7980: SPIP 3.1.2 Exec Code Cross-Site Request Forgery\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26576 invoked by uid 550); 12 Oct 2016 13:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26552 invoked from network); 12 Oct 2016 13:26:37 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <bba41ca7-d5c1-bb07-47fc-dcec4898e81f@sysdream.com>
Date: Wed, 12 Oct 2016 15:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LsAR9hgoXJSaputKSDTqJlwXTTSUbIH2h"
Subject: [oss-security] CVE-2016-7980: SPIP 3.1.2 Exec Code Cross-Site Request Forgery

--LsAR9hgoXJSaputKSDTqJlwXTTSUbIH2h
Content-Type: multipart/mixed; boundary="9IO1isMMif4xlirCn263FJBpVvtTxCi6g"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <bba41ca7-d5c1-bb07-47fc-dcec4898e81f@sysdream.com>
Subject: CVE-2016-7980: SPIP 3.1.2 Exec Code Cross-Site Request Forgery

--9IO1isMMif4xlirCn263FJBpVvtTxCi6g
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

## SPIP 3.1.2 Exec Code Cross-Site Request Forgery (CVE-2016-7980)

### Product Description

SPIP is a publishing system for the Internet, which put importance on colla=
borative working, multilingual environments and ease of use. It is free sof=
tware, distributed under the GNU/GPL licence.

### Vulnerability Description

The vulnerable request to `valider_xml` (see: *SPIP 3.1.2 Template Compiler=
/Composer PHP Code Execution - CVE-2016-7998*) is vulnerable to Cross-Site =
Request Forgery, allowing the execution of the CVE-2016-7998 attack by tric=
king an administrator to open the malicious link.

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-352

**CVSS Base Score**: 8.3 (High)

**CVE-ID**: CVE-2016-7980

### Proof of Concept

    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3D/tmp/directory=
&ext=3Dhtml

### Timeline (dd/mm/yyyy)

* 15/09/2016 : Initial discovery
* 26/09/2016 : Contact with SPIP Team
* 27/09/2016 : Answer from SPIP Team, sent advisory details
* 28/09/2016 : Fixes issued for CSRF
* 30/09/2016 : SPIP 3.1.3 Released

### Fixes

* https://core.spip.net/projects/spip/repository/revisions/23200
* https://core.spip.net/projects/spip/repository/revisions/23201
* https://core.spip.net/projects/spip/repository/revisions/23202


### Affected versions

* Version <=3D 3.1.2

### Credits

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)

--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--9IO1isMMif4xlirCn263FJBpVvtTxCi6g--

--LsAR9hgoXJSaputKSDTqJlwXTTSUbIH2h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX/jn/AAoJEI60jNnVslmhjk4P/1uv4Ms517auffhDeE5v+d3m
wq5xulvZr5XEpMspZ9y8oOyrlCaC2kB17m+HQZlrLltesq0xfolK3LLvC/cSMFBq
XaCFm+fPqZ1oK8ARTDqtFoGj8oWvHK/qH9PG5O5ywt+F9B46t7taR15Fjx6swor+
0JvGK+uzQjE3Wi7feB4Ycdse8FjhIMlC8eH60PSOgfG9mqzB+5oME/WdAS5MyLEz
AHJ9mOL7MAHynuRWf18FIJExc9A+z8jlA7hbaPxDfQrRsROF4LX86XSRaq5pn2kZ
QFYws8Q0rmXoSlB5oshgMhIgdfxsCjDlFatBZ8bmH96sQnC5FocJRb1RVQq2R9L4
ayyJzRFOSnPdBSteZgBJL8WD9jymqHzzlBO1iss5B9IlKI30XY/wC0hnmKBpuYgd
9zpzyppyzJ06j+df+8OxOyz8zCpJHNz7uOuqshrnfBzkZVLxzM0V8siZLw4cAwXa
qCx2mMTEo6RfNiBjuh2TqD3c+tXgVd5YGV7wJ+GHKjOihnq3q/Z2Q2C8l3msYDMk
cbycWyPioget8H1W2Cv5R+MCUMax+I887rHcmJr8imgK398aJAvLNwCCJNu/RHBy
NyFGhfQ0l4fBq4+0V1WKf5rKDnTSK/yD7afoiT5Vg6kquEyEuK7boFiRprKcA0BR
ZwVL09R16Gu06akk44Y0
=5qRX
-----END PGP SIGNATURE-----

--LsAR9hgoXJSaputKSDTqJlwXTTSUbIH2h--
