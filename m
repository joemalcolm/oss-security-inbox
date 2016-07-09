X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1811" "Friday" "8" "July" "2016" "23:41:16" "-0700" "John Johansen" "john.johansen@canonical.com" "<57809C8C.6070902@canonical.com>" "51" "[oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" nil nil nil "7" "2016070906:41:16" "[oss-security] CVE request: apparmor: oops in apparmor_setprocattr()" (number mark "U       john.johanse Jul  8   51/1811  " thread-indent "\"[oss-security] CVE request: apparmor: oops in apparmor_setprocattr()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17439 invoked by uid 550); 9 Jul 2016 06:41:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17419 invoked from network); 9 Jul 2016 06:41:39 -0000
To: oss-security@lists.openwall.com
From: John Johansen <john.johansen@canonical.com>
Organization: Canonical
Message-ID: <57809C8C.6070902@canonical.com>
Date: Fri, 8 Jul 2016 23:41:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="E6FnnhBTsguTPXsD3126EFkUS1fiDwei9"
Subject: [oss-security] CVE request: apparmor: oops in apparmor_setprocattr()

--E6FnnhBTsguTPXsD3126EFkUS1fiDwei9
Content-Type: multipart/mixed; boundary="UotDLBkbCuibNqgj7CubA2mVpA81xjpWf"
From: John Johansen <john.johansen@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <57809C8C.6070902@canonical.com>
Subject: CVE request: apparmor: oops in apparmor_setprocattr()

--UotDLBkbCuibNqgj7CubA2mVpA81xjpWf
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

There is a potential privilege escalation in apparmor's setprocattr() inter=
face.

https://lkml.org/lkml/2016/7/7/906

introduced by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca
fixed by: 30a46a4647fd1df9cf52e43bf467f0d9265096ca

Could you assign a CVE for this issue?

thanks
John


--UotDLBkbCuibNqgj7CubA2mVpA81xjpWf--

--E6FnnhBTsguTPXsD3126EFkUS1fiDwei9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXgJyMAAoJEAUvNnAY1cPYldIP/AkcLaa7dmWQGReGSE77mePL
l09kDE8enuLfV2ukOJgJVlYRVL+gI4AOPB7tGdIeh4a3PTwMqLlL0/hPI1YDu4MX
JRWEgC3ugj+X34rUyDfgBeRiep1Pm/HyrZfPluB0fAlZ1C4KkpMnfEaC9bQ+wzmc
eGvepIzlRfwjNQsmqf+tl0MFLwBMAg8cJ6QKbXzeRPGsXljiyLkaHHruBem2pn6d
AMoQ/sNKlUZA/AV9jHs5NujapPvVfnPSvWD6pNt2w8U5e9Vh408jzogZsaLKbOpK
AvfD2eX0r+RYsfT9oZq/qwNmlouldJqoJVw07ZMZiJXVQx579f7JTWcJeQSdsJRr
R4b1S2J6f+rPUdH3PQRoQVM1/Mf1bz0l5hnvfYKrdvIqJZBHVYqVWRQKV9+weqZU
k2/WLxmIeXWfD4HGk4sTFUi4Ka+XrFJP0fbwzuSmsMc2BWGdbpzSLVzoIvjjxMW0
HT1YrS/YO8QtYeDhsQBVzl/FnQeqWDkgL9sKCsjevKgbAoYVNCTQJmN43f17EnrQ
ocXz/SiYJ1tbO+gDOrbqmb8luCKhm7NmbvWX2eCXkjZWYznJMY7wj1NqSF0U4raC
LU9nDFTsgf88xqOJUWUm7KCtB/K9P5ObVB4w9x9Nui4vxj91Ieiii7sX12lyDUAi
wnND7W/0uqWtY/jBtYF2
=1wxX
-----END PGP SIGNATURE-----

--E6FnnhBTsguTPXsD3126EFkUS1fiDwei9--
