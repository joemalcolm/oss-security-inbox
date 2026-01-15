Received: (qmail 23726 invoked by uid 550); 15 Jan 2026 15:32:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23692 invoked from network); 15 Jan 2026 15:32:58 -0000
Date: Thu, 15 Jan 2026 15:32:46 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <aWkInhuT5D-s-MOh@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WR0HI/VP9Ub7WxWt"
Content-Disposition: inline
X-SA-Exim-Connect-IP: 66.70.103.60
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [CVE-2026-22797] OpenStack keystonemiddleware: Privilege Escalation
 via Identity Headers in External OAuth2 Tokens (CVE-2026-22797)

--WR0HI/VP9Ub7WxWt
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
- Keystonemiddleware: >=3D10.0.0 <10.7.2, >=3D10.8.0 <10.9.1, >=3D10.10.0 <=
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
- The external_oauth2_token middleware was introduced in
   keystonemiddleware 10.0.0.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team
https://security.openstack.org/vmt.html

--WR0HI/VP9Ub7WxWt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmlpCJ5fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCmuCxAAgia4qVkDhF+7fUAfpgJcEAHL5lirW1YvfQDSWq1ShWo85sJHySrzaIAg
GhpEpggshXuoOkrhF8cSUMfxIomcojGs7tbNgRjVKHjsPRCLE8GzDAoqf6snqlZj
wZ/STSUvgpgceNab7VccMNo4q4vjNixF0PfWt2oUO8kymY8ye/VteltYlCc8EhdZ
Xzvo1tsSviTORRtwMXl13wl0DQ8iK8PqVRiOwCr+OKRwEW8oBbcxj7nxgtJPihG6
4NUW2XfWVLiqYoKNIXcgQf6booSf71pPeY1HkjG7SrbDya7pHTvuugjU+6etFXZV
XoqRco+ISKsBCAB7SYGRPfYmxRVwFeCZFM/9HUT/XeU/w8oa/5VRifA0tRrllFHr
4MLbDAjGNl4OjAvwOhH9ZIokGs6p2rlA+a5EwHtROKyE2DLmpheVU3Gtl/a8ve3a
PxJJx18CNmsTBkEOA0ElsgwZjaCOyp+hzk0GjnUnU/1B+PtMzrru1ZDJpe4lvd7+
e7nONJ86VYx5qIOzNJZlyo5NzluxTZw6Rli4XHAlZedcb4+A38S6Fh3eWxwTCQDu
fca/qoDR+mdSmkAr7t2MDrTM6mQLWO9nnV6o6UpyQQJePjF0K0wHTpJ9RLUBamrJ
pxK8xedHvuWczwBFGPIz6ErRlKUayJ2WyJlfIlEPXfuXX1tyjJg=
=sV31
-----END PGP SIGNATURE-----

--WR0HI/VP9Ub7WxWt--
