X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3104" "Thursday" "29" "July" "2021" "17:33:32" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "90" "[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)" nil nil nil "7" nil nil (number mark "U       fungi@yuggot Jul 29   90/3104  " thread-indent "\"[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1201 invoked by uid 550); 29 Jul 2021 17:33:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1183 invoked from network); 29 Jul 2021 17:33:46 -0000
Date: Thu, 29 Jul 2021 17:33:32 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210729173331.7vwinmrmow3gtfni@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="llv4en3eahab7ods"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)

--llv4en3eahab7ods
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-002: Open Redirect in noVNC proxy
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: July 29, 2021
:CVE: CVE-2021-3654


Affects
~~~~~~~
- Nova: <21.2.3, >=3D22.0.0 <22.2.3, >=3D23.0.0 <23.0.2


Description
~~~~~~~~~~~
Swe Aung, Shahaan Ayyub, and Salman Khan with the Monash University
Cyber Security team reported a vulnerability affecting Nova's noVNC
proxying implementation which exposed access to a well-known
redirect behavior in the Python standard library's
http.server.SimpleHTTPRequestHandler and thus noVNC's
WebSockifyRequestHandler which uses it. By convincing a user to
follow a specially-crafted novncproxy URL, the user could be
redirected to an unrelated site under control of the attacker in an
attempt to convince them to divulge credentials or other sensitive
data. All Nova deployments with novncproxy enabled are affected.


Patches
~~~~~~~
- https://review.opendev.org/791807 (Train)
- https://review.opendev.org/791806 (Ussuri)
- https://review.opendev.org/791805 (Victoria)
- https://review.opendev.org/791577 (Wallaby)
- https://review.opendev.org/791297 (Xena)


Credits
~~~~~~~
- Swe Aung from Monash University Cyber Security team (CVE-2021-3654)
- Shahaan Ayyub from Monash University Cyber Security team (CVE-2021-3654)
- Salman Khan from Monash University Cyber Security team (CVE-2021-3654)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1927677
- https://bugs.python.org/issue32084
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-3654


Notes
~~~~~
- The stable/train branch is under extended maintenance and will
  receive no new point releases, but a patch for it is provided as a
  courtesy.


--=20
Jeremy Stanley

--llv4en3eahab7ods
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmEC5mtfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkC+Q/9E8uvMd3RNEoFzyEF3kj+BxUfyyinZlIoiwjvhHJom8PV/wrYGMKZyheu
HXeVeibCQ6yogH41774xupNwhudEJOrXSfyxushI7cI8rw4lbdNK7MHt8YfsAK6B
vx84PI4UEWB9Dmzqy5PW/Sfeylz1dTgSZ9idcYpyikvw9LTtFHtz6RW4K1ATnQMk
6tbrfCgAwqIGEPuZH33zOBLV211VlTewndU34L94QY2JicIxhkDTme14fbPjwIsx
7U2PNJO7hD1RfOYtImXIwgPlNjpPSftQBiLQ+eLP43it7vgQ6ePFpvBqb8hdRPVt
n1e40L81HiyNPsoEKO9u0ISKOh7vWIPWKCM7/RsYFpEVFPM8gp5gElJGuGRwRazh
IbN2ccjQUo2wOV2Oi8nsODg6+MT746zOO7QuenOczdsOo7M0WXckpVNHc8lrUxih
ljP8NSvMhuYYdLpT0r02JOq0hEa4CC7F0AQenHKsIJKpGj+z6W8Y1L3ZFqW4s0wq
UP+8tSoG+lJBUDGW4vDRRV/hQv7K5ogX/p8FJMPm4RZd4EHW1SM8wuE1dCpnGqGG
HzrFs+MwiEOT/vRjGWVISjwiWa9suEQm/XdhUfTs4lyQtpTfSj9hDrO5nWK0zMIT
zUKeSG8c2NjDsngDGALFfPedza8gFXvScoTmJMpUlTa5DRk70LU=
=N4dJ
-----END PGP SIGNATURE-----

--llv4en3eahab7ods--
