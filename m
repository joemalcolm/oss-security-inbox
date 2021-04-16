X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2118" "Friday" "16" "April" "2021" "08:04:50" "-0700" "Steve Beattie" "steve.beattie@canonical.com" nil "55" "Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil "4" nil nil (number mark "U       steve.beatti Apr 16   55/2118  " thread-indent "\"Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs caps privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21942 invoked by uid 550); 16 Apr 2021 15:10:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17856 invoked from network); 16 Apr 2021 15:05:04 -0000
Date: Fri, 16 Apr 2021 08:04:50 -0700
From: Steve Beattie <steve.beattie@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20210416150450.GC5315@nxnw.org>
References: <20210415213114.GA5315@nxnw.org>
 <YHmk/nNvde4ohgSP@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R+My9LyyhiUvIEro"
Content-Disposition: inline
In-Reply-To: <YHmk/nNvde4ohgSP@eldamar.lan>
Organization: North by Northwest Consolidated Industries, LLC
X-PGP-Key: http://www.NxNW.org/~steve/005E81F4.txt
Subject: Re: [oss-security] [CVE-2021-3493] Ubuntu Linux kernel overlayfs fs
 caps privilege escalation

--R+My9LyyhiUvIEro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 16, 2021 at 04:53:50PM +0200, Salvatore Bonaccorso wrote:
> Hi Steve,
>=20
> On Thu, Apr 15, 2021 at 02:31:14PM -0700, Steve Beattie wrote:
> > Hello,
> >=20
> > An independent security researcher reported via the SSD Secure
> > Disclosure program that the overlayfs stacking file system within the
> > Linux kernel as used within Ubuntu did not properly validate the
> > application of file capabilities against user namespaces.
> >=20
> > This issue is likely Ubuntu specific, as Ubuntu carries a patch to
> > enable unprivileged overlayfs mounts. The combination of that patch
> > plus allowing unprivileged user namespaces by default in Ubuntu allows
> > an unprivileged attacker to gain elevated privileges.
> >=20
> > A commit that addresses the issue was applied in the upstream kernel:
> >=20
> >   7c03e2cda4a5 ("vfs: move cap_convert_nscap() call into vfs_setxattr()=
") (v5.10)
>=20
> For completeness, this though was in v5.11-rc1 right?

Yes, sorry, thanks for the correction.

--=20
Steve Beattie
<sbeattie@ubuntu.com>

--R+My9LyyhiUvIEro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEpgY7tWAjCaQ8jrvULwmejQBegfQFAmB5p48ACgkQLwmejQBe
gfRQig//TVbSp+UB9IqXEEeI1m0t3Bz/xKYh3a8exhYaJ4f0BJSbigoq/4eh6Ezd
iaum4CnJQd+f4d8078lG6VrJQ7iYJtpr0vhFGC9BiLNEsZlLOJWKnDsRjrXTfQjZ
LpJ07apCrtCtvCzdU8EwECGrpVRaxvtJqy3nYQg8LW2oenMVy1U2gDSh5eAlnJEQ
iTblfgBbridFh8PoODVzEXndPWh5Nu9kFZ2WSM/5jKFbXLhVgSAVccTHXCHF/duz
lFFD8iXcho295ZOpL8DW0ZA6VeIqO4QXWl4b3qYE93Yu0b6uUVNzeafTFF1rXclN
4ZKcdDPveUS8sf9S5Gmzy4/71XMPjvQXWC8GKwkw2eemvrrTsFoa3QprGKid/Czx
AIb2mD28JiThEACcKVwN1IEPMqkp7lAedBhN6RaMpyXANq3slTVwa8R2t6OUXQ53
xut8shx6IvZfeOzokBGdRx5dmI6hRNA9xUylAgNJzUv6sWTD10TIOb9cqo2rjRv8
Nxwe6CNk8jnuj3qlkWXM/PJYGEt69bmwbQzRD1DSUr0t47L9DyCxEeeQGmyKB7qO
MYfdmEscpUAvPiS4FDtgd9DHs+01A7lw1VMxXAdwanqVTZmLd2k4SP6KXY+PYANI
rGcIzmP6kax3JWLUnkCPc7UvNfITC8qSN+VINw0J/Tvn9Nzb8xs=
=Rsdz
-----END PGP SIGNATURE-----

--R+My9LyyhiUvIEro--
