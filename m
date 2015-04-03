X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2203" "Friday" "3" "April" "2015" "13:07:17" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150403130717.47fe512d@pc1.railnet.train>" "62" "[oss-security] Palinopsia bug" nil nil nil "4" "2015040311:07:17" "[oss-security] Palinopsia bug" (number mark "        hanno@hboeck Apr  3   62/2203  " thread-indent "\"[oss-security] Palinopsia bug\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7308 invoked by uid 550); 3 Apr 2015 11:07:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7276 invoked from network); 3 Apr 2015 11:07:16 -0000
Message-ID: <20150403130717.47fe512d@pc1.railnet.train>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-14693-1428059225-0001-2"
Date: Fri, 3 Apr 2015 13:07:17 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Palinopsia bug
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-14693-1428059225-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

As far as I can see this hasn't been posted here yet:
https://hsmr.cc/palinopsia/

tl;dr It may be possible to read out parts of previous screen states
from the buffer of your graphics card. This can leak data across users,
VMs and survives reboots.

I'd say these are vulnerabilities in the graphics drivers.
It is to be expected that on a multi user system data is not leaked
from one account to another (however there are other situations where
this also happens, e.g. the fact that on vanilla linux users can see
other users processes). A device driver should not leak data across
users.

(and yes, I know this is not new and has been pointed out before - even
more reason to fix it)

Redhat bug:
https://bugzilla.redhat.com/show_bug.cgi?id=3D1076240

Haven't found any infos on fixes yet. I think people of affected GPUs
(mine isn't) should report these issues as security vulnerabilities to
their graphics driver developers.

cu,
--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-14693-1428059225-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVHnRlAAoJEKWIAHK7tR5CbqQQAJGIDzNH2k4UmY1NVdxM3KmG
0TQXaVY+O60lTyH8VtBF3SLOupqrWZFEE9ryxizZWcn0rzfhG55nurqR7DqYWeZC
kIvSjaRSCNGe1FH3ZZR0L1U4faAy7eXGR/00tjvEzM3fzuF9UkigvZ6P3MOfqK71
dQjzLBg733g1uiJCDJNd0TKaPhfG6LLmZ4NzbUgNABl63dpLyxOXxh5VjvqlS2Na
M+s0lDI98x+ZZjIhgN0DRi/TdkT9772OwZ6VK9UdgmIJhGowck6RR1T15H7sV6WB
TaFVti4dqx6hQqkOTbw8mw/8+5OkwsStkjENtpgLYIYJYmcl8TWrZdff2yGhXi8e
Elq/LPb3dUf1V4+fCZ041NUvHab6GSGRoe+d2AOq+qNKaSnLnJ54viT7KQX7z5HG
hUDecMO6+nGj+WUaIzYcOWF7+2UviSbefmTN9Ajr4w47an6sUBANCKldNMbsXMYt
UI4KA31K06/CEWiWFcqy9UStKdQo68bzt5EhC3A9X0ABgvRxLo2tnHoWJUJcWKPg
7GKI2UCWLTqr3hyH12CdY+Klnq+nWAFY3CgibTkvrQjFftePd5oGy7RDPjSzvZZA
MXiN3MhPlifzatLmtgt0i2MFVok9JW9ow6SvYE6ktApjP7oKqPqB7WwCCXfWPk8i
H1zwPDIaU+VNMuUW0S4w
=5wsE
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-14693-1428059225-0001-2--
