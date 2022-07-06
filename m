Received: (qmail 14117 invoked by uid 550); 6 Jul 2022 11:23:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5368 invoked from network); 6 Jul 2022 11:03:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1657105386; x=
	1657191786; bh=iGNhMCVO30rkz2LB4ocSGSHY/tdCsjrBSaRFTLBBnew=; b=c
	aFwb+GQxs7wXmCr/6uG1voLdFL+3ZHm7+J4AwAX8gmN72yGSpV5Lg6YkrW4BrDdD
	8eUtRrBPs3UNiIQbLSZ59Vrv6AW1TrwFOfR273/2FDzFvWp4RK2Uj5oEqcCRLpvI
	ktOFjBRmbaDKHg9y0OJgXhVllInz2HDtvD5qf6rTJ3nIqsiRKIfVVGo1bSLrjMtl
	d96gBNe9zbd5oTD6MBfvdiOie9V0Xp5Xz420IaAV1geCw2XoHqnYYWbUsepCELwl
	taLE7qlMXB9e9TpbezRVVufzogHhsMjOQhi47ZHuBrPPpO/c9cIrD1rOT0cq0xIp
	Bp/11Md8DpVUsfjhqOzhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657105386; x=1657191786; bh=iGNhMCVO30rkz2LB4ocSGSHY/tdC
	sjrBSaRFTLBBnew=; b=mk0B0quuJbvh3/u1AaL8e087c/ndrU7OEPSpc/QJG2qJ
	wmUlaVLvx5yFogGf2lA+YmfHMp9H54or6MeDKqAFAZlwejF1668t2jzx9clW/Dfw
	aPyByivCZZP9CqHifrFNlULYylzb0FdoDJZ4X3dJEj2GTcQVy/9fh6ShNFHao73M
	UtNmNRQqJb58Aetj7fISh7vgDoJfAl0J6QUN2cbZwN5THHqMoA9wWDDdYPVgmkVL
	b+0tpH4nOSc1JF9qwC9sxGHzT2ZkA7DZNcMUYVWfZHbGtIu1vW/aud6Pcpl4Cgqk
	VR4isz8qlvAYsUJwjPKyP8vlpAj0e93rBpktG86jlQ==
X-ME-Sender: <xms:6mvFYuyH-WYmBSlHfjn2Zlu40-DCDsAGJc-AdP2Glvdkcg4fs-MYSg>
    <xme:6mvFYqQD40XIlexb65m-abgxzZXC9wWA8KzJzZgXqIqsGBP0Y0Z3bYb6W5WbhmcqM
    SP3iKgszBsbso4>
X-ME-Received: <xmr:6mvFYgU9fkFsBmKouZlNgF0jqvoubNjtHtqGqma04jdTxBSxvnGH0um7zhvc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudeifedgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epveefteeutdefheetkedtueeuieelheekveduudekfedvfeelffettdeltdeugfelnecu
    ffhomhgrihhnpehgihhtlhgrsgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:6mvFYkjlESnaxTbYUY8E1C5VpCVSblw-ytqPN4gzSpzQG1j_jmgdsQ>
    <xmx:6mvFYgAUQZtK_-DeQQmLgHiaBkA2WHvz3o8SubJ6s_HRnKddLk32SQ>
    <xmx:6mvFYlIglINM-h9XFZBdafSL-8sDaQj6Pyi3YJRkm-aoNm6YhHsxDg>
    <xmx:6mvFYjOEAgeaLKmahVdb4NUKOcy1kXjgW9TFlBc_P0up_a-yhkEB_w>
Feedback-ID: iac594737:Fastmail
Date: Wed, 6 Jul 2022 07:02:59 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YsVr51JzzpR0A0N9@itl-email>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil>
 <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
 <ta390o$qi2$1@ciao.gmane.io>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eCguRH52+lbch0K5"
Content-Disposition: inline
In-Reply-To: <ta390o$qi2$1@ciao.gmane.io>
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

--eCguRH52+lbch0K5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Jul 2022 07:02:59 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

On Wed, Jul 06, 2022 at 06:10:32AM -0000, Tavis Ormandy wrote:
> On 2022-07-04, Jakub Wilk wrote:
> > As a data point, if Mutt has pgp_auto_decode=3Dyes ("automatically atte=
mpt=20
> > to decrypt traditional PGP messages") in the config, it will trigger th=
e=20
> > DoS when you view the message.
>=20
> Hmm - I think you don't even need auto_decode, because x-action parameters
> can trigger automatic decryption in mutt.
>=20
> There's an example message here: https://gitlab.com/muttmua/mutt/-/issues=
/405
>=20
> > (And it seems that if you lose patience waiting for the message to show=
=20
> > up and press ctrl+backslash in attempt to make it quit, it will actuall=
y=20
> > hang forever.)
> >
>=20
> I think you need at least something like max-output 104857600 in
> gnupg.conf if you don't want trivial DoS pranks to be possible :)
>=20
> Tavis.

I don't think this one is impacted by max-output.  Worse, I was told
=E2=80=9CNot a bug, sorry=E2=80=9D by Werner.

Was adding compression to PGP even a good idea in the first place?
Becuase it seems to have some of the same problems that compression in
TLS and SSH do, not to mention creating a trivial DoS.  If it were not
for OpenPGP being an archival format I would suggest ditching it
outright.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--eCguRH52+lbch0K5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLFa+gACgkQsoi1X/+c
IsEEFw/+NuX7ouTI+Gcv7HLrpHePXFKxuSZg5X6JwymDAXGOiQ8BiIVqy9v734Fq
KjkX0KNEey4EQ6zCQdLvnfC3+l0OSMaJOuvgD7/KzJA7fJqt+sIZJ5h7aVikaPRK
xhlW3PCALnb6ggMzMASBiDwwdgAD85Sw8UJAeSMpqNQ8CvZmfNw5It28hK4T00is
z9u1EAxgUdDYnsNyLSyRTdgjeGxm8sDYTsyK8b/IU8PoMndUSFTM5LDhAiITTB4f
XmqJXV6CPDZm5PgHDbsOV4nKf7uShkahG9eNZYALbfEVGzR3h2MCwmUnnGOyv/2c
ikA3rLLS1LIW5jShx3XatfyG3efi0Y4QIhZdK4ft71BpH5Y3DjNoHrWT6Zy8NBrN
IXocj5c6RfafTVsWxu19ekx1oICIW/f1SLrXmdPC1bQ+NkMwELmnoctrMiVNAKYj
4bJT+/o6pWYer8pW8dQygN//DqtCax3kMFP6rAtBLc2BC2Bj5YSvesf1w7B5icBh
WTdBjMrywRZV5IJbLVWxpVVv9779wjlAPF+tXWWUz5JjG9CZxwuWcA1EXqWrUMwG
XJeyj8veZkwX6dEXDfkj21F2mkuKvVymCaAUZUkOWIQ2nn7+qR4xjMVsjftpLwG9
k0Qcfd3d3Hcv6kKgujiRjiPG4vxGK9oqi63B1pbcruIXYM38KZk=
=Zczt
-----END PGP SIGNATURE-----

--eCguRH52+lbch0K5--
