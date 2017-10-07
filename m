X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2460" "Saturday" "7" "October" "2017" "08:56:48" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<4e04d782-268e-46bf-f74e-06696f5bdc7a@chbi.eu>" "77" "[oss-security] Stored XSS vulnerabilities in Flyspray" nil nil nil "10" "2017100706:56:48" "[oss-security] Stored XSS vulnerabilities in Flyspray" (number mark "U       chbi@chbi.eu Oct  7   77/2460  " thread-indent "\"[oss-security] Stored XSS vulnerabilities in Flyspray\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3378 invoked by uid 550); 7 Oct 2017 08:42:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24304 invoked from network); 7 Oct 2017 06:57:08 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <4e04d782-268e-46bf-f74e-06696f5bdc7a@chbi.eu>
Date: Sat, 7 Oct 2017 08:56:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="L3PO4qOppxHD3jgckNkAg5HLfbgKtVkTv"
Subject: [oss-security] Stored XSS vulnerabilities in Flyspray

--L3PO4qOppxHD3jgckNkAg5HLfbgKtVkTv
Content-Type: multipart/mixed; boundary="5CllbLbSsu5MC6tgRcribNjpLCgc7KGBo";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <4e04d782-268e-46bf-f74e-06696f5bdc7a@chbi.eu>
Subject: Stored XSS vulnerabilities in Flyspray

--5CllbLbSsu5MC6tgRcribNjpLCgc7KGBo
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered two security issues in Flyspray (http://www.flyspray.org/)


A stored XSS vulnerability in Flyspray before 1.0-rc6 allows an
authenticated user to inject JavaScript to gain administrator privileges.

Fix:
https://github.com/Flyspray/flyspray/commit/754ec5d04348ef7ecb8cb02ade976dc=
412b031f8


A stored XSS vulnerability in Flyspray between 1.0-rc4 and 1.0-rc6
allows an authenticated user to inject JavaScript to gain administrator
privileges and also to execute JavaScript against other users (including
unauthenticated users).

Fix
https://github.com/Flyspray/flyspray/commit/00cfae5661124f9d67ac6733db61b2b=
fee34dccc


Both issues are fixed in Flyspray 1.0-rc6.

https://github.com/Flyspray/flyspray/releases/tag/v1.0-rc6


I've requested CVE IDs (MITRE).


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--5CllbLbSsu5MC6tgRcribNjpLCgc7KGBo--

--L3PO4qOppxHD3jgckNkAg5HLfbgKtVkTv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnYerYACgkQunuT+ZA3
rn7ZpA/+JJVMYAKSSd4XgSGAGMb/Ni04ur58lZFLMvZXMpONnsaje+CfPnhcu20c
Kxm+sTPfwmPnpA1B5BV976IXNhAGIM5jVq2xkIYG+3RJw2TTXHsxvdVqN7QETqrg
B58vdOpTgFc9GSZ9nC1VxYZUuciudrxevPSIW61qB+8x+FQB7wl9hwaVedzBjyns
4oa5g3eF1G3Bwk/khSrGbRLivrmBdWle8c/ZqBdy/BnLvnyUgadIt9PjXrlPaRE+
A1eepNJtwaPdE4AkiwhriIsqsSCTq2gVB36JWXt4GD9qWNq1ZYIeGS/MLQRC64tg
AArupZAJ5wQBa492cxYpTRGB3ZodNAibhKcKrCJ3Clk+Yg8Oz7FxAHSHw7BtI5X8
Cnv6p5xBHkZDC2oha/lalgoCxyVyG0zxmJ+BkTCjt5hb/VCVUn1GQfjRJJ+QJNcY
iEjCBlt8xRM+NJyyXYtjthf5Jyy8K4Q7i1ACDgpUy52LHT5wVlpkI2QNCI1OZQQg
cK0m0RBBO1sB7D4//QHo0hh+LJiGv4uwLLunQmR3IqKB4DlspV4Bx8yKzb9ZBR/u
wK1BuqPyVx2fuM9lo/8TYccvjq3CBYJwYzHCSqx0/JOACB/aXbpjqJyvHI+LpXlX
OSQK1xrrhztNPzT4PXdEAAL2aFLouQNJ1IYoXux7Alr/StTxxxo=
=kczA
-----END PGP SIGNATURE-----

--L3PO4qOppxHD3jgckNkAg5HLfbgKtVkTv--
