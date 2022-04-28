Received: (qmail 5383 invoked by uid 550); 28 Apr 2022 15:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5358 invoked from network); 28 Apr 2022 15:45:16 -0000
Date: Thu, 28 Apr 2022 15:45:02 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20220428154502.j4hzupl7hsipgtfk@yuggoth.org>
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="znnlwoz5xivmiml6"
Content-Disposition: inline
In-Reply-To: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--znnlwoz5xivmiml6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2022-04-28 14:12:04 +0000 (+0000), Seaman, Chad wrote:
[...]
> In what universe exactly are versions omitted from vulnerability
> reporting because a vendor =E2=80=9Cno longer supports that version=E2=80=
=9D=E2=80=A6 this
> non-supported version is still vulnerable?

The alternative is what projects I work on do: If the oldest
supported version is vulnerable, then assume all unsupported
versions are also vulnerable unless someone is able to find evidence
to the contrary (we basically just always list <=3D the oldest fixed
version as vulnerable).

> Are exploit developers expected to check against the version of
> the vulnerable application during their exploit detonation to
> ensure they=E2=80=99re =E2=80=9Conly infecting supported versions?=E2=80=
=9D.

Vulnerability managers' jobs aren't to make things easier for
exploit developers, quite the opposite in fact. My goal is to make
sure users know when they may be running vulnerable software and
disseminate fixes for all supported releases, where possible.

> Why is this being allowed=E2=80=A6 this is dangerous for everyone involved
> save for Oracle=E2=80=99s own ego or public image?

Speaking from the perspective of volunteer-run open source projects
like the ones I work on, there are only so many hours in the day so
we have to limit what versions of software we can effectively test
and fix. In our case, as I said, we just assume all older versions
that that are also vulnerable unless we happen to find information
to the contrary, but I can certainly understand if others have a
policy to only bother providing information about versions they
support (and flat out tell users to upgrade to a supported version).
--=20
Jeremy Stanley

--znnlwoz5xivmiml6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmJqtnhfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkAQA//d3fp+XDsR8PoHiRDWlmb64M5kacd4QypnLyP35G/dwpGpR02ijKGxpkm
n46+3WVbstOsjNN8/SRaYw3bCCENDqibtTB6vXhNjtoKuuO2hhDn7ZkuZyBa5iHn
Jf41sHIhRJfPGsfZAyoFLo9XaK7WCGnHRuYsbXRYWBw6noQOgVBLQ4zjhVaoBRW/
BVYeYpgygVAlBMYXaBdU0UsE2Mg/nxNYK4cbviOAkNAfzlGxprBcnkKrCU7tgUDS
SkXJQYweca1pcsR0y9B8X+qCAxp5ODJItx9yNVh01RZMovt7MwtlsTuuaWYcrW3L
y78F/ofoqyyFbFNew9UEJFq6BHpMDrBkkiodtRGKVpmeNaG0Dlvj4D9tD08hEPaj
b3wyB9+qhjY2scIhgYKZAb01MI/s1+/8urMoWJapkM2b67yB0YNhUOUE27Jk0xzE
0IQegVmRl2C+BC4bdTKI4jHJXTaSYAPW62cRzyUajw/GP0485YznkFAtjoe4waLP
zoZssnud3DxSiG0ahrn4QUnyEjX3M23kLzzKNxJKZW7w5dnXu3h3upoSF1BElmUR
iEvm2EgDbfw9uYuxjw44e/fr9FrdO+3u2m9I35DZZonbb5uPJ7Bl98dPABGFVtaF
O/CepiVKE0Kw3qTajncj728+LopkCVuZNzL4kivbzWgQPb07jZo=
=eljq
-----END PGP SIGNATURE-----

--znnlwoz5xivmiml6--
