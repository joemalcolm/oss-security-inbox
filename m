X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3749" "Monday" "27" "September" "2021" "17:16:25" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "108" "[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)" nil nil nil "9" nil nil (number mark "U       fungi@yuggot Sep 27  108/3749  " thread-indent "\"[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31750 invoked by uid 550); 27 Sep 2021 17:16:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30708 invoked from network); 27 Sep 2021 17:16:38 -0000
Date: Mon, 27 Sep 2021 17:16:25 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210927171624.v6hor5ehfoa65ijs@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="btnugij2i6maw4l6"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-002] Nova: Open Redirect in noVNC proxy (CVE-2021-3654)

--btnugij2i6maw4l6
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
- Nova: <21.2.3, >=3D22.0.0 <22.2.3, >=3D23.0.0 <23.0.3


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


Errata
~~~~~~
The initial fix did not take into account the possibility of bypass
using exactly three slashes. This update provides a more thorough
revised fix for the issue. The affected versions list has been
updated to indicate versions expected to include the newer solution.


Patches
~~~~~~~
- https://review.opendev.org/791807 (Train)
- https://review.opendev.org/806629 (errata 1) (Train)
- https://review.opendev.org/791806 (Ussuri)
- https://review.opendev.org/806628 (errata 1) (Ussuri)
- https://review.opendev.org/791805 (Victoria)
- https://review.opendev.org/806626 (errata 1) (Victoria)
- https://review.opendev.org/791577 (Wallaby)
- https://review.opendev.org/805818 (errata 1) (Wallaby)
- https://review.opendev.org/791297 (Xena)
- https://review.opendev.org/805654 (errata 1) (Xena)


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


OSSA History
~~~~~~~~~~~~
- 2021-09-27 - Errata 1
- 2021-07-29 - Original Version

--=20
Jeremy Stanley

--btnugij2i6maw4l6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmFR/GhfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCl4UhAA415XxJH3n+qRdx02FaBnL1+0bFDGvAggXZLiyzk1AA8W3waR4MR+Ea9k
AFVjNg13PDhSKMhrzowB3bVKSXEzM2BsxwNr02OnGW26+eyz1i4eZMNoIfYrp37/
cjLJje7H1BbB+iolS/U5i95rRkba4lH5DU8TV+CPirC7IZ44Jh/S9O21+ToLSH2r
z06ycphsazuwdhK0iS6vUbxWplt5ff2zyOGxtjo5JQIIZAN9bNmv6+11wt12MZ9P
V+0nwu6xolMKNDh7BgCb9BuOaxV1BMzGQZEh0hE2SWtcX9rBhcXaWWj4mpN5WXq2
q4CGlFu23uyp7H5riKXD/CySyR3+teVb53ibMzl0+lVDxxFu2AZqq63Wl46lPDkL
F+7zRrWgO3fyODDYTgZMJaazB7QIBrkEQDzJ8HmJZBoThyCLbDgb1n+9uoLKSSPG
wksvQelQLeOn4QQib9aaxQoEtLt7SLH3gumKHKg/1dbJPBrLNXdH3TlFeVpHJ5+V
V7P0Itk4fH6H9RC4XkeT5xwVa3ucIu0oAxQWeqDYWK3ng+Law8b2JSTryMUJlEpK
pfHx95q2eldx8HZHvTz6WqnEsYlafWochvBHQhDiMxSU3xpTcHAsOLaX3XyjGN5F
TYgI6Nus1CU6rzvNp9YjtFRBo+WBBHH8sxuqXBPdzRkMiLLGqHc=
=rKXu
-----END PGP SIGNATURE-----

--btnugij2i6maw4l6--
