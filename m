X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2562" "Thursday" "28" "September" "2017" "20:31:57" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<b26a514f-eb48-32dd-d504-64288b7f1087@chbi.eu>" "76" "[oss-security] CSRF vulnerability in Tiki <= 17.0, 16.2, 15.4 LTS and 12.11 LTS" nil nil nil "9" "2017092818:31:57" "[oss-security] CSRF vulnerability in Tiki <= 17.0, 16.2, 15.4 LTS and 12.11 LTS" (number mark "U       chbi@chbi.eu Sep 28   76/2562  " thread-indent "\"[oss-security] CSRF vulnerability in Tiki <= 17.0, 16.2, 15.4 LTS and 12.11 LTS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23661 invoked by uid 550); 28 Sep 2017 18:38:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18134 invoked from network); 28 Sep 2017 18:32:17 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <b26a514f-eb48-32dd-d504-64288b7f1087@chbi.eu>
Date: Thu, 28 Sep 2017 20:31:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="FG36QJwO8IOg5D6lg2WsUj1jHeiHmMUA6"
Subject: [oss-security] CSRF vulnerability in Tiki <= 17.0, 16.2, 15.4 LTS and 12.11 LTS

--FG36QJwO8IOg5D6lg2WsUj1jHeiHmMUA6
Content-Type: multipart/mixed; boundary="LL98S9rVBuNLWMBBXB5klD6hnmK0I06Pk";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <b26a514f-eb48-32dd-d504-64288b7f1087@chbi.eu>
Subject: CSRF vulnerability in Tiki <= 17.0, 16.2, 15.4 LTS and 12.11 LTS

--LL98S9rVBuNLWMBBXB5klD6hnmK0I06Pk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

there are two security issues in Tiki <=3D 17.0, 16.2, 15.4 LTS and 12.11
LTS (https://tiki.org)


Cross-Site Request Forgery (CSRF) vulnerability via IMG tag allows an
authenticated user to gain administrator privileges if an administrator
opens a wiki page with the IMG tag.

Fix:
https://sourceforge.net/p/tikiwiki/code/63829


Cross-Site Request Forgery (CSRF) vulnerability via IMG tag allows an
authenticated user to edit global permissions if an administrator opens
a wiki page with the IMG tag. For example, an attacker could assign
administrator privileges to every unauthenticated user of the site.

Fix:
https://sourceforge.net/p/tikiwiki/code/63872


Both issues are fixed in Tiki 17.1, Tiki 16.3, Tiki 15.5 LTS and Tiki
12.12 LTS.

https://tiki.org/article449-Security-and-bug-fix-updates-Tiki-17-1-Tiki-16-=
3-15-5-and-Tiki-12-12-released


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--LL98S9rVBuNLWMBBXB5klD6hnmK0I06Pk--

--FG36QJwO8IOg5D6lg2WsUj1jHeiHmMUA6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnNQB4ACgkQunuT+ZA3
rn7jrg//aMnBFGXDxl2cBd/DuY+0Tx7Y2+a4RZ6JeYLzUNU8rr5pfsmphUD+EDJ7
vxYGEs4wC0zfMrt8Q+zDrJMc+XVT4XljrPwupsQVDYS7e/dM2IlDMrZP2BnIxkWj
D8fcLXdPNsLogbpyhnztCULMgaVbEAr6qhJDFfvotYdKcIKEo6uvF+ZQEboBSEHX
lmPKKDMbvyNwEfAINWPrWcTs/rWwwizuCX67kY80zhzsy5r6hUchJaZREqRBNH1/
MS36801CEQ8jtGMXTFw5ceM74HFcfCqrGDM5AW0Z8TYdoTeMXX6BsOmxssNDn2d6
jMqJZ4Icy7zPlICW7w8N6gscifClGRkvNuZ+3NUPzSN8cAVeU9on43E1HzvR58rj
wYnXDx3rP0qB8/QoHpM9G+X7Hw5m9PZqq5zD8sMx5NU94MwnUot5aYocau3c698P
XOB1fmE7YmAXloayHRwQYAvNp0/s9xQfRj40kuO7EN6CWO6FCpIJGsqI5urXs8tO
JEH1+qtl0vakj/3MUIoaVOpidMgvrLML3NZ2Og/I8/eUmWqG0Ag+kp45cwKp6W8E
j56d7O5Hsrx/mzbL7jtEPnEe9hMfB3TNyrn8W8O8qj9cjeJMDrApm3YLUSrUTN6E
/yWQx1vpMk0MxSx/kajmnFCKB0MiZ8l4m9ezI103CkGIhTP2y0A=
=oNWZ
-----END PGP SIGNATURE-----

--FG36QJwO8IOg5D6lg2WsUj1jHeiHmMUA6--
