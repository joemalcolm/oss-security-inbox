Received: (qmail 26317 invoked by uid 550); 8 Sep 2023 22:37:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24449 invoked from network); 8 Sep 2023 22:35:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1694212511; x=1694298911; bh=e9La6cj/4Bj+QaGq8PfYJLFC7E/nYqPZzyJ
	C4ltFkKc=; b=JFLRWyDLZd5vormwyhqzgLgwmdKynZD/tWv0WD2d+6J84O66uB/
	o7Dr59fHS/zcFRsLkUjb0OSAPEW+NRHC3/b1vzJrZnnvc68fqwVGPF8974tctI3N
	XELA4qiMi4gkKeny6jlsyE7ZP2hw7o8bCuWLjnM4rvKAM0bfns9Wcvm8N85jGLPO
	03k87n+IRlBDnphtUqOGDmIsP9Dbfk6tVGZSBlSwM90zGr+wiiBCWCpuPo2EpzRD
	WW/nYqL2igSJB4bDLjOte3sDPowYS+oi+0K0poY/Tljgi1w3LB8FT0VHiG/9Wh2/
	td+ggJRaGBUjdByUwZn17Ity4g39PE52RfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1694212511; x=1694298911; bh=e9La6cj/4Bj+Q
	aGq8PfYJLFC7E/nYqPZzyJC4ltFkKc=; b=GLrxuUngSc14haOq2S63bDgnS7SNk
	i4XVaT5ADs3PG0Mo5buCx28bsnO1C1OPeefvNoa5cygO2Qfk94VNDzSfxn1ielQb
	89qWeCX739wtEuo4F899TBuLzzbKriaHHEWJ88TjmGABN8tYqjkBrRN6iIitzeHV
	VoYatcX1xmbeihPyssANjAJqwNmnSYSn8fkcYsmRvl7cowlBOuq88XfJP9zpO4wr
	vr8I9Q1HCCDzgJI96Vaiy68dlELkQ1QlSx/NkTFWEG/lN9LgvswtQ87b0q3iK23p
	Yto1oEvy7N7bD7hVv9Je5WPhRp/pbBWOLYKGdV2N8+XcPaSYl6M4lsOnQ==
X-ME-Sender: <xms:nqH7ZIQKjmScBltDNAw6ikHS4cM_L7__CYWXNTAFZcoiESftqOClKA>
    <xme:nqH7ZFwuk99Q9DjrcJ2mMd9niX1xacc4WmmI36GT2jVBDyJIlEmA1xfxC2UZyXMZO
    E7YJuQo1xok3wQ>
X-ME-Received: <xmr:nqH7ZF29genZDtJ5X1CKKgaF2ddMzuADvheZnnB-mOeTPFinJaNggDfVuQ8d7ed1Ai3M7gxQxhlGj8Flm2evGH8KOxdEhmQgOsFBk8KRTe8iPlBa>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudehkedguddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epffejleegffeuteejffekleekffegheetudfgvdefvdegvdetkeeuieffudejjeegnecu
    ffhomhgrihhnpehophgvnhgsshgurdhorhhgpdhfrhgrgheiughouhgslhgvrghtohhmih
    gtrdhphidpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhslhgrsg
    drtghomh
X-ME-Proxy: <xmx:nqH7ZMCa_nghbtv0mWXv5foOKUDG_8ah7pa2x8hCeYw_JCGFWPz9Hg>
    <xmx:nqH7ZBgotKhu-CjiRalaKD4ewd1dF6Yi8ccjZricRQi3G2cfrzBKXA>
    <xmx:nqH7ZIo-wffgGDkFTUfoHmcJ_lUe4ZPq-psJZpTmDtda5Tssk3y4lw>
    <xmx:n6H7ZMvBOzzfDYD3ex1P3wPB_uB06vXCMWON7LIy9yJm6CDyrVadKQ>
