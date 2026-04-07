Received: (qmail 1637 invoked by uid 550); 7 Apr 2026 17:43:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1604 invoked from network); 7 Apr 2026 17:43:24 -0000
Date: Tue, 7 Apr 2026 17:43:13 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <adVCMfyYzsn4r8BF@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rDqkOVx0nGTtiZc9"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2026-005] Keystone: Restricted application credentials can
 create EC2 credentials (CVE-2026-33551)

--rDqkOVx0nGTtiZc9
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
OSSA-2026-005: Restricted application credentials can create EC2 credentials
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

:Date: April 07, 2026
:CVE: CVE-2026-33551


Affects
~~~~~~~
- Keystone: >=3D14.0.0 <26.1.1, =3D=3D27.0.0, =3D=3D28.0.0, =3D=3D29.0.0


Description
~~~~~~~~~~~
Maxence Bornecque from Orange Cyberdefense CERT Vulnerability=20
Intelligence Watch Team reported a vulnerability in Keystone's EC2=20
credential creation endpoint. By using a restricted application=20
credential to call the EC2 credential creation API, an authenticated=20
user with only a reader role may obtain an EC2/S3 credential that=20
carries the full set of the parent user's S3 permissions,=20
effectively bypassing the role restrictions imposed on the=20
application credential. Only deployments that use restricted=20
application credentials in combination with the EC2/S3 compatibility=20
API (swift3 / s3api) are affected.



Patches
~~~~~~~
- https://review.opendev.org/983597 (2024.1/caracal)
- https://review.opendev.org/983591 (2024.2/dalmatian)
- https://review.opendev.org/983589 (2025.1/epoxy)
- https://review.opendev.org/983588 (2025.2/flamingo)
- https://review.opendev.org/983593 (2026.1/gazpacho)
- https://review.opendev.org/983587 (2026.2/hibiscus)


Credits
~~~~~~~
- Maxence Bornecque from Orange Cyberdefense CERT Vulnerability
   Intelligence Watch Team (CVE-2026-33551)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2142138
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2026-33551


Notes
~~~~~
- The unmaintained/2024.1 branch is unmaintained and will receive no
   new point releases, but a patch for it is provided as a courtesy.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--rDqkOVx0nGTtiZc9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmnVQjFfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCm1PRAA1qocbkvBeRnRlN4ABH0TO/rQ5magfH+XuhBqogsfhJvdKpflyO9DqPCa
TOMZTBq+E+SVU0ApbjvNDANtTxEAmenThtv2LIEjlNDjnT7XOdO0uZ7IwlVnUTb/
1oo9UqlW54kSzGgDjdVrBUqJP2Pj54xnVrj7iUr7aEAOlZozOrB1clvXiffOhizp
Zq9iZEhYGLtfIkqHHhr8ldLDX7X/xuh7LPIEQ6tbNbEOwafz7MMFLIRPoZmcWvqk
9SkPsfoHlW5f2ftX+j++Ci63GfaNxhUuQmA96e1F56vbnh5vCV4izwxLyLJfmIxY
pWKftBrt/99+DRTX8gEt2I8UY6PqS9cvNVZpLwzSN5eFE8CKqhrCjw/iBOAuhwqK
zaaKwoVzsrLI4Lo8bSog66eiwBpqZaB8zc4gvJIVvgc2DXqnBtoH3DuX4sRfG93w
YkNsDN+zIJS9r7W6icxD78s9HfWJNVWMyU84s8g3NSYund3syor3o5rCSbvUV1FV
s9zzuAb/5Q0IjqRwgLtK54Ig1JUPHKobSrxhWzlsj2b+cCwVk6lkqiseRskhzzNk
CgPwUAd8PJza4zrL97AZrMWsjwBd4TdSXOhlER/qxPHS+bNMwLzHoChRVLn6z5Vm
olTL+TgnNds2w1hSMMTxYmZsaUqk6UWBqahK9RF4FEoxrHau9zs=
=Inzm
-----END PGP SIGNATURE-----

--rDqkOVx0nGTtiZc9--
