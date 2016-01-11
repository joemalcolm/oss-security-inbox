X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1966" "Monday" "11" "January" "2016" "10:25:11" "+0000" "Tim Brown" "tmb@65535.com" "<3412231.rSTmOYfSpU@sarpedon>" "54" "Re: [oss-security] Discuss: Daily/weekly cron jobs best practices" "^Date:" nil nil "1" "2016011110:25:11" "[oss-security] Discuss: Daily/weekly cron jobs best practices" (number mark "        tmb@65535.co Jan 11   54/1966  " thread-indent "\"Re: [oss-security] Discuss: Daily/weekly cron jobs best practices\"\n") "<568D9DEC.7030306@halfdog.net>" ("<568D9DEC.7030306@halfdog.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29768 invoked by uid 550); 12 Jan 2016 11:16:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29750 invoked from network); 12 Jan 2016 11:16:56 -0000
Message-ID: <3412231.rSTmOYfSpU@sarpedon>
User-Agent: KMail/4.14.10 (Linux/4.0.0-1-amd64; KDE/4.14.13; x86_64; ; )
In-Reply-To: <568D9DEC.7030306@halfdog.net>
References: <568D9DEC.7030306@halfdog.net>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2148095.R83gHExtYo"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Date: Mon, 11 Jan 2016 10:25:11 +0000
From: Tim Brown <tmb@65535.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Discuss: Daily/weekly cron jobs best practices
To: oss-security@lists.openwall.com

--nextPart2148095.R83gHExtYo
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Wednesday 06 January 2016 23:06:20 halfdog wrote:

> Are there more variants, arguments? In my opinion, b) is a good
> trade-off between maintainability and security.

Create scripts with secure permissions, write only to properly secured=20
locations and execute as dedicated users with minimal privileges. Yes, ther=
e=20
will still be problems but a lot of the most significant pain points go awa=
y.

> Currently the cron scripts seem to be a weak point. I looked at the 8
> daily scripts on my machine, 2 of them belonged to the "daemon"
> example class from above and both were vulnerable to daemon to root
> privilege escalation, see e.g. [1].

Not uncommon, we pop almost every UNIX box we touch this way, I assume you'=
ve=20
seen unix-privesc-check?

Tim
--=20
Tim Brown
<mailto:tmb@65535.com>=

--nextPart2148095.R83gHExtYo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWk4MNAAoJEPJhpTVyySo7icsP/jyvl0iVXgYYeKbUpIzuxZG5
4Upz9KPQV/kFtKavetxfg7cpehbn3OkOy1V/m2Gqa79beHCKUS7u2dR536xkoPzG
9MIWtsIyN+3zhgUloIheRXmt71LkIkTK4ss2r4FWKhMRY4YjFzAxIZWx/a71/X3l
oCYZ4I3Ahh8pzHeQHRKk209g2WNd2j6sgYHJjmUEDl7qEjW2R/lORHoy63dI2/7B
0rm1MKwfr82FiFPTevX9BZeMdFT4AilhwYb2v6PridIdO3qaNJ/m4p/IFabeQ1P4
O+vGyasbEh8hZXa4DVtix2KBOjTr2iP5Hp9kJCEDDDY8/+KUaMkAYoqwx5VzLL97
WmEM3Zby5slpuWvK0fbVYtzjiN7r/B1aEHJCzSC79+nJbS4C5tSmxoY7i4G1Gvl5
0WGdlD3sEDFBBrzovnIubjhcqLPcO6qoUaq4DRCnQYyYEJcH1w/rjmBtAan34+lG
CYiskoSc5fIQzeo46Jn97o4WlWxcSG4WsVFLXGCm19It8Pq3dTQYX0qWPhT/nSvO
WMhjaaY7BVH/hB6YavaBTHtlSnowmBZH+wh/CG2hAje+aE0MLxJ1dFVZ2oBiSOCk
u4QVUnD/SSqDF/is4fCSVcgBQV0wULfTlj8p9p1LmURY5zeP60zid6EaV+DROiyF
53z3O+dXJJQ2ulkUV/fd
=bVhN
-----END PGP SIGNATURE-----

--nextPart2148095.R83gHExtYo--

