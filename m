X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2183" "Tuesday" "14" "April" "2015" "14:53:59" "-0400" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<552D6247.1030701@enovance.com>" "75" "[oss-security] [OSSA 2015-006] Unauthorized delete of versioned Swift object (CVE-2015-1856)" nil nil nil "4" "2015041418:53:59" "[oss-security] [OSSA 2015-006] Unauthorized delete of versioned Swift object (CVE-2015-1856)" (number mark "        tristan.cacq Apr 14   75/2183  " thread-indent "\"[oss-security] [OSSA 2015-006] Unauthorized delete of versioned Swift object (CVE-2015-1856)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31980 invoked by uid 550); 14 Apr 2015 18:53:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31945 invoked from network); 14 Apr 2015 18:53:53 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <552D6247.1030701@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="1q5uvSp8jhcjkbCmrv8MCCV4GTV9uWpc1"
Date: Tue, 14 Apr 2015 14:53:59 -0400
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-006] Unauthorized delete of versioned Swift object (CVE-2015-1856)
To: oss-security@lists.openwall.com

--1q5uvSp8jhcjkbCmrv8MCCV4GTV9uWpc1
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-006: Unauthorized delete of versioned Swift object
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: April 14, 2015
:CVE: CVE-2015-1856


Affects
~~~~~~~
- Swift: versions through 2.2.2


Description
~~~~~~~~~~~
Clay Gerrard from SwiftStack reported a vulnerability in Swift object
versioning. An authenticated user can delete the most recent version
of any versioned object whose name is known if the user have listing
access to the x-versions-location container. Only Swift setups with
allow_version setting are affected.


Patches
~~~~~~~
- https://review.openstack.org/173366 (Icehouse)
- https://review.openstack.org/173363 (Juno)
- https://review.openstack.org/173361 (Kilo)


Credits
~~~~~~~
- Clay Gerrard from SwiftStack (CVE-2015-1856)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1430645
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-1856


Notes
~~~~~
- This fix will be included in the upcoming 2.3.0 release.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--1q5uvSp8jhcjkbCmrv8MCCV4GTV9uWpc1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVLWJHAAoJECK5oFySXMXYBwYIALg5v5sDmcVHRgT+49kkmQe5
wyocSJ2tY2BdjIO/LE40VLHf1tzNGqZSD+wX1e85wXTyfvLM/Q7CjrQozIOgwoPL
DBTDOddqg5gg/nG7zVKIsGhUcbL2c4fZbKAHSZUv0oPpRwSREK5fzpXcTiiu59uG
cWidm5a+l3MqKvaDZQ38PS/loP7jlYkbPK3ayPGDIP9xLPE/sRiob/QE1x2PHwy6
I1fC1o7Hu76FrGfq8uqXtJOHTEBqzjkqSoJZT1AoRf20OXPEWOzSNpEZo68UC12N
TrgHnQ+LydZHb6UsiNIF7UHu4rI4ojHP82ElLR0ktVDhRl3vZo5rKsF2WyCzt9M=
=8EXC
-----END PGP SIGNATURE-----

--1q5uvSp8jhcjkbCmrv8MCCV4GTV9uWpc1--
