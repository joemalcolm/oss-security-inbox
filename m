X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2051" "Friday" "16" "February" "2018" "17:40:17" "+0100" "chbi@chbi.eu" "chbi@chbi.eu" "<c2ab2ef4-95a5-9c51-44c4-85df20e07a7d@chbi.eu>" "65" "[oss-security] XSS vulnerability in Tiki < 18" nil nil nil "2" "2018021616:40:17" "[oss-security] XSS vulnerability in Tiki < 18" (number mark "U       chbi@chbi.eu Feb 16   65/2051  " thread-indent "\"[oss-security] XSS vulnerability in Tiki < 18\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30531 invoked by uid 550); 16 Feb 2018 16:40:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30511 invoked from network); 16 Feb 2018 16:40:41 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <c2ab2ef4-95a5-9c51-44c4-85df20e07a7d@chbi.eu>
Date: Fri, 16 Feb 2018 17:40:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="kIziaHrcRDCnqII5yFf0HUqdsLsCBeH99"
Subject: [oss-security] XSS vulnerability in Tiki < 18

--kIziaHrcRDCnqII5yFf0HUqdsLsCBeH99
Content-Type: multipart/mixed; boundary="ap4lzEQUyaZrH2A5luVpQElO7Jak5h9UH";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <c2ab2ef4-95a5-9c51-44c4-85df20e07a7d@chbi.eu>
Subject: XSS vulnerability in Tiki < 18

--ap4lzEQUyaZrH2A5luVpQElO7Jak5h9UH
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered a security issue in Tiki < 18 (https://tiki.org)


A XSS vulnerability via SVG image allows an authenticated user to gain
administrator privileges if an administrator opens a wiki page with a
malicious SVG image, related to filegallib.php.


Fix:
https://sourceforge.net/p/tikiwiki/code/65327


The issue is fixed in Tiki 18.


I've requested a CVE ID (MITRE).

--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--ap4lzEQUyaZrH2A5luVpQElO7Jak5h9UH--

--kIziaHrcRDCnqII5yFf0HUqdsLsCBeH99
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlqHCXwACgkQunuT+ZA3
rn55mxAAlIMVrGu+fHQ1NuDglOq4Zq2uvxQT7vUZ51O8s3jzyvwrdLhdzLAlpMoL
CNwQVo2DANbU9VkGIgt+5GChRn6Cw86VYyupokOhbTcpv9/iSMk+FVhkuT55UGfW
dmHMAOb0jW4WDoYbWsxvsWDa3D62A3ijaK2Z38czpIFDovBZ7wcx4SVFu/POb8sT
LdqRLVDNTZa7n8mGm8BBdC8LBsBZvzdt0m3alUQuvC9d+scD7nWfZqv1vAP4o4Ps
yTtgyj3oVQosYAYQIQHHz69cJ+LdvbzhFQYCJD5cXyQ96HVGpeh1XriT2EwBcA+X
gnvlDKgtTNTsN0I35P74m+Z+qAKJ3DsvgQyvD8xlH36ZKMkPYKt05207xLLpSFLc
ZCRwfC9vgFNsZE8y6FvSaLfw5/hyVr6KQW9NU/V7KxSFKc2EDoHlYZQMWUAZlv4q
M6T+KygkAbHQoU2wlN3LNLqhHmxaPXljt6ysWuaOXErtasVfYBtrcoUoysBzIngM
vZK9Cs1VajsV+NT866GQU0beocmHc8vswR4I+GU8aFtUYrV6eO/Y2/8+XADXWxxl
rlM9M9vWFAL5iBuyRh3ijmx26ZWtLqTFmRCMy+eUegH/Eq/VmuTMvRCXNjP2G1Vw
F9VGyI/aMpQOGFstThWzLdCHME4gqeWVyPJ7KU57mAYdBGWntKM=
=+sl5
-----END PGP SIGNATURE-----

--kIziaHrcRDCnqII5yFf0HUqdsLsCBeH99--
