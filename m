X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2489" "Friday" "2" "October" "2015" "15:00:28" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<560E9C0C.7050108@redhat.com>" "82" "[oss-security] [OSSA 2015-020] Glance storage overrun (CVE-2015-5286)" nil nil nil "10" "2015100215:00:28" "[oss-security] [OSSA 2015-020] Glance storage overrun (CVE-2015-5286)" (number mark "        tdecacqu@red Oct  2   82/2489  " thread-indent "\"[oss-security] [OSSA 2015-020] Glance storage overrun (CVE-2015-5286)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1510 invoked by uid 550); 2 Oct 2015 15:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1491 invoked from network); 2 Oct 2015 15:00:15 -0000
Message-ID: <560E9C0C.7050108@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lAjLRS0JBn7oCgJvikhkjtSfSSiuFmMPx"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Date: Fri, 2 Oct 2015 15:00:28 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-020] Glance storage overrun (CVE-2015-5286)
To: oss-security@lists.openwall.com

--lAjLRS0JBn7oCgJvikhkjtSfSSiuFmMPx
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-020: Glance storage overrun
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: October 01, 2015
:CVE: CVE-2015-5286


Affects
~~~~~~~
- Glance: <=3D2014.2.3, >=3D2015.1.0, <=3D2015.1.1


Description
~~~~~~~~~~~
Mike Fedosin and Alexei Galkin from Mirantis reported a vulnerability
in Glance. By deleting images that are being uploaded using a token
that is about to expire, a malicious user can overcome the storage
quota and accumulate untracked image data in the backend resulting in
potential resource exhaustion and denial of service. All Glance setups
using the V1 API are affected and all setups using the V2 API with the
registry db_api enabled are affected.


Patches
~~~~~~~
- https://review.openstack.org/229946 (Juno)
- https://review.openstack.org/229975 (Juno)
- https://review.openstack.org/229945 (Kilo)
- https://review.openstack.org/229973 (Kilo)
- https://review.openstack.org/230056 (Liberty)
- https://review.openstack.org/229972 (Liberty)
- https://review.openstack.org/229943 (Mitaka)
- https://review.openstack.org/229971 (Mitaka)


Credits
~~~~~~~
- Mike Fedosin from Mirantis (CVE-2015-5286)
- Alexei Galkin from Mirantis (CVE-2015-5286)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1498163
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-5286


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2
  (kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--lAjLRS0JBn7oCgJvikhkjtSfSSiuFmMPx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWDpwMAAoJECK5oFySXMXYvuEH/R5xUQ1dGciTAFa19mx2F3yC
SRnRJiLVLfViZtdbpoGw8V5xyx7poo/CQgXt2AI8yv7I+VilMcf3h2iyjGZ5N5lu
CZszLudKZOvkiYH6vF5xloG8FnIXN0QVezAFQbDai3ZWrmLQUqXT5ZN3uimVPjj9
E8t7w9On24ybXd0NuOrXpc1fC36a5kf6IryLTnhVbmD7W1Wq9zVXDxm2NacB7FoA
v7uFKRWreGdPEJGq2tPoLDLjLAAblW6aVz/DWsu90HPgsHjcLn8ypTC0r5hqQz2f
F+7sFJsyes4VtEpJn4VOgt4lUenoeWKwEh3hvKs2+LrNNEqUeZxSSqH/hkTCn+A=
=FMM9
-----END PGP SIGNATURE-----

--lAjLRS0JBn7oCgJvikhkjtSfSSiuFmMPx--
