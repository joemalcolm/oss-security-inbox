X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1974" "Wednesday" "8" "February" "2017" "02:10:05" "-0600" "Tyler Hicks" "tyhicks@canonical.com" "<ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>" "53" "[oss-security] CVE Request: Nova-LXD incorrectly applied Neutron security group rules" nil nil nil "2" "2017020808:10:05" "[oss-security] CVE Request: Nova-LXD incorrectly applied Neutron security group rules" (number mark "U       tyhicks@cano Feb  8   53/1974  " thread-indent "\"[oss-security] CVE Request: Nova-LXD incorrectly applied Neutron security group rules\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31850 invoked by uid 550); 8 Feb 2017 08:10:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31829 invoked from network); 8 Feb 2017 08:10:30 -0000
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: James Page <james.page@ubuntu.com>, security@ubuntu.com
Message-ID: <ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>
Date: Wed, 8 Feb 2017 02:10:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="ACo8KmUh5AQnahrHqcX8lrVx8GpMC0Ohi"
Subject: [oss-security] CVE Request: Nova-LXD incorrectly applied Neutron security group
 rules

--ACo8KmUh5AQnahrHqcX8lrVx8GpMC0Ohi
Content-Type: multipart/mixed; boundary="X1W2NJn2mM7oAS9Pr5Hvh1oxNec6oxraX";
 protected-headers="v1"
From: Tyler Hicks <tyhicks@canonical.com>
To: oss-security@lists.openwall.com
Cc: James Page <james.page@ubuntu.com>, security@ubuntu.com
Message-ID: <ddadc77b-f3fe-1c7b-fd44-513b11d2f0cf@canonical.com>
Subject: CVE Request: Nova-LXD incorrectly applied Neutron security group
 rules

--X1W2NJn2mM7oAS9Pr5Hvh1oxNec6oxraX
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Neutron security group rules were not being applied to Nova-LXD
instances due to improperly named veth pairs. This resulted in network
traffic to/from external hosts being incorrectly allowed.

Bug: https://launchpad.net/bugs/1656847
Fix:
https://github.com/openstack/nova-lxd/commit/1b76cefb92081efa1e88cd8f330253=
f857028bd2

Thank you!

Tyler


--X1W2NJn2mM7oAS9Pr5Hvh1oxNec6oxraX--

--ACo8KmUh5AQnahrHqcX8lrVx8GpMC0Ohi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJYmtJdAAoJENaSAD2qAscKNVYP/2kK2db7PSudOwH1h+pUbGGW
CWlesjgcNRb3ZYsaqz0+maBDMY7yxpm3Kpuyzw4w8HOhgiWT+kb9LF6d6pC7hGhz
40JZcCTTXuq+mGOqk/BLKe/YpkV+3YLrHlRCeAfMiOnVjrukP/i0/QE4f28uY3do
+gLlDALPIrhygRm3yjl/1DaBWnbEkGaJ41cGgY1wXeqjx30tX33j7rpFG0+SCsvJ
ESZYl/zrexatabRYQ/amn+K67cMeljOzDhDuCEdOoLdRsl3irSgAA+YUBB5gbFiq
XeqAdOF/U8xh4S+QLfWcggIJ8MKytigVQiWD4Q5AYX2TIBnSTQMnU/E6wfCRmIKH
sS2Q1gxF/Wz2x5jNpGd6exzFW34U0pDe8H3/VFkg//GScc+qRv5EmPmAncfITvrt
N1sjOK+YdBr7ADALMaD6Of9zXN9+vgcERpHq0rRkWzbxXSSb3MR1fuWuegjXK1hn
QxNUz1ycxCqoxGkfGzEEe20QmiKskEXFW/4c9qZFE+OLmbr7czFFPAoKEqjGCz7X
Y/hsJ0sdwRTcBlYVqPW+xGK5OwGQnBge/V9Lopg7OkhgFdzBWtUzowvpywZ88gZd
ixWYmJ7sczcMuIg3+9GA3qun3+c5bZ0BanIfe+OedlTG5TbRtLcPO6qg4rAyayaE
sPXqXNfzGMjLK3WlhSB4
=Y3mg
-----END PGP SIGNATURE-----

--ACo8KmUh5AQnahrHqcX8lrVx8GpMC0Ohi--
