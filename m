X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2400" "Monday" "30" "October" "2017" "20:15:51" "+0100" "chbi@chbi.eu" "chbi@chbi.eu" "<ad8e08c6-e1f9-280c-41a7-169b901ca859@chbi.eu>" "71" "[oss-security] CVE-2017-14752, CVE-2017-15273: Stored XSS vulnerability in Mahara <= 15.04.14, <= 16.04.8, <= 16.10.5, <= 17.04.3" "^Date:" nil nil "10" "2017103019:15:51" "[oss-security] CVE-2017-14752, CVE-2017-15273: Stored XSS vulnerability in Mahara <= 15.04.14, <= 16.04.8, <= 16.10.5, <= 17.04.3" (number mark "U       chbi@chbi.eu Oct 30   71/2400  " thread-indent "\"[oss-security] CVE-2017-14752, CVE-2017-15273: Stored XSS vulnerability in Mahara <= 15.04.14, <= 16.04.8, <= 16.10.5, <= 17.04.3\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4082 invoked by uid 550); 30 Oct 2017 19:16:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 4053 invoked from network); 30 Oct 2017 19:16:17 -0000
Message-ID: <ad8e08c6-e1f9-280c-41a7-169b901ca859@chbi.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="CT91gHkEt46frGhwA3TelGGbod44xT9LD"
Date: Mon, 30 Oct 2017 20:15:51 +0100
From: chbi@chbi.eu
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2017-14752, CVE-2017-15273: Stored XSS vulnerability in Mahara <=
 15.04.14, <= 16.04.8, <= 16.10.5, <= 17.04.3
To: oss-security@lists.openwall.com

--CT91gHkEt46frGhwA3TelGGbod44xT9LD
Content-Type: multipart/mixed; boundary="anfKgi7md9Vm7Mvs4dfEVi2Vl4UUkvmo0";
 protected-headers="v1"
From: chbi@chbi.eu
To: oss-security@lists.openwall.com
Message-ID: <ad8e08c6-e1f9-280c-41a7-169b901ca859@chbi.eu>
Subject: CVE-2017-14752, CVE-2017-15273: Stored XSS vulnerability in Mahara <=
 15.04.14, <= 16.04.8, <= 16.10.5, <= 17.04.3

--anfKgi7md9Vm7Mvs4dfEVi2Vl4UUkvmo0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

I've discovered two security issues in Mahara <=3D 15.04.14, <=3D 16.04.8,
<=3D 16.10.5, <=3D 17.04.3 (https://mahara.org)


CVE-2017-14752:
A stored XSS vulnerability in "First name", "Last name" and "Display
name" allows an authenticated user to inject JavaScript to gain
administrator privileges.

https://mahara.org/interaction/forum/topic.php?id=3D8083


CVE-2017-15273:
A stored XSS vulnerability in the title of a journal allows an
authenticated user to inject JavaScript to gain administrator privileges.

https://mahara.org/interaction/forum/topic.php?id=3D8081


The issues are fixed in Mahara 15.04.15, 16.04.9, 16.10.6, 17.04.4


--=20
chbi
https://chbi.eu

GPG: 3DE9 9187 4BE9 EAE6 3CA8  DC20 BA7B 93F9 9037 AE7E
     https://chbi.eu/chbi.asc


--anfKgi7md9Vm7Mvs4dfEVi2Vl4UUkvmo0--

--CT91gHkEt46frGhwA3TelGGbod44xT9LD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEPemRh0vp6uY8qNwgunuT+ZA3rn4FAln3enUACgkQunuT+ZA3
rn7TDw//QwLbVJQoausI89gt6qi34w2ceGwwnBdFoFYumKTsONx66eF25Yt5J176
wfwgOMB86toNiSWMw25ehZdxgiKOr45KWNwxVJ2fcMsnUCh3YhuuGVDaC47gpE1I
iUPa8VC/Bvo+d/9iQyEnpt/dfe9Rw6SeStBkRJ7PjQwDVzfBrdhEUqBds9HgaB1e
uNGQROcuhcvsAl5pAvdBvZO7PbiACXSXAnDTqAcHbdm9twyHRWJ16/toPbFZSpvR
T9iDIQYOO8+9rPMiN3z9IS/eFba3QqyGavLe8mX4hvS0r3HTmSt9z7qxZ7BOfOuO
hx0Dr5vCdjwZn0vnvqwwSiHHLryHmfN64skg4YbemAKodfXBHmzeX8tFALLjRvh9
of/KsyBeh5NR4eRZYD8hbR6nnR0dY9FohvoJpJld60ycEIucKCcAzlFb8E2I3eBG
FQZAdKv6WWTXDgeiI8gp8kqc/mmPKUdsKA/UN5ECS40vvDe+lXr+e/NAfSgG+hvZ
rZHWtVoywUq4/o50V+OLpSFxu7CDKnjvsq0s6tpGRfLb7mgdctCnMTag2ubK/KqW
Dak+294msqUwSsaXm7l/byGqazGPcXgclPR9FuyMAjX4JjREcvHFoxgoZCKP/tff
4alZjLaXmLEkj67TKkRQzS6FGBVd1wecIMkDm+EI5uWrOirBjn0=
=6Eh0
-----END PGP SIGNATURE-----

--CT91gHkEt46frGhwA3TelGGbod44xT9LD--
