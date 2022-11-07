Received: (qmail 12225 invoked by uid 550); 7 Nov 2022 17:53:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4017 invoked from network); 7 Nov 2022 17:35:18 -0000
Date: Mon, 7 Nov 2022 11:35:04 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Cc: ggregory@apache.org, security@apache.org
Message-ID: <Y2lByE1FNVw3z/L8@gentoo.org>
References: <0a509ab5-7397-d6ac-e841-ef4d9bf00d58@apache.org>
 <Y2V8FtuEeMuBjf1u@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c21MD3QiduoMU1Fp"
Content-Disposition: inline
In-Reply-To: <Y2V8FtuEeMuBjf1u@gentoo.org>
Subject: Re: [oss-security] CVE-2022-42920: Apache Commons BCEL prior to
 6.6.0 allows producing arbitrary bytecode via out-of-bounds writing

--c21MD3QiduoMU1Fp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Copying Apache's CNA address and original sender. The new CVE is now
public.

On Fri, Nov 04, 2022 at 03:54:46PM -0500, John Helmert III wrote:
> On Fri, Nov 04, 2022 at 05:35:34PM +0000, Gary D. Gregory wrote:
> > Description:
> >=20
> > Apache Commons BCEL has a number of APIs that would normally only allow=
 changing specific class characteristics. However, due to an out-of-bounds =
writing issue, these APIs can be used to produce arbitrary bytecode. This c=
ould be abused in applications that pass attacker-controllable data to thos=
e APIs, giving the attacker more control over the resulting bytecode than o=
therwise expected. Update to Apache Commons BCEL 6.6.0.
> >=20
> > This issue is being tracked as BCEL-363
> >=20
> > Credit:
> >=20
> > Reported by Felix Wilhelm (Google); GitHub pull request to Apache Commo=
ns BCEL #147 by Richard Atkins (https://github.com/rjatkins); PR derived fr=
om OpenJDK (https://github.com/openjdk/jdk11u/) commit 13bf52c8d876528a43be=
7cb77a1f452d29a21492 by Aleksei Voitylov and RealCLanger (Christoph Langer =
https://github.com/RealCLanger)
> >=20
>=20
> This appears to be a duplicate of CVE-2022-34169 (also issued by the
> Apache CNA), and previously discussed on this list at [1]. It was
> eventually reported to the list that the vulnerability was actually in
> bcel [2].
>=20
> [1] https://www.openwall.com/lists/oss-security/2022/07/19/5
> [2] https://www.openwall.com/lists/oss-security/2022/10/18/2



--c21MD3QiduoMU1Fp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY2lBxgAKCRCgXq2+aa/J
tZnoAQDPYTA5LZ6G5tMELi6yCoZuVkM93gI0+YlFbrDVxv2DfwEA9qNLdH4OvJOW
TrfT6eb5V/aH/YRhazGqrPKPVQKCZwo=
=CjTd
-----END PGP SIGNATURE-----

--c21MD3QiduoMU1Fp--
