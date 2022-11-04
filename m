Received: (qmail 32550 invoked by uid 550); 4 Nov 2022 22:40:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23588 invoked from network); 4 Nov 2022 20:55:02 -0000
Date: Fri, 4 Nov 2022 15:54:46 -0500
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Y2V8FtuEeMuBjf1u@gentoo.org>
References: <0a509ab5-7397-d6ac-e841-ef4d9bf00d58@apache.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yWPH2t2YBFeNskKC"
Content-Disposition: inline
In-Reply-To: <0a509ab5-7397-d6ac-e841-ef4d9bf00d58@apache.org>
Subject: Re: [oss-security] CVE-2022-42920: Apache Commons BCEL prior to
 6.6.0 allows producing arbitrary bytecode via out-of-bounds writing

--yWPH2t2YBFeNskKC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 04, 2022 at 05:35:34PM +0000, Gary D. Gregory wrote:
> Description:
>=20
> Apache Commons BCEL has a number of APIs that would normally only allow c=
hanging specific class characteristics. However, due to an out-of-bounds wr=
iting issue, these APIs can be used to produce arbitrary bytecode. This cou=
ld be abused in applications that pass attacker-controllable data to those =
APIs, giving the attacker more control over the resulting bytecode than oth=
erwise expected. Update to Apache Commons BCEL 6.6.0.
>=20
> This issue is being tracked as BCEL-363
>=20
> Credit:
>=20
> Reported by Felix Wilhelm (Google); GitHub pull request to Apache Commons=
 BCEL #147 by Richard Atkins (https://github.com/rjatkins); PR derived from=
 OpenJDK (https://github.com/openjdk/jdk11u/) commit 13bf52c8d876528a43be7c=
b77a1f452d29a21492 by Aleksei Voitylov and RealCLanger (Christoph Langer ht=
tps://github.com/RealCLanger)
>=20

This appears to be a duplicate of CVE-2022-34169 (also issued by the
Apache CNA), and previously discussed on this list at [1]. It was
eventually reported to the list that the vulnerability was actually in
bcel [2].

[1] https://www.openwall.com/lists/oss-security/2022/07/19/5
[2] https://www.openwall.com/lists/oss-security/2022/10/18/2=

--yWPH2t2YBFeNskKC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQyG9yfCrmO0LPSdG2gXq2+aa/JtQUCY2V8EwAKCRCgXq2+aa/J
te3KAP9C/h4dr0Zxvrc7qp9f1UuY1JnBbhHWHqKRTJ3b81VuMwEAi3Mud/smsGM/
wpcyEIh1g54jXbGXfkryzMgYBsllLQg=
=iRhQ
-----END PGP SIGNATURE-----

--yWPH2t2YBFeNskKC--
