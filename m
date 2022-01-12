X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3190" "Tuesday" "11" "January" "2022" "22:52:24" "-0600" "John Helmert III" "ajak@gentoo.org" nil "81" "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil "1" nil nil (number mark "U       ajak@gentoo. Jan 11   81/3190  " thread-indent "\"Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour osd_dmcrypt_key_size" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21664 invoked by uid 550); 12 Jan 2022 08:07:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1861 invoked from network); 12 Jan 2022 04:52:38 -0000
Date: Tue, 11 Jan 2022 22:52:24 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Yd5eiNskXgdDCdID@sol.nexus.lan>
References: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IhSZF26j/yXVXHYB"
Content-Disposition: inline
In-Reply-To: <CABBoSthWNAv07LcprhNazDEs_TEcqhzb94aFB7GvwU9HHm8ROw@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-3979 ceph: Ceph volume does not honour
 osd_dmcrypt_key_size

--IhSZF26j/yXVXHYB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 11, 2022 at 04:10:06PM -0500, Ana McTaggart wrote:
> Hi all,
> The key length for encrypted devices created using ceph-volume is
> incorrect. This is due to a bug in ceph_volume/util/encryption.py, where
> upon writing a key using osd_dmcrypt_key_size it does not pass the key si=
ze
> to the format and open operations following. The default key is then
> applied in cryptsetup. All versions since Luminous are assumed affected. =
At
> Red Hat. we have assigned it  CVE-2021-3979 and proposed a CVSS score of
> 6.5/CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:N
>=20
> See below for the report, credit of Mark Kirkwood.
>=20
> We happened to run 'cryptsetup luksDump' on some of our encrypted
> devices that were created using ceph-volume and noticed the key length
> was wrong:
>=20
> e.g:
>=20
> markir@ceph3:~$ cat /etc/ceph/ceph.conf
> ...
> [osd]
> osd_dmcrypt_type =3D luks
> osd_cryptsetup_parameters =3D --cipher aes-xts-plain64
> osd_dmcrypt_key_size =3D 512
>=20
> markir@ceph3:~$ sudo cryptsetup luksDump
> /dev/mapper/ceph--9e3502c0--a991--44cc--a2a1--0e8e8fb45189-osd--block--aa=
ab9851--5951--429d--8e9d--dbc22ea4c1a1
>=20
>=20
> Version:           1
> Cipher name:       aes
> Cipher mode:       xts-plain64
> Hash spec:         sha256
> Payload offset:    4096
> MK bits:           256 <=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D should be 512
>=20
>=20
> This appears to be due to a bug in ceph_volume/util/encryption.py. While
> it writes a key using osd_dmcrypt_key_size it does not pass the key size
> to the following format and open operations. It looks like that ecause
> the key is being passed to cryptsetup on stdin that the length is not
> being deduced, and so the default key size is being applied.
>=20
> It is fairly simple to patch (see attached - luks operation only, prob
> needs plain code path altered similarly).
>
> In terms of which versions are impacted, we are running Luminous, but
> the patch I have attached is against current master, so suspect all
> versions since Luminous are in the crosshairs.

Was a patch meant to be attached? Is there any report or PR upstream?=

--IhSZF26j/yXVXHYB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmHeXn8ACgkQXP0dAeB+
IzgStw/+KsOm8kGkf/uQVWaVBNfcHquYTXCT8mLLYrqBauPy+aIQffnuWU3OLaEM
Pp91fXI+R8L3pfTwTGlmBd4/pq94IH/HaV2uIOlgb3tNJwUh4XHlKx5i5GoNoX1g
+sgl0uTumJ0h40nWJZVm3rEgZMsLLsLQml6T0meuLgMoVZ9lG4DFb8+2xxdnIF8q
GK2duFYbDoamhUegmIpLYCl3yGt2vjlcOB8TPoqUxJczzGhoO1aEgFvEfWDxYJx6
SgPiOraI8Y76MxdfEpGCy6EUdl2Eu9iUju5D69n1wW5HtZKp/iw0w9D7/w2CjUUf
bI5h8TrDIcgn8RfpnuZn0FOxBEQ00tHW0+0CmTBmcU3+l+qmR3i7n0TPtZD8126A
A0mLRNOSKY+1xzlwqkuh1FfzA0oQlvNYlOcy2MLpGanfW+0xXMjD60bpVV5rbGjE
3+3WgduqznMejSNp1kX+uNzbmS3lHW54sA9p9mSiqsGt76iOH7i4wMfQr4SOA/Zi
ajrtBCIED4zmOUmGVLxG9qGf2+aNUJXsgedwXvPjPewNShyzN28uCagtUcP7N9KS
dhyPDq+eIkBISqn161Bidcu8uj2LcqEdB9CgGpnRsc7ACPG3JLjc3126PvKJ22K7
ORgEIUM6u+/+oxxaWy+UGhYlyQIMGjf/4ktdr9rEb5PNvDZRGHw=
=QGLx
-----END PGP SIGNATURE-----

--IhSZF26j/yXVXHYB--
