X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2313" "Thursday" "13" "August" "2015" "21:11:30" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55CD0802.9000606@redhat.com>" "77" "[oss-security] [OSSA 2015-014] Glance v2 API host file disclosure through qcow2 backing file (CVE-2015-5163)" nil nil nil "8" "2015081321:11:30" "[oss-security] [OSSA 2015-014] Glance v2 API host file disclosure through qcow2 backing file (CVE-2015-5163)" (number mark "        tdecacqu@red Aug 13   77/2313  " thread-indent "\"[oss-security] [OSSA 2015-014] Glance v2 API host file disclosure through qcow2 backing file (CVE-2015-5163)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23831 invoked by uid 550); 13 Aug 2015 21:11:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23811 invoked from network); 13 Aug 2015 21:11:26 -0000
Message-ID: <55CD0802.9000606@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="0iH5qGEJTD9QUXxeHJsH3TGoSXGVRootd"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 13 Aug 2015 21:11:30 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-014] Glance v2 API host file disclosure through qcow2
 backing file (CVE-2015-5163)
To: oss-security@lists.openwall.com

--0iH5qGEJTD9QUXxeHJsH3TGoSXGVRootd
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
OSSA-2015-014: Glance v2 API host file disclosure through qcow2 backing file
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

:Date: August 13, 2015
:CVE: CVE-2015-5163


Affects
~~~~~~~
- Glance: 2015.1 versions through 2015.1.1


Description
~~~~~~~~~~~
Eric Harney from Red Hat reported a vulnerability in Glance. By
importing a qcow2 image with a malicious backing file, an
authenticated user may mislead Glance import task action, resulting in
the disclosure of any file on the Glance server for which the Glance
process user has access to. Only setups using the Glance V2 API are
affected by this flaw.


Patches
~~~~~~~
- https://review.openstack.org/212568 (Kilo)
- https://review.openstack.org/212567 (Liberty)


Credits
~~~~~~~
- Eric Harney from Red Hat (CVE-2015-5163)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1471912
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5163


Notes
~~~~~
- This fix will be included in the future 2015.1.2 (kilo) release.

--=20
Tristan Cacqueray
OpenStack Vulnerability Management Team


--0iH5qGEJTD9QUXxeHJsH3TGoSXGVRootd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVzQgCAAoJECK5oFySXMXYsp8H/imPe+D6BarMNNBhPWodborx
QRFp9eWyUR6RvAljF9QHDhtiPgslJwCvvvc+dhCSG9EyTR8MisIcC9GGWhqL7IK8
UObkgK3FytjnQkpBbo9/hTqgOmOc+kDwsC+eUJb74gX2otvUtdc7nEfv8opxZa1W
Bj5yi/jm2SKoXhXz/NAyCbv0bX9IuKdsy/tZA9uFHnpoUkD7wGLj16s5/f7ijcQx
nuGTClZEdlaJB37Bs5VWf8Gn/N8wH8bB833HIMY9eIy1wnIqCizJRL1gBt177f9E
IPo1+oUkl5fbXJPA9XnrZj+i0aUDORExorYg/9W6PrTLpsTon99SYJwlDH7bQ4k=
=j2RP
-----END PGP SIGNATURE-----

--0iH5qGEJTD9QUXxeHJsH3TGoSXGVRootd--
