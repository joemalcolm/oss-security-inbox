Received: (qmail 29751 invoked by uid 550); 21 Jun 2023 22:07:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18214 invoked from network); 21 Jun 2023 21:56:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1687384547; x=1687470947; bh=baYV7+Ov1p8k6Jyjyxy8iMxu9zrKCB75OBT
	rPsWm1bg=; b=qwS+c9CI1BBk6FH7qFLpMrQ02DdX6Ff3CMxqshDrS9Rbc/hv+jW
	bo80NokPrViIItVe5FQW4y/5dc2I0cJ3wLvyURqT+rQ/SCNst1ShIVmYqR7fW5pw
	wLxUIc4dARoGNUasL2eoq9Ob0x19OKwBKT3q9jCVFXXHoAH6suEpZK96bhyzcHKj
	v6GdicXQYrPHkoewgrw0up6Bpw/TadvyvOUPJit3ul1+CMOIRDVXe1q/RcAcRUlT
	PxxFp0fMKD5zVw1SE3IwpZfBa1YGlhFIjQmJfoAX+e4lRuPx5leEwthELunVJLdf
	5qseMmu9Tw8uQqaVxc6pnzrB5pPvzLDxTwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687384547; x=1687470947; bh=baYV7+Ov1p8k6
	Jyjyxy8iMxu9zrKCB75OBTrPsWm1bg=; b=RoI9eRnxcZ6W1aJUqxWUbeIU0cUYI
	3X/9IsG31Y4wnUCzXIZQBhJ/8XA6Mp8NS6Q65b7NOcQyVO5RjMeTyx0SqBu6YMe8
	NE2MOj3Cu46mU3R8NwwHEhKLomLfEO5DoS3BA2H71O36ykx6SXmtADzRRvT9Mdn/
	GUZKtYYpptLRnFr3o1bJTnN9j5aiJN9GuwFIXb2BlRTfbYJu/MH4B3eVYHP8zDa4
	Gja+u6zI3sPug7Xw8AIP8HkllmmSZFzFgKS96KIYSWUBrLJx03/kcBVXmMztOCoJ
	M7YVXtR4jFErli+Kq9pOAMBcsziM46ffvXDNjLyNgtWjAZnO1TqZOGMqg==
X-ME-Sender: <xms:43GTZBRfHwUnfn2p2QXhQ9HDSMdcFc8QuhBo6jYLVGZdB6_D7x1AJQ>
    <xme:43GTZKyPLaSte5nf2JniiOecdW5hMypod7HGAMeXhguinBwy6_1njjkmbbz2ImFy6
    -WO-vZHu5i_0q8>
X-ME-Received: <xmr:43GTZG0Ma2gmdbW7DCl1OPr3SZNPv0SZMlPMUCwo-RClt845J8AV7JBP9NI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeegtdcutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderredttd
    ejnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhn
    vhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeuke
    ehudffveeffeevgeegffeuueduledtudfgudfhjefgleffkeefheethefhieenucffohhm
    rghinhepghhnuhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:43GTZJCkHeIYomzQZfocY5Waexf_AWX3ToMKgwPXDMjgpgYCQwMiNg>
    <xmx:43GTZKg1fLnVsynHxvJTgoVKQ2qkgmDwEWM-UdwoPX0qh2E2COf1vw>
    <xmx:43GTZNpk3jm0GuYK4uY-ny0tS7xXu9wuEJX6AJUCb7AZekLDIYVyvA>
    <xmx:43GTZFsYTds7Ov2BNMG32YIMukGpgXpe-sLO1OsvcYQJQZzENdNAng>
Feedback-ID: iac594737:Fastmail
Date: Wed, 21 Jun 2023 17:54:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZJNx4OBlGqGFgOYD@itl-email>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <CAH8yC8noq14ANkUfn9VVD0ESLey1uv_2yZCV6DX4vgmE4FUatg@mail.gmail.com>
 <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Cw2PFCGb4zkFCuQ8"
Content-Disposition: inline
In-Reply-To: <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

--Cw2PFCGb4zkFCuQ8
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Jun 2023 17:54:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Thu, Jun 22, 2023 at 01:44:04AM +1000, Dave Horsfall wrote:
> On Wed, 21 Jun 2023, Jeffrey Walton wrote:
>=20
> > Memory leaks on exit are par for the course in GNU software per
> > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
>=20
> Don't bother with this, don't bother with that, etc...  Call me old-schoo=
l=20
> (which I am), but I cannot abide sloppy programming[*].

Memory leaks on exit are a _good_ thing in general.  There is absolutely
zero point in calling free() if the program is about to exit =E2=80=94 the =
OS
will do a better job of freeing resources than the program itself ever
could.  Furthermore, preventing all memory leaks may well require
freeing resources that are being used by other threads in the same
process, resulting in use-after-free!  Again, much better to just leak
the memory and let the OS deal with it.  One can provide a function to
clean up the resources in preparation for e.g. dlclose(), but it should
not be called automatically.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--Cw2PFCGb4zkFCuQ8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmSTcd8ACgkQsoi1X/+c
IsEO6A/7BDlRjAEiYdOmtQUEYE0QIxC6v+2uqFxolOToFZ5t5VS2s0Fk5zuM3/KL
ZQiFlcgRue+6+4ZmplTLzXPdLvAZ1C/pGiuDZkaas+EP6beImTrJ6UviQ8urzKwF
V0k4G1bvhC/ovlP1Pwz+SiV+9faCpoNJ5GBPcKgXqG+pe4EPLRbfTQSAnxz0e8Ri
er+9tcUu3iHvZ/nGQFK1NfHYgbiginm/lKwi0sPwpkPSmqUsdCdc95C4cE6j4UuQ
3DS5L3c+l/YjMq192SttkmqjYNDd6JKNWPQyY/wLLaKByuloRQQCxt2JPd5aAz1x
xd+t3599/HiHIlSF2oJ3SdrDRi2VhNMLlLoIi1eXxTbM6aeVrBI/1DTJ/tfi80GG
54thPvRbW5O2CmukKlLJAVNK2EDmYBF5H+H3OuITwHa9mT357/znvM0ZZURY/hU9
evfE+pOcfAcoQeDId11iITI2npf+LSFpooOLpCDUS0sGv29OU9ulj+HxzSj6PC9s
zpb/8zGlYiUZL1h+yhdRyOeb9twLRAPw7X2SjU6gXiyNC0ZKSHrB+wzSqOJywsCm
dPkxUTKEVFD9dDKP1zqp7io8p33N+9Kt35xMfZB1+iYuTV82tdZU6mG0DkHPrc3J
jR0M9dzq2IPT7v9ZF9E1mQyJsTPGFE1SfkBBS4zYAnuqZtdSTLQ=
=RWvX
-----END PGP SIGNATURE-----

--Cw2PFCGb4zkFCuQ8--
