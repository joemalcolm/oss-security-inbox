X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2020" "Friday" "8" "February" "2019" "09:08:22" "-0500" "Randy Barlow" "randy@electronsweatshop.com" "<c8a1fdf00760245ccdabc0ac0f4d0b981f478b34.camel@electronsweatshop.com>" "47" "[oss-security] CVE-2019-7628: Pagure version 5.2 leaks API keys by e-mail" "^Date:" nil nil "2" "2019020814:08:22" "[oss-security] CVE-2019-7628: Pagure version 5.2 leaks API keys by e-mail" (number mark "        randy@electr Feb  8   47/2020  " thread-indent "\"[oss-security] CVE-2019-7628: Pagure version 5.2 leaks API keys by e-mail\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24565 invoked by uid 550); 8 Feb 2019 15:07:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21937 invoked from network); 8 Feb 2019 14:08:38 -0000
Message-ID: <c8a1fdf00760245ccdabc0ac0f4d0b981f478b34.camel@electronsweatshop.com>
Organization: electronsweatshop.com
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-MBGlEWE5yf0Z4zrMVEG0"
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-CMAE-Envelope: MS4wfAcZ1VUzCWR7oLPgwcsa4AuG7Q6xucx4CBwtJWZXkLCnroQdHkjawiq9ta1KRql63pUCpbTX475JkA0vE/GYbYMKmOD4C/hJupnrXUIKaK69yiA7ttPC
 4wINp3FMtFTOpGCOqVkVqABuCSCBPLQnm7vfOaMTb8fnnH23ZoYLOxq56tvyiMyPfKqDm3L+1fype01XXHNIAXCVwPwFzRbAwFI=
Date: Fri, 08 Feb 2019 09:08:22 -0500
From: Randy Barlow <randy@electronsweatshop.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-7628: Pagure version 5.2 leaks API keys by e-mail
To: oss-security@lists.openwall.com

--=-MBGlEWE5yf0Z4zrMVEG0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It was discovered that Pagure[4] 5.2 e-mails full API tokens in e-mails=20
that are intended to remind users that the tokens are expiring soon[3].
The vulnerability was introduced in 5.2[0]. There was a partial fix
applied in [1], but that fix still leaked partial keys.

At the time of this writing, a fix is proposed at [2].

There is not yet a released version of Pagure with a fix, but Pagure
administrators can work around this issue by disabling the cron job. It
may be wise to delete all API tokens that may have been e-mailed after
disabling the cron job as a precautionary measure.


[0] https://pagure.io/pagure/c/57975ef30641907947038b608017a9b721eb33fe
[1] https://pagure.io/pagure/c/9905fb1e64341822366b6ab1d414d2baa230af0a
[2] https://pagure.io/pagure/pull-request/4254
[3] https://nvd.nist.gov/vuln/detail/CVE-2019-7628
[4] https://pagure.io/pagure

--=-MBGlEWE5yf0Z4zrMVEG0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtaW+t5vwm7qNSBIDeETMuDvdJGIFAlxdjVYACgkQeETMuDvd
JGL5Tw/8D0h6PYI3ZyuA7Ta/3jBlnGBpvu6i1yIf0CAwaJs+Ozmo2WbaHePJuFIr
A/Vf/r98fvyQlm47gXkir2qlboH1wLySOPHYyWVSiMYpKc+LfKhIfnheqWzMxgvS
iLE4f4XOZq3qjw82fo19BJhvy0/NrQpgUqX6kbeEGdLzpPwIJONUR2YBpr8xt4Lk
wb9FnI0s1F/lu10pcvFfC15hDvYaBj/G238EXRWg9xNKGIm6tGiMqRca7oWB5SQ5
KxssXsThxbVyXopxUbMPif82IacBhTzF6npbs4byt6Ad34wwGsUwrAb7DfklmPI6
tuO9vvNNHv5u8VK+c96HxNlfhEAe0ANp+OYso5hKpJf3cWT0ljLEUMgg3RgGQjM6
azfaNWZYEWfp+sw/XhABIXOHQrSBZ159f2RCqmvuWqHNpVpsk0Vghz6j6xeBeNU4
9ln/fuL5VvmdKkRrDKBCncrb1qAx6D3O4TN0PXp2Q3nZ+AyHxn2KiiFfGAkRMEgI
tmEVL9azDn/yBw7cdm1SvWO19GWvCJHSPsaUZ73lhcqURlZl6lC/7ppnupOskb4E
cV3RO8K6GDrX8wWKLKRAR7PLqe6Adl8ZO2aL37RSX+g6PBblVD/pVxCa6oFLLnRb
wBSumjHEtyHnOtW1h2mj6Dt4PiXL9BJhF6lsy8qG8Yi4sG/mIws=
=eI6V
-----END PGP SIGNATURE-----

--=-MBGlEWE5yf0Z4zrMVEG0--

