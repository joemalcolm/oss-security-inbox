X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1626" "Sunday" "28" "October" "2018" "18:21:53" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181028182153.156c7434@computer>" "45" "Re: [oss-security] Squid Proxy multiple vulnerabilities" "^Cc:" nil nil "10" "2018102817:21:53" "[oss-security] Squid Proxy multiple vulnerabilities" (number mark "        hanno@hboeck Oct 28   45/1626  " thread-indent "\"Re: [oss-security] Squid Proxy multiple vulnerabilities\"\n") "<ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz>" ("<ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5446 invoked by uid 550); 28 Oct 2018 17:21:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5425 invoked from network); 28 Oct 2018 17:21:41 -0000
Message-ID: <20181028182153.156c7434@computer>
In-Reply-To: <ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz>
References: <ffa9731a-99c9-f60c-2454-25609835ac93@treenet.co.nz>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-5178-1540747290-0001-2"
Cc: Amos Jeffries <squid3@treenet.co.nz>
Date: Sun, 28 Oct 2018 18:21:53 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Squid Proxy multiple vulnerabilities
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-5178-1540747290-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 29 Oct 2018 05:13:40 +1300
Amos Jeffries <squid3@treenet.co.nz> wrote:

> <http://www.squid-cache.org/Advisories/SQUID-2018_4.txt>

That gives a 404.

Also there's another yet unfixed vulnerability: The webpage and the
downloads are not using HTTPS, which makes them vulnerable to
man-in-the-middle attacks ;-)

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-5178-1540747290-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEn3wfQCCb9MicJwD8dkhfABMwL8oFAlvV8DEACgkQdkhfABMw
L8rOaQ/7Bze+PXZgvXz5/ziSvPuoM4DyRa5lQuAX+xxkNcgLxWpwgESaEedy4PgB
kXJKcSmsNuoI2b+AwM7p3q1ATf0L+NBxvl99dceuNxTdpfEtGJk3IKCgSbFD7zFn
oJEEcpsq7nHB2YS0tLU3UQB7p/itg2rOVIlFeJmxrrZKWtodV8iYcbeR4ougCL06
mLs/HMKKYdMW+qLzd93rG0C4inXApmSv9qY7dwzQfQ39O4yAkrERHGahkBayxSMk
dHKUaP6vVBYESv9r8PnPFXd0VQDfgiL6RVx8SiO69CiDqrGbWvRr6wD3lFX7j2y9
2ye0pSRzXb9mfka3LQ2qyzIw09b/9pAoL9ccc4uNvn6DTnVolsyhNt92EIL+hPZa
NZvhMtBHsM1lS72uJv6oB10qb9Mlw4xbipaswuYPfAimlr1HEFozAO8x4LTFz4KO
IoGQ84gcBMkY0x2awEe7NgsvcCPs2PZ5ldrJS4Gb7u/9kvY2U6s/lJxnJC5cBk4a
dqpj60WmtXur5+ttcpefB8XcDF4rhq5MKr3rA8xQEWrAsMdGX1l5U2bz3aUOifdb
OJ/VkPVa2iOE1h2IrX6CMf9FfKwuKnldTYyvHppV/3LforZrTN/qYPNjGhRlC0H2
qYoK7cjKbwyIDg30GI1ZbN8WmjzT//BvWWJeCurOvCXvxJM+XBo=
=Fa2r
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-5178-1540747290-0001-2--
