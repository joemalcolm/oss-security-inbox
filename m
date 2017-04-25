X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2185" "Tuesday" "25" "April" "2017" "15:40:02" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<1493134410.v5lp2nuxd8.tristanC@fedora>" "70" "[oss-security] [OSSA-2017-004] federated user gets wrong role (CVE-2017-2673)" nil nil nil "4" "2017042515:40:02" "[oss-security] [OSSA-2017-004] federated user gets wrong role (CVE-2017-2673)" (number mark "U       tdecacqu@red Apr 25   70/2185  " thread-indent "\"[oss-security] [OSSA-2017-004] federated user gets wrong role (CVE-2017-2673)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7677 invoked by uid 550); 25 Apr 2017 15:39:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7658 invoked from network); 25 Apr 2017 15:39:48 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com B92C780044
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx03.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=tdecacqu@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com B92C780044
Date: Tue, 25 Apr 2017 15:40:02 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-Id: <1493134410.v5lp2nuxd8.tristanC@fedora>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature";
	micalg=pgp-sha256; boundary="=-/ozAJPH3PIRMZNZa0jfM"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.27]); Tue, 25 Apr 2017 15:39:36 +0000 (UTC)
Subject: [oss-security] [OSSA-2017-004] federated user gets wrong role (CVE-2017-2673)

--=-/ozAJPH3PIRMZNZa0jfM
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2017-004: Incorrect role assignment with federated Keystone
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: April 25, 2017
:CVE: CVE-2017-2673


Affects
~~~~~~~
- Keystone: >=3D10.0.0 <=3D10.0.1, =3D=3D11.0.0


Description
~~~~~~~~~~~
Boris Bobrov from Mail.Ru reported a vulnerability in Keystone
Federation. An authenticated user may receive all the roles assigned
to the user's project regardless of the federation mapping when there
are rules in which group-based assignments are not used. For example,
by requesting an admin user to get a role in their project, the user
may be granted the admin privileges for new scoped tokens. All setups
using the Keystone federation without group based assignments rules
are affected.


Patches
~~~~~~~
- https://review.openstack.org/459713 (Newton)
- https://review.openstack.org/459732 (Ocata)
- https://review.openstack.org/459705 (Pike)


Credits
~~~~~~~
- Boris Bobrov from Mail.Ru (CVE-2017-2673)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1677723
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-2673

--
Tristan Cacqueray
OpenStack Vulnerability Management Team

--=-/ozAJPH3PIRMZNZa0jfM
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJY/23SAAoJECK5oFySXMXYZ4IH/AxVa3IutpHD5IfhkMAAltni
PpAqxYP/N7SnJv7dw+8wkTKz36i579ToPCM7U/BrIxApXk0JGfG5b/cHcUwf6tyl
KbCvqU6BHHzSZYN+Osrv+vKb6mIBVEwdj1KGFFx1tSS6HVMWrUi2Tt/WOgtENQG9
4Jmmxh0OtFxIj/mjTWuxlveSULYj79UZv5UWdNI2jWOD/QzmWVmMZrAs1XRUHnxd
WD/cq8JXMx/sW103nZPFiUM1kHqOdWmzJXbQJOO9b7JDbh/oRr0kTcjJMDCv1ddr
koED8QQaVtukMuUVvNqnY8vkuK1zzEaOom3vI393Ww0saOIyZt3pVy+d2fh10mU=
=6cJM
-----END PGP SIGNATURE-----

--=-/ozAJPH3PIRMZNZa0jfM--
