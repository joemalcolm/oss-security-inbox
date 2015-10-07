X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2444" "Wednesday" "7" "October" "2015" "18:33:38" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<56156582.1040201@redhat.com>" "80" "[oss-security] [OSSA 2015-021] Nova network security group changes are not applied to running instances (CVE-2015-7713)" nil nil nil "10" "2015100718:33:38" "[oss-security] [OSSA 2015-021] Nova network security group changes are not applied to running instances (CVE-2015-7713)" (number mark "U       tdecacqu@red Oct  7   80/2444  " thread-indent "\"[oss-security] [OSSA 2015-021] Nova network security group changes are not applied to running instances (CVE-2015-7713)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7524 invoked by uid 550); 7 Oct 2015 18:33:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7504 invoked from network); 7 Oct 2015 18:33:20 -0000
To: oss-security@lists.openwall.com
From: Tristan Cacqueray <tdecacqu@redhat.com>
Message-ID: <56156582.1040201@redhat.com>
Date: Wed, 7 Oct 2015 18:33:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="KRIrUdGMXKbxxdROQNSRKIHjCnTgsuSon"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] [OSSA 2015-021] Nova network security group changes are not applied
 to running instances (CVE-2015-7713)

--KRIrUdGMXKbxxdROQNSRKIHjCnTgsuSon
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-021: Nova network security group changes are not applied to runni=
ng instances
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: October 06, 2015
:CVE: CVE-2015-7713


Affects
~~~~~~~
- Nova: <=3D2014.2.3, >=3D2015.1.0, <=3D2015.1.1


Description
~~~~~~~~~~~
Sreekumar S. and Suntao independently reported a vulnerability in Nova
network. Security group changes silently fail to be applied to already
running instances, potentially resulting in instances not being
protected by the security group. All Nova network setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/222026 (Juno)
- https://review.openstack.org/222023 (Kilo)
- https://review.openstack.org/222022 (Liberty)


Credits
~~~~~~~
- Sreekumar S. (CVE-2015-7713)
- Suntao (CVE-2015-7713)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1491307
- https://bugs.launchpad.net/bugs/1484738
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-7713


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2 (kilo)
  releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--KRIrUdGMXKbxxdROQNSRKIHjCnTgsuSon
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWFWWCAAoJECK5oFySXMXYfiYH/3wzbcAeD8jFX+j4HLrHiRfV
SgWSBMilZfv7l6EmE+VesvFK4++P0limPXu6KNHtDLaVjEv53OX3QCdlMijXO/fu
RUi4uiPCmzXwamfjZwnE9immfCAyDwyLJU/v2P4PeZ2Oc1Y/UqgEP9cJ3nR2Gj30
6B1SozBI221Ks2b7md9bqV0ogefupMvUKzGahXI3bLviSn8FGvNCq2VMU7xAAuWr
aJcZ+53SxCH2Cvn23DvwDEvznxBnWqyhsF6Yt5B3ZyaH8WksnjqQdNyeWS4hKtCc
CY3n6lSgWtoGQBB0VnZhye3W+4dkELTGnScv+VwUlVfyjuScRqN9BbI9uRgN+VI=
=InQQ
-----END PGP SIGNATURE-----

--KRIrUdGMXKbxxdROQNSRKIHjCnTgsuSon--
