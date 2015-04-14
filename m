X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2781" "Tuesday" "14" "April" "2015" "16:04:05" "-0400" "Tristan Cacqueray" "tristan.cacqueray@enovance.com" "<552D72B5.2010809@enovance.com>" "83" "[oss-security] [OSSA 2015-007] S3Token TLS cert verification option not honored (CVE-2015-1852)" nil nil nil "4" "2015041420:04:05" "[oss-security] [OSSA 2015-007] S3Token TLS cert verification option not honored (CVE-2015-1852)" (number mark "        tristan.cacq Apr 14   83/2781  " thread-indent "\"[oss-security] [OSSA 2015-007] S3Token TLS cert verification option not honored (CVE-2015-1852)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32061 invoked by uid 550); 14 Apr 2015 20:04:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31901 invoked from network); 14 Apr 2015 20:03:54 -0000
X-Virus-Scanned: amavisd-new at enovance.com
Message-ID: <552D72B5.2010809@enovance.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="Cp069B57064HCxDqavX6N9aNfitGGnhdx"
Date: Tue, 14 Apr 2015 16:04:05 -0400
From: Tristan Cacqueray <tristan.cacqueray@enovance.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-007] S3Token TLS cert verification option not honored
 (CVE-2015-1852)
To: oss-security@lists.openwall.com

--Cp069B57064HCxDqavX6N9aNfitGGnhdx
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-007: S3Token TLS cert verification option not honored
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: April 14, 2015
:CVE: CVE-2015-1852


Affects
~~~~~~~
- python-keystoneclient: versions through 1.3.0
- keystonemiddleware: versions through 1.5.0


Description
~~~~~~~~~~~
Brant Knudson from IBM reported a vulnerability in keystonemiddleware
(formerly shipped as python-keystoneclient). When the 'insecure'
option is set in a S3Token paste configuration file its value is
effectively ignored and instead assumed to be true. As a result
certificate verification will be disabled, leaving TLS connections
open to MITM attacks. Note that it's unusual to explicitly add this
option and then set it to false, so the impact of this bug is thought
to be limited. All versions of s3_token middleware with TLS settings
configured are affected by this flaw.


Patches
~~~~~~~
- https://review.openstack.org/173378 (python-keystoneclient) (Icehouse)
- https://review.openstack.org/173376 (keystonemiddleware)    (Juno)
- https://review.openstack.org/173377 (python-keystoneclient) (Juno)
- https://review.openstack.org/173365 (keystonemiddleware)    (Kilo)
- https://review.openstack.org/173370 (python-keystoneclient) (Kilo)


Credits
~~~~~~~
- Brant Knudson from IBM (CVE-2015-1852)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1411063
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-1852


Notes
~~~~~
- This fix will be included in keystonemiddleware 1.6.0 release and
  python-keystoneclient 1.4.0 release.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--Cp069B57064HCxDqavX6N9aNfitGGnhdx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJVLXK1AAoJECK5oFySXMXYqxQIAJ1geUDIl6OkXCxJD+sfk0c7
ZDEqhCJf2XL5FBc/OKZ6w/wadsaIK+F9azVi1WUZ3vzXuSTY06aFKmrTevzHdQFv
4JKXF4DFu7ovg2Cp9yHSCMNF+rsTnn2KNJTDc1kpb3K/nEGkNxOxHZiNC23SMK3Q
RY9DD3l0CAPbJbiF8AIKdV98vfpAcIZ4edbQSywPV/L29UgQ70caB/C+LQ7nTV1u
5CGznZ626fDgiIEEvDM5H2zKiMw1fFlTd3nap1PWc9dimnmRCIGdjlblGAR36il7
e3k46yp+Mm0XaVbx1X0nf+fWvPMHnfJDsoaSnF0zShzI6557jC231H1zik7/EZs=
=/Pjg
-----END PGP SIGNATURE-----

--Cp069B57064HCxDqavX6N9aNfitGGnhdx--
