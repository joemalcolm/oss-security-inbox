Received: (qmail 7966 invoked by uid 550); 3 Mar 2026 17:44:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7924 invoked from network); 3 Mar 2026 17:44:14 -0000
Date: Tue, 3 Mar 2026 17:44:02 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aacd4nhb03hq82sK@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GFIvdorf5KamHdNx"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2026-003] OpenStack Vitrage: Remote code execution through
 Vitrage query parser (CVE-2026-28370)

--GFIvdorf5KamHdNx
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2026-003: Remote code execution through Vitrage query parser
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: March 03, 2026
:CVE: CVE-2026-28370

Affects
~~~~~~~
- Vitrage: <12.0.1, =3D=3D13.0.0, =3D=3D14.0.0, =3D=3D15.0.0

Description
~~~~~~~~~~~
Khalil Lemtaffah (Nokia) reported a vulnerability in the Vitrage=20
query parser. A user allowed to access the Vitrage API may trigger=20
code execution on the Vitrage service host as the user the Vitrage=20
service runs under. This may result in unauthorized access to the=20
host and further compromise of the Vitrage service. All deployments=20
exposing the Vitrage API are affected.

Patches
~~~~~~~
- https://review.opendev.org/962671 (2023.1/antelope)
- https://review.opendev.org/962713 (2024.1/caracal)
- https://review.opendev.org/962712 (2024.2/dalmatian)
- https://review.opendev.org/962646 (2025.1/epoxy)
- https://review.opendev.org/962658 (2025.2/flamingo)
- https://review.opendev.org/962617 (2026.1/gazpacho)

Credits
~~~~~~~
- Khalil Lemtaffah from Nokia (CVE-2026-28370)

References
~~~~~~~~~~
- https://storyboard.openstack.org/#!/story/2011539
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2026-28370

Notes
~~~~~
- The stable/2023.1 branch is unmaintained and will receive no new point
   releases, but a patch for it is provided as a courtesy.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--GFIvdorf5KamHdNx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmmnHeJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCn4OhAAr8sYeNXQZCZ7oOXoz7fnnhqv0iy/xsWbUHz93Bj0bBT2dMuo8CGZNIwb
NfZ9KbsKz9/OVr+shpkThse0hOe7VIdjTHJPsp5KHhhZSthVYMPQvxJgQX6DjOEe
2RxHYaq+2j6mGBKB7YJxf3miyhMGEW2Vui5MU/kDNujQATYfRnel4cVBtTTjJj7V
8HGMkFn5EBqdFaN6dH7w70ZGClAFqMHy4wIh2PchueV1H74wBnyee7kDH9tZPMfT
Lx4Jc1SxtvR0j1PkpMWVhCSqn2/g48+YE5viAjEfmYgpYJR+/ldtIudFwX+wIpI3
ig7uQTL9gDQMwTqnq1frndrYgW+I4hcQyNQRRT1xBgdSzC6u0bFVza6xwbbl0eic
FVBlsTsTrD27PNzMijavQsX8UouVIXEXfSkXoMVWWKlQGdulquzSVhE6ICBWqWDB
zqq02GVepyWZEEZ7PAcvFCVU8n7mBNM5Wsz/tyb9AFA6yO0KzRZP6NQbzc56OThh
c+X9RzOjg8EzdiJSFqpb69sUxoq5ko08RyyQF+Lx2tT4SPOhLBEt+EejBmHmGbTg
sM+mfrDOJRz2A8tbILpgGvfBVCAJG/huzMBt4SYZF1YS3I2ASzRmcylRi0SU73Tx
F7r5B4rVh5ZFboqhjhRGEBslmIaYpq3C9Oo4DKRv+/KD3Xc1sQw=
=Taow
-----END PGP SIGNATURE-----

--GFIvdorf5KamHdNx--
