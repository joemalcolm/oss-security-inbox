X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2527" "Wednesday" "12" "January" "2022" "14:37:04" "-0600" "John Helmert III" "ajak@gentoo.org" nil "64" "Re: [oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS" nil nil nil "1" nil nil (number mark "U       ajak@gentoo. Jan 12   64/2527  " thread-indent "\"Re: [oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21807 invoked by uid 550); 12 Jan 2022 20:38:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21520 invoked from network); 12 Jan 2022 20:37:19 -0000
Date: Wed, 12 Jan 2022 14:37:04 -0600
From: John Helmert III <ajak@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <Yd878FDAjBVbNKso@sol.nexus.lan>
References: <CABbtqzEDcwmS3=iu-cFjTOuxBa-50kNxQVRvoTwq3M73Ohf1yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dPaf38A8zNb8nuIB"
Content-Disposition: inline
In-Reply-To: <CABbtqzEDcwmS3=iu-cFjTOuxBa-50kNxQVRvoTwq3M73Ohf1yQ@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-22569: Protobuf Java, Kotlin, JRuby DoS

--dPaf38A8zNb8nuIB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 12, 2022 at 01:32:51PM +0100, Ana Oprea wrote:
> Summary
> A potential Denial of Service issue in protobuf-java was discovered in the
> parsing procedure for binary data.
> - Reporter: OSS-Fuzz [1]
> - Affected versions: All versions of Java Protobufs (including Kotlin and
> JRuby) prior to the versions listed below. Protobuf "javalite" users
> (typically Android) are not affected.
>=20
> Severity
> CVE-2021-22569 High - CVSS Score: 7.5 [2]
> An implementation weakness in how unknown fields are parsed in Java. A
> small (~800 KB) malicious payload can occupy the parser for several minut=
es
> by creating large numbers of short-lived objects that cause frequent,
> repeated GC pauses.
>=20
> Proof of Concept
> For reproduction details, please refer to the oss-fuzz issue [3] that
> identifies the specific inputs that exercise this parsing weakness.

The oss-fuzz issue says the issue is unreproducible and was
WontFix'd. Is that accurate, given this has gotten a CVE and a fixed
version exists?

> Remediation and Mitigation
> Please update to the latest available versions of the following packages:
> - protobuf-java (3.16.1, 3.18.2, 3.19.2)
> - protobuf-kotlin (3.18.2, 3.19.2)
> - google-protobuf [JRuby gem] (3.19.2)
>=20
> [1] https://github.com/google/oss-fuzz
> [2] https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-22569
> [3] https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=3D39330
>=20
> Kind regards,
> Ana

--dPaf38A8zNb8nuIB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmHfO+oACgkQXP0dAeB+
IzheVxAAhA2Z2gFuuc8iYF1tRUYwmnAfDpnDfFmpcoTdyVBkeC+5LGvKrvexZuwB
bE5W67LSiB1NqVx/xUbLDovv81L+Gbdl7ufs9Aa7s3p1lREY3J+77Ro7WsG9eMic
Kc2Z064oIzzESRFOAZeQNi7sx10rmNOK2uvhqt1idfosr038qXKwcXta6UK5ALfx
79yrLDdETZqclBj93wn2H9cox86PCmyWAmAAOVhXmLOSJCOuThLTN3g9/cNiPsqj
Bbne57YWE/eiNOf+fmO4W9y7EDiaQyZmiapsd62IB28gNsPsfypWv+rOGqPW7X7u
p8Hi+YN74nDjimDjbB3dYVmo9hT4Kaf6ol5+NHjIaSwEB55hOMg/sDig+nQ1whmD
hKYMJCx79WdoUS0Jq6t5vjEhUSQ2QJIVjz1x9i6SvB59V2JkjolU01jsd4KC/8rQ
TaJkHJxHFemSrWxrGpJSp70++S28kXOWlqk4jK06QVkjFq8GZyEYScDCX4cqgxv9
bXlOd9P40v/VMwsEKwBWumBwW9jOUKane3oFQQ8e2XGabs5Pr7XTQKC/dunl/lqC
COO5obFKtBrz8YTcBpWhqGvQ3N3Sat0i9UC43xVa+fA++9DxJFwjm+tlmHyEOzhQ
sttMmfXkhJti094wMVUBy3pByKyP4+tD//fttrbXWAbQWCFr7xc=
=I1D3
-----END PGP SIGNATURE-----

--dPaf38A8zNb8nuIB--
