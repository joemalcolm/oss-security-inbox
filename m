Received: (qmail 15932 invoked by uid 550); 3 Nov 2022 11:32:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6019 invoked from network); 2 Nov 2022 23:41:28 -0000
Date: Wed, 2 Nov 2022 18:41:13 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y2MAGbrZO7r23Wtp@gentoo.org>
References: <20221101170833.GA10470@openwall.com>
 <20221102150921.3ab3f2d0@computer>
 <Y2K1yOB7748iGI2P@wopr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZwjPuikRZUadQ/ht"
Content-Disposition: inline
In-Reply-To: <Y2K1yOB7748iGI2P@wopr>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--ZwjPuikRZUadQ/ht
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 02, 2022 at 11:24:08AM -0700, Kurt H Maier wrote:
> On Wed, Nov 02, 2022 at 03:09:21PM +0100, Hanno B=F6ck wrote:
> > FWIW it only takes a basically trivial fuzz target on the affected
> > function to find this bug with libfuzzer.
>=20
> I'm not sure what the value is of all this Monday-morning
> quarterbacking, from 'basically trivial' fuzzing to code-quality
> comparisons of hypothetical Rust ports.  OpenSSL's development process
> has a bad rap, and there are definitely some easy wins to be had.
> Posting "if they'd only adopted my pet practice" to oss-sec isn't fixing
> anything in the OpenSSL project.  Please consider directing fuzzing
> advice and PL theory directly to the project?  I agree there would be
> benefit to this stuff, but dunking on them on unrelated lists isn't
> getting the medicine to the patient.

I don't read it (Hanno's point) as a 'dunk', some information on how
this kind of thing might be prevented in the future certainly has
value here.

>=20
> Respectfully,
> khm

--ZwjPuikRZUadQ/ht
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY2MAGAAKCRCgXq2+aa/J
tTCLAP0SyqkbVEg9Yazr/nhYzpTvAdsUvOtBRaji0X69w+BJ+AD/X+aXBzhfqg8l
t1RL0t3wwJv5F5Aw8OD2SwqMupri4AQ=
=9Yfp
-----END PGP SIGNATURE-----

--ZwjPuikRZUadQ/ht--
