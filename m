Received: (qmail 12183 invoked by uid 550); 17 Nov 2025 20:14:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12118 invoked from network); 17 Nov 2025 20:13:59 -0000
Date: Mon, 17 Nov 2025 20:13:48 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aRuB_HFCuAzArrG8@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aQoVOMxbrWQ7JzCV@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BfNi8BuE0MOBBSO8"
Content-Disposition: inline
In-Reply-To: <aQoVOMxbrWQ7JzCV@yuggoth.org>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2025-002] OpenStack Keystone: Unauthenticated access to EC2/S3
 token endpoints can grant Keystone authorization (CVE-2025-65073)

--BfNi8BuE0MOBBSO8
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
:CVE: CVE-2025-65073

Affects
~~~~~~~
- Keystone: <26.0.1, =3D=3D27.0.0, =3D=3D28.0.0

Description
~~~~~~~~~~~
kay reported a vulnerability in Keystone=E2=80=99s ec2tokens and s3tokens=20
APIs. By sending those endpoints a valid AWS Signature (e.g., from a=20
presigned S3 URL), an unauthenticated attacker may obtain Keystone=20
authorization for the user associated with the signature (ec2tokens=20
can yield a fully scoped token; s3tokens can reveal scope accepted=20
by some services), resulting in unauthorized access and privilege=20
escalation. Deployments where /v3/ec2tokens or /v3/s3tokens are=20
reachable by unauthenticated clients (e.g., exposed on a public API)=20
are affected.

Errata
~~~~~~
CVE-2025-65073 was assigned by MITRE after publication based on a=20
request submitted 2025-09-24 (months prior); if any other CNA has=20
assigned a CVE themselves in the meantime, please reject it so that=20
we don't end up with duplicates. Further, the description has been=20
extended to clarify token ownership. Backported fixes for the=20
unmaintained/2024.1 branches are now included.

Patches
~~~~~~~
- https://review.opendev.org/966871 (2024.1/caracal(keystone))
- https://review.opendev.org/966068 (2024.1/caracal(swift))
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
- kay (CVE-2025-65073)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2119646
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2025-65073

Notes
~~~~~
- While the indicated Keystone patches are sufficient to mitigate this
   vulnerability, corresponding changes for Swift are included which keep
   its optional S3-like API working.
- The unmaintained/2024.1 branches will receive no new point releases,
   but patches for them are provided as a courtesy.

OSSA History
~~~~~~~~~~~~
- 2025-11-17 - Errata 1
- 2025-11-04 - Original Version
--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--BfNi8BuE0MOBBSO8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmkbgfxfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnEKA//TPLe997BvJkOGFYidC9hxVLsuu5Q7m+QyFeAorHt55MUIu042IRYcddJ
N+3LWWGlJssipaqmunYnt8WXPBihRSvBxGN5U/1kBJMQXH/saojaLIZeREldpmLp
7qsaO4hsp5vnOktrC8OkKBpEGXQHkMQcii0DsslJ5PnVBmnKgL9K8eA7zl3krJ0h
KYsYGm04RUe8lHSuNnxSvgVXSjt/wONLCZqYjNoK5j4+YoZPs3WjuY2aTmGMoiDs
0LQt4UWM43Xh1NJ8a6n/3Irbci6UCKUH6/clHLhIzvtvmHEVT0e2lJuwNtXLOo8a
BtZHQBOYRoU+G9Z1uxeka3AtZ89PNzWe7JeicthErHYmmwwNKKZv/7T4iDkjYFDW
TeG6RgkaLK/p9svBNBzpCckdOprReFryXI5spBC90RVEvsOflF4PjFXYhS8b/wq1
QxY75/wpFqUo5bqIwi7CPxUwrQZm80YxG9fps8hh57QUapD6zoXl8/DdTcxLJ93S
C6RwYLLc6BvIXaTi+dpKuuIcev3lG/JjkIJfsMKiR5BoQyO2BIAhYfDbftI6anS0
SBnFDIXqxZyLN+33S5HOC26fOaQuIxdk8bOa+jTXlaNawK/9O0VMbglbWau3rEtI
+VfTFO7NmzGbgHzbPdwDKhQMmDVbVypX2ell6pyjdGA1+TUMd5I=
=i5iP
-----END PGP SIGNATURE-----

--BfNi8BuE0MOBBSO8--
