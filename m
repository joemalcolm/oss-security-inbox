Received: (qmail 15368 invoked by uid 550); 16 Jan 2026 15:20:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14305 invoked from network); 16 Jan 2026 15:20:03 -0000
Date: Fri, 16 Jan 2026 15:19:50 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aWpXFvWCo39Nu7On@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aWkInhuT5D-s-MOh@yuggoth.org>
 <aWnrDbvAtCV5ivXZ@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ew+97UV0jfSyG+9X"
Content-Disposition: inline
In-Reply-To: <aWnrDbvAtCV5ivXZ@eldamar.lan>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] [CVE-2026-22797] OpenStack keystonemiddleware:
 Privilege Escalation via Identity Headers in External OAuth2 Tokens
 (CVE-2026-22797)

--Ew+97UV0jfSyG+9X
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2026-01-16 08:38:53 +0100 (+0100), Salvatore Bonaccorso wrote:
[...]
>Just a small note here, the range might be adapted to something newer=20
>thatn 10.5.0, correct? AFAIU the code was only added in=20
>https://github.com/openstack/keystonemiddleware/commit/de15a610e160defb367=
b224258498727384d10a8=20
>which landed in 10.5.0.
>
>is this correct?

It seems that this may be the case. The developers had asserted=20
10.0.0 was when the feature was introduced, but some discussion in=20
IRC yesterday suggested the actual problem code wasn't added until=20
10.5.0. I'm just waiting to get positive confirmation from the=20
developer who had originally said 10.0.0 before publishing an errata=20
correction for that.
--=20
Jeremy Stanley

--Ew+97UV0jfSyG+9X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmlqVwtfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnv5hAAiXVfLxOui2UwtNxFZV4wSF6EVD5+g5FSMm8HhKdHM0/BUp08yJh0X5BZ
z7T0whQoJVYwWGkDTn+65BgC/G4ecQYlSCyUDjNwCcMNwJJRXm+gQ7+Ycu24i/wU
8JtK4DZF169Kqj+CqweyVz33ByqurVGQRhQuZqiRPrbY9pH9t0Q+bzouQRUHkHls
wimAl378iyyEDvJhkTqSgWBkKLgbk/93kAr+OKFVNVDFhcC21r99oq0rMQLbDZe4
ZJyyCMmGAX6u8kyx2rSds18U1BQP4+QvXvaXmbOqOq3mma6K3vnr3nTx6s4FQQCM
a8qJWu3EE0VlL3U6u6MPAulslOr1NNl4jiv6pW5PDs/vpJ20uFwq/I9SRq878Bcs
nCrHOqr6JgCbWooxa+7fh8F+xOehT8B6ewp9sNOPmHKVCldhTS9NLFlW0Hx7qKix
OvJr7uchXrC4Bx4raLca/Wqeuu42iHEwncbPou45nydX8Q9LaizdsxwbQQqZmH8M
PXJXkRCSF1uafyBG+QyjD0CZwpVXzMa6hzooCpfM2zeo5Fqdm5VtCwL3Ts6UoX7g
BOmGScA8Yj5gxmKITr/57NVYaYvMlYCZIYn60QHyoEXtXlvSPj9YFxTjazzVJkIw
E70pm7/vixcSujmBOcPDu7859zqY8K/NdWbzo/kCkgjO6RRP280=
=EIC9
-----END PGP SIGNATURE-----

--Ew+97UV0jfSyG+9X--
