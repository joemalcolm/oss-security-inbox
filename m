Received: (qmail 14056 invoked by uid 550); 23 Jul 2022 18:07:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18363 invoked from network); 23 Jul 2022 16:52:08 -0000
Date: Sat, 23 Jul 2022 11:51:53 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <YtwnKUHaS9nL/F/F@gentoo.org>
References: <6ae481de-39c2-c4a9-5274-59c2bcdb2dd6@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dA1dbJzk1TKwtetN"
Content-Disposition: inline
In-Reply-To: <6ae481de-39c2-c4a9-5274-59c2bcdb2dd6@gmail.com>
Subject: Re: [oss-security] CVE Request: heap buffer overflow in gdk-pixbuf

--dA1dbJzk1TKwtetN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 23, 2022 at 07:35:42PM +0700, Pedro Ribeiro wrote:
> Hi,
>=20
> A year ago I found and submitted a vulnerability to the gdk-pixbuf tracke=
r:
> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/issues/190
>=20
> It's a heap buffer overflow using a crafted GIF, which is likely=20
> exploitable in 32 bit systems. Full details are in the link above in the=
=20
> bug tracker.
>=20
> This was patched and the fix was merged 8 months ago as seen here:
> https://gitlab.gnome.org/GNOME/gdk-pixbuf/-/merge_requests/121
>=20
> The issue is now public, but since no CVE was attributed, it probably is=
=20
> not being considered as a problem for downstream users of the package.
>=20
> As of today, the latest Debian stable package is affected by this=20
> vulnerability. Using a GNOME file system browser and browsing to that=20
> folder will cause a crash, as will opening it up in a GNOME image viewer=
=20
> and even attempting to load it in Chromium (should have submitted to=20
> them for a bounty :D).
>=20
> Hence I'd like to get a CVE to raise awareness for this issue, so that=20
> downstream users of the package can get patched.
>=20
> Thanks and regards,
> Pedro Ribeiro

Hi, according to the oss-security Openwall wiki page [1], CVEs need to
be requested via MITRE's web form [2].

[1] https://oss-security.openwall.org/wiki/mailing-lists/oss-security
[2] https://cveform.mitre.org/=

--dA1dbJzk1TKwtetN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYtwnJwAKCRCgXq2+aa/J
tW3fAQCQzkIe8opGcVBld8aPY5ALtRrJSUEothhnA8bfYgN3pAEA4n6m3jLECFdV
Y9YdxUFhGzBMJ72JLBbzHSJf7YSDQAo=
=q4ta
-----END PGP SIGNATURE-----

--dA1dbJzk1TKwtetN--
