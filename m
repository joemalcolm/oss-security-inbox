X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3539" "Wednesday" "12" "October" "2016" "15:31:10" "+0200" "Sysdream Labs" "labs@sysdream.com" "<7fd323f9-7980-ad90-2475-80975b5e5438@sysdream.com>" "126" "[oss-security] CVE-2016-7999: SPIP 3.1.2 Server Side Request Forgery" nil nil nil "10" "2016101213:31:10" "[oss-security] CVE-2016-7999: SPIP 3.1.2 Server Side Request Forgery" (number mark "U       labs@sysdrea Oct 12  126/3539  " thread-indent "\"[oss-security] CVE-2016-7999: SPIP 3.1.2 Server Side Request Forgery\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30218 invoked by uid 550); 12 Oct 2016 13:31:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30146 invoked from network); 12 Oct 2016 13:31:26 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <7fd323f9-7980-ad90-2475-80975b5e5438@sysdream.com>
Date: Wed, 12 Oct 2016 15:31:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6HIGvbo8klTn5XhHheGfxvXGBAmS6Crrf"
Subject: [oss-security] CVE-2016-7999: SPIP 3.1.2 Server Side Request Forgery

--6HIGvbo8klTn5XhHheGfxvXGBAmS6Crrf
Content-Type: multipart/mixed; boundary="LjNA7S4CI3A8KfXqwpwjofo3nmdMUAe2i"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <7fd323f9-7980-ad90-2475-80975b5e5438@sysdream.com>
Subject: CVE-2016-7999: SPIP 3.1.2 Server Side Request Forgery

--LjNA7S4CI3A8KfXqwpwjofo3nmdMUAe2i
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

## SPIP 3.1.2 Server Side Request Forgery (CVE-2016-7999)

### Product Description

SPIP is a publishing system for the Internet, which put importance on colla=
borative working, multilingual environments and ease of use. It is free sof=
tware, distributed under the GNU/GPL licence.

### Vulnerability Description

It's possible to send HTTP/FTP requests using the `valider_xml` file.
Attackers can make it look like the server is sending the request, possibly=
 bypassing access controls such as a firewall that would prevent the attack=
er from accessing the URLs directly.

**Access Vector**: remote

**Security Risk**: medium

**Vulnerability**: CWE-918

**CVSS Base Score**: 5.5 (Medium)

**CVE-ID**: CVE-2016-7999

### Proof of Concept

    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3Dhttp://router-=
dev.srv/
    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3Dftp://ftp.debi=
an.org/


### Vulnerable code

The FTP connection is initialized by the `is_dir` function inside `valider_=
xml`, line 79 :

    if (is_dir($url)) {

Other PHP Wrappers supporting `is_dir` can be called using this function.

The HTTP connection is initiated at line 123:

    $res =3D $transformer_xml(recuperer_page($url));

### Timeline (dd/mm/yyyy)

* 15/09/2016 : Initial discovery
* 26/09/2016 : Contact with SPIP Team
* 27/09/2016 : Answer from SPIP Team, sent advisory details
* 27/09/2016 : Server Side Request Forgery vulnerability correct vulnerabil=
ities.
* 30/09/2016 : SPIP 3.1.3 Released

### Fixes

* https://core.spip.net/projects/spip/repository/revisions/23188
* https://core.spip.net/projects/spip/repository/revisions/23193

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










--LjNA7S4CI3A8KfXqwpwjofo3nmdMUAe2i--

--6HIGvbo8klTn5XhHheGfxvXGBAmS6Crrf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX/jseAAoJEI60jNnVslmh5CUP/RfUYTB3UrbgVRk0uf4R5s8X
8W0zHgRFc/Dh76s7V9fbUgaWTRF7kOn5XiHmBA8LsS/EPdsz8EBRpfG56gkrHQV2
/TfbXqSjSw2/4jwKslbntH2KI/EgysI3Mca442/i+vLe6+32eJNYMDwIDRSmjN0z
D4wvrlibVIRrwI6FannoB5tcvHPiHig6c+XN8ZokvH9TqHuM2iJZO9GDGdIJvUPI
DAZN0C3xa3S7qHDDueoQet3aQ0F+NjrgfGtSk6t9cmaIEz7iCs6T6xJuh+j7eFee
rDlqtBpfwyB6qPro2Esrz8RwV6Zl/AiWqZWalkNVGHLtxhN10YpSffWitog/Axdd
Bw+Jo7+hCKmtvnU8peJiOxX5BqerhHN5lmg/n31EbMKfYn7IhbpowYfU9O61pd84
kZwxSBuNNxrj8Bip1T+5P/K7f47VGfV28aaHUNznBTPysEKrCFHO1KxfyTUOAIXF
HHF59wPULTNoXbLzezQBj65cA4VnTdFgktYXasD9oUjM0yxbeAHhj/nEnehMHxrA
0JMiY00kLAlDsnU3l8cTLt3dS5UF6ZBJxKQnGcVWFf195HID82Rt1jBV6oVGLeP/
VkI8tX5LMxBtzYK+p4TAko9y+A2TDqF0jtA4Sywex55WOTPfJ91uAr71r3+P1XFi
E4lk62Frin6oYLdPJS2c
=VDeu
-----END PGP SIGNATURE-----

--6HIGvbo8klTn5XhHheGfxvXGBAmS6Crrf--
