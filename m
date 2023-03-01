Received: (qmail 21663 invoked by uid 550); 1 Mar 2023 12:13:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3614 invoked from network); 1 Mar 2023 01:56:04 -0000
Date: Tue, 28 Feb 2023 19:55:43 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y/6wnzgxs4K7zeYp@gentoo.org>
References: <6ce790cbffb04331@millert.dev>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ftnhU7DP0daJMqiJ"
Content-Disposition: inline
In-Reply-To: <6ce790cbffb04331@millert.dev>
Subject: Re: [oss-security] sudo: double free with per-command chroot sudoers
 rules

--ftnhU7DP0daJMqiJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Has a CVE been requeested?

On Tue, Feb 28, 2023 at 07:31:11AM -0700, Todd C. Miller wrote:
> A flaw exists in sudo's per-command chroot feature that could result
> in the variable that stores the command being freed more than once.
>=20
> I believe this is a fairly low-impact bug as the per-command chroot
> feature is not widely used.  The bug was caught by glibc's double-free
> detection while I was performing some chroot-related testing.  No
> one else has reported the bug which leads me to believe it probably
> has not been encountered in the wild.
>=20
> Sudo versions affected:
>=20
>     Sudo versions 1.9.8 through 1.9.13p1 inclusive are affected.
>     Versions of sudo prior to 1.9.8 are not affected.
>=20
> Details:
>=20
>     Starting with Sudo 1.9.3, it is possible to specify an alternate
>     root directory that sudo will change to before executing the
>     command.  For example:
>=20
> 	someuser ALL =3D CHROOT=3D/var/www /bin/sh
>=20
>     will result in /bin/sh being run inside the chroot jail /var/www
>     when the specific user runs "sudo sh".
>=20
>     Sudo 1.9.8 included a fix for a memory leak in the set_cmnd_path()
>     function which can result in the "user_cmnd" variable being
>     freed twice, but only when processing a sudoers rule that
>     contains a "CHROOT" setting.  This does not affect the "chroot"
>     Defaults setting.  Only a per-rule "CHROOT" setting will trigger
>     the bug.
>=20
> Impact:
>=20
>     The bug can only be triggered by a user that has been granted
>     sudo privileges using a sudoers rule that contain a "CHROOT"
>     setting and the rule must match the current host.  If no users
>     have sudoers rules containing "CHROOT" there is no impact.  This
>     feature is not commonly used.
>=20
> Workaround:
>=20
>     Remove rules from the sudoers file than contain a "CHROOT"
>     setting if using an affected version of sudo.
>=20
> Fix:
>=20
>     The bug is fixed in sudo 1.9.13p2.

--ftnhU7DP0daJMqiJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY/6wngAKCRCgXq2+aa/J
tcCFAQCDpkHmAOtAePUzIflc+TY4IvHjU4fniQslxxiIo3pgLgEAqmLHexCQWiCC
vOtsx9MaZmLDJ5RjePxePxV9OscwzAg=
=SZJ9
-----END PGP SIGNATURE-----

--ftnhU7DP0daJMqiJ--
