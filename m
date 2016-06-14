X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3222" "Tuesday" "14" "June" "2016" "06:56:16" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<575FAA90.7040500@redhat.com>" "86" "[oss-security] [OSSA-2016-009] Neutron IPTables firewall anti-spoof protection bypass (CVE-2016-5362, CVE-2016-5363, CVE-2015-8914)" nil nil nil "6" "2016061406:56:16" "[oss-security] [OSSA-2016-009] Neutron IPTables firewall anti-spoof protection bypass (CVE-2016-5362, CVE-2016-5363, CVE-2015-8914)" (number mark "U       tdecacqu@red Jun 14   86/3222  " thread-indent "\"[oss-security] [OSSA-2016-009] Neutron IPTables firewall anti-spoof protection bypass (CVE-2016-5362, CVE-2016-5363, CVE-2015-8914)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32002 invoked by uid 550); 14 Jun 2016 06:56:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31984 invoked from network); 14 Jun 2016 06:56:05 -0000
From: Tristan Cacqueray <tdecacqu@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <575FAA90.7040500@redhat.com>
Date: Tue, 14 Jun 2016 06:56:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="TI39muqx7mPwTxCRcKBDUffjrQ7uwK8Ne"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 14 Jun 2016 06:55:54 +0000 (UTC)
Subject: [oss-security] [OSSA-2016-009] Neutron IPTables firewall anti-spoof protection
 bypass (CVE-2016-5362, CVE-2016-5363, CVE-2015-8914)

--TI39muqx7mPwTxCRcKBDUffjrQ7uwK8Ne
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2016-009: Neutron IPTables firewall anti-spoof protection bypass
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: June 14, 2016
:CVE: CVE-2016-5362 (DHCP spoofing),
      CVE-2016-5363 (MAC source address spoofing),
      CVE-2015-8914 (ICMPv6 source address spoofing)


Affects
~~~~~~~
- Neutron: <=3D7.0.4, >=3D8.0.0 <=3D8.1.0


Description
~~~~~~~~~~~
Romain Aviolat from Nagravision and Dustin Lundquist from Blue Box
Group, Inc independently reported vulnerabilities in Neutron anti-
spoof protection. By forging DHCP discovery messages or non-IP
traffic, such as ARP or ICMPv6, an instance may spoof IP or MAC source
addresses on attached networks resulting in denial of services and/or
traffic interception. Moreover when L2population isn't used, other
tenants attached to a shared network are also vulnerable. Neutron
setups using the IPTables firewall driver are affected.


Patches
~~~~~~~
- https://review.openstack.org/299025 (MAC)    (Liberty)
- https://review.openstack.org/303572 (DHCP)   (Liberty)
- https://review.openstack.org/310652 (ICMPv6) (Liberty)
- https://review.openstack.org/299023 (MAC)    (Mitaka)
- https://review.openstack.org/303563 (DHCP)   (Mitaka)
- https://review.openstack.org/310648 (ICMPv6) (Mitaka)
- https://review.openstack.org/299021 (MAC)    (Newton)
- https://review.openstack.org/300202 (DHCP)   (Newton)
- https://review.openstack.org/300233 (ICMPv6) (Newton)


Credits
~~~~~~~
- Romain Aviolat from Nagravision           (CVE-2015-8914)
- Dustin Lundquist from Blue Box Group, Inc (CVE-2016-5362,
                                             CVE-2016-5363)


References
~~~~~~~~~~
- https://bugs.launchpad.net/bugs/1502933 (ICMPv6)
- https://bugs.launchpad.net/bugs/1558658 (MAC, DHCP)
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-5362
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2016-5363
- http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2015-8914

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--TI39muqx7mPwTxCRcKBDUffjrQ7uwK8Ne
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXX6qQAAoJECK5oFySXMXYE18IAKby346ffkoEMlQNuDDskgm2
eNgY+k/FiEwfk4HrRS7o+5Lo6VsY9hUhT4ZaklXMjKqkAuEeX605w/G/bUxRzoD2
3idatUj6FTBCSqAtaDRhllmElmSdwjgEcuF5Hrhs7h+VslONCNzfPk8xGFTLywyr
SsdCcbcvwAsomlicbdOg4o+ACG/wHyHVukB22JpeQPJPrjtuXZNpSmjHjIvM0kkU
YQ0+P9UZfx2T5INoFG4vhqvQBG7W8Zr6xd3DgzPrwlC4ieCSeRRSXLj3542LTnNI
x1nuclAjHPtTE6I+qJkZyxAmBIEPA4xoB/kmJiUE6T1lhClpeMSsZDcXsRPNdoQ=
=ZctB
-----END PGP SIGNATURE-----

--TI39muqx7mPwTxCRcKBDUffjrQ7uwK8Ne--
