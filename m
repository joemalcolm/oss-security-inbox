X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2229" "Monday" "2" "October" "2017" "16:47:18" "+0100" "Simon Kelley" "simon@thekelleys.org.uk" "<164d0bb4-6209-5e9b-32e9-0574cf31d54a@thekelleys.org.uk>" "66" "[oss-security] dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704" "^Date:" nil nil "10" "2017100215:47:18" "[oss-security] dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704" (number mark "U       simon@thekel Oct  2   66/2229  " thread-indent "\"[oss-security] dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3413 invoked by uid 550); 2 Oct 2017 15:48:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1980 invoked from network); 2 Oct 2017 15:47:36 -0000
Message-ID: <164d0bb4-6209-5e9b-32e9-0574cf31d54a@thekelleys.org.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.3.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="I1TQ2qnwOPN2S5TGMgK82bn949MExuuKM"
Date: Mon, 2 Oct 2017 16:47:18 +0100
From: Simon Kelley <simon@thekelleys.org.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704
To: oss-security@lists.openwall.com

--I1TQ2qnwOPN2S5TGMgK82bn949MExuuKM
Content-Type: multipart/mixed; boundary="RPI0qrpcUFfKQsmBDLxCNabCGP8W02r1N";
 protected-headers="v1"
From: Simon Kelley <simon@thekelleys.org.uk>
To: oss-security@lists.openwall.com
Message-ID: <164d0bb4-6209-5e9b-32e9-0574cf31d54a@thekelleys.org.uk>
Subject: dnsmasq: CVE-2017-14491 to CVE-2017-14496 and CVE-2017-13704

--RPI0qrpcUFfKQsmBDLxCNabCGP8W02r1N
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

A set of serious security vulnerabilities for dnsmasq have been released
today.

These include remote DoS and possibly code execution, and at least some
apply to essentially every non-ancient dnsmasq release.

Most of these were found by Google and their writeup is here.

https://security.googleblog.com/2017/10/behind-masq-yet-more-dns-and-dhcp.h=
tml

The fixes are contained in the dnsmasq 2-78 release, announced here:

http://lists.thekelleys.org.uk/pipermail/dnsmasq-discuss/2017q4/011771.html


and are in the dnsmasq git repo, here:


http://thekelleys.org.uk/gitweb/?p=3Ddnsmasq.git;a=3Dsummary


Cheers,

Simon.


--RPI0qrpcUFfKQsmBDLxCNabCGP8W02r1N--

--I1TQ2qnwOPN2S5TGMgK82bn949MExuuKM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJZ0l+HAAoJEBXN2mrhkTWi07QP/1XTVFq91CH1347UgiQrANjz
4I+2Mh1QAwO5Z1uUFbEVF+OA+XyjU2CINI5V55N7+eXZC0glAEwoSO2ZqlGagu9x
VzDitgPClswgCumCmP9KG88elR2Y6zveFt1lITWoo95wIGYZGa4ZCvNg/HLHO2WO
gbyDu8u0M1zKJmFwNFWRF+ehOrmzqyZC8ZyCpRSKtPSb9UmMHJfv/GM4sxvB41P5
PeQk6ysHZiF0jaKdu7AmkF6gMIoiecxPYDce5e6K663i9jJJL0rlTByd8xQGKebX
Kkv3pYcsPBz2USF7cpq8unM57ngbn2cG8mOCzfp3p2xkAhNaj7xD6GBwBYYVykad
2P7US7f7EQeTnfXHZx+jWy3IRKhYfxlahiMtPsiM4VowYgkJEYMoM/qJlOt+2zDn
M0PE/UQDP4/1bMqOV/nWyBZ55Ew6U6jDLB5GzNTGRZrGcKA1FRictaLqUWSEu+OS
ac7EwdebWxrIUtPNRNmf11nHzPrZb4aA0e6uZ6FUUyJ4BGKSP047FlCJIrzfs+Gu
7g4mSzd80jLDvLFlfth0R4BzpJquNL8C+SyWAy4y5sPWPOrVo5WdoWWa5UgJ6+14
V0yvUqgWOXY/jb4jQ1Jo/Ir9UikYzXWUPxJQ9By0gy8msoLxeBQSwi9ACeeLN4hZ
iE41bYfe3zDOVKER0Rdh
=bQLi
-----END PGP SIGNATURE-----

--I1TQ2qnwOPN2S5TGMgK82bn949MExuuKM--
