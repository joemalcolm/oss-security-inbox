X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2725" "Friday" "29" "January" "2016" "19:49:16" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56ABC23C.3080202@redhat.com>" "84" "[oss-security] [OSSA 2016-005] Potential reuse of revoked Identity tokens (CVE-2015-7546)" "^Date:" nil nil "1" "2016012919:49:16" "[oss-security] [OSSA 2016-005] Potential reuse of revoked Identity tokens (CVE-2015-7546)" (number mark "U       tdecacqu@red Jan 29   84/2725  " thread-indent "\"[oss-security] [OSSA 2016-005] Potential reuse of revoked Identity tokens (CVE-2015-7546)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12039 invoked by uid 550); 29 Jan 2016 19:49:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12013 invoked from network); 29 Jan 2016 19:49:04 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <56ABC23C.3080202@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="NXqbUSlex0HXCTSDRInE7wdbqQFKTj6FR"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Fri, 29 Jan 2016 19:49:16 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2016-005] Potential reuse of revoked Identity tokens
 (CVE-2015-7546)
To: oss-security@lists.openwall.com

--NXqbUSlex0HXCTSDRInE7wdbqQFKTj6FR
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-005: Potential reuse of revoked Identity tokens
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

:Date: January 29, 2016
:CVE: CVE-2015-7546


Affects
~~~~~~~
- Keystone: <=3D 2015.1.2, >=3D 8.0.0 <=3D 8.0.1
- Keystonemiddleware: >=3D 1.5.0 <=3D 1.5.3, >=3D 1.6.0 <=3D 2.3.2


Description
~~~~~~~~~~~
Liu Sheng reported a vulnerability in Keystone. By manipulating a
token content, an authenticated user may prevent its revocation. This
can allow unauthorized access to cloud resources if a revoked token is
intercepted by an attacker. Only keystone setups using PKI or PKIZ
token are affected


Patches
~~~~~~~
- https://review.openstack.org/266045 (keystone) (Kilo)
- https://review.openstack.org/266607 (keystonemiddleware) (Kilo)
- https://review.openstack.org/266022 (keystone) (Liberty)
- https://review.openstack.org/265988 (keystonemiddleware) (Liberty)
- https://review.openstack.org/258141 (keystone) (Mitaka)
- https://review.openstack.org/258143 (keystonemiddleware) (Mitaka)


Credits
~~~~~~~
- Liu Sheng from Huawei (CVE-2015-7546)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1490804
- https://wiki.openstack.org/wiki/OSSN/OSSN-0062
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-7546


Notes
~~~~~
- The keystone fix is included in 2015.1.3 (Kilo) and will be included
  in a future 8.0.2 (Liberty) releases.
- The keystonemiddleware fix will be included in future 1.5.4 (Kilo)
  and 2.3.3 (Liberty) releases.
- Both keystone and keystonemiddleware needs to be updated

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--NXqbUSlex0HXCTSDRInE7wdbqQFKTj6FR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWq8I8AAoJECK5oFySXMXYDaAIAJumbQov6020KLZCXmRWcUY1
rDwzx+bABf0ECVg2x9Ji7S3N3PLVACdh2gGEuMo8vZJuNSHGyb8tTYNaRAruo3je
Ys1TaVbAPEPZu+JiJD+hlsWD53g5b40y1BlnvByjYv3LR/FyyQb+vVOKQdFJvlnK
VvNEWvGNLegyrL+ApQXX//UwievtTP1JFfpcmZ14BegJB89gGz4GVguXua/MT4vF
EBPATUUZaB9U5+Ds3qv0Br0Yk/7J75yvLL+MERILPRhrnH6sJhf0dwcuUXAgKEXL
ZphJbSbhaq/umzfKOEkItgW37Ir8FR5xsOPbYUXUcvu4fBqmJMH/6aDEf6CpgZs=
=jIoT
-----END PGP SIGNATURE-----

--NXqbUSlex0HXCTSDRInE7wdbqQFKTj6FR--
