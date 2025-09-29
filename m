Received: (qmail 5453 invoked by uid 550); 29 Sep 2025 14:59:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5434 invoked from network); 29 Sep 2025 14:59:35 -0000
Date: Mon, 29 Sep 2025 14:59:21 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aNqeyW7Yp2m62m6q@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
 <CAH8yC8mQBVE5TZ_N8Cc1FkVGrqgV9rhNeAxoMi2wit5C26weFg@mail.gmail.com>
 <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cloobwOLP1d34r4J"
Content-Disposition: inline
In-Reply-To: <CAFf+5zhE2d_4TfbXH25PCLeRLTQPH832c9TwkH9FaS6E0t0qKQ@mail.gmail.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] How to do secure coding and create secure software

--cloobwOLP1d34r4J
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-09-29 09:01:26 +0530 (+0530), Amit wrote:
[...]
> The function body should also be secure.

This generalizes to a tautology: The software is secure if the=20
software is secure. It's true, of course, as are all tautologies,=20
while also being a useless assertion.

> After writing code, you should review your code for security=20
> issues and also get it peer reviewed for security issues. In=20
> general, you should always get your code peer reviewed for=20
> security issues, bugs, company coding guidelines, etc.
[...]

While excellent advice, this does not guarantee security (all of the=20
vulnerability reports I oversee are for software where every change=20
has been reviewed and approved by multiple competent developers=20
before merging, but humans are not perfect either).

Not to insult your work or ideas, but sadly this has the hallmarks=20
of what the scientific and mathematical communities would refer to=20
as "crank" or "crackpot" theory so I don't think anyone on this=20
mailing list continuing to engage with you is likely to solve your=20
misunderstandings. In time, hopefully, you'll gain a greater=20
perspective on software security and come to realize why this is not=20
as simple as you keep asserting.
--=20
Jeremy Stanley

--cloobwOLP1d34r4J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmjansBfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCl9eg//YtgNw2dTeU5vhzF57eMhXK4bidohEukNN3C1k8p6jviJqbTjCysbuCiH
65W6Qi5XnfAonKlqS4xIa7uvv/5cC4j4CMtYKTzw4TVGeoHZj7uMT4CVTMy8N6gK
ecvoJEX+fa+0D9WYbe8QEXHeUvwq6ijNrA14W6kNNyY8rHlZOMiquye9JTYd9sSJ
1HFxc8CU7Iu8p76ZD1p32TOH+DahaCv2Vm5P+7cDApZt1AHTccGP/hepdsRxAPeg
/yBKwsBrSVzUmcrobtKJYO0CgWaIMMunQ2n+TTqI/PEV7B+rbfiA+BsPTbCpsKD8
uzQRQY2/ZsgbqoZEB03qAis4/MB4lJ+WQ+soo6isGC5d0q00Qzz/KptWWRd0rX/Q
2Axe/qKn9JPiuWxY1E0pVvnuTRIprtYAYuAy34Uz7/djBjaXmIq7eW6eD/aA62BU
Si1/21NwxrFaRnzGcW8ngFWwN5pYIiePEKnrvjmCzPRweqVYbd+qdPnNgYWMssp+
DnjXi6Bjz30ebFvO/uVyXtxC0Hp83nbcMENi08sa2FlotXzNudI5chrq62eXOeAY
+4vL6hM5m0A1Fy+3n2Wf39Y5M5dvFqQDiqTnYbenei921hao7P9IaRzKoLVhxspF
V3d5L6cYyGQRr9TwHzEIlN74dhGIZiZkd8jjmCZKJItK6fLOFSk=
=zDyI
-----END PGP SIGNATURE-----

--cloobwOLP1d34r4J--
