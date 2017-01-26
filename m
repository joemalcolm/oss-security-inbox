X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2610" "Thursday" "26" "January" "2017" "20:26:02" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20170126202602.GZ12842@openstack.org>" "78" "[oss-security] [OSSA-2017-001] CatchErrors leaks sensitive values in oslo.middleware (CVE-2017-2592)" "^Date:" nil nil "1" "2017012620:26:02" "[oss-security] [OSSA-2017-001] CatchErrors leaks sensitive values in oslo.middleware (CVE-2017-2592)" (number mark "U       fungi@yuggot Jan 26   78/2610  " thread-indent "\"[oss-security] [OSSA-2017-001] CatchErrors leaks sensitive values in oslo.middleware (CVE-2017-2592)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22108 invoked by uid 550); 26 Jan 2017 20:28:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18284 invoked from network); 26 Jan 2017 20:26:15 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Message-ID: <20170126202602.GZ12842@openstack.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j+MD90OnwjQyWNYt"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Thu, 26 Jan 2017 20:26:02 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA-2017-001] CatchErrors leaks sensitive values in
 oslo.middleware (CVE-2017-2592)
To: oss-security@lists.openwall.com

--j+MD90OnwjQyWNYt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-001: CatchErrors leaks sensitive values in oslo.middleware
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 26, 2017
:CVE: CVE-2017-2592


Affects
~~~~~~~
- Oslo.middleware: <=3D3.8.0, >=3D3.9.0 <=3D3.19.0, >=3D3.20.0 <=3D3.23.0


Description
~~~~~~~~~~~
Divya K Konoor with IBM reported a vulnerability in oslo.middleware.
Software using the CatchError class may include sensitive values in
the error message accompanying a Traceback, resulting in their
disclosure. For example, complete API requests (including keystone
tokens in their headers) may leak into neutron error logs.


Patches
~~~~~~~
- https://review.openstack.org/425734 (Mitaka)
- https://review.openstack.org/425732 (Newton)
- https://review.openstack.org/425730 (Ocata)


Credits
~~~~~~~
- Divya K Konoor from IBM (CVE-2017-2592)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1628031
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-2592


--=20
Jeremy Stanley
OpenStack Vulnerability Management Team

--j+MD90OnwjQyWNYt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQJ8BAEBCgBmBQJYiltaXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25zLm9w
ZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQ5N0FFNDk2RkMwMkRFQzlGQzM1M0IyRTc0
OEY5OTYxMTQzNDk1ODI5AAoJEEj5lhFDSVgpW9YP/0v1z6Rq1ctDnQ1MHhKFXjdw
5FdOivDZZ4KaPKYvgoGYAxdULTfncF/CpmQXuQbDu4L9GbOdP8pNDde7jbw1aQEw
WPwc9frW2/CCqS30X8bEsLuZ4EqZM09KfToTQfeFxJf25daZyaHIp4/7N/FA9vh8
armlo/WvGDY2zfqLOP5oa6Gm3DzpAlCE5rbbRxRZD4uEF9bjGGHuHG0pXBe0YwSS
dQY3D4akpzlEJToZr5CZMoxFdi0piyrta1pVRKeLCH1vmd+fT3wCTJ8jVNPvNS/A
rwYC0yKQfQWwWX/egLtfsWdYS06cXCXzLNpbsv1HwDzcz13GkZIv2VcFZLsgV8sc
KAtkKjN4UItOLOwfhVMnLoHi1j8kgEAlywWf3KQe+JULgggN2lH9dJjyDiImMCVd
5oiolM0DSHz75hpqH85CXBx9L/c/+soGJsAgLoxwg7bIjAGp+izpoksPQTB3HC44
UBJhOSTYIQj+ZfplVOWUjltFzlvYM+m284o2ozo6il/OpN52Wk+2eWz0t5Wgy4Bw
T/HpmctKR4xBP4J1a6uP3kyNQ9oPvBerDkmTvan5PiLoLKyS+X4kLVjqhvLsot5s
uQ6HmWGGLy5z/ziy5+wQC+zsN8JymDlBc4HiMpZ/skWR33OFcYm3r/mizh10FuoP
Y1C058/AuB4Tl+zoAJiP
=DIIL
-----END PGP SIGNATURE-----

--j+MD90OnwjQyWNYt--
