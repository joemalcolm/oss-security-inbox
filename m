Received: (qmail 3369 invoked by uid 550); 30 Mar 2024 22:01:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30134 invoked from network); 30 Mar 2024 21:46:25 -0000
Date: Sat, 30 Mar 2024 22:46:17 +0100
From: Axel Beckert <abe@deuxchevaux.org>
To: Andres Freund <andres@anarazel.de>
Cc: oss-security@lists.openwall.com
Message-ID: <20240330214617.fzevnlz4nrqvgbwp@sym.noone.org>
Mail-Followup-To: Andres Freund <andres@anarazel.de>,
	oss-security@lists.openwall.com
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wmmxwxpejmrvsxou"
Content-Disposition: inline
In-Reply-To: <20240330194850.cxzmp654onm5q7ds@awork3.anarazel.de>
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
Subject: Re: [oss-security] Re: backdoor in upstream xz/liblzma leading to
 ssh server compromise

--wmmxwxpejmrvsxou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Andres,

On Sat, Mar 30, 2024 at 12:48:50PM -0700, Andres Freund wrote:
> FWIW, RSA_public_decrypt is reachable, regardless of server configuration,
> when using certificate based authentication.
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Wait, do you really mean SSH keys verified by certificates issued by a
(usually internal, SSH-specific) certificate authority (CA) for a key?

See e.g.
https://en.wikibooks.org/wiki/OpenSSH/Cookbook/Certificate-based_Authentica=
tion
what certificate-based authentication in SSH actually means.

=46rom my experience certificate-based SSH authentication (i.e. those
algorithms with *-cert-* in their names) is rather rare, while simple
public key authentication (where you just put your according pubkey
into .ssh/authorized_keys) is very common.

Can you clarify if you really meant that solely certificate based
authentication (with certificates issued by a CA) triggers that code
path or if you actually meant all sorts of public key based
authentication in general?

		Kind regards, Axel
--=20
PGP: 2FF9CD59612616B5      /~\  Plain Text Ribbon Campaign, http://arc.pasp=
.de/
Mail: abe@deuxchevaux.org  \ /  Say No to HTML in E-Mail and Usenet
Mail+Jabber: abe@noone.org  X
https://axel.beckert.ch/   / \  I love long mails: https://email.is-not-s.m=
s/

--wmmxwxpejmrvsxou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmYIiCAACgkQa+Zjx1o1
yXXLqw//cr2fZbsTJNqovEtELX+x8I1cs20vLjupobmI1gctZZR9CXE2dDtCHGH2
zczmr9qujXa21LVvS62R8YEoR8H6bLy6szLxlrNra0i3VL9scJApMmxnaCzwS/yS
Qd3smz0RvlHBu8QGEfY6t9+07JC9VBvmIKSq7qElE089FZ6Ukt60mkp3vKvFZ/vb
Escx+63zvLRUw+/aJtHwnSE56wkr6SfEcBZfjpTXNiuv0d4fGUP5PFn2HJvF4Axl
u8BKbkWrrLtAoaF6XfK+1vosLxqQzgZrhivhQEATszgo2ffIEm66OrSnhSuKtcrF
mUIJ08fkI2ocHyaRSTqOAnuukFcPBpd3vKUI4koHy+Ge9essYR2bdNJsF3VUmxFb
DyFCGpq4ZhKRCHG7DOf53HnT9p7axCvM3NZ8KO9r482noEa5zOzmhzv+Zpf0E8Uq
RaGJy5WxAml3J6virtxYz+HCAt0OjfTKgemZbrVYmZ2eNNeNLlK2f/4uSyJx4KqO
wr6KSlKyeWTr7CeEa7Z/h5/qP41/+VheE4EDGQzI0ZG/Pnci0gbFVKPvcsEauc6l
z8rGNCjQoh12cQIKZBfV8ZayyvPcGc6S0gIQJ1zRXaqtYePpQUv5Ri+6cJBsCAoB
dFGcI4K9uuCNImvqedgO7zfQIX7Jg1TQ6/0lCAWOTdnwEt6lSjU=
=zYsK
-----END PGP SIGNATURE-----

--wmmxwxpejmrvsxou--
