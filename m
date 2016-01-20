X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2914" "Wednesday" "20" "January" "2016" "20:14:37" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<569FEAAD.1090800@redhat.com>" "86" "[oss-security] [OSSA 2016-004] Swift proxy-server DoS through Large Object (CVE-2016-0737, CVE-2016-0738)" nil nil nil "1" "2016012020:14:37" "[oss-security] [OSSA 2016-004] Swift proxy-server DoS through Large Object (CVE-2016-0737, CVE-2016-0738)" (number mark "U       tdecacqu@red Jan 20   86/2914  " thread-indent "\"[oss-security] [OSSA 2016-004] Swift proxy-server DoS through Large Object (CVE-2016-0737, CVE-2016-0738)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5378 invoked by uid 550); 20 Jan 2016 20:14:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5358 invoked from network); 20 Jan 2016 20:14:08 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <569FEAAD.1090800@redhat.com>
Date: Wed, 20 Jan 2016 20:14:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="6LuGwidfWAPDQlq1s5r8tBQ8CQNv2OOA8"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] [OSSA 2016-004] Swift proxy-server DoS through Large Object
 (CVE-2016-0737, CVE-2016-0738)

--6LuGwidfWAPDQlq1s5r8tBQ8CQNv2OOA8
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-004: Swift proxy-server DoS through Large Object
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D

:Date: January 20, 2016
:CVE: CVE-2016-0737 (client to proxy), CVE-2016-0738 (proxy to server)


Affects
~~~~~~~
- Swift: >=3D2.2.1 <=3D 2.3.0, >=3D 2.4.0 <=3D 2.5.0


Description
~~~~~~~~~~~
Romain LE DISEZ from OVH and =C3=96rjan Persson from Kiliaro independently
reported two vulnerabilities in Swift Large Object. By repeatedly
requesting and interrupting connections to a Large Object (Dynamic or
Static) URL, a remote attacker may exhausts Swift proxy-server
resources, potentially resulting in a denial of service. Note that
there are two distinct bugs that can exhaust proxy resources, one for
client connection (client to proxy), one for servers connection (proxy
to server). All Swift setup are affected.


Patches
~~~~~~~
- https://review.openstack.org/217750 (client to proxy) (Kilo)
- https://review.openstack.org/270234 (proxy to server) (Kilo)
- https://review.openstack.org/270235 (proxy to server) (Liberty)
- https://review.openstack.org/270233 (proxy to server) (Mitaka)


Credits
~~~~~~~
- Romain LE DISEZ from OVH (CVE-2016-0737)
- =C3=96rjan Persson from Kiliaro (CVE-2016-0738)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1466549 (client to proxy)
- https://bugs.launchpad.net/bugs/1493303 (proxy to server)
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-0737 (client
  to proxy)
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-0738 (proxy to
  server)


Notes
~~~~~
- The client to proxy issue (CVE-2016-0737) is already fixed in Liberty
- The remaining fix will be included in future 2.3.1 (Kilo) and 2.5.1
  (Liberty) releases.

--=20
Tristan Cacqueray
OpenStack Vulnerability Management Team


--6LuGwidfWAPDQlq1s5r8tBQ8CQNv2OOA8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWn+quAAoJECK5oFySXMXYc9kH/i+9xorkKYnb/Yr8iGCvoG7D
8IJdoE7B/pIrDlexcsP8zQW3HxRaT75mOVCTGMzKG4CU0UJeqId+HykDtHwMCKf3
d71EeR3oKL/rFJhk3Iq0y1qiHO/b7tO/D/FFfwxvHS03vk11eMj0bnBHQTdmQE7x
yAKvAL2Uc3KxuBi+mlReOhOp5fasrOYlEPN0wUl1+/A8BVr4sp/3VVEwf5rOf2A/
+lkucIkBxROtn4yWvFnRCmMS5FEvWAK+UWG5L6Gu8gLoPH8PyavrTS2AmyhtaC6Y
n1aq5iHWwz7BDrPx/XFh315B+QUvjzWPF68PLKLwUsakyqdDnyhoLvK7/TG1l80=
=BMcC
-----END PGP SIGNATURE-----

--6LuGwidfWAPDQlq1s5r8tBQ8CQNv2OOA8--
