X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2278" "Wednesday" "26" "August" "2015" "20:22:48" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55DE2018.50600@redhat.com>" "77" "[oss-security] [OSSA 2015-016] Information leak via Swift tempurls (CVE-2015-5223)" nil nil nil "8" "2015082620:22:48" "[oss-security] [OSSA 2015-016] Information leak via Swift tempurls (CVE-2015-5223)" (number mark "U       tdecacqu@red Aug 26   77/2278  " thread-indent "\"[oss-security] [OSSA 2015-016] Information leak via Swift tempurls (CVE-2015-5223)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20180 invoked by uid 550); 26 Aug 2015 20:22:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20162 invoked from network); 26 Aug 2015 20:22:38 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55DE2018.50600@redhat.com>
Date: Wed, 26 Aug 2015 20:22:48 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="EJkr2ws5qkaxhDpmAtfa4UVXJBrtDlOEw"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] [OSSA 2015-016] Information leak via Swift tempurls (CVE-2015-5223)

--EJkr2ws5qkaxhDpmAtfa4UVXJBrtDlOEw
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-016: Information leak via Swift tempurls
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: August 26, 2015
:CVE: CVE-2015-5223


Affects
~~~~~~~
- Swift: versions through 2.3.0


Description
~~~~~~~~~~~
Richard Hawkins from Rackspace and Swift core reviewers reported a
vulnerability in Swift tempurls. When in possession of a tempurl key
authorized for PUT, a malicious actor may retrieve other objects in
the same Swift account (tenant). All Swift setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/217253 (Juno)
- https://review.openstack.org/217254 (Kilo)
- https://review.openstack.org/217255 (Kilo)
- https://review.openstack.org/217259 (Liberty)
- https://review.openstack.org/217260 (Liberty)


Credits
~~~~~~~
- Richard Hawkins from Rackspace (CVE-2015-5223)
- Swift core reviewers from OpenStack (CVE-2015-5223)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1453948
- https://launchpad.net/bugs/1449212
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5223


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2 (kilo)
  releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--EJkr2ws5qkaxhDpmAtfa4UVXJBrtDlOEw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJV3iAYAAoJECK5oFySXMXYnbwH/1LvbjeyT5cCCaOul3FHCu4I
KMlekF7+rlnN39QmnwRm3GnQrUEGsWy4GM+ccPyrhG3xfKDrHzm8D+tgho2Ge5Ut
efpbBvQLv210h56eNN8QiNyWA5r+0rfjZ/ORPY0BqqfzYR/aNSGeGazDfehsDkAT
cRzFHSfUkV1/vo8o45akbNbPoOOcZwcGVvSTN5QOZPdLvtb+12p93t0CdDhsTRbn
F3OKJ0cquZ9TEXJURCNdvv9On1YnH5UoeHwdPDrB6aoXqUcHoQ9gHWilNGrSuK+5
ayTIrOY6JatojvPskf25Xq8aUHd7s+JrP1VVnhCDTSK20MAYKQ+9FSDnEkNPZS4=
=qUo0
-----END PGP SIGNATURE-----

--EJkr2ws5qkaxhDpmAtfa4UVXJBrtDlOEw--
