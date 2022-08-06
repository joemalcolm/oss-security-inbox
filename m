Received: (qmail 25949 invoked by uid 550); 6 Aug 2022 16:25:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23842 invoked from network); 6 Aug 2022 14:47:26 -0000
Date: Sat, 6 Aug 2022 09:47:05 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Yu5+6SlKH6n6afZv@gentoo.org>
References: <2007d258-97ab-fb3c-bfa8-0544c63ec1b8@vulndisco.cc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3DfKVbjOGpyywnfP"
Content-Disposition: inline
In-Reply-To: <2007d258-97ab-fb3c-bfa8-0544c63ec1b8@vulndisco.cc>
Subject: Re: [oss-security] Exim 4.95 invalid free

--3DfKVbjOGpyywnfP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi, please keep in mind the list content guidelines:

"At least the most essential part of your message (e.g., vulnerability deta=
il and/or exploit) should be directly included in the message itself (and i=
n plain text), rather than only included by reference to an external resour=
ce. Posting links to relevant external resources as well is acceptable, but=
 posting only links is not. Your message should remain valuable even with a=
ll of the external resources gone."

Do you have any upstream references or commits of the fix?

On Sat, Aug 06, 2022 at 12:06:36PM +0300, Evgeny Legerov wrote:
> Hi,
>=20
>=20
> The issue has been silently fixed in Exim 4.96 -=20
> https://github.com/ivd38/exim_invalid_free
>=20
>=20
>=20
> regards,
>=20
> -e
>=20

--3DfKVbjOGpyywnfP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCYu5+5wAKCRCgXq2+aa/J
tWc9AP9xQs0UkB2ambl1XN5Kfwcf8MRTEfCkpF4dHsqIJN/q/QEAilk4rdKdyiXn
ecBnSKTCSnX15CVZl5FsulMpdfTqegI=
=VMA7
-----END PGP SIGNATURE-----

--3DfKVbjOGpyywnfP--
