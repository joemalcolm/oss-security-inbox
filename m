Received: (qmail 17794 invoked by uid 550); 2 Jul 2024 15:01:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17755 invoked from network); 2 Jul 2024 15:01:31 -0000
Date: Tue, 2 Jul 2024 15:01:21 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20240702150121.fxt4445gwlrxwk3r@yuggoth.org>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hryna5gby4w6a6ts"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2024-001] OpenStack Cinder, Glance, Nova: Arbitrary file
 access through custom QCOW2 external data (CVE-2024-32498)

--hryna5gby4w6a6ts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2024-001: Arbitrary file access through custom QCOW2 external data
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: July 02, 2024
:CVE: CVE-2024-32498


Affects
~~~~~~~
- Cinder: <22.1.3, >=3D23.0.0 <23.1.1, =3D=3D24.0.0
- Glance: <26.0.1, =3D=3D27.0.0, >=3D28.0.0 <28.0.2
- Nova: <27.3.1, >=3D28.0.0 <28.1.1, >=3D29.0.0 <29.0.3


Description
~~~~~~~~~~~
Martin Kaesberger reported a vulnerability in QCOW2 image processing
for Cinder, Glance and Nova. By supplying a specially created QCOW2
image which references a specific data file path, an authenticated
user may convince systems to return a copy of that file's contents
from the server resulting in unauthorized access to potentially
sensitive data. All Cinder deployments are affected; only Glance
deployments with image conversion enabled are affected; all Nova
deployments are affected.



Patches
~~~~~~~
- https://review.opendev.org/923247 (2023.1/antelope(cinder))
- https://review.opendev.org/923277 (2023.1/antelope(glance))
- https://review.opendev.org/923278 (2023.1/antelope(glance))
- https://review.opendev.org/923279 (2023.1/antelope(glance))
- https://review.opendev.org/923280 (2023.1/antelope(glance))
- https://review.opendev.org/923281 (2023.1/antelope(glance))
- https://review.opendev.org/923282 (2023.1/antelope(glance))
- https://review.opendev.org/923283 (2023.1/antelope(glance))
- https://review.opendev.org/923288 (2023.1/antelope(nova))
- https://review.opendev.org/923289 (2023.1/antelope(nova))
- https://review.opendev.org/923290 (2023.1/antelope(nova))
- https://review.opendev.org/923281 (2023.1/antelope(nova))
- https://review.opendev.org/923246 (2023.2/bobcat(cinder))
- https://review.opendev.org/923266 (2023.2/bobcat(glance))
- https://review.opendev.org/923267 (2023.2/bobcat(glance))
- https://review.opendev.org/923268 (2023.2/bobcat(glance))
- https://review.opendev.org/923269 (2023.2/bobcat(glance))
- https://review.opendev.org/923270 (2023.2/bobcat(glance))
- https://review.opendev.org/923271 (2023.2/bobcat(glance))
- https://review.opendev.org/923272 (2023.2/bobcat(glance))
- https://review.opendev.org/923284 (2023.2/bobcat(nova))
- https://review.opendev.org/923285 (2023.2/bobcat(nova))
- https://review.opendev.org/923286 (2023.2/bobcat(nova))
- https://review.opendev.org/923287 (2023.2/bobcat(nova))
- https://review.opendev.org/923245 (2024.1/caracal(cinder))
- https://review.opendev.org/923259 (2024.1/caracal(glance))
- https://review.opendev.org/923260 (2024.1/caracal(glance))
- https://review.opendev.org/923261 (2024.1/caracal(glance))
- https://review.opendev.org/923262 (2024.1/caracal(glance))
- https://review.opendev.org/923263 (2024.1/caracal(glance))
- https://review.opendev.org/923264 (2024.1/caracal(glance))
- https://review.opendev.org/923265 (2024.1/caracal(glance))
- https://review.opendev.org/923273 (2024.1/caracal(nova))
- https://review.opendev.org/923274 (2024.1/caracal(nova))
- https://review.opendev.org/923275 (2024.1/caracal(nova))
- https://review.opendev.org/923276 (2024.1/caracal(nova))
- https://review.opendev.org/923244 (2024.2/dalmatian(cinder))
- https://review.opendev.org/923248 (2024.2/dalmatian(glance))
- https://review.opendev.org/923249 (2024.2/dalmatian(glance))
- https://review.opendev.org/923250 (2024.2/dalmatian(glance))
- https://review.opendev.org/923251 (2024.2/dalmatian(glance))
- https://review.opendev.org/923252 (2024.2/dalmatian(glance))
- https://review.opendev.org/923253 (2024.2/dalmatian(glance))
- https://review.opendev.org/923254 (2024.2/dalmatian(glance))
- https://review.opendev.org/923255 (2024.2/dalmatian(nova))
- https://review.opendev.org/923256 (2024.2/dalmatian(nova))
- https://review.opendev.org/923257 (2024.2/dalmatian(nova))
- https://review.opendev.org/923258 (2024.2/dalmatian(nova))


Credits
~~~~~~~
- Martin Kaesberger (CVE-2024-32498)


References
~~~~~~~~~~
- https://launchpad.net/bugs/2059809
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2024-32498


Notes
~~~~~
- Due to the scope of the problem and complexity of the resulting
  fixes, regressions and additional bypasses were reported in the
  original bug by downstream stakeholders during the coordinated
  disclosure period. As a result, our initially chosen publication
  date was rescheduled, which put the advisory four days past our
  promised ninety day maximum embargo length. Additional revised
  patches and regression fixes were supplied to stakeholders as soon
  as possible, but we understand the unfortunate timing of these
  last-minute changes resulted in a lot of additional work for
  everyone involved.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--hryna5gby4w6a6ts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmaEFkFfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnqjA//TfeF9vC3XWvntu7B/32G8ZhrLBvuNITg9C+HMUXUUuEb0DVEUgL8264n
MTlJVYCnk4oztLE6vwqa9034CefInE+4UTBr+xxHfBNxqnxfYOKWdpoatEXy0Vi5
EpbDwiiCRIoHPbAPvJFLMr7vE9m3Qo2DcyEU62onBRnOMCUMVpH/Sis+YsMOShxy
cNUC+3YjdjOpvMHhN4ybGQOv5Dy5JkJ02opvMNmy8aV8b+sCs0tOhbGfdlgEqqLq
pKvqG9sv168DZhQLbJrKa55wlo6gh2SboGZywS1n382M/apYNIC7duwu9l2P4KMy
gkPIE71yVeoEzDmVhUt/1TFag7ZSK6y6CrozEnfB6WWQ7nrSRNtwz9FyOiI3fB9m
Eo0g4Ai43JQWX0jRx6G9SYmhvlG5Js4sQ7iwtVbsCzf1dZVwWt1iLNeMTeJo8U+2
Nt18n0ZNnODqWsfGl8OD64ylUeni8j9KW3UROfokYvAqBkZbqaHgQOD/PcAKFoKW
WuOGU1okdQNX7yEk+IBXzyiRj4H2ml/jtwoy0L4Vovy3OZQiMdrV3KNOad8DVrtx
PvuBO/GdOP64QBi38p9atoaeHJDrU53R5yYEv6dU/qjmAuzJ2cNqt57u68bDduze
PfVkYsTWFOwKVpbsNT4SDuBhO0hs7GcCIDKZgqBN0l7yVx0lMVk=
=idBF
-----END PGP SIGNATURE-----

--hryna5gby4w6a6ts--
