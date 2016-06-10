X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2137" "Friday" "10" "June" "2016" "15:07:19" "+0000" "Tristan Cacqueray" "tdecacqu@redhat.com" "<575AD7A7.8090302@redhat.com>" "58" "[oss-security] CVE request for vulnerability in OpenStack Neutron" nil nil nil "6" "2016061015:07:19" "[oss-security] CVE request for vulnerability in OpenStack Neutron" (number mark "U       tdecacqu@red Jun 10   58/2137  " thread-indent "\"[oss-security] CVE request for vulnerability in OpenStack Neutron\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8091 invoked by uid 550); 10 Jun 2016 15:07:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8053 invoked from network); 10 Jun 2016 15:07:18 -0000
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
From: Tristan Cacqueray <tdecacqu@redhat.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <575AD7A7.8090302@redhat.com>
Date: Fri, 10 Jun 2016 15:07:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bNAGht0FguxH98mrT8acItQ3PsQnHxqQm"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Fri, 10 Jun 2016 15:07:06 +0000 (UTC)
Subject: [oss-security] CVE request for vulnerability in OpenStack Neutron

--bNAGht0FguxH98mrT8acItQ3PsQnHxqQm
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

A vulnerability was discovered in OpenStack (see below). In order to
ensure full traceability, we need a CVE number assigned that we can
attach to further notifications. This issue is already public, although
an advisory was not sent yet.

Title: Neutron IPTables firewall anti-spoof protection bypass
Reporter: Romain Aviolat (Nagravision) and
          Dustin Lundquist (Blue Box Group, Inc)
Products: Neutron
Affects: <=3D7.0.4, >=3D8.0.0 <=3D8.1.0

Description:
Romain Aviolat from Nagravision and Dustin Lundquist from
Blue Box Group, Inc independently reported vulnerabilities in Neutron
anti-spoof protection. By forging DHCP discovery messages or non-IP
traffic, such as ARP or ICMPv6, an instance may spoof IP or MAC source
addresses on attached networks resulting in denial of services and/or
traffic interception. Moreover when L2population isn't used, other
tenants attached to a shared network are also vulnerable. Neutron
setups using the IPTables firewall driver are affected.

References:
https://bugs.launchpad.net/bugs/1502933 (icmpv6)
https://bugs.launchpad.net/bugs/1558658 (mac, dhcp)

Note:
The dhcp fix has been included in the 8.0.0 release and this
request probably needs more than one CVE.

Thanks in advance,

--
Tristan Cacqueray
OpenStack Vulnerability Management Team


--bNAGht0FguxH98mrT8acItQ3PsQnHxqQm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXWtevAAoJECK5oFySXMXYSaYIAK/hqqK4vHwJZOg6mv8HtQgr
JFujGKb4z9qs6DQHYHlj+s3jlcP+0goo6bDXDXlvLb0kxOgrMQ6uxNKkDQeMB9Kg
I5+VfS/yt96UQlMX4dihcrUPYEt49M6Lfr7nNFhGXHRk/vEEcL+f4eKrR0B5tuDw
CnqgdCXyrDZ05o8knNg3wcCgDv8z/alOq3+SnuwlbI9yK8EiNxTIZaTSVRBfokG1
5fLBkK8a7wxfG3nczX5TXhTU7BCTcUTBLvLHii1TpzRQXjnm/iNzzQg9Dx4fRAWR
yygzNNBYjWi2IjHC+2yB0bJDSBVoneq4SsbO+M0pDaHRjv2R5JoLEvLildgNfXA=
=ydtk
-----END PGP SIGNATURE-----

--bNAGht0FguxH98mrT8acItQ3PsQnHxqQm--
