X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1469" "Friday" "11" "March" "2016" "21:16:24" "+0100" "Nico Golde" "oss-security+ml@ngolde.de" "<20160311201624.GE42706@coredump>" "42" "[oss-security] two udhcpc (busybox) issues" nil nil nil "3" "2016031120:16:24" "[oss-security] two udhcpc (busybox) issues" (number mark "U       oss-security Mar 11   42/1469  " thread-indent "\"[oss-security] two udhcpc (busybox) issues\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16211 invoked by uid 550); 11 Mar 2016 20:16:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16155 invoked from network); 11 Mar 2016 20:16:37 -0000
Date: Fri, 11 Mar 2016 21:16:24 +0100
From: Nico Golde <oss-security+ml@ngolde.de>
To: oss-security@lists.openwall.com
Message-ID: <20160311201624.GE42706@coredump>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mxv5cy4qt+RJ9ypb"
Content-Disposition: inline
X-Mailer: netcat 1.10
X-GPG: 0xA0A0AAAA
Subject: [oss-security] two udhcpc (busybox) issues

--mxv5cy4qt+RJ9ypb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is probably only relevant for the embedded space. Sharing two issues I=
=20
found in busybox' dhcp client implementation:

CVE-2016-2147 / OOB heap write due to integer underflow
https://git.busybox.net/busybox/commit/?id=3Dd474ffc68290e0a83651c4432eeabf=
a62cd51e87

CVE-2016-2148 / heap overflow in OPTION_6RD parsing
https://git.busybox.net/busybox/commit/?id=3D352f79acbd759c14399e39baef21fc=
4ffe180ac2

Cheers,
Nico

--mxv5cy4qt+RJ9ypb
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG/MacGPG2 v2

iQIcBAEBCgAGBQJW4yeXAAoJEM1LKvOgoKqqCuUQALrKcgJZbu4RgFfkxV8wI6lu
v+RxEdlDJvdJ6Qn0gxZKfLqP/DfXNzS7pkGyzojE00b39zOZNNSjeiMe7CrX/DCU
GBiFrCl0JkYlddpVbEu8zDeuIq+drqUpyBrVH3AMAC0dgSffNjKN8lxrMpnQ+W7n
j2UMa9vLGRR8W6/NBTNRqGQoaRw3GxO9gqDQdX/u7WohAzZ+9TBV9H0v3SbncpkJ
Z/jRtOFZnHCCWyDCZNkZe4De35IEGpkJuzumCAAaQJFMKJnzJTvx45EQZm4jfW84
iPZCuUp12yLNzedkQvl1Y96+r2MW6Dfw55oIWj8+qKEfJECyEjPkyC9asnn37BSJ
FGWQXcB0aob73lT0YVWklbBbdcAeV5oB5Pyq6liUda9SfCZOrBt1U0eWeItbBEzH
pBPQrCe6jWx1bgu4mclmMT1GyxfMgMEoRfsWkzqFI3Kw/wXSLJAgNFK2dSXlP1IL
m7QJfjHm22dFpRwxWV99vHQwysN4L6RVN8QnUKRvosExjOP5ddE7E38tCZBsbKpX
sJ7eeJkaZLvCboQCOzMli6xikSc0gI3I4aMcrglzUQ1WE0na9W7MKayhiksf5w2o
fK8m+Lvs6XQeI2SV8xwC41+1HOCq9KqbLP03FWfNjnzwAPtzopXYLQPKaZD5wEUX
6dqtm4gKgLft4wYPXCuy
=WpLP
-----END PGP SIGNATURE-----

--mxv5cy4qt+RJ9ypb--
