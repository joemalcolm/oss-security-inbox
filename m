Received: (qmail 28334 invoked by uid 550); 4 Nov 2025 15:01:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28289 invoked from network); 4 Nov 2025 15:01:24 -0000
Date: Tue, 4 Nov 2025 15:01:12 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aQoVOMxbrWQ7JzCV@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="amfe7WPq04lnwdVx"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2025-002] OpenStack Keystone: Unauthenticated access to EC2/S3
 token endpoints can grant Keystone authorization (CVE PENDING)

--amfe7WPq04lnwdVx
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2025-002: Unauthenticated access to EC2/S3 token endpoints can grant
                Keystone authorization
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: November 04, 2025
:CVE: PENDING

Affects
~~~~~~~
- Keystone: <26.0.1, =3D=3D27.0.0, =3D=3D28.0.0

Description
~~~~~~~~~~~
kay reported a vulnerability in Keystone=E2=80=99s ec2tokens and s3tokens
APIs. By sending those endpoints a valid AWS Signature (e.g., from a
presigned S3 URL), an unauthenticated attacker may obtain Keystone
authorization (ec2tokens can yield a fully scoped token; s3tokens
can reveal scope accepted by some services), resulting in
unauthorized access and privilege escalation. Deployments where
/v3/ec2tokens or /v3/s3tokens are reachable by unauthenticated
clients (e.g., exposed on a public API) are affected.

Patches
~~~~~~~
- https://review.opendev.org/966073 (2024.2/dalmatian(keystone))
- https://review.opendev.org/966067 (2024.2/dalmatian(swift))
- https://review.opendev.org/966071 (2025.1/epoxy(keystone))
- https://review.opendev.org/966064 (2025.1/epoxy(swift))
- https://review.opendev.org/966070 (2025.2/flamingo(keystone))
- https://review.opendev.org/966063 (2025.2/flamingo(swift))
- https://review.opendev.org/966069 (2026.1/gazpacho(keystone))
- https://review.opendev.org/966062 (2026.1/gazpacho(swift))

Credits
~~~~~~~
- kay (CVE PENDING)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2119646

Notes
~~~~~
- While the indicated Keystone patches are sufficient to mitigate this
   vulnerability, corresponding changes for Swift are included which keep
   its optional S3-like API working.
- MITRE CVE Request 1930434 has been awaiting assignment since
   2025-09-24, but once completed will result in an errata revision to
   this advisory reflecting the correct CVE ID. If any other CNA has
   assigned a CVE themselves in the meantime, please reject it so that we
   don't end up with duplicates.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--amfe7WPq04lnwdVx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkKFThfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCl+XhAA1YcqyBU6Swolo3Z02oDPGrEBqJp7O6feBZisiu5OUJjN9ETkzMxbem2l
TZvWpOiwLRqpZ81igsomEPVktBhiG2eruqMTxOgidFKWgSipyvy7w8tnqXK9Vv0p
Wp7TjeyI3qr8Chp7nJgKobw2CYdrOdC0UWFEFbY8ui+qRyaUJc4NTDVQ4cfS9iSp
ykuCpbTH+yUMeEy7/FDG87B5KoVmsDo/d8jvZZ1eLFJutewAKar8uTeYWvz0LJPx
7dmaAsGKk+KxP82gXl9o3Oh46RGtQnJuct93DDaQF6+CTwEwMF1blNjuuPLEz6we
jOp0em1DUMIcAe4qgSo0FQLfnhjifzN6eg0tm+ezQanHHwIM9BOYwzQ5IVGEzFha
yXV0o/DPsrc1AM5LpC4RCcBpv1Cn/KWMn18iZVeAhIE6Q5vt3vNi2dxy8F7mKJ5R
vnnjLw5KzXd3/Nt10/keQpi4YwC7CWQyjX9UAOSTYWBcE1NrcJi3Y1UTmYEX44IP
Nrug7Bog5Qt5VxXmymvkLMhxkrERny9Ik7p9/jGJhRt8MGGyE50rQ6yTG8b8EDQk
m1S+hSKBcshN0iMA5e9Q1O+gAhCfUkUrb1V9nGdl42nnJRznD5OfLjA8xE0lcADt
m/g/pRvbGK4hZ9Fbfcq626uWnnFI8VwsDhyx6pBy2Cwj6I1Mm2U=
=ji5x
-----END PGP SIGNATURE-----

--amfe7WPq04lnwdVx--
