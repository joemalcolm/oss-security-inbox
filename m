X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3418" "Thursday" "13" "January" "2022" "15:23:11" "+0100" "Jonas =?ISO-8859-1?Q?Sch=E4fer?=" "jonas@wielicki.name" nil "93" "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" "^Date:" nil nil "1" nil nil (number mark "        jonas@wielic Jan 13   93/3418  " thread-indent "\"Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8006 invoked by uid 550); 13 Jan 2022 14:25:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7269 invoked from network); 13 Jan 2022 14:23:29 -0000
Message-ID: <5103793.L7788WgU49@sinistra>
In-Reply-To: <2193597.LkMCQtBBq3@sinistra>
References: <2193597.LkMCQtBBq3@sinistra>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart5705833.3ygDmjqg1a"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 13 Jan 2022 15:23:11 +0100
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
To: oss-security@lists.openwall.com

--nextPart5705833.3ygDmjqg1a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Jonas =?ISO-8859-1?Q?Sch=E4fer?= <jonas@wielicki.name>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE request)
Date: Thu, 13 Jan 2022 15:23:11 +0100
Message-ID: <5103793.L7788WgU49@sinistra>
In-Reply-To: <2193597.LkMCQtBBq3@sinistra>
References: <2193597.LkMCQtBBq3@sinistra>

Hi, quick update:

On Donnerstag, 13. Januar 2022 15:01:11 CET Jonas Sch=C3=A4fer wrote:
> If neither patching nor upgrading is an option, it is possible to unload
> the websocket module using:
>=20
> ```
> prosodyctl shell module unload websocket
> ```

This only works on recent Prosody trunk. On 0.11.x and earlier, you need to=
=20

- use module:unload("websocket") from the telnet console, OR
- unload the module via an XMPP Ad-Hoc command OR
- if neither of these online ways are available, remove the module from the=
=20
configuration and restart prosody.

kind regards,
Jonas

>=20
> However, note well that third-party modules may also use the vulnerable
> internal APIs to parse XML. Unloading websocket does not protect those
> other modules; only the patch or the upgrade can do that.
>=20
> **Fix**
>=20
> This issue is fixed in Prosody 0.11.12 by restricting the available XML
> features in the internal XML API.
>=20
> **Attribution**
>=20
> The issue was discovered during internal code review by Matthew Wild
> during the development of another feature. The patch was developed by
> Jonas Sch=C3=A4fer. A proof-of-concept exploit was developed by Jonas Sch=
=C3=A4fer
> and Kim Alvefur and will be published soon to allow administrators to
> check their instances.
>=20
> **Timeline**
>=20
> 2022-01-10: Discovery of the issue, development of an exploit as well as
> an initial patch. Sharing of this information with Jitsi and Snikket
> developers. Heads-up sent to the Snikket group chat.
>=20
> 2022-01-11: Refinement of the patch, release preparation. Heads-up sent
> to the Prosody group chat. Patch shared confidentially with Jitsi.
>=20
> 2022-01-12: Continued release preparation, notification of distros@.
>=20
> 2022-01-13: Coordinated Snikket and Prosody release with a
> fix, publication of the advisory.


--nextPart5705833.3ygDmjqg1a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEG/EPV+Xzd5wEoQQIwGIDJZdiWIoFAmHgNc8ACgkQwGIDJZdi
WIoLPBAAjlICMwEqOUJWPSIal+S/ORBiZFygUjXaAkHFRznOSi1yb9kzNg0ghHYq
CCWFBIU7NFn15nSRPFfTZ0zZTKcjka1NMj1b6L+5ynv4H8QBo8oPtIvMIKnK3GyL
6eTMMsI2/Sfykn8gFPF0syzESklo5/HRIN9hD/AryiLYWE1Y3aq06HRo0xwFCaaH
npAdS/PurQq1LakHSFAdzylndz5qNOhdPpEtTE5baBPU/l+6BxiZrIcfOfC8WQ6G
aXnQPnvQVXd21vkyQ1p82BRWH5hXCvMxlfC9ExzMIF3bgmrx5IvSAiNHTUNdf/8x
T73K0CJUe5EY4KiyIKt+vEwFdkiXhovoJX3wsRjbvoX0ya16XIAkEja3ceL7Furd
sQ3ijvMdmyIVyD1DCRkxyObuQT0m2iFG5vPbYjrX4JWniWG0KFOsjmBvTzIrvhXG
nQX1dFdrkMK/+0seJCoToS/ktHvvNtY7xYfan+RAxPPIwyazjv18OaDcqG0wDiZ5
2wGUYKawQ2tDiaFkwfaPghIGaR3U6YUvxa5hUE3NMb9QcXNCKVm3fYty69lj/Ne4
QFpdqXAw/4/I2fjEUsmC6beD7cp3SZgIbcqe5m/Xv1smUe/1LqrHe+Um+qVMJAb/
y7bFFGmOULo7dzgssNf2Xd/nxHmYa/OVVNw1NkDWb0ZBV8GnT/4=
=OU9f
-----END PGP SIGNATURE-----

--nextPart5705833.3ygDmjqg1a--



