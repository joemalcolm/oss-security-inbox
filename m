X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1682" "Tuesday" "19" "January" "2016" "19:24:12" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160119192412.1a96c226@pc1>" "47" "Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11" "^Date:" nil nil "1" "2016011918:24:12" "[oss-security] CVE request: out-of-bounds write with cpio 2.11" (number mark "        hanno@hboeck Jan 19   47/1682  " thread-indent "\"Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11\"\n") "<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>" ("<CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15484 invoked by uid 550); 19 Jan 2016 18:23:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15463 invoked from network); 19 Jan 2016 18:23:46 -0000
Message-ID: <20160119192412.1a96c226@pc1>
In-Reply-To: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
References: <CACn5sdTx4m+mrn6i59Cz4iiAzpbxg=3Qrp6yHxyoaZp8YrS=ZA@mail.gmail.com>
X-Mailer: Claws Mail 3.13.1 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-6961-1453227814-0001-2"
Date: Tue, 19 Jan 2016 19:24:12 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: out-of-bounds write with cpio 2.11
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-6961-1453227814-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 19 Jan 2016 13:45:05 -0300
Gustavo Grieco <gustavo.grieco@gmail.com> wrote:

> An out-of-bounds write in cpio 2.11 was found in the parsing of cpio
> files (other version are probably affected).  Find attached a test
> case to reproduce it. The ASAN report is here:

Is this a duplicate of CVE-2014-9112?
https://lists.gnu.org/archive/html/bug-cpio/2014-11/msg00007.html

cpio is esentially unmaintained upstream.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-6961-1453227814-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWnn9MAAoJEKWIAHK7tR5Cp28QAMXUOKyTEPknyJbgAJ5nXAsf
DA+iryjCM429C2s4jkBl8hVjova+ntQqGvrgSLGdVPUiwye+sVlRBZyDVkHoN1Ue
scDH6cz3eFdxSGB6afVG3q6kUx2ADvP5MV5tLy/FWk0b7w4MKNolWJvXtBgFEXz7
jABjf5tA/1/mlBbEXYFt3jT22VFE5aOkPnmNDlF0g4bsmin1nc7X2dzVL1y8iDqu
YqAOUeyZUKAsJEtW7oMujczbW0we3yEvwMpWZcGNHJDygWG8KIvoYtXpig3rSJC6
JPpz3kDzIWpxmg/IBHp5Xc6dbk28+LehT4pkCCXg3pTkpFR6cXIWp1FTEHdrUjnE
EEYFk8t92Ty6NUI9xyrQlN7xwRfSyawOkJ7dTbvysvMYsRNqCuwaPgkgjpQfHSox
p6bteYfEAnAiFz33iZxA0mWpEigOoGPMkZZgvDx7yyjMsqsXA3dkt0//O9sxQokJ
NnuSbLHvtK81PKzlgwvaf4xMlbF90QubaC8iy0WZqIBmd80CF++Sb2dSCaaHVPpJ
zgd35Vh9MYEynT67so8xD5xgd0BJVgh/2xQhYf1djSgoSeAsE8Y75xztRNAyWm66
bKkG7a/V4zaaMyUL2W46su6gfg4S+rWCJUD+Z5vQvWDAHzaNcyhHTtsN1dbmjFf5
c3y43pvWo7oqOtKxh6zm
=oQh8
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-6961-1453227814-0001-2--
