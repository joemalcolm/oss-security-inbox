X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2830" "Thursday" "4" "February" "2016" "12:44:06" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56B34796.7080408@redhat.com>" "86" "[oss-security] [OSSA 2016-006] Glance image status manipulation through locations removal (CVE-2016-0757)" "^Date:" nil nil "2" "2016020412:44:06" "[oss-security] [OSSA 2016-006] Glance image status manipulation through locations removal (CVE-2016-0757)" (number mark "U       tdecacqu@red Feb  4   86/2830  " thread-indent "\"[oss-security] [OSSA 2016-006] Glance image status manipulation through locations removal (CVE-2016-0757)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12286 invoked by uid 550); 4 Feb 2016 12:43:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12259 invoked from network); 4 Feb 2016 12:43:48 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <56B34796.7080408@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="CCJGBrWmkb7Cj2s1FGKk9I0AFpOWvGmmJ"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Thu, 4 Feb 2016 12:44:06 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2016-006] Glance image status manipulation through locations
 removal (CVE-2016-0757)
To: oss-security@lists.openwall.com

--CCJGBrWmkb7Cj2s1FGKk9I0AFpOWvGmmJ
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-006: Glance image status manipulation through locations
               removal
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: February 03, 2016
:CVE: CVE-2016-0757


Affects
~~~~~~~
- Glance: <=3D2015.1.2, >=3D11.0.0 <=3D 11.0.1


Description
~~~~~~~~~~~
Erno Kuvaja from HPE reported a vulnerability in Glance. By removing
the last location of an image, an authenticated user may change the
image status back to queued and may be able to upload new image data
resulting in a broken Glance's immutability promise. A malicious
tenant may exploit this flaw to silently replace image data it owns,
regardless of the original creator or the visibility settings. Only
setups with show_multiple_locations enabled (not default) are
affected.


Patches
~~~~~~~
- https://review.openstack.org/275735 (Kilo)
- https://review.openstack.org/275736 (Liberty)
- https://review.openstack.org/275737 (Mitaka)


Credits
~~~~~~~
- Erno Kuvaja from HPE (CVE-2016-0757)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1525915
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-0757


Notes
~~~~~
- This fix will be included in future 2015.1.3 (kilo) and 11.0.2
  (liberty) releases.
- The proposed fix prevents the removal of the last location of an
  image so that an active image is always available. This action was
  previously incorrectly allowed and the fix might break some users who
  are relying on the false assumption that it would be ok to replace
  the data of existing image in the special case that the multiple
  locations has been configured.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--CCJGBrWmkb7Cj2s1FGKk9I0AFpOWvGmmJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWs0eXAAoJECK5oFySXMXYj2oH/AtooRqmXhaNs6CedsrxlBMP
Usn9aIFEYELxHsPiIh7RRM2ecsax1aJqAdHAhmZMFZw6vYYCeFREh6DqZzhxCnRH
iej/30BjW6l9B3q0CrlO224HmLqdfe7ZFw8gB5GEng1j1kq/xSjZXcSntxoc12D6
a+wIwDOpGaLApBAwy9H2yx5vwAC1CJ6y06e1NdiumEgggAqvbDRLzgvkh1WPRWyc
xRozROu6RePaHb1oOl4Oo0YCzgB0f2psnK6TMDdIzIeN1GNZ64Bb8wdXCzroZP2+
wE3oz70dj2+ndhIsgkoIz2ME8xAe8iJs8apjWivuwHScimgRQQ349qpLZyx8JLQ=
=ZLd6
-----END PGP SIGNATURE-----

--CCJGBrWmkb7Cj2s1FGKk9I0AFpOWvGmmJ--
