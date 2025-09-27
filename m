Received: (qmail 9249 invoked by uid 550); 27 Sep 2025 22:17:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9218 invoked from network); 27 Sep 2025 22:17:31 -0000
Date: Sat, 27 Sep 2025 22:17:18 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aNhibrmfkKuRJVsW@yuggoth.org>
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="K0lKd2lIJHqXo8yb"
Content-Disposition: inline
In-Reply-To: <20250927214013.GA9163@openwall.com>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] How to do secure coding and create secure software

--K0lKd2lIJHqXo8yb
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2025-09-27 23:40:13 +0200 (+0200), Solar Designer wrote:
[...]
> However, if in "functions/methods are secure" you refer only to=20
> smaller building blocks, then no, the program built from them may=20
> still be insecure. Also "the whole software" isn't necessarily=20
> just one program.
[...]

Yes, in practical terms the majority of security vulnerabilities I=20
handle day to day lately stem from insecure design choices. The=20
software is working as designed, but the design was poorly chosen.

Insecure coding patterns are mostly caught by static analyzers=20
during development or review, and so don't typically even merge to=20
the public code repository much less end up in the hands of users.
--=20
Jeremy Stanley

--K0lKd2lIJHqXo8yb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmjYYmhfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WClyFxAAhlHCfKR0DTZSjk5KgFeqLpO+CdmTBQ+zvXLk0+J4XRuvwpeTU+y7XoDL
IwhSJpwmGMKtDau16bpDS9CplAQGjSNlGYdMUG1mcwSIpdCtntdrRkkAesyYZSS0
uRKMzEy5aUaru+7vB6tuI7eOffG1lx9T16EyufJesEEVHloGkRKVmyWyv4pUwsKd
oLHTYLSyEokDEW9c5nsA9lqPPKUZYKotKeeLs8v6a2GF3PP8n9reZDdc2roFdZCF
D6I9ALLnoCKs27Q4QDzvW1VHUIfpGUhV3Bg9kV2J6auO7sUgkt1Q9l2HqF0rbiEF
0aFGCxH2+1xlzM+CJnWFmeff4Ip+HWjV9EgHUKq6PldjJfpTCo8RLyxd+srRhVpQ
Pys9RM6E5vqVkmbBJS6qkbyfSdGcrYYDBIJs1Bh65L2zIDn6y648b2GMssMAaJvu
/TYuzkgyoGoauZCWvgDdZlZYaescqujX4uvvEkybNJl4OfYES1n6Q1gLV+oXwI50
a3cH21GQFoI4z2Ht6iLBkRdN6ce/fWgDGQRYCijf+0liSkKX+2WE42NV245s3jXC
dfqZfKYAAFFzbBJfj7+xNjBayd0QY3Czk4twdVvnbXMoai8Htiktf+x1yeZG6Dpg
I9zJXicoRs9nwe0bBSE7M6ehS2HleLWVK5sl1n83uQbFxNbQr0c=
=89eA
-----END PGP SIGNATURE-----

--K0lKd2lIJHqXo8yb--
