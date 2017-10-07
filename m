X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2277" "Saturday" "7" "October" "2017" "13:14:56" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>" "69" "[oss-security] Reflected XSS vulnerability in Shaarli v0.9.1" nil nil nil "10" "2017100711:14:56" "[oss-security] Reflected XSS vulnerability in Shaarli v0.9.1" (number mark "U       chbi@chbi.eu Oct  7   69/2277  " thread-indent "\"[oss-security] Reflected XSS vulnerability in Shaarli v0.9.1\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30376 invoked by uid 550); 7 Oct 2017 11:39:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7989 invoked from network); 7 Oct 2017 11:15:13 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>
Date: Sat, 7 Oct 2017 13:14:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="uN4msR7VCm3q6DcWswRAoQoa9frLv26mh"
Subject: [oss-security] Reflected XSS vulnerability in Shaarli v0.9.1

--uN4msR7VCm3q6DcWswRAoQoa9frLv26mh
Content-Type: multipart/mixed; boundary="Pu1vpuIUbWOfrfnFeqv6wtmr7qeeXK87L";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <4c8ff4e2-cef7-e228-ae65-c1f2f86b06da@chbi.eu>
Subject: Reflected XSS vulnerability in Shaarli v0.9.1

--Pu1vpuIUbWOfrfnFeqv6wtmr7qeeXK87L
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered a security issue in Shaarli v0.9.1
(https://github.com/shaarli/Shaarli)


A reflected XSS vulnerability in Shaarli v0.9.1 allows an
unauthenticated attacker to inject JavaScript. If the victim is an
administrator, an attacker can (for example) takeover the admin session
or change global settings or add/delete links. It is also possible to
execute JavaScript against unauthenticated users.

Fix:
https://github.com/shaarli/Shaarli/pull/987


The issue is fixed in Shaarli v0.9.2.

https://github.com/shaarli/Shaarli/releases/tag/v0.9.2


I've requested a CVE ID (MITRE).

--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--Pu1vpuIUbWOfrfnFeqv6wtmr7qeeXK87L--

--uN4msR7VCm3q6DcWswRAoQoa9frLv26mh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnYtzAACgkQunuT+ZA3
rn7vjhAAiesMTO0vjR1kMThvCQ5We0jl/OiqnB1xvbrEie9b9DTuc7IgsaPrz+LC
XTsNtSUnuKqFBA+FC9Cv1arzPiLbiNGuCTZay/wtDMcSEl28Ry9RfSwTgsgRfUcy
GFjZ1XSyPOsj7yi/f8cMcW0XKG59r+XV6nbpyRPMjicIcdzA/FgLUpAWyi8Fp4Wf
d0TJqo7wCkvD8ASCXKNUu7+C4dhlBhSrt8rbFRc97kvSWRTTLkz9keQdeAzJSYu5
FTL30sXNYkR72CYQUTDXq4xlx/YjajOJUKa/XuhHrtz9q7VVlJroWzeReeFpGh8v
+r5APSEtFrc/OFt8H3p3eyH+o1u8KYEMe/6xVCs3t8xpfmcf+c5Pt3AUKGtcmhuJ
bQnIFj8mOpF4G+2ZmsF5HH6FlW08arM/IHoZhl5MS9jTVTR46VLkMsOpsJX9Yd8f
K2hL9Yl9QKZIWR6gMz3hxnllLo9g8/QjI+qBd+AO92V+OPl+G3A8LjnxPd9UsmER
xVv934AW6W1rqKMmWT6XKwmYU8mI/Au6mgOwN7udzWCqJOP9vEVF8WuBj55D18t6
1mR3EgQgOcO4ztBiJSqwvK8HbBIwnEsoWZFcFQjxoqPtxutzG7Zcemw9BC1v/MCz
P6sX8QN1XZS1iXFuSuYd3RDxUwfL5wSdfIPH88tbEdl5biUYxJc=
=s7TV
-----END PGP SIGNATURE-----

--uN4msR7VCm3q6DcWswRAoQoa9frLv26mh--
