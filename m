X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1688" "Monday" "25" "July" "2016" "13:34:17" "-0400" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160725133417.43b97c67@pc1>" "47" "[oss-security] Use after free in my_login() function of DBD::mysql (Perl module)" "^Date:" nil nil "7" "2016072517:34:17" "[oss-security] Use after free in my_login() function of DBD::mysql (Perl module)" (number mark "        hanno@hboeck Jul 25   47/1688  " thread-indent "\"[oss-security] Use after free in my_login() function of DBD::mysql (Perl module)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3875 invoked by uid 550); 25 Jul 2016 17:34:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3797 invoked from network); 25 Jul 2016 17:34:32 -0000
Message-ID: <20160725133417.43b97c67@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-13177-1469468061-0001-2"
Date: Mon, 25 Jul 2016 13:34:17 -0400
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Use after free in my_login() function of DBD::mysql (Perl module)
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-13177-1469468061-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/50-Use-after-free-in-my_login-function-of-=
DBDmysql-Perl-module.html

DBD::mysql versions 4.033 and earlier have a use after free bug in the
my_login() function. DBD::mysql is a Perl module providing bindings to
the mysql database. The issue was fixed in version 4.034.

This issue was discovered with Address Sanitizer.

https://github.com/perl5-dbi/DBD-mysql/pull/45
Pull request / patch

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-13177-1469468061-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJXlk2ZAAoJEKWIAHK7tR5CrRQP/0pPk79bHdWpkK8mH8L+qo9C
yw/8t8WrCj1cKTTCLHea3SOMpJSCN76DYdZ93T93Y5bY3ggn9cbsg9nw/C5LxRHg
BLK2WKxHr9CXZ0C9sG5d4RgWiyixVUoKV6bBj/0X+OLIBSAQiLEPKOTuSI96rMmx
4aiXbBXo5ACrBhLibM8BAV9rtnmZzhxu/8IDKCfB09OmUELGNMiKlUN7Qnqenrh1
zx0dWjf7WjvFiIBeMLH0AH+jAFKpW+RS7r9qtm1dfL3xyktmuUFgH0QxbEp968xS
quTGpyro5RI6311Q/KbC96L2J4FzlXjLb6c1sVx2ccxZli2AHoEOX+Prf4Husux1
zUP/bHTtOUG32EZBig61BDBhiat7SvbGoUSBoz8pPqePt7psyAfoa7P+k/9MjZzR
1XvuMEkk7E2e2hm81UhoBVweCYRMjmMOMWdsH6yrUYqMUyZZ5eLUqPw+euy1j/yw
5pbZ5LKdRxHEAc+g1nseJSyNfuYoYjAPHv0SLS2iaE/m5tGRsWBClZCbJn9K4Ho0
oY06Q/HvPPbBQkMZ68YkzgQl/Ygt7IA1kaC89+8CXKAmzznSY6HNPi550WCDy/Nz
cylw8S1eXMt43hnUxG3hw8bRzJ4mZGa1wI85F0Msl7U2NQf5t00+jwUy+IjPsX3b
DCFrllS6mUz3FdJCuBxO
=dZP4
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-13177-1469468061-0001-2--
