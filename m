X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1921" "Monday" "13" "April" "2015" "19:15:10" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150413191510.47ace847@pc1.fritz.box>" "52" "Re: [oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues" nil nil nil "4" "2015041317:15:10" "[oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues" (number mark "        hanno@hboeck Apr 13   52/1921  " thread-indent "\"Re: [oss-security] CVE request: libksba version 1.3.3 fixes multiple security issues\"\n") "<20150413133120.GB4115@mail.corp.redhat.com>" ("<20150413133120.GB4115@mail.corp.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12265 invoked by uid 550); 13 Apr 2015 17:15:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12241 invoked from network); 13 Apr 2015 17:15:03 -0000
Message-ID: <20150413191510.47ace847@pc1.fritz.box>
In-Reply-To: <20150413133120.GB4115@mail.corp.redhat.com>
References: <20150413133120.GB4115@mail.corp.redhat.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-27521-1428945292-0001-2"
Date: Mon, 13 Apr 2015 19:15:10 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: libksba version 1.3.3 fixes
 multiple security issues
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-27521-1428945292-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Now also written up an advisory for these and other issues:
https://blog.fuzzing-project.org/7-Multiple-vulnerabilities-in-GnuPG,-libks=
ba-and-GpgOL-TFPA-0032015.html

At least the GpgOL issue probably sould also get a CVE:
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dgpgol.git;a=3Dcommit;h=3D35e685=
91863b7da1698ddc24d8f035fc4c382b9a
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=3Dgpgol.git;a=3Dcommit;h=3Deb1b9b=
fc088ce33c398dd6f6b7bf80797fbb9011

(same issue is in gpgparsemail, which is a command line mail parsing
tool shipped with gnupg)

I leave it up to MITRE whether to assign CVEs to the DoS issues. (In
the past they usually didn't get CVEs.)

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-27521-1428945292-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVK/meAAoJEKWIAHK7tR5CoO0P/Rj85Kh8upezYpqRD4vDAI3a
X8T7sicV2Ssb/W7boqmmVaCDU4g1V4qyNlaMWR4vUS9jQSz68mrYBSb0HZxGkdQZ
Nn/tItRhEHSw8BDOTtQJs+MWtXBiYYf5Dle7HyObXlsA13dfM5FrmIeOjgSSBfH5
NQmdRjVy5PgltMe3/5hyMCKE1xX5AfmjdyZT5rj15CIB3H8VPCq71YRsrztU0wcf
n+0vLeJ+xvRG4cXCJShdMJvtfSyFg5ztxUM4C4FuF8gKa2kheC4kBUZvo2Rgpiwf
1wAHNFFS3SzEL0WSKrtte0p6QJBbXtiB13aSrIpr4b35Gqe4y+vQuuB95NSIs+3F
C4/sY/eFd99YvN3/og/Tv3Xyq697ewkLfa+xeIfcTS6gcvopCpTLyO3RdFVw3JSA
lmg/dbcxDjbyAoJLk92Ob0WWd8fdbIB3COWPG00wVJ05J4QBgW4cXs8cIfBmbiOP
vyCHg/Fr/AstDdKWUZntMKMVF9/fAlsjQw3w5yIdtoNeKXsoI64YoyajHlGSwepm
1YMOFyR/j4/Zx42DdZZS5hG4y2hnTiS2CITKlex4WuuGmcEI/7tJfHcn+G9G4BqX
6er/tRaYhFiVBAA+zwywftYuLCVUB5EXHhEStshtOWTyWCWFks2hSDYKMNInFUIJ
IfRf7IRBu9r2gP6Rt41N
=N8K4
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-27521-1428945292-0001-2--
