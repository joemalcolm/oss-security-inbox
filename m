Received: (qmail 9647 invoked by uid 550); 17 May 2022 12:52:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9578 invoked from network); 17 May 2022 12:52:48 -0000
Date: Tue, 17 May 2022 12:52:34 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20220517125233.q2xhgdov2l7bpuvb@yuggoth.org>
References: <20220517033033.GA3403712@millbarge>
 <YoOCmBqfouvgbEX0@zx2c4.com>
 <YoOMdbwp3D8bynKy@kroah.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sxpsmda6nldrobil"
Content-Disposition: inline
In-Reply-To: <YoOMdbwp3D8bynKy@kroah.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

--sxpsmda6nldrobil
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Another potential nail in the coffin for embargoed disclosure lists
such as linux-distros and distros, as well as the idea of embargoed
disclosure in general, is recent changes in export controls, most
recently by the USA's Commerce Dept. While there seem to be
exceptions called out for "cybersecurity response" and
"vulnerability disclosure" in 86-FR-58205 (Information Security
Controls: Cybersecurity Items), I've been in a number of semi-hushed
conversations with vulnerability managers of other large free/libre
open source projects over worries that the provisions for this are
still too vague.

In particular, I've heard concerns raised by developers living in
the USA that privately supplying vulnerability fix patches or
information on exploiting privately identified vulnerabilities to
individuals in "restricted" countries could be a contravention of
federal export control policy, and that determining whether every
individual in receipt of this information is not a resident of a
"restricted" country is unfeasible enough to make a switch to
full-disclosure models increasingly attractive for these projects.

Unfortunately, the regulations are also new enough that getting a
clear risk assessment on these matters from legal counsel available
to community-run projects and non-profit foundations is...
challenging. Further, I've had some vulnerability manager colleagues
instructed by their employers to cease participation in any embargo
processes for related "corporate liability" reasons.
--=20
Jeremy Stanley

--sxpsmda6nldrobil
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmKDmopfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmKyhAAq0T1qkEf6eBjCJ8GOXamUmkEIF6MR/40pI8Yd95+dX9PmU3KvRGvqG+b
tS7XrcYcULq8Oy6snYrYU1EbclhnAuM6n/6/HPXMCvqEWSSpnQMHHeBVaxE9YRgJ
rKP1N8PNH+XN5gvFvbD3QuDlxy8rg+F0Ii2877jkfHxNTYTPpDo2FDOoK1DcCjWU
ueeVqLPFWRwxPitXX7oGmyRr2PyKGtMAZZ8ptiMnfdfc+qaFenAqsbl5xBe7VVBL
J4latl6xq8fhddcPgashqx7qXVfXaQ/CaFQo6ceNnsWf3JedNWa2smcHpvDboQ49
nqsoU6to+3KhDOdZFeZz1ukiaJOToFw22HgfwcB2/RGGllLuXNs+IXMxkPb3bF/H
1ak+GJdcKNO7t7mWrNXyCwxxT9c91EDw3cxZFzW9tcPtfGMe6YT5Od5MA11A9uGu
ltYbrivlYHZ6iMWdz83OP69EkazsLhcgI0szcaQrafleLkJh/qvWjkC0mkpq5V+P
DIs3i2rNzq8WYPG3SEdBpU59GW+heVsXKgA6Dwk8mq2B1YrJGjfVLqhpQ9DzcSpz
SMCJFIF0rP8gRvN5izeLzeKsQhOdkCCrjP/eP3gNGRIqDzJP/Q/HZrAcwaI7Vwan
11bl67UnC/mbTJbKFiilVLnkAqKjlhLBfxdn4YUCjM7XHA/aZlw=
=NjJC
-----END PGP SIGNATURE-----

--sxpsmda6nldrobil--
