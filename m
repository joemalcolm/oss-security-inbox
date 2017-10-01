X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2325" "Sunday" "1" "October" "2017" "09:25:07" "+0200" "chbi@chbi.eu" "chbi@chbi.eu" "<fa5c4e07-a487-cba4-88da-4868ed2b383a@chbi.eu>" "71" "[oss-security] Stored XSS vulnerability in BlogoText <= 3.7.5" nil nil nil "10" "2017100107:25:07" "[oss-security] Stored XSS vulnerability in BlogoText <= 3.7.5" (number mark "U       chbi@chbi.eu Oct  1   71/2325  " thread-indent "\"[oss-security] Stored XSS vulnerability in BlogoText <= 3.7.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27671 invoked by uid 550); 1 Oct 2017 13:10:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32573 invoked from network); 1 Oct 2017 07:25:26 -0000
To: oss-security@lists.openwall.com
From: chbi@chbi.eu
Message-ID: <fa5c4e07-a487-cba4-88da-4868ed2b383a@chbi.eu>
Date: Sun, 1 Oct 2017 09:25:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="Tt1im53EFkG18RpeHrvCHTnhTM9LrAo42"
Subject: [oss-security] Stored XSS vulnerability in BlogoText <= 3.7.5

--Tt1im53EFkG18RpeHrvCHTnhTM9LrAo42
Content-Type: multipart/mixed; boundary="R0hgfH5Mg790h4sNPUrjqFh6BUDEpPi0q";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <fa5c4e07-a487-cba4-88da-4868ed2b383a@chbi.eu>
Subject: Stored XSS vulnerability in BlogoText <= 3.7.5

--R0hgfH5Mg790h4sNPUrjqFh6BUDEpPi0q
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


Hi,

I've discovered a security issue in BlogoText <=3D 3.7.5
(https://github.com/BlogoText/blogotext/)


A Stored XSS vulnerability via comment allows an unauthenticated
attacker to inject JavaScript. If it is triggered as administrator an
attacker can for example, change global settings or create/delete posts.
It is also possible to execute JavaScript against unauthenticated users
of the blog.

Fix:
https://github.com/BlogoText/blogotext/pull/320/commits/1a283cc8ad2cda37e0a=
6aff8f4558b98ecbfd9c2


The issue is fixed in BlogoText 3.7.6.

https://github.com/BlogoText/blogotext/releases/tag/3.7.6


I've requested a CVE ID (MITRE).

--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--R0hgfH5Mg790h4sNPUrjqFh6BUDEpPi0q--

--Tt1im53EFkG18RpeHrvCHTnhTM9LrAo42
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAlnQmFkACgkQunuT+ZA3
rn5BgBAAjeW5YTR00qeatrYlgt/H2qyqmogGdpPjaiIRo6yRsba9ps8BiSDehMBq
VgMU3Czmj09O5OAvxJijG2NjaOOyFFuFh8m2Yb8OQgD95KN6bHSlGWA7MR48qjbc
KAkF08b/bnFC2xz/iHn0bbyrRVIaPVyHH76EmA1ZVr6SxywFq9Vshbtu8zCaCd2m
Ld4D1606xFdKePrhxFDkrS2KS2BF6IF3/rP8Xk3AFvDKikoomAsjxn2BnjwDvnc2
6ao5cnidBvyMieHl0y5bQfsQJGQrNzeAN4DVobrQpfu6Q656X/iujC/Ko7kMzXdy
jsK7Hsk/rGyLcg2xPD0xqs9NmlXX/2cwq+LjTVb4CvYDIRBxjYtyaSg2F2cuXDqc
L9afUJc1GucpfumUCYEBzLWUPmxDJFJ9MLDDUxmHa5gZpAwcLQi648EO24l0vXM8
dejjogvQazXCXqrypQoDEFDfSr4DpV7i4Sb6KVlaNCb3khTqK2JYMxAAQDKtlToj
rvZ/V2pi4ZFuxU8ayEc+b5zdsTNS1qFkvXdoOku7oLwadtiojH6ZIuMCtCDOEtDG
brI+MboL7XwJCjz2Ryl169gTILc9G+wyAxGIBCjQTCfs6ZKapVVtL0u8lhdE9PK7
hoZ0C8URsJ4PgFbk3EuQwA+Mk/RbxTdA1nqWVGh47K6XyJwtOKc=
=yYSB
-----END PGP SIGNATURE-----

--Tt1im53EFkG18RpeHrvCHTnhTM9LrAo42--
