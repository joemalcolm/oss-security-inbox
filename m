X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1901" "Saturday" "2" "April" "2016" "15:14:57" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1459602897.9149.3.camel@debian.org>" "53" "Re: [oss-security] ext4 data corruption due to punch hole races" "^Date:" nil nil "4" "2016040213:14:57" "[oss-security] ext4 data corruption due to punch hole races" (number mark "        corsac@debia Apr  2   53/1901  " thread-indent "\"Re: [oss-security] ext4 data corruption due to punch hole races\"\n") "<20160331151128.GK26612@suse.de>" ("<20160331151128.GK26612@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23899 invoked by uid 550); 2 Apr 2016 13:48:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23874 invoked from network); 2 Apr 2016 13:48:25 -0000
Message-ID: <1459602897.9149.3.camel@debian.org>
In-Reply-To: <20160331151128.GK26612@suse.de>
References: <20160331151128.GK26612@suse.de>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-uIq4kjjGKJZJrHsMxnff"
X-Mailer: Evolution 3.18.5.1-1 
Mime-Version: 1.0
Date: Sat, 02 Apr 2016 15:14:57 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ext4 data corruption due to punch hole races
To: oss-security@lists.openwall.com, Johannes Segitz <jsegitz@suse.com>, 
	Theodore Ts'o
	 <tytso@mit.edu>, Ben Hutchings <ben@decadent.org.uk>

--=-uIq4kjjGKJZJrHsMxnff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On jeu., 2016-03-31 at 17:11 +0200, Johannes Segitz wrote:
> Hello,
>=20
> Jan Kara fixed some issues in the Linux kernel with security implications.
>=20
> https://bugzilla.suse.com/show_bug.cgi?id=3D972174
>=20
> "When punching holes into a file races with the page fault of the same
> area, it is possible that freed blocks remain referenced from page cache
> pages mapped to process' address space. Thus modification of these blocks
> can corrupt data someone else is now storing in those blocks (which
> obviously has security implications if you can trick filesystem into
> storing some important file in those blocks).
>=20
> This affects all the kernels where we support ext4 for writing. Relevant
> fixes upstream are commits ea3d7209ca01da209cda6f0dea8be9cc4b7a933b,
> 17048e8a083fec7ad841d88ef0812707fbc7e39f,
> 32ebffd3bbb4162da5ff88f9a35dd32d0a28ea70,
> 011278485ecc3cd2a3954b5d4c73101d919bf1fa."
>=20

Hey,

any reason why those commits weren't CC: stable? If this really affects all
kernels where ext4 writing is possible, that means basically all current
stable kernels more or less, I guess?

Regards,
--=20
Yves-Alexis


--=-uIq4kjjGKJZJrHsMxnff
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJW/8XRAAoJEG3bU/KmdcClZA8IAJZVT/fNuaDdyWrrflP8Rkys
N49c0S5K0QPw2c+hNmAPAT4wWIy/NuVUVRFH0KTL4c4AebmGkrjRGVto2ZD6nCfv
IRjoPgjLDhLSI3yly/7PvLj2QSmkhII9jdFliV+m+Lux1lrSgD7F7bkSby1KFfzF
nmLAYXzJWOdOxffr8DIyVykbPaVPiOXmI7pHlFoh1Zi0SACyLb+gLJPvjtyA/QJD
gII6Y0k3b4odUITU5eTsVZY9I2TiKjyZBXCBIMfO65bst0b0JIGPA1XyJnIvW+Vq
mLZGfGKeY3gKSZBFy7BspAakQfJ65S60pemqKXKoCzSX6c9cw+IAtMG7tgBHTW8=
=VJpR
-----END PGP SIGNATURE-----

--=-uIq4kjjGKJZJrHsMxnff--
