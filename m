Received: (qmail 32676 invoked by uid 550); 16 Jan 2026 23:37:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32627 invoked from network); 16 Jan 2026 23:37:11 -0000
Date: Fri, 16 Jan 2026 23:37:00 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aWrLnOyaPgqyLLvU@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <aWkInhuT5D-s-MOh@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vygt0WmMGMI2x+9M"
Content-Disposition: inline
In-Reply-To: <aWkInhuT5D-s-MOh@yuggoth.org>
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2026-001] OpenStack keystonemiddleware: Privilege Escalation
 via Identity Headers in External OAuth2 Tokens (CVE-2026-22797) errata 1

--Vygt0WmMGMI2x+9M
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2026-001: Privilege Escalation via Identity Headers in External
                OAuth2 Tokens
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 15, 2026
:CVE: CVE-2026-22797

Affects
~~~~~~~
- Keystonemiddleware: >=3D10.5.0 <10.7.2, >=3D10.8.0 <10.9.1, >=3D10.10.0 <=
10.12.1

Description
~~~~~~~~~~~
Grzegorz Grasza with Red Hat reported a vulnerability in the=20
external_oauth2_token middleware for keystonemiddleware. This=20
middleware fails to sanitize incoming authentication headers before=20
processing OAuth 2.0 tokens. By sending forged identity headers such=20
as X-Is-Admin-Project, X-Roles, or X-User-Id, an authenticated=20
attacker may escalate privileges or impersonate other users. All=20
deployments using the external_oauth2_token middleware are affected.

Errata
~~~~~~
The original advisory listed versions >=3D10.0.0 as affected based on=20
incorrect data, the code in question was not added until 10.5.0.

Patches
~~~~~~~
- https://review.opendev.org/973499 (2024.1/caracal)
- https://review.opendev.org/973497 (2024.2/dalmatian)
- https://review.opendev.org/973496 (2025.1/epoxy)
- https://review.opendev.org/973495 (2025.2/flamingo)
- https://review.opendev.org/973494 (2026.1/gazpacho)

Credits
~~~~~~~
- Grzegorz Grasza from Red Hat (CVE-2026-22797)

References
~~~~~~~~~~
- https://launchpad.net/bugs/2129018
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2026-22797

Notes
~~~~~
- The unmaintained/2024.1 branches will receive no new point releases,
   but patches for them are provided as a courtesy.
- This bug was possible because the middleware only conditionally set
   certain headers (e.g., X-Is-Admin-Project was only set when the token
   had admin privileges), leaving spoofed values intact when conditions
   were not met.
- The fix adds a call to remove_auth_headers() at the start of request
   processing to sanitize all incoming identity headers, matching the
   behavior of the main auth_token middleware.
- The affected code was introduced in keystonemiddleware 10.5.0
   during the OpenStack 2024.1 (Caracal) development cycle.

OSSA History
~~~~~~~~~~~~
- 2026-01-16 - Errata 1
- 2026-01-15 - Original Version

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--Vygt0WmMGMI2x+9M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmlqy5xfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkSLA//S3aiAWoWR21V2dCR/ICm/zgJXc/Qx0Futk5z/PbUgT8BAD3twr7X3iia
VwEriSMWonE4PG86jmCySehHkxiySAWUPRpBwHiM0keFYogiBkgvA7YsNGeNfhVZ
SW/uNjZzDLadDzzsrYpI9B7R2ykkQD7sPaNKCTIAFdOPs5DTF1ELmObBtY+hWyEz
tqec19/KVot5Np+fXdNE+myc3Hx+CESEZ2wX8BzMf1j6XIoE3RoKwUfcEjbN98K7
CAKa32Tm9xQP/aIa/hidKDMXOLUhqNmF3ysTfy5CLXwssVIH04R9+IjMHAvlQthg
YIn8flK3M0ReOb8EqYKDzDRlf0YGVt2ZDnKWg9YuQV6qAb6k61ilw/SmnPJldmIY
ZAl5cXubuykx25WJ/53v5gI201dYrgRIbxsmtf+kTykC/YPR6I/i+nat9ZLwf4Ah
FiBxN7fZAIEojSYm9uY+Z10MEBe1C1hpKITg2m6a2bdp4zVRZIqa3BnXu9CB+PA4
cpft9lFizhM7xcqHvcFOnDgKMNoBcVlKx9Qkf/ZMtSam2oSV6nwiUg3Cb7ybjX6e
3/tbFSPS4oMPwM2C0T3SOd3HdqW/q3xpGYioJZ/irp28TpyjOIIFr3pDxMOV7H4D
LdVPcj1OS6MB78IJuZdnoPdqakMdPZ+9Zveh/8Uxmca8YrApAC4=
=x7qR
-----END PGP SIGNATURE-----

--Vygt0WmMGMI2x+9M--
