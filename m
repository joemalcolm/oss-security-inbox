Received: (qmail 11461 invoked by uid 550); 17 Feb 2026 15:01:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11335 invoked from network); 17 Feb 2026 15:01:43 -0000
Date: Tue, 17 Feb 2026 15:01:31 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aZSCyyJ82etgzCKm@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OqPVFy5mmCCTfuhN"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2026-002] OpenStack Nova: calls qemu-img without format
 restrictions for resize (CVE-2026-24708)

--OqPVFy5mmCCTfuhN
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
:CVE: CVE-2026-24709

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
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2026-24709

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--OqPVFy5mmCCTfuhN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmmUgstfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnGKxAAoXVyh89rPCAyk+bC0Sjc7py6eHM7XZH4+hEEiLCuwSkJYeLo9OtEbdUu
LghFgrd202XKHacn9hXz05IHrld7P22lGtShqr79comm50tRAfPClpbhmGWm1+vb
U66F/D/IwsREy5OeMSTr35Qh3UG9iqbFANghDG4SxHZejNVH4LrOJRk91yF2JUmX
UY6UzWFE412B3qn0a+ZRElw+za4gdpK4gqm1qrSe/adPNAl86xDeP9bg/y+YkSCr
H3gKPsGVU2PIYO4wLh8evtSBkJS5UBDj4+o9ME6SCYzAomhbQAHfdaiHt6s0hsN7
+3ziVEI8pHjFeLUB2p/1RANodxhOtaRb5y2CX7N7sicOQufLuUBLQOxhXmtPhQXi
n08dgB7DPKO4CzTzBTjWCnRN/xtGgStp3Bz5zvG8REqhPls6yTzY2+oDDlc7a8JS
JXcCrIiO+Td4TH+JfYHBMuW3a1EHhovSKyhpYlEy3EKfxCI2o0PwAa0G3w8fZZ91
ByprQRkuOdW4zuN3GiC0o4OKxyLm04jKJc5Py1oEG6rTns3VTlJsoGN/9Zre7QAF
xvIB2URT2CuaLNuZf3OcA3N/i5CPwWBnKRq+31iEYqKasjmcaj0G8Ac7M4RVHxKQ
i651e0QD76x7f+cGuPIiSsjaRXX2szg1Hsmev7anRFDtTIPT44M=
=UiBx
-----END PGP SIGNATURE-----

--OqPVFy5mmCCTfuhN--
