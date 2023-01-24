Received: (qmail 11566 invoked by uid 550); 24 Jan 2023 16:08:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11478 invoked from network); 24 Jan 2023 16:08:32 -0000
Date: Tue, 24 Jan 2023 16:08:18 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20230124160818.wlaspet7jsmths2p@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tcfhvreqzy74jjfa"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2023-002] Cinder, Glance, Nova: Arbitrary file access through
 custom VMDK flat descriptor (CVE-2022-47951)

--tcfhvreqzy74jjfa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2023-002: Arbitrary file access through custom VMDK flat descriptor
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 24, 2023
:CVE: CVE-2022-47951


Affects
~~~~~~~
- Cinder, glance, nova:
  Cinder <19.1.2, >=3D20.0.0 <20.0.2, =3D=3D21.0.0;
  Glance <23.0.1, >=3D24.0.0 <24.1.1, =3D=3D25.0.0;
  Nova <24.1.2, >=3D25.0.0 <25.0.2, =3D=3D26.0.0


Description
~~~~~~~~~~~
Guillaume Espanel, Pierre Libeau, Arnaud Morin and Damien Rannou
(OVH) reported a vulnerability in VMDK image processing for Cinder,
Glance and Nova. By supplying a specially created VMDK flat image
which references a specific backing file path, an authenticated user
may convince systems to return a copy of that file's contents from
the server resulting in unauthorized access to potentially sensitive
data. All Cinder deployments are affected; only Glance deployments
with image conversion enabled are affected; all Nova deployments are
affected.


Patches
~~~~~~~
- https://review.opendev.org/871631 (Train(cinder))
- https://review.opendev.org/871630 (Train(glance))
- https://review.opendev.org/871629 (Ussuri(cinder))
- https://review.opendev.org/871626 (Ussuri(glance))
- https://review.opendev.org/871628 (Victoria(cinder))
- https://review.opendev.org/871623 (Victoria(glance))
- https://review.opendev.org/871627 (Wallaby(cinder))
- https://review.opendev.org/871621 (Wallaby(glance))
- https://review.opendev.org/871625 (Xena(cinder))
- https://review.opendev.org/871619 (Xena(glance))
- https://review.opendev.org/871622 (Xena(nova))
- https://review.opendev.org/871620 (Yoga(cinder))
- https://review.opendev.org/871617 (Yoga(glance))
- https://review.opendev.org/871624 (Yoga(nova))
- https://review.opendev.org/871618 (Zed(cinder))
- https://review.opendev.org/871614 (Zed(glance))
- https://review.opendev.org/871616 (Zed(nova))
- https://review.opendev.org/871615 (2023.1/antelope(cinder))
- https://review.opendev.org/871613 (2023.1/antelope(glance))
- https://review.opendev.org/871612 (2023.1/antelope(nova))


Credits
~~~~~~~
- Guillaume Espanel from OVH (CVE-2022-47951)
- Pierre Libeau from OVH (CVE-2022-47951)
- Arnaud Morin from OVH (CVE-2022-47951)
- Damien Rannou from OVH (CVE-2022-47951)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1996188
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2022-47951


Notes
~~~~~
- The stable/wallaby, stable/victoria, stable/ussuri, and
  stable/train branches are under extended maintenance and will
  receive no new point releases, but patches for them are provided
  as a courtesy where possible.

--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--tcfhvreqzy74jjfa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmPQAnJfFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCkKaBAAoZ/1MXtKKPoxKbud710naWI7qubPnibgjmt/wHzlZg3wo/4MXWESsFA/
G/oFib9WxzkmGbbLyHzwObzrOoPsetBsLt3hKhHK26+osg0FA07LpZMByE7ME2h+
75WEXLSTGuNizKA+XfnhSdIFTLgZq9o33aFP3ODZW6C+Bk9evbGHLAr0xVw3xRSR
tyKYr/BOzD5y1XGWqjtK2eUvgxay5qIDsSm5K6JqQgUNDFBRjPL1P08K1+rgOYox
oG9vIArcW1aDfYwV9WvAaFANA8VeYZCuEY9Vb8f5eS0TuFR34SCiTdKlHvF6qm0n
l7aXP7SCI40cXA81gzs2HBtRx3oR6Qh/Z5QxOYfD97ihB50W+50/wxn8In9rjX2U
S+QX07Z+Ds1PBBrI9OdhT6Wo7Y1hCNTdVTle4pJbA5SUvTf7wqsSdsYbP7Z5zARq
R1PTFR1g1usbIu+TkilzunVQQ+pnawV0+y7Gg+0JW3wV1EIrJ8ddrM73pKCBaev8
GrZ7B/IjdUKPSKH35GFvO03qsPu0+TiRMMQjFD2C2o6ci/ZELa5G8JE/dqHXwB2K
WhZhY1Di2VhjcvUs7Z+8JFeD8omAXLaNqmkKy32N/oMs2pJrDq2lSIdwbjSgPN3E
El4qEO7XJoLtxuIANMis6gYqx647TF9Kxp2di9EpLGfzWNhJpBU=
=mRDN
-----END PGP SIGNATURE-----

--tcfhvreqzy74jjfa--
