Received: (qmail 11783 invoked by uid 550); 1 Oct 2023 12:21:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30106 invoked from network); 1 Oct 2023 05:16:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1696137379; x=1696223779; bh=8Wp1ZWQD7WbQIfF/HQZVIZh8liJjyqOTlcf
	mBRZDfKY=; b=qB4qWJUJ930zjIV7EV+9NniVJCglCudmm8RrMGGCNl9PaQc6QKM
	ldA2STDfmScIeZVHzvEFi8I+RVEz8UWRNoX0cHFcGdUx7C/V9w4iUC3KGSWiRZXw
	cfXkORusbeGuYUXL1ov3cpfEXxea4sZoNs8X9ovMQunRLgC45FsqczNv10ysFoRk
	NgyZp9Atohw0pZ8RHIP3/zkJeQtMXSAdAoo6Ahjeb2LaIrNWPoYp/kW/M+7JyxNU
	aYSOxECxfo1f1wM5RIUgVy6xMksqL9YYsjB4wgxykVu9nGhAIdFtFc1HBgxlyDVm
	Lb8nKRkGYBMFCFI9ARTO4WI93hjrVqcwANg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1696137379; x=1696223779; bh=8Wp1ZWQD7WbQI
	fF/HQZVIZh8liJjyqOTlcfmBRZDfKY=; b=V+zaPBsLCg4O20eitMSCsimi77DnT
	HUXQprkVF6yijMmrZvfuPHlcHdhV15fpjOpPNTaIP4z4sbOJamO82FD1uONYIJjQ
	hVSAor9RSlCiGmpNT+iDVzhedTOah2Sf9cML6crfqnhPrttK+nGqJiEXLJIpC5p7
	+DtBu8N+Zsa47stTKcjCb/Bj01yDg7vdaw4N2ZJkPyHnN/mCVlZabklHcRYkHh/v
	pmGeIES/6yMJ5gNO6bEXeJ+cxpZfhjhxGKchTNz9mRK7s+i2Lgalv7xqe4p7ELKW
	X3wTioFFk9961tH7KpiTW1s4WN2OIXmUCrD/R612qsU3nEIJFfYYI374Q==
X-ME-Sender: <xms:owAZZTcZO5CtGYpFiebU5bGfemukz2UlRuCdvIX3_zwepFKqQv_UWw>
    <xme:owAZZZNCe7onw1Wh5d3O5q6-kBPLmW3xeuiYCGKb8s7W5Oog2Q1UacPcNe-Dl36O7
    8Mob3wq8GKgJx8>
X-ME-Received: <xmr:owAZZcjCL_VJ_u_pBrvx1D7dPlrbo8TsW1EODEQv0ditYa53au0a_f7ZavRO-PRiPW_qCkPg_RY25fW17NCKfzy7njqRcFT8ww37BjssxSUSMwoX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:owAZZU8LmZNUb5Tv0kTHB-KuzAzjWX_QKVDjWws5J9md4kW92uMK-Q>
    <xmx:owAZZfuOaoOHTj8HVl6eIGWnxavSb608LAs5pqcsIJo8Vq_trnVQVw>
    <xmx:owAZZTH_Hqts_q3XllH0GI1YZIIqi5obB7aSlXhSSehB17JI8qMTPQ>
    <xmx:owAZZd7TiqbQcpFYeDeEjASLvj9fKqG8bj89uXgJc5fzUffEBLFOhg>
Feedback-ID: iac594737:Fastmail
Date: Sun, 1 Oct 2023 01:16:01 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRkAokgUEw9cD7yG@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
 <ZRdyaYEi9YOZUXAg@codewreck.org>
 <ZRhUF9yHctTj5DhO@itl-email>
 <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pEQ1GQC2q28eXEOb"
Content-Disposition: inline
In-Reply-To: <36a25f2467809ee727239db10684e147e7440326.camel@orlitzky.com>
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

--pEQ1GQC2q28eXEOb
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 1 Oct 2023 01:16:01 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

On Sat, Sep 30, 2023 at 07:28:46PM -0400, Michael Orlitzky wrote:
> On Sat, 2023-09-30 at 13:00 -0400, Demi Marie Obenour wrote:
> > It is also worth noting that Rust-the-language supports dynamic linking.
> > Once Cargo supports this and downstreams (like Fedora) obtain sufficient
> > build capacity, it will be possible to use dynamic linking by performing
> > automatic cascading rebuilds whenever a package is upgraded.  Arch
> > already does this for Haskell IIUC.
>=20
> We do it for Haskell in Gentoo, too, but we have a dark secret: it only
> works because Haskell became unpopular. There are basically only two
> Haskell programs, and everything works for n =3D 2.

Why would this not work for a more popular language like Rust?  I know
that Gentoo is limited by the compute resources of a single machine, but
cascading rebuilds should not be a problem for modern distributed build
infrastructure, provided that the build clusters are sufficiently large.

Also, are the two programs GHC and Pandoc?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--pEQ1GQC2q28eXEOb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUZAKEACgkQsoi1X/+c
IsEz2hAAu6NXrMlBnU6A8UaxtU9Hg2BA0u4XIdhHIOyQKrcrJzreHKDjirT5T6Js
Eeuhazom2ojW9HzOQm1ELPe5gkJIhSEyZt9r/IVPJdmzKmTwSOc1qxEftpvHzPNU
oGfUcrVv2uU2AAKRNmFtq426EXwtTypB7XLALihRYtFwI+6oboZAcVH5WtVVPrOx
tZfKcrkqH0EebwKQ6ZDdQzxKkfQaiwGKrQMhK4PTvReoekt0g4Eo5lyogM3llmZj
APaYb0mgNpbmTvPgiykK4U9vPMuKP/19/dqBt4TSlxcej4f9j61hKnBH0leX3gPH
HpZIcYRe3oVhEFkSMRQVBaplURvXZt4DJ04pxaViMC61bznXl4v5azhJ3C3H7exn
a1emkOWqrry7sK5CzeJr2E7JHQTm5p9Nh+MCKpr2qHwjubVgWWjx12K3r9CgMnws
C+3GAlZ6LTEvnNvp4ApWGEsqbLjKLxhby/xbLAoKnDVGLylPkfdkGlEhd7OhdJ45
Me/cowj0h4U5E4tNqiADw+/LN08BBZ2FSTZWKxWUO15pwF0i6H6xGzj2IHUBUY9G
fOiQ3nSfQ6/5y6Blj0jx1pTh19lpTCsPb2yyH6VhY4/f+9Jw3ZgUc0V1vpVDaseP
qq6OJtKyTx73WJShpSzSQlBfQ9YXSsWnG7zSRLD5D5RdQGoVCnc=
=9EOl
-----END PGP SIGNATURE-----

--pEQ1GQC2q28eXEOb--