Feedback-ID: iac594737:Fastmail
Date: Fri, 8 Sep 2023 18:34:52 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZPuhj1UJpvl0hZCH@itl-email>
References: <50dfd9cf-a4c8-9b4c-6419-91f68ca45e88@di.uniroma1.it>
 <ZPucT1zmygLfWnPR@t430s.bluhm.invalid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HNWG7965Z1baehmS"
Content-Disposition: inline
In-Reply-To: <ZPucT1zmygLfWnPR@t430s.bluhm.invalid>
Subject: Re: [oss-security] CVE-2023-4809: FreeBSD pf bypass when using IPv6

--HNWG7965Z1baehmS
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 8 Sep 2023 18:34:52 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-4809: FreeBSD pf bypass when using IPv6

On Sat, Sep 09, 2023 at 12:12:31AM +0200, Alexander Bluhm wrote:
> On Fri, Sep 08, 2023 at 07:48:21PM +0200, Enrico Bassetti wrote:
> > A FreeBSD with `pf` as firewall for IPv6 traffic and `scrub` enabled to=
=20
> > reassemble IPv6 fragments is vulnerable to an attack that uses a crafte=
d=20
> > packet posing as IPv6 "atomic" fragment to bypass the rules.
>=20
> I would like to mention that OpenBSD pf is not affected by the bug.
> As I am the original author of IPv6 fragment reassembly, I have
> just added a regression test to show that our pf drops such packets.
>=20
> https://cvsweb.openbsd.org/src/regress/sys/netinet6/frag6/frag6_doubleato=
mic.py
>=20
> This behavior seems to be present since 2013 when I added support
> for atomic fragments to pf.  The relevant code is in OpenBSD
> pf_walk_header6() in pf.c.  There a bunch of sanity checks are done
> for the IPv6 header chain resulting in packet drops.  This function
> does not exist in FreeBSD.
>=20
> https://github.com/openbsd/src/blame/cc53a24ce58eb2212822060db742650de278=
7ee4/sys/net/pf.c#L7076

FreeBSD should include this in its pf, and probably adopt a bunch more
changes from OpenBSD pf.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--HNWG7965Z1baehmS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmT7oY8ACgkQsoi1X/+c
IsFRZxAAxDPbPmEMNSYmX0P4f9OdYY3yveDRScIr2BMozpxyOhGhYqvXHLZDnYf+
ZaqetQkH2J/Si7tGQVh4dXvSLgIPoa5OURpHjI0H5DE8vtg58KzVVCCfJQow9mAm
rFyFTp8jRwBLLfxyL2NDQOjLh2ozpWP/niLgGMXil4afOa/t1ZaPwoU5mSWHAZ3T
AO57Qy8MrgaZ9aCC2akSll3jJr+x7tiGfgHBOv7+7Ljg9usP2C4mFXtVOxT7BPmU
6HsZDjAkdIdWIm/ogFW7sClBNr8WQOnqAmUDBOKSj6Tn3W4E+8u2uNCIlZsDydc2
1ys7f0E74qWKbnMaPyz1PpMgSsQ5ysoJhi08UjWAopQ+6PNsZ7S6DckivhvXK1c0
Kw46yTBCuvVrOahAqGAX5NbXnMLAAvmYXI6PLuEQNKhKv6E8yARXfnzV3loUgBQL
lR657lGFIvZ8FgHsVi5i4duiMUiV46kbQ6HqeDtb0ywSztSZm6NZArciTIOlrBlR
2kCq68t97LxtlbvtPlmxPgy/tNGuGBaQ4BOj+/Hrl0qg4vNqVvBHQLWzf+4o9y4M
Y/ENYhRHFffjAQ/nDnb82sATQ98CmNt3zu1M2QxI3jJTRJYfz54zQ2SDGKIAKcoh
bB41TsGgA2uckrGgVqFs+KjuXVWnPwYT2QdcSEZtslfp/gliGtk=
=I2UD
-----END PGP SIGNATURE-----

--HNWG7965Z1baehmS--
