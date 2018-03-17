X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3612" "Friday" "16" "March" "2018" "17:41:50" "-0700" "Seth Arnold" "seth.arnold@canonical.com" "<20180317004150.GF4105@hunt>" "122" "[oss-security] [cve-request@mitre.org: Re: [scr479280] sqlite3 - all; fix is in source control but not yet released]" nil nil nil "3" "2018031700:41:50" "[oss-security] [cve-request@mitre.org: Re: [scr479280] sqlite3 - all; fix is in source control but not yet released]" (number mark "U       seth.arnold@ Mar 16  122/3612  " thread-indent "\"[oss-security] [cve-request@mitre.org: Re: [scr479280] sqlite3 - all; fix is in source control but not yet released]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7927 invoked by uid 550); 17 Mar 2018 00:42:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7906 invoked from network); 17 Mar 2018 00:42:04 -0000
Date: Fri, 16 Mar 2018 17:41:50 -0700
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20180317004150.GF4105@hunt>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rWhLK7VZz0iBluhq"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] [cve-request@mitre.org: Re: [scr479280] sqlite3 - all; fix is in
 source control but not yet released]

--rWhLK7VZz0iBluhq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello, our friends at MITRE have assigned CVE-2018-8740 to an issue in
SQLite3 that was discovered by OSS-Fuzz working on GDAL.

Thanks to Even Rouault for passing along the issue and D. Richard Hipp
for the fix.

----- Forwarded message from cve-request@mitre.org -----

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> In SQLite
> through 3.22.0,
> databases whose schema is corrupted using a CREATE TABLE AS statement cou=
ld cause a NULL pointer dereference,
> related to build.c and prepare.c.
>=20
> ------------------------------------------
>=20
> [VulnerabilityType Other]
> NULL pointer dereference
>=20
> ------------------------------------------
>=20
> [Vendor of Product]
> SQLite
>=20
> ------------------------------------------
>=20
> [Affected Product Code Base]
> sqlite3 - all; fix is in source control but not yet released
>=20
> ------------------------------------------
>=20
> [Affected Component]
> src/build.c, src/prepare.c
>=20
> ------------------------------------------
>=20
> [Attack Type]
> Context-dependent
>=20
> ------------------------------------------
>=20
> [Impact Denial of Service]
> true
>=20
> ------------------------------------------
>=20
> [Attack Vectors]
> A corrupted SQLite3 database file must be accessed.
>=20
> ------------------------------------------
>=20
> [Reference]
> https://bugs.launchpad.net/ubuntu/+source/sqlite3/+bug/1756349
> https://www.sqlite.org/cgi/src/timeline?r=3Dcorrupt-schema
> https://www.sqlite.org/cgi/src/vdiff?from=3D1774f1c3baf0bc3d&to=3Dd75e676=
54aa9620b
> https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=3D6964
>=20
> ------------------------------------------
>=20
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>=20
> ------------------------------------------
>=20
> [Discoverer]
> OSS-Fuzz

Use CVE-2018-8740.


- --=20
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJarFm6AAoJEHb/MwWLVhi2C3oP/1rVX4scV1Ilox/LgOCjPDE1
Oxq3swzeowK8rEDbBMhyuYKrz3dY8Rir/wzgQ2PXiRItw0fNY4dxFf/ZwSR16l5k
0YzYc9FsnljK+6OJ9ZrH/4VmgbXAZOf+wANeISqndgfaBFPqv/WYb5aprr6GTVkM
k73m3r+Wzp+yHg4mth+Y9eAqGOOi8s+W3yR5hTscLAxRaBcMq2rH0MNJKL6AUIxx
gkTrqYh2tQqfaZFtm+Gfv3j3coKj/gpzK+fFAyqDjjrEFajhb3NKoiMu8+nvjsQx
yOt02P2cqn/qb3jdu4dGDu4oaRvMazP6bvHaDyfSd3zfYb0RBuRzEfa5ZAWmHFcw
7RUq1ryvX+zUdK4cpfywC2/9XUfPoM37cWhV2+myd9lgbiCwdbF094omdEiHI4HB
hnPfBzk1ZlizgNKaV8iK+RNdLDKLwv2MjyJ1X7SEe0xmengetfFvOEa7qWRFNog8
5aQOG0r2oLg4/ZirOlUkIwLa2OFlG0VnhDww9TMtdEiz95slmmXgv6cVGHdTEteo
WginOrUnMBjkm+jUDKilBABw49UxFpzKAqa+z0zTsheaKAm1Ydu2j8I2K5bLLhAc
MX4MHG3y8M/5nn7HXvhIIOP2Gcxc14WPJhug3rgq0VVdS+O4NFSXG1Umjc+boHCv
RF7PZ9dM9WOVd4QFf3RI
=3DgkoK
-----END PGP SIGNATURE-----


----- End forwarded message -----

--rWhLK7VZz0iBluhq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJarGROAAoJEPMhclmdjS6XEroH/2khhkZOJB7+kqrffkcoUxGi
Hn22VVreZyQyrhtoWoY+yztaEB8PtRb/biV4BYIDVjxWw05U1H+vZGv73NWazkmF
/w3xhEhBbjo7a/lqCcF/0dee53jJZdWO5l/4/AIeBoVIyN6uhq7U+qTZSeAMAhkI
qSw4RiML5LLVtG9ySUMbbte6R8K9gZKmqjgyOXaqfmmPnl8bncVlGm1kwbwoTJRk
AzXFux6md3fjcwP19Q3nCpzCQoFftelRtpx59k1ltWK11ujcVlc9tbn+UdTT/k+6
d8FEZVQtAfylAaTjrpy3BITQjswLuBIpLkVysWrBcyE1EDPCaNSer5z0wzb+Opg=
=fbet
-----END PGP SIGNATURE-----

--rWhLK7VZz0iBluhq--
