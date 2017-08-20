X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1682" "Sunday" "20" "August" "2017" "21:49:05" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20170820214905.478b89da@pc1>" "47" "Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" "^Date:" nil nil "8" "2017082019:49:05" "[oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)" (number mark "        hanno@hboeck Aug 20   47/1682  " thread-indent "\"Re: [oss-security] CVS and ssh command injection (see CVE-2017-1000117, etc.)\"\n") "<20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>" ("<20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24533 invoked by uid 550); 20 Aug 2017 19:49:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24513 invoked from network); 20 Aug 2017 19:49:15 -0000
Message-ID: <20170820214905.478b89da@pc1>
In-Reply-To: <20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>
References: <20170810171047.5cdf7131-a82f-46f0-b4c4-3015acbc431b@korelogic.com>
X-Mailer: Claws Mail 3.15.0-dirty (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-7240-1503258543-0001-2"
Date: Sun, 20 Aug 2017 21:49:05 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVS and ssh command injection (see
 CVE-2017-1000117, etc.)
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-7240-1503258543-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

There's now an inofficial patch:
https://www.mirbsd.org/cvs.cgi/src/gnu/usr.bin/cvs/src/rsh-client.c.diff?r1=
=3D1.6;r2=3D1.7

Developed by Thorsten Glaser for MirBSD and Debian:
https://www.mirbsd.org/permalinks/wlog-10_e20170811-tg.htm
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D871810

Debian Security Advisory:
https://www.debian.org/security/2017/dsa-3940

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-7240-1503258543-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE/nN1f6YOTiG5N1efpYgAcru1HkIFAlmZ57EACgkQpYgAcru1
HkKlpg/9GfNO7WVbJ6BzMtbCZaevgPa4wuB73nGxTZz1vaeTyw8RRbBP/gMIeYUZ
963yjGJvGA/RGhiUgsnI83J6vhzgf1UuaZAbmQiEJtjaUZQsC4iDfbR0s+a+Opyn
X7LYt0SNUkoHPrG8F0fNEizQ8K6bCcKscdbd4MCxzBsUl7BS/39XA4p358tVMUXH
bgbBVdYK99VBZOPFt7RL/HAf9t4UIQNFpuBKvJcLrXF5RP5xcyJBSOWDMucrSgrj
egvM3ffGJD2sB6iDlcmGI5NUfLtpT14/m03PDSp7ZOOX0ZcDx96GAdvnLQjAj/tE
sp76Jdx57W18SEsjIFmrxFidS/Y2LRZjB9NorETjCekiqVZCzOf19aqrs8tk/T4G
oZk5/pp6pL/wz1l0Oj/4W7SeZ2X20+fEz5acivt+p3sk1eUs2Sd7+VR9EU/80s8Z
vHvydaBohU8Qhjzrx0EzuifCYJwib2F+eCHcb1LwyTEN6X6GC9+vpoUZfV0ob9YM
PF4kJaYsmtJR3BRh6vgv4l/oyutss5Zi6gv81YW7S4e7ORo7ea3AZLS+6puQ+5nM
3tdIgQa3+upO+Aau7BRZsOk7oBsEr8gPolOzYmSeUtIaNbyeBJBHU8py3mChIiOm
Wxp4xRWTkJgfFM6P7YmNPE3IJZXpiADc4fH1aa8ht66xEGlx2Kg=
=7Omv
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-7240-1503258543-0001-2--
