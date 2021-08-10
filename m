X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2744" "Tuesday" "10" "August" "2021" "14:54:41" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "79" "[oss-security] [OSSA-2021-003] Keystone: Account name and UUID oracles in account locking (CVE-2021-38155)" nil nil nil "8" nil nil (number mark "U       fungi@yuggot Aug 10   79/2744  " thread-indent "\"[oss-security] [OSSA-2021-003] Keystone: Account name and UUID oracles in account locking (CVE-2021-38155)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-003] Keystone: Account name and UUID oracles in account locking (CVE-2021-38155)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7941 invoked by uid 550); 10 Aug 2021 14:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7907 invoked from network); 10 Aug 2021 14:54:54 -0000
Date: Tue, 10 Aug 2021 14:54:41 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210810145441.lcjfteb3v7szp2bi@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3hom6x4thrpqupc"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-003] Keystone: Account name and UUID oracles in account
 locking (CVE-2021-38155)

--x3hom6x4thrpqupc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-003: Account name and UUID oracles in account locking
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 10, 2021
:CVE: CVE-2021-38155


Affects
~~~~~~~
- Keystone: >=3D10.0.0 <16.0.2, >=3D17.0.0 <17.0.1, >=3D18.0.0 <18.0.1, >=
=3D19.0.0 <19.0.1


Description
~~~~~~~~~~~
Samuel de Medeiros Queiroz with Oi Cloud reported a vulnerability
affecting Keystone account locking. By guessing the name of an
account and failing to authenticate multiple times, any
unauthenticated actor could both confirm the account exists and
obtain that account's corresponding UUID, which might be leveraged
for other unrelated attacks. All Keystone deployments enabling
security_compliance.lockout_failure_attempts are affected.


Patches
~~~~~~~
- https://review.opendev.org/790444 (Train)
- https://review.opendev.org/790443 (Ussuri)
- https://review.opendev.org/790442 (Victoria)
- https://review.opendev.org/790440 (Wallaby)
- https://review.opendev.org/759940 (Xena)


Credits
~~~~~~~
- Samuel de Medeiros Queiroz from Oi Cloud (CVE-2021-38155)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1688137
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-38155

--=20
Jeremy Stanley

--x3hom6x4thrpqupc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmESkzFfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCn46w//YM0/bi2+V2ND+mK61k7RNI4ojgwL7VFtblIqCXFA3J0GbiJxv4LIIOWK
2RUTQrYZPXgEW57ekHW3Vdizz2mS3xuLGXq+tHM+eRszInY5x5g1aNqWV+Tu69uS
ZmdDDSenKe07jqZ0t4n8jtoH1XEHUbp+wv2FmycFeCiWh0RYTyXRKh65pxoWsloe
VLlcayc4TSCPKMYU0vXg4jHIA8gbGBJecQ388Yujy159AMMUGop3KGwLw2zLDXTH
UB+0LhRnMD2lNOUSwjEglpVzvpZ7L2feOigx45nTj83b8GTum7N1/EgB/Jhs7FEt
NF4kU1Ma5rUSpNwM0up0+miBVD/+JdBYuxjB8hsYF14pEqhihw6kklujTdT1M6J1
Rk1vgqPJzqyGuHT68/xQV8jDpa8tlT/HpyDySoGOuJWHYZ5Je+aJ9efcu35U+iNB
l/kSKLJGv9pNsXXOx/CU9Tm94HwuF1YDmwD1ZuT2CDVrdm9NCuRyNF6ByLSuh0RB
lJHhTbPC5ZJDlfK5DCO12kGp5k7huO5DA+UvMSedJy0gmTXbly57An4V++rDGc8n
DaJUx6nW9iGfkGcD1cKAECth4DGBnBRyfUSzVZ6dRwKvW9lBmPxEX/27VD62nLHF
eTSlxRLj9sCgflyY/QmAapfVDAyrnYe99xEPnkTKUI6H0t1Modk=
=7Fk6
-----END PGP SIGNATURE-----

--x3hom6x4thrpqupc--
