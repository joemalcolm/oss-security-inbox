Received: (qmail 27914 invoked by uid 550); 17 Jan 2023 16:01:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27884 invoked from network); 17 Jan 2023 16:01:26 -0000
Date: Tue, 17 Jan 2023 16:01:11 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230117160111.htaewnl2wmuqlgq7@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qmfaqazandvvptt6"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2023-001] Swift: Arbitrary file access through custom S3 XML
 entities (CVE-2022-47950)

--qmfaqazandvvptt6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2023-001: Arbitrary file access through custom S3 XML entities
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 17, 2023
:CVE: CVE-2022-47950


Affects
~~~~~~~
- Swift: <2.28.1, >=3D2.29.0 <2.29.2, =3D=3D2.30.0


Description
~~~~~~~~~~~
S=C3=A9bastien Meriot (OVH) reported a vulnerability in Swift's S3 XML
parser. By supplying specially crafted XML files an authenticated user
may coerce the S3 API into returning arbitrary file contents from the
host server resulting in unauthorized read access to potentially
sensitive data; this impacts both s3api deployments (Rocky or later),
and swift3 deployments (Queens and earlier, no longer actively
developed). Only deployments with S3 compatibility enabled are
affected.


Patches
~~~~~~~
- https://review.opendev.org/870823 (2023.1/antelope)
- https://review.opendev.org/870828 (Wallaby)
- https://review.opendev.org/870827 (Xena)
- https://review.opendev.org/870826 (Yoga)
- https://review.opendev.org/870825 (Zed)


Credits
~~~~~~~
- S=C3=A9bastien Meriot from OVH (CVE-2022-47950)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1998625
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2022-47950


Notes
~~~~~
- The stable/wallaby branch is under extended maintenance and will receive =
no
  new point releases, but a patch for it is provided as a courtesy.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--qmfaqazandvvptt6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmPGxkFfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnzhg//a0sZlINiLU0q5LnIEO2+2eAmIZc3O901C3JeCcQWUG8Czb7DwS2GhbUl
Tf4oatm3dNefVmNMqGrsiIM/DLb4dTyrxGjifC9cuVEsx4POfLokq1eTJJuo7CPX
C0m+QpDMd7Lx7JF1INOeh3tWTx1VfC+J9CT5eOnAg1KgrJJLyIaC0G4Xag6a38EA
e2xDl7pcJKHVwCGgE2RFVtjDCVw4R/BpcGQ090zbqTOaz9ne83rzmZRO2QDsX/Hf
nIP6xtWU72iKkA643R815o5SBT4XL1puNlpLvzLl9J9xtipVzTvNnP3PoyAaGwX0
ZBPn/DLXd6oKnhGdYWhgh1XuoWQ2RHr+Cne7LWxDIf/uK44UZni4H0Q1tkpvey3V
uyQmox+FHobCj9MsXCV5YW2tMa/KX1yJNDIXd2/T+5SFbXDuorkJKtHAek3OadnO
mwhHH1M2Yz6g1QTFBtT+3vs2uJddajWgrZ8LirpRfZOYh2So6lWda68DwpG6ubOr
Zj+DN17iWCeCE+JG5XbyYM04BOHDyiszod589IQhhRliaB2e8DbTqkUTVCG+yHaG
kuoIaVUY23EsWscmxYSnm2xQpNWe0YqS/gU8XZmj3o/8aTIUiF/49zpSE/fi75Et
bDJS+G8I2icCNReU8hDt8+iAMPHw8PmcL+d3NMdKATeDz0Zh7Qk=
=6uSW
-----END PGP SIGNATURE-----

--qmfaqazandvvptt6--
