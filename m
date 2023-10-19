Received: (qmail 15866 invoked by uid 550); 19 Oct 2023 16:54:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13936 invoked from network); 19 Oct 2023 16:54:08 -0000
Date: Thu, 19 Oct 2023 16:53:55 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20231019165354.kkjoxdbedeodyfik@yuggoth.org>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
 <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e3jkjgjlyyt6afkv"
Content-Disposition: inline
In-Reply-To: <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

--e3jkjgjlyyt6afkv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-10-19 17:04:10 +0100 (+0100), Sam Bull wrote:
[...]
> Also a problem with shell security. If you paste something with
> line breaks into bash, it executes them. If you paste the same
> into fish, it doesn't (it'll display the multi-line input and
> expect you to hit the enter key to execute it as a command).

That observation may be outdated. At least my bash 5.2.15 on Debian
does not execute pasted newlines, it treats it as a multi-line
command and waits for an actual enter keypress (tested inside a few
different terminal emulators including vanilla xterm, so pretty sure
it's not being mitigated at that layer).
--=20
Jeremy Stanley

--e3jkjgjlyyt6afkv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmUxXx1fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WClvZw//RPIG9yjwKkBJRX8DHp/XElXJPx+mWQCrDxeDzqRt9Y1KeCCLWTwdnfv0
BQpaaIQHGF+zU1fhdKF/FA/q9V5tJVRR2XAdMmcPKma40pxhGknNReylh0ILRMHA
wrjAHjtDkmhSAlZ0WbPAbmpyX7LwTmv8rvmdaXgzaN0QiqTSlVSVtP2l96tmXnjc
y/vohyWuDmt4xYFA0HmgHVc0pQ4R3oJQ2tYzGUxiL+/7n8sQjRACPMh4KTGhY9xQ
sOHOmq24ctN3gCyt+/qfXKlocmt3c7odOPhZm8ud1sBI9UXq6uZ6o/XBH8OERtKD
tXW86idtQVlWiEtr5ym3gXXVq3x+jSRsbrdUD2Rpj8HsI80qPXYhHUEsXPUwz8mV
kG55UjPK19/7BcOXPDJVVzYvj4p03xP8QRp05KoVf2lxq3urvPQuuG0U4U9U05jg
Ap1vx88FMZh12Yf14ycqChpvTOWb/UCBwrYJNs4mL5JrCKDLtat2y5Wocy2MwluM
G3pdkPQiThfw/UhWp+m/urWM8wSE+UV502wF3hcrCw8wYG4DsIsBPr8V4JbWyNek
vZlaLvIe302lErOdSegFZlEYIyd4KLKcP3ntIGHSzZ5OyZFE7HWwYm/LUP4Chf0H
zwr0HylCcUkuc8g1+mhUZI3KGlGUoh70ZS5skKGtyRNSNQdk1uU=
=DMR1
-----END PGP SIGNATURE-----

--e3jkjgjlyyt6afkv--
