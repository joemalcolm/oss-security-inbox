Received: (qmail 25606 invoked by uid 550); 17 Feb 2026 18:08:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24543 invoked from network); 17 Feb 2026 18:08:01 -0000
Date: Tue, 17 Feb 2026 18:07:50 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aZSudt6OT1un6jBM@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IGtIPYAPpIM+f1bh"
Content-Disposition: inline
In-Reply-To: <aZSaoplaTUjwzRM_@yuggoth.org>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2026-002] OpenStack Nova: calls qemu-img without format
 restrictions for resize (CVE-2026-24708) errata 1

--IGtIPYAPpIM+f1bh
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2026-002: Nova calls qemu-img without format restrictions for resize
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 17, 2026
:CVE: CVE-2026-24708

Affects
~~~~~~~
- Nova: <30.2.2, >=3D31.0.0 <31.2.1, >=3D32.0.0 <32.1.1

Description
~~~~~~~~~~~
Dan Smith from Red Hat reported a vulnerability in nova. By writing=20
a malicious QCOW header to a root or ephemeral disk and then=20
triggering a resize, a user may convince Nova's flat image backend=20
to call qemu-img without a format restriction resulting in an unsafe=20
image resize operation that could destroy data on the host system.=20
Only compute nodes using the Flat image backend (usually configured=20
with use_cow_images=3DFalse) are affected.

Errata
~~~~~~
The original advisory incorrectly referred and linked to=20
CVE-2026-24709 in some places, but CVE-2026-24708 is the correct=20
identifier.

Patches
~~~~~~~
- https://review.opendev.org/977104 (2024.2/dalmatian)
- https://review.opendev.org/977103 (2025.1/epoxy)
- https://review.opendev.org/977101 (2025.2/flamingo)
- https://review.opendev.org/977100 (2026.1/gazpacho)

Credits
~~~~~~~
- Dan Smith from Red Hat (CVE-2026-24708)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2137507
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2026-24708

OSSA History
~~~~~~~~~~~~
- 2026-02-17 - Errata 1
- 2026-02-17 - Original Version

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--IGtIPYAPpIM+f1bh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmmUrnZfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmfIA//b56e5TT3E+JfSg/Q138BcX+MmbaG4BgDxquxXdIS49tJhfwjR8RhUxlD
rXq+lXnu64oVvEbF5IdWt+bD+cyN3IEnYQ9x5CSeDVJrLUv2rb5Jxwvf8K1JQAv6
EoJCjDR7VvUIeURI6Uv2oXu39uMabQpRQQpD8KzCdGIysf4LuNbwXULdb4X51cSk
TbGOU7ihqnL4b+mebwsR4Y0ewKxx2zBFoFQTP6WjlEV7uJjL+yISJtPMTgFjAmHs
TFnp1LntlHnjQCmGyYY+D2ZfC07LmXE4mJXOK0dZDl+qo+xFPzhGutu/F9t7NyyA
Jz/i98NSqpUxGesXMmvIrRc9B9eL8IyJrxE9Mj9xE/h52q3MfIacK7ojlxgmC00u
62W31sNdqIbjqArJmZCmvwk2xE6olP14/iekcVOZHQSDSzwnDT0JZYuO5XNg7P98
f818MyDGDeNlSdE5AL0evE/JrT7WvvfptVepghfhFIbEb7mAhuH8j5dZPqHxbsn8
JxHM7MrPhSHe+ZU9AaGTPmPddoqdlCiAh3+KgjFX+UizRRzOrKaHGU6NRZjPUmu7
OtYm0OHUvU5PpkHZWXvRWKDntLuSkQliVZ6ReILK/aL8fs3D7k0vTqcwR1x70CJk
zLE7EasRoZco4mG4rML5HTw5/QdV7ASS+bB2SKRzWTdBcBlYSZQ=
=HzRI
-----END PGP SIGNATURE-----

--IGtIPYAPpIM+f1bh--
