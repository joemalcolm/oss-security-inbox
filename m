Received: (qmail 9625 invoked by uid 550); 10 Aug 2022 18:45:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1929 invoked from network); 10 Aug 2022 18:34:48 -0000
Date: Wed, 10 Aug 2022 13:34:34 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <YvP6OlyJp+KPoFbr@gentoo.org>
References: <6aa96d55-36b5-9053-913c-d37a25c8ca48@vulndisco.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a/Tej2ZbqeemVRGM"
Content-Disposition: inline
In-Reply-To: <6aa96d55-36b5-9053-913c-d37a25c8ca48@vulndisco.cc>
Subject: Re: [oss-security] Apache mod_dav off-by-one

--a/Tej2ZbqeemVRGM
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 09, 2022 at 02:50:34PM +0300, Evgeny Legerov wrote:
> Hi,
>=20
>=20
> How it happens that Apache process_if_header off-by-one, which has been=20
> mentioned in
>=20
> The Art of Software Security Assessment (page 420), still remains unpatch=
ed?
>=20
> What am I missing?

Has anyone reported it upstream? Has anyone requested a CVE (seems
unlikely, given the last CVE for mod_dav is one from 2013)?

Upstreams don't magically know about security issues, they need to be
reported to the upstream one way or another.

>=20
> The code from Apache 2.4.54:
>=20
> static dav_error * dav_process_if_header(request_rec *r, dav_if_header=20
> **p_ih)
> {
> ...
>=20
>  =A0=A0=A0=A0 while (*list) {
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /* List is the entire prod=
uction (in a uri scope) */
>=20
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 switch (*list) {
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =A0=A0=A0=A0 ...
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 case 'N':
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if (list[1] =
=3D=3D 'o' && list[2] =3D=3D 't') {
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if=
 (condition !=3D DAV_IF_COND_NORMAL) {
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 return dav_new_error(r->pool, HTTP_BAD_REQUEST,
> DAV_ERR_IF_MULTIPLE_NOT, 0,
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "I=
nvalid \"If:\" header: "
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "M=
ultiple \"not\"=20
> entries "
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "f=
or the same state.");
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 co=
ndition =3D DAV_IF_COND_NOT;
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 }
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 list +=3D 2;
>  =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 break;
>=20
> It is not only out of bounds read, dav_fetch_next_token() will write=20
> NULL byte on next iteration.

So we can be more descriptive than calling the vulnerability an
"off-by-one". It's more of an OOB read/write. And if NULL is the only
thing that can be written, it seems likely that the only impact is a
DoS, if that.

>=20
> regards,
>=20
> -e
>=20

--a/Tej2ZbqeemVRGM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYvP6OAAKCRCgXq2+aa/J
tQUWAP9bU2U6mOKlM1952kabub7zR1XL6AhcbGZAMHt3oYZ5LQEAt18nf6C+rDWY
ehMyC7fLzVgqaVtdwQXrT5aGn45rsQo=
=pxhS
-----END PGP SIGNATURE-----

--a/Tej2ZbqeemVRGM--
