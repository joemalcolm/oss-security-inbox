X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1134" "Friday" "8" "June" "2018" "21:36:09" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>" "38" "[oss-security] CVE-2018-12020 in GnuPG" "^Date:" nil nil "6" "2018060819:36:09" "[oss-security] CVE-2018-12020 in GnuPG" (number mark "        corsac@debia Jun  8   38/1134  " thread-indent "\"[oss-security] CVE-2018-12020 in GnuPG\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8059 invoked by uid 550); 8 Jun 2018 19:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8038 invoked from network); 8 Jun 2018 19:36:27 -0000
Message-ID: <167bc7e898d02f7bd13c43d272d64178f00e7e23.camel@debian.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.2-1 
Mime-Version: 1.0
Date: Fri, 08 Jun 2018 21:36:09 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-12020 in GnuPG
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi everybody,

just a heads up, since we weren't notified in advance and it's Friday eveni=
ng
(in Europe at least).

There's a nasty vulnerability in GnuPG which can be apparently used to bypa=
ss
signature verification when a program calls gpg to verify a signature and
parses the output:

https://lists.gnupg.org/pipermail/gnupg-announce/2018q2/000425.html
https://dev.gnupg.org/T4012

It might be worth checking whether package managers signature verification =
is
affected.

Apt doesn't seems affected at first sight (it uses gpgv) but we'll double
check.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAlsa2qkACgkQ3rYcyPpX
RFv/vAf+MVxGn1N+UT1W6HLMnR2BJLcRI0emIAdYOW+HNoXGgAnRckQa2vbLv645
bKdrpjGR8vsMMiCNmk2vUUOuV5lhfX4XN7ik9wyLpJhJWrxTZ+OdfIPwWE7dOj3x
bsw+8gYi2gK6v274nUtFXbU2XcTCkgAlqcIfeJlhh8MLDqJ7Fka8YJO02EsW+pRa
Bu2fblFm5P4TcTMOBjoX4zRHob4S2po57vCIgbA0GKLAzzjB8vWzPbo73waozvQR
OAL69guzAFKIdVNZ4x4WOcgNoZt6/sx1DWs1+oYfhWC5TNlrK5HcfUmmZ5bq1ov3
S8SJhFB1Q7c5xyCcmza8mQSwkBrpfA=3D=3D
=3DAI6O
-----END PGP SIGNATURE-----
