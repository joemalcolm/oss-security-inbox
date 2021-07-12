X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3353" "Monday" "12" "July" "2021" "19:16:14" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" nil "96" "[oss-security] [OSSA-2021-001] Neutron: Anti-spoofing bypass for Open vSwitch networks (CVE-2021-20267)" nil nil nil "7" nil nil (number mark "U       fungi@yuggot Jul 12   96/3353  " thread-indent "\"[oss-security] [OSSA-2021-001] Neutron: Anti-spoofing bypass for Open vSwitch networks (CVE-2021-20267)\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [OSSA-2021-001] Neutron: Anti-spoofing bypass for Open vSwitch networks (CVE-2021-20267)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1960 invoked by uid 550); 12 Jul 2021 19:16:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1930 invoked from network); 12 Jul 2021 19:16:27 -0000
Date: Mon, 12 Jul 2021 19:16:14 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
To: oss-security@lists.openwall.com
Message-ID: <20210712191614.z2bgvg2tvuiwa3wi@yuggoth.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kqgpulezlj2hxltg"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Subject: [oss-security] [OSSA-2021-001] Neutron: Anti-spoofing bypass for Open vSwitch
 networks (CVE-2021-20267)

--kqgpulezlj2hxltg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2021-001: Anti-spoofing bypass for Open vSwitch networks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: July 12, 2021
:CVE: CVE-2021-20267


Affects
~~~~~~~
- Neutron: <16.3.3, >=3D17.0.0 <17.1.3, =3D18.0.0


Description
~~~~~~~~~~~
David Sinquin with Gandi.net reported a vulnerability in Neutron's
default Open vSwitch firewall rules. By sending carefully crafted
packets, anyone in control of a server instance connected to the
virtual switch can impersonate the IPv6 addresses of other systems
on the network, resulting in denial of service or in some cases
possibly interception of traffic intended for other destinations.
Only deployments using the Open vSwitch driver are affected.


Patches
~~~~~~~
- https://review.opendev.org/777873 (Queens)
- https://review.opendev.org/791470 (Queens)
- https://review.opendev.org/777786 (Rocky)
- https://review.opendev.org/791469 (Rocky)
- https://review.opendev.org/777872 (Stein)
- https://review.opendev.org/791500 (Stein)
- https://review.opendev.org/777785 (Train)
- https://review.opendev.org/791468 (Train)
- https://review.opendev.org/777784 (Ussuri)
- https://review.opendev.org/791467 (Ussuri)
- https://review.opendev.org/777783 (Victoria)
- https://review.opendev.org/791465 (Victoria)
- https://review.opendev.org/776599 (Wallaby)
- https://review.opendev.org/791464 (Wallaby)
- https://review.opendev.org/783743 (Xena)


Credits
~~~~~~~
- David Sinquin from Gandi.net (CVE-2021-20267)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1902917
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2021-20267


Notes
~~~~~
- The stable/train, stable/stein, stable/rocky, and stable/queens
  branches are under extended maintenance and will receive no new
  point releases, but patches for them are provided as a courtesy.


--=20
Jeremy Stanley

--kqgpulezlj2hxltg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQKTBAABCgB9FiEEl65Jb8At7J/DU7LnSPmWEUNJWCkFAmDslP5fFIAAAAAALgAo
aXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5maWZ0aGhvcnNlbWFuLm5ldDk3
QUU0OTZGQzAyREVDOUZDMzUzQjJFNzQ4Rjk5NjExNDM0OTU4MjkACgkQSPmWEUNJ
WCnz0hAAlPimjgyANoRl8JaNVEptXTqxOHaOvcakn29DGLN9phlMuhfju1vAUksd
DcHg3Qo/hFQd0wzomKrUy6Gro5pkZSGfxAKdaUayIk6uoECsUVwpvz6U9zaIMplE
PRJjLl4MYeu8wFp/p5+Fk8gwyo0uii8mtg9vnXlQta8a57MllWShglQTN+kIfH/4
tolevBSVHnOPmjioEtfV/s+9y4WEtMDOLwL7zRTiafPZuLc6SnljJIYdyrU9eZ9a
BZr5DQxFTVBPBQSvm4Q1/Jr7zp+0pSrb+mCodvB6XaA136GUwhSZqkcMCw4vecvd
Qb6N5/utIWC038Ge1oTDMSADNUdSvTEzN5tx++231coxRtd4/KOPtyPAE7C/SJui
+C6VAThr7ePyoutyaQILnwtMp0B1vtm6rbI8G5M9tduByAWVE0S3laUiorUFV+TS
XjVNIug2wVXN2Yga99bXT09Yp2zmzLdnyKZe0PacPqhETKEMJHC6dEqCUJe/Y+4L
6VodkEyMRYK+TwEhVIxW98AUlIhvgEcYcCGsKfaBWFWNTfGQfzXhgURk7KnvEgzf
LVB2bfhIayhUuu7geEkHs04Q8JtNFF4LWU52f9cMIEAX3U7hl0GrmewKSVMa5o3d
hPwROsgbHyxld+zNoyXeqUw5xJy1lzAA6vITP5nngCaTuyj+hPg=
=Ysqk
-----END PGP SIGNATURE-----

--kqgpulezlj2hxltg--
