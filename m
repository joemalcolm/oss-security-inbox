X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2394" "Tuesday" "1" "September" "2015" "20:24:36" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<55E60984.3070807@redhat.com>" "79" "[oss-security] [OSSA 2015-017] Nova may fail to delete images in resize state (CVE-2015-3280)" nil nil nil "9" "2015090120:24:36" "[oss-security] [OSSA 2015-017] Nova may fail to delete images in resize state (CVE-2015-3280)" (number mark "U       tdecacqu@red Sep  1   79/2394  " thread-indent "\"[oss-security] [OSSA 2015-017] Nova may fail to delete images in resize state (CVE-2015-3280)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28048 invoked by uid 550); 1 Sep 2015 20:24:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28026 invoked from network); 1 Sep 2015 20:24:31 -0000
Message-ID: <55E60984.3070807@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="6QQVqNfBXhXAN4a8uAh25jRI9k9iNHsnb"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Tue, 1 Sep 2015 20:24:36 +0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [OSSA 2015-017] Nova may fail to delete images in resize state
 (CVE-2015-3280)
To: oss-security@lists.openwall.com

--6QQVqNfBXhXAN4a8uAh25jRI9k9iNHsnb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2015-017: Nova may fail to delete images in resize state
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: September 01, 2015
:CVE: CVE-2015-3280


Affects
~~~~~~~
- Nova: 2014.2 versions through 2014.2.3, and
2015.1 versions through 2015.1.1


Description
~~~~~~~~~~~
George Shuklin from Webzilla LTD and Tushar Patil from NTT DATA, Inc
independently reported a vulnerability in Nova resize state. If an
authenticated user deletes an instance while it is in resize state, it
will cause the original instance to not be deleted from the compute
node it was running on. An attacker can use this to launch a denial of
service attack. All Nova setups are affected.


Patches
~~~~~~~
- https://review.openstack.org/219301 (Juno)
- https://review.openstack.org/219300 (Kilo)
- https://review.openstack.org/219299 (Liberty)


Credits
~~~~~~~
- George Shuklin from Webzilla LTD (CVE-2015-3280)
- Tushar Patil from NTT Data (CVE-2015-3280)


References
~~~~~~~~~~
- https://launchpad.net/bugs/1392527
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-3280


Notes
~~~~~
- This fix will be included in future 2014.2.4 (juno) and 2015.1.2
(kilo) releases.

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--6QQVqNfBXhXAN4a8uAh25jRI9k9iNHsnb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBAgAGBQJV5gmEAAoJECK5oFySXMXYtY0H/3Uu00H/e/qXr9blNmrw71fN
F+s3KEnprDOrNZ9vpb4Scf8OKv/zVV4fszdBIrGHDkFhAFisXdLiaTcMqb5T81tK
bgKBm8Isyy0t9bzFXMuU0I6eQFgfYrUBk+NPy1OUDuKykSX1UEe8BDRk6d/PWUF5
Ac9UeKCniOKLMgtKUJCYgwQdo12/7qxJazIqt2G0/O/2iW+BjysQCVeEYQD2KE1O
yDrl3IKD/5RcHlfQON1LzDHG0CwBMrLH/7CRpE5UXM2PsDqfo5vjOZ/hzH5+0Ln/
8n4IONMjOqpRnZiTnxj8v2+Ql59KgvmcF/LnpyosfVev2zD3ZM+TCvAq3e79DqA=
=xYDm
-----END PGP SIGNATURE-----

--6QQVqNfBXhXAN4a8uAh25jRI9k9iNHsnb--
