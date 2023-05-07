Received: (qmail 20472 invoked by uid 550); 7 May 2023 21:16:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19633 invoked from network); 7 May 2023 18:12:02 -0000
Date: Sun, 7 May 2023 11:11:47 -0700
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <ZFfp47ICc31AgRmN@gentoo.org>
References: <20230418154630.eoheygqyom3c7ovw@stig.io>
 <20230429100407.3yqdy2vtzokv3t5l@stig.io>
 <6d30fdfb-ad9a-2839-9ad1-93ff478a8459@thirddimension.net>
 <CAH8yC8mJHfyn1YGpoSWwNs1nFkWnu8pL7KsO9-sTKDrtu8QR+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6vXZ5YSi09TLyGgn"
Content-Disposition: inline
In-Reply-To: <CAH8yC8mJHfyn1YGpoSWwNs1nFkWnu8pL7KsO9-sTKDrtu8QR+g@mail.gmail.com>
Subject: Re: [oss-security] Perl's HTTP::Tiny has insecure TLS cert default,
 affecting CPAN.pm and other modules

--6vXZ5YSi09TLyGgn
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 03, 2023 at 03:41:26PM -0400, Jeffrey Walton wrote:
> On Wed, May 3, 2023 at 3:21=E2=80=AFPM Reid Sutherland <reid@thirddimensi=
on.net> wrote:
> > On 4/29/23 06:04, Stig Palmquist wrote:
> > >
> > > - CVE-2023-31484 for CPAN.pm
> > > - CVE-2023-31485 for GitLab::API::v4
> > > - CVE-2023-31486 for HTTP::Tiny
> > > ...
> >
> > Who actually decides when something receives a CVE?  This can be used to
> > defame projects and products as in this case.
>=20
> "Who decides" can be a tricky question.
>=20
> Several organizations issue CVEs, like Red Hat and Gentoo. A bug
> usually has to meet a criteria, like falling into a CWE category, to
> be issued by the organization.

Actually, Gentoo is NOT a CNA, and thus cannot issue CVEs.

> You can also get them from Mitre's site. In the case of Mitre, it is
> the person who requests the CVE.
>=20
> Some CVE's are tenuous or questionable. You often see this from folks
> trying to pad their resume. For example, a researcher may request a
> CVE for a behavior that requires elevated privileges. In this case,
> someone who is Root on Linux or Administrator on Windows can already
> do the damage, so the behavior in question that happens with
> privileges is not really interesting.
>=20
> In the case of HTTP::Tiny, the default configuration and behavior is
> running afoul of https://cwe.mitre.org/data/definitions/295.html and
> https://cwe.mitre.org/data/definitions/319.html. In this case, the
> industry believes comms should use HTTPS and the name hostname should
> be validated.
>=20
> Jeff

--6vXZ5YSi09TLyGgn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCZFfp4QAKCRCgXq2+aa/J
tU47AP43nB1LgcH63p2k8fWhQ+jJlEcGsmoec1J1VoPhXDHa6gD/eUKBWuq4mXSQ
YS7sXL17WZpj7LCfh8YBgVcI1MrJYgQ=
=pW3y
-----END PGP SIGNATURE-----

--6vXZ5YSi09TLyGgn--
