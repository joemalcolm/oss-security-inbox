X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3586" "Wednesday" "12" "October" "2016" "15:27:32" "+0200" "Sysdream Labs" "labs@sysdream.com" "<956e00cf-2553-d3fe-83f1-00e3c0b1075a@sysdream.com>" "120" "[oss-security] CVE-2016-7981: SPIP 3.1.2 Reflected Cross-Site Scripting" nil nil nil "10" "2016101213:27:32" "[oss-security] CVE-2016-7981: SPIP 3.1.2 Reflected Cross-Site Scripting" (number mark "U       labs@sysdrea Oct 12  120/3586  " thread-indent "\"[oss-security] CVE-2016-7981: SPIP 3.1.2 Reflected Cross-Site Scripting\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5172 invoked by uid 550); 12 Oct 2016 13:27:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4070 invoked from network); 12 Oct 2016 13:27:46 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <956e00cf-2553-d3fe-83f1-00e3c0b1075a@sysdream.com>
Date: Wed, 12 Oct 2016 15:27:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="wBmNFBaetvR0R1ScfHS5LSepb15NonxSq"
Subject: [oss-security] CVE-2016-7981: SPIP 3.1.2 Reflected Cross-Site Scripting

--wBmNFBaetvR0R1ScfHS5LSepb15NonxSq
Content-Type: multipart/mixed; boundary="USTB0M4Nkq0TT4rBsFIA4odDlTM2fL3kE"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org, spip-team-owner@rezo.net
Message-ID: <956e00cf-2553-d3fe-83f1-00e3c0b1075a@sysdream.com>
Subject: CVE-2016-7981: SPIP 3.1.2 Reflected Cross-Site Scripting

--USTB0M4Nkq0TT4rBsFIA4odDlTM2fL3kE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

## SPIP 3.1.2 Reflected Cross-Site Scripting (CVE-2016-7981)

### Product Description

SPIP is a publishing system for the Internet, which put importance on colla=
borative working, multilingual environments and ease of use. It is free sof=
tware, distributed under the GNU/GPL licence.

### Vulnerability Description

The `var_url` parameter of the `valider_xml` file is not correctly sanitize=
d and can be used to trigger a reflected XSS vulnerability.

**Access Vector**: remote

**Security Risk**: medium

**Vulnerability**: CWE-79

**CVSS Base Score**: 6.8 (Medium)

**CVE-ID**: CVE-2016-7981

### Proof of Concept

    http://spip-dev.srv/ecrire/?exec=3Dvalider_xml&var_url=3D%22%3E%3Ch1%3E=
XSS!%3C/h1%3E

### Vulnerable code

The `$url variable` is not properly sanitized in `valider_xml.php`, line 13=
4 :

    $res =3D
      "<div style=3D'text-align: center'>" . $err . "</div>" .
      "<div style=3D'margin: 10px; text-align: left'>" . $texte . '</div>';
    $bandeau =3D "<a href=3D'$url_aff'>$url</a>";

The Cross-Site Scripting vulnerability is triggered on line 146 :

    echo "<h1>", $titre, '<br>', $bandeau, '</h1>',


### Timeline (dd/mm/yyyy)

* 15/09/2016 : Initial discovery
* 26/09/2016 : Contact with SPIP Team
* 27/09/2016 : Answer from SPIP Team, sent advisory details
* 27/09/2016 : Incorrect fix from SPIP Team.
* 27/09/2016 : New proof of concept for bypassing fixes for XSS sent.
* 27/09/2016 : Fixes issued for XSS (23185).
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




--USTB0M4Nkq0TT4rBsFIA4odDlTM2fL3kE--

--wBmNFBaetvR0R1ScfHS5LSepb15NonxSq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJX/jpEAAoJEI60jNnVslmhrGAQAMmSMNyxNaxyZuWy4a3bn2LI
HRdMzIly3Ga1QDLspgH8OKrMt1V+4K+t0kMSlIs4VO2qd0kcZmYiIWAHE4I4WAks
H8jt+u/aW+7fljg6Aw2AclY2i6PkixJEnC47+8lLC9E1h/vROrxMhcdniii0iIhC
bK/kT3HAj3mfae0vhbCMEMtgYktIB0MdC+Ftem5snF9uTMkDF7Ivx3C2r58iBNoJ
GcUt60m85DDgkpjHzZPKBtwilivTP+n/9LSmGNaWHGddJSfGOvdlsEomk8FJRMoy
t+SdjKvn5lYswyUgFDm/+DX9V0v5OC1DhkQe2wDo3x54gZsWwTr3SS+7y5Wx3AFS
hvTMcbu1KEvr+FCwQ+nOXazwhc1ACH6IeCmju/qgtwl6ZxEQaIZ7XOQ2zh5URoDi
1FGKKImdjddmbMtQpx4Znp4rBLI7XihArBlQCmVlJOxFoHcXuXJyCO9BueBut5Y3
oYoiAcNpE5hDodCNy0GnFYk9KsMFpCBKkELfJqb3WOx2hDrx1hR5EqIY9/YTgh+s
CBYwU+GMRX938Shyt4Nu4ZYs5tNvp6ZquorhMwQL4gLjQgP0vGkLCPWfZUTwQMGP
MQK5v/cU4VqcywNzYfqCAxGLpplQXaGtAAp9fwB3xOP67UxUhFSgSb2bP5HMWK8H
ET+HH5EfAryORFthiZz1
=D0Mw
-----END PGP SIGNATURE-----

--wBmNFBaetvR0R1ScfHS5LSepb15NonxSq--
