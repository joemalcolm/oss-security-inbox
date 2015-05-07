X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1798" "Thursday" "7" "May" "2015" "16:49:08" "+0200" "Alessandro Ghedini" "alessandro@ghedini.me" "<20150507144908.GA1677@kronk.local>" "53" "[oss-security] CVE Request: zeromq downgrade attack" nil nil nil "5" "2015050714:49:08" "[oss-security] CVE Request: zeromq downgrade attack" (number mark "        alessandro@g May  7   53/1798  " thread-indent "\"[oss-security] CVE Request: zeromq downgrade attack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17684 invoked by uid 550); 7 May 2015 14:49:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17666 invoked from network); 7 May 2015 14:49:20 -0000
Message-ID: <20150507144908.GA1677@kronk.local>
Mail-Followup-To: oss-security@lists.openwall.com,
	zeromq-dev@lists.zeromq.org
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: zeromq-dev@lists.zeromq.org
Date: Thu, 7 May 2015 16:49:08 +0200
From: Alessandro Ghedini <alessandro@ghedini.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: zeromq downgrade attack
To: oss-security@lists.openwall.com

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[ CCing upstream mailing list ]

Hello,

=46rom https://github.com/zeromq/libzmq/issues/1273 :

> It is easy to bypass the security mechanism in 4.1.0 and 4.0.5 by sending=
 a
> ZMTP v2 or earlier header. The library accepts such connections without
> applying its security mechanism.
>=20
> Solution: if security is defined on a socket, reject all V2 and earlier
> connections, unconditionally.

A patch for the zeromq 4.0.x stable series is available at
https://github.com/zeromq/zeromq4-x/commit/b6e3e0f601e2c1ec1f3aac880ed6a3fe=
63043e51

AFAICT no CVE has been assigned (or requested) for this, and the issue has
been public since December of last year.

Could a CVE be assigned please?

Cheers

--EVF5PPMfhYS0aIcm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVS3thAAoJEK+lG9bN5XPLPccQAIvYsuyCFmdcWJLyx0KAfRbN
Y/9eRF2Rvg+usjIxu3g07U5lZYfIJ1mRUL9riwHusvgaw7mtVOyOOw9eSRyUcuej
40k9owelGzgK6/TM9wPRTOmaUZenGMM2UXQW6hXVBqyCp+iapzEdS5XeHYsAt3Qf
aZO9KupWzlY5oHq3/ZZ/dD+LC0fQxp1ad5gNT/jWu/cFaXjt080Q8oH3zdmyim4C
P/afbq+6F27BiQx4589WXfXokT3SiyX0DQx7ENcm4roarZNMrCPV0wK+Byti41la
F4bvMqKuGYywSe2HUx1KG+D4Fxp8XXmvofviVEEtOoG9Jw+dnJA3+UrQ7RqgHWW3
x7eFZ1vwlXmBGAp4jxf83hDc2eJX3w11J0Zs0NN1prRH+pNwyWZ+Pf/GLwct39An
x2PLR7h1Aba7xcnlXtq6B4PJ7NWV1QkAhHG5hdH4AnaOEBnggtySFE3HF4FV1R6j
eSfPoGjaXU0Hu1i+AYZh9LUaljVr3dJxyM4zNsNhwp32hl7zBWonkxA9Dt05Nc/v
6yqrso2Bo1jsS/KDjrcSZsZn7yQZ9obgpYxmc5Srr+Sc4TT5eh7zXzcVszd3l5dm
D8bKcy4A3ysZp0At0ZAKVElwmuyKU35tOP+NHQNvIRsX5o5Fd+2P5/2FsaLcvNAS
GDEYLd8hP6GHhnIXxypU
=YIV6
-----END PGP SIGNATURE-----

--EVF5PPMfhYS0aIcm--
