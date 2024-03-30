Received: (qmail 5338 invoked by uid 550); 30 Mar 2024 19:16:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24494 invoked from network); 30 Mar 2024 19:06:15 -0000
Date: Sat, 30 Mar 2024 20:06:06 +0100
From: Axel Beckert <abe@deuxchevaux.org>
To: oss-security@lists.openwall.com
Message-ID: <20240330190606.x3bndyr7gyqytmvo@sym.noone.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <CAN_LGv3GAmdpaXVCjwp1UAH_Z6KKDnqydj68Oj4jmXRwwPE=Uw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wsqbbzafhpil2fhu"
Content-Disposition: inline
In-Reply-To: <CAN_LGv3GAmdpaXVCjwp1UAH_Z6KKDnqydj68Oj4jmXRwwPE=Uw@mail.gmail.com>
X-Operating-System: Linux 5.10.0-0.deb9.24-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAMAAAClLOS0AAAALVBMVEVEREQiIiL///9VVVUzMzNm
 ZmYRERF3d3eIiIju7u6ZmZnd3d27u7uqqqrMzMx6FhjdAAACUklEQVQ4y3XUMYvUQBQH8BcnnDZC
 xosRhRPZ47hbdllG3g5YWGTYYRsVjhuHoF2aqRck5ECURYtdBJs0tnIIp9htZ3cINoKNWPkFLPwS
 vuyRZLN7plryy755M/Ofgc5/Hqh/db8Und7fYgMGM5vMsuRtsQaDUwOATOYv2tCbZchIpLWfWvAt
 MQIRJVp7r1iBd9YKwPNHnjTQNWgEo5eCCRRPGtgHuayEAiCGqw2cMYNojUGhQ63ZooZDBtLmBgE0
 51yfVDAAzWyeofB9zdMovFTBgQ6QQAjQikc8fVDBHT6SCQH4BDxNdyrY41Rplhvhl0Ok0fV6DC7z
 fJ5b9LhzkXNBBV2V5PlxnhmfRy6NHC+qdkVmrUGbiXWY0lIozdAoKuQcX1Qw4bFP/YRaRfSHBrpD
 FT5WoRcyMXYubUohfR74YQgMhy7i47qr36/VNhp6TbvCld7arqA/F1em1FZynBmtgq0b9er+ME9P
 bZLP55kBP/Bu1dDL3nzEZDlH2sIV6Nv5bELLklnBZDZuYGAtGpbYMhLSuJVSBlQgpCk3Xd51O01K
 Dj0+oqQgbW48drebXBmPx+cpiXWU3mzgmR/GsEyPhsitwHtaQj5C2luNXnqtgTNaWR2XKYkJjhrY
 BUqoD5pUDu8XDewzGoFAhSM5/LqS9n55NmgAHjIrW+eDsijKBmK0D1sw0RRbx0NAcdSCX1QmSjlN
 xl+0YF9R1rgGEI/WTu33D5R/Av/V+jnfo6YILm9cALvl9AB/bsCBLuH55l3SnRK8vOiS6fyRny+8
 fdaef/SP2dCp/isOAAAAAElFTkSuQmCC
Organization: DeuxChevaux.org -- The =?iso-8859-1?Q?Citr?=
 =?iso-8859-1?B?b+tu?= 2CV Database
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

--wsqbbzafhpil2fhu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Mar 30, 2024 at 07:00:42PM +0800, Alexander E. Patrakov wrote:
> As GitHub has disabled the repository, the commit links in the
> original message no longer work. One of the remaining mirrors is
> https://git.rootprojects.org/root/xz

Note that this is not a mirror of the adversary controlled git repo on
Github but a mirror of https://git.tukaani.org/xz.git which is
controlled by the original maintainer according to
https://tukaani.org/xz-backdoor/. (And that repo is still there, too,
even if it gives a 403 Forbidden when accessed with a web browser. You
can still "git clone" from it.)

BTW, both repos miss that most recent commit on Github by the adversary
with the now infamous "simplification of SECURITY.md".

		Kind regards, Axel
--=20
PGP: 2FF9CD59612616B5      /~\  Plain Text Ribbon Campaign, http://arc.pasp=
.de/
Mail: abe@deuxchevaux.org  \ /  Say No to HTML in E-Mail and Usenet
Mail+Jabber: abe@noone.org  X
https://axel.beckert.ch/   / \  I love long mails: https://email.is-not-s.m=
s/

--wsqbbzafhpil2fhu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmYIYpsACgkQa+Zjx1o1
yXXsXg//cL6vJEX4KfQL4WHF02GUvtle53ZDVsbaz6peDwH+tW7t4DRZX9eDLD5+
HDNyInvptTDm/Mh3KrTUZ47AMz0JkVUWlu9NOLZ/OYUB1YUTj8KXjm1FDvY9YyyS
rNKxjFLbZ6JQQATF38/ECRQC1j7scsOP18nBSXK0wNy+NiZEnmawYP4dYJ2ZaqWQ
f6DbFSFW9zUxaOmPmP8XKMNKheu86UzbuIfe3LzfCXKXmhLXiTfmWh7syfUOEjus
yFwwjd8HI3kHfOLzaytyYflOUdwCzpzWCs/Sr9Q5QOeQd60OdJW62aKgxWWS8rR2
MxvjSOYo6GVjc3uM1cfR9N5tcH9aX7gBaCf6yd2aTfNdSoo/x0HykL3lbKIwkwxY
JTrQEk98SCC+GBE95yjhe5fw2djaXEKLZGr7gMpRzvgpWSsYsKygO4X3CvIUs9JC
RzJHnqBqYYWvUy+u6iR7/wmde9GiXufAw9FoVlsw4FzIazSy/rp0QwQkGlEKxWrS
c6bDgV1DVjz5qxSMtYEiSjNeVHVYQPl5IME8HXJyc6E19/5Y7ndDHXO3HLCx4t6R
B3cbP8ySDUVsES5QW2eIKe83XQLH3Kl+zTA06tr5wGtmXQgQhogy0rB4gf3ytLig
rnAXUz8UdY2VyPKRnDkwaPahYlW6Ni1kiXMNz63/HwTDaOHROLg=
=pNw/
-----END PGP SIGNATURE-----

--wsqbbzafhpil2fhu--
