X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4042" "Tuesday" "19" "November" "2019" "13:19:10" "+0100" "Morten Linderud" "morten@linderud.pw" "<20191119121910.g6tc5zwbmbdiuiuh@anathema>" "109" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019111912:19:10" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "U       morten@linde Nov 19  109/4042  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9595 invoked by uid 550); 19 Nov 2019 12:21:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8113 invoked from network); 19 Nov 2019 12:19:25 -0000
X-Spam-BL-Results: 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linderud.pw; s=mail;
	t=1574165953; bh=2HSLP9e5RFLFsN1M6VHauNNTi3hOuIUTkAawyO8Pd3U=;
	h=Date:From:To:Subject:References:In-Reply-To;
	b=gUkmfB5To1BSbjZkyzTsfIZ54hyEm901IpCM8zXcNxZAk22yCDhuSNziC3N11UOS5
	 6l7BJUla+SUmWkrDJkwC8XtKM3bomoKeMsrKxtS5CZlmLadR4VJEY/y3PXLaSM3/3H
	 YcRxOVmDfEYdic3CVDzT5/yklSaisyhEHsZpemes=
Message-ID: <20191119121910.g6tc5zwbmbdiuiuh@anathema>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rcepwu5kf2aqlbl7"
Content-Disposition: inline
In-Reply-To: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>
Date: Tue, 19 Nov 2019 13:19:10 +0100
From: Morten Linderud <morten@linderud.pw>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

--rcepwu5kf2aqlbl7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 19, 2019 at 01:33:48PM +0200, Georgi Guninski wrote:
> As end user and contributor of gnu/linux, I am concerned about malicious
> packages (either hostile developers or hacked developers or another reaso=
n)
> and have two questions:
>=20
> * What do linux vendors to avoid malicious packages?
>=20
> * As end user what can I do to mitigate malicious packages?

Yo!

The answer to this is complicated. Different distributions has widely diffe=
rent
threat models and supply chains for dealing with packages. This can be from=
 the
perspective of developers uploading pre-built binary packages to a reposito=
ry,
then distributed. Another factor is distributions where source packages are
uploaded to a centralized builder, then distributed.

You also got source-based distributions, such as Gentoo and probably NixOS,
where the problem domain is a bit more complicated as the users might be
building the packages themselves.

Some attack vector are:

* A malicious build server
* Compromised source tarballs
* Compromised packagers
* Compromised mirrors/repositories


There is not a definitive solution here. But there are multiple efforts and
research going on. The most important one, in my opinion, is the reproducib=
le
builds project [1]. We need to ensure we are not inserting random or
non-deterministic data into our build artifacts. This stretches from upstre=
am
developers providing tarballs, to pre-compiled sources and packages from
distributions. There is no distribution today that has full reproducible bu=
ilds,
but there are many projects that work towards this and work on reproducible
builds.

Arch Linux has recently been trying to get the core repository 100%
reproducible, and we have done a lot of effort towards this just the past w=
eek
[2]. I have also written up a blog post describing the effort that has gone=
 into
this [3].

There are also other efforts, like Benjamin Hof which has done work attempt=
ing
to provide transparency logs for Debian package repositories. This can work=
 as a
guard detecting compromised signing keys. Either from build servers or pack=
agers [4].

The current status quo is a bit grim. You can't protect yourself against
malicious packages. You need to trust the source and build the packages
yourself, preferably write your own package files.

As long as we use distributions we are bound to trusting the packagers and
believe they are doing the right thing. However, reproducible builds will a=
llow
users to verify the work done by packagers in the future.


I hope this gives some insight and answers parts of your question :)


[1]: https://reproducible-builds.org/
[2]: https://lists.archlinux.org/pipermail/arch-dev-public/2019-November/02=
9721.html
[3]: https://linderud.dev/blog/reproducible-arch-linux-packages/
[4]: https://debconf18.debconf.org/talks/104-software-transparency-package-=
security-beyond-signatures-and-reproducible-builds/

--=20
Morten Linderud
PGP: 9C02FF419FECBE16

--rcepwu5kf2aqlbl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEktnGzemaICTWkKdu50JoO6CMsv8FAl3T3b4ACgkQ50JoO6CM
sv90ZA//ci++pBkkqdJ3pouwIx8aUcowFS8/LlKzXOoHkJXZUjT0ZrB9ycQ1JcwL
NsBq7lze0H92hMTFId9bXT/y+2gRhWs2+0/oT5/42ibo2rLYlsFkl5oY0XiUraJv
zhrSGE+QweWlERwjNviVo3WonVGtZP6QRsSNWd+iw/eEXQuVch75k6ZOktC2RE2B
7acUngSjM10QCWZsvLINnhrOHoSl8K/SeRdFYLce6esLybnoKZxLsxRLo8P9Zg5h
5dUg/n5o01NHvwJXdcAlVOEG9TxaDu/bfDzbQ7oU/d3AIviQg2FPoTJ7HNlnsDIF
cgY3bBHYvNc4i41YRiSMmlkkaUR1GOxkDx5JpeXSH4Ot3FAa7X9CLlFhtvAnOx70
bAg7Lt2KArsua3i6Fz81p8pMGbgv5Mo5X2iefwUJpWqcQSaMS7YNsFYv7rHjo+Dg
ohc9BzMDAdLudgwnDr64Q7WOHcv3o8yHrbq+cdGDdcTE74lFURGNEgjhy3InCLK0
c5qmk33WNnb9/6fK+Kb2XrKIrUQ0efcNML8BfgQJERre5+/+mvUJGS66IHPPIuv0
ZOpkOxf3dObFc2MIQi9c4eYJ8q7YMm0GC8NwMEnGfNRord1cJqmCFpPU0RH5kHTQ
gSj7Tcd5nXFK6SH+2hJtN9PN/e5WqSNRlPjwLdjxvRu4mj9twdI=
=9+ch
-----END PGP SIGNATURE-----

--rcepwu5kf2aqlbl7--
