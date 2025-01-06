Received: (qmail 18069 invoked by uid 550); 6 Jan 2025 23:03:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11792 invoked from network); 6 Jan 2025 22:08:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1736201275;
	 x=1736287675; bh=P2amy9avhtyLEVjWEaq1L6EquLsDJplLopN2Jconp38=; b=
	qGaIsfnH/7wJuz+US2cWNdjhSZEdPaMMdKMq+kNyJMJGsBmkxdB7/EDcI3wpp3sa
	Xzcx8tzNEjzQe3iD6OwrWjsqewxGDvTCbOO/RZjVP28DK1kX/L3k9+7sP6e1w6rt
	oU5kgd4e9yEE+zO2RNkHVXgEVlfMdBOnMwS86v8XuODH1MTbQrUjFCx2LNEiQe87
	rH3aXWedFOhcjieCfDSFwCF1tWNc9w4QW8QoywKAhCB1oPkWQoZpA1W83v6Sat0n
	MyZ5r+3QOjhNjEfACoFSgsJIgHqP/pma6Hl2rNCQ3HA6i+fhLoUeS8AWh7zjfhsd
	caRhzTAiycAxsF44VuDEwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1736201275; x=1736287675; bh=P2amy9avhtyLEVjWEaq1L6EquLsDJplLopN
	2Jconp38=; b=s8mSpexSmxAozg3vmpz1sYVsFpFwtFITLawjRO29d1+Hb0KMHQL
	b+SDwgJ2k8016F3RUY3D8S8vxCjV9Lq2JMtGxGDoyOuVlM3p7yOprA77OVvi7WzL
	8JLMgA80RNdHco8f4huwf3ht1yHY0YK6cx2goBojElnvwFldTAXRtRSlMSN8A5QC
	pBDH9/TNS61KQA6RgNkxBkbLHotB64axDpmzxNJOTB/57Fh0ceSg8+F+AZcDzel2
	+sfdFa2VBL8TxMlbdEsRO/0XKPKTZBtdZLmI2uQKrgHZgzc0BOhWnr4dg6wT6bWW
	QymFwA/Z/HQj6nwujKwRzQ9pibW/vdFIZVA==
X-ME-Sender: <xms:OlR8Zxcw0y3Im0Zj8i0QIrSw5pqNLrk4Or3ixtkNwY2oXNXBSIJG4g>
    <xme:OlR8Z_M_Ss-VJz7Ro7DYP-yPCymnrTL30K0D4OcZ3AnJ7vnZOOA9rhlrhwSUVwgU_
    UDFd-K3Rq6m_cY>
X-ME-Received: <xmr:OlR8Z6jkdZ2bgT5fUs31Hn8m4XPjQv-BHidkYIuoBmYDi8UpzC9bLruLUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudegtddgudehjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    fukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgs
    vghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqe
    enucggtffrrghtthgvrhhnpeekteehjeetjeegteelgfdtffffgfevheeuteevveehgeev
    hfeghfekfffggedttdenucffohhmrghinhepghhithhhuhgsrdgtohhmnecuvehluhhsth
    gvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhs
    ihgslhgvthhhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtohepuddpmhhouggvpe
    hsmhhtphhouhhtpdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdho
    phgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:OlR8Z6-3ZLaryBDPN0seAvR5kTOsL4ZoPHSHeFBQAR51GA5DsXCpmg>
    <xmx:OlR8Z9szgXkBjxBzrwdiUU5486SoksYko1ZmWTipxciTZq_viQAJtQ>
    <xmx:OlR8Z5FyZAm9DHOhJFQFT8ArEp7HE7TmLG3xwQ0BHm19FCmRv7qhIg>
    <xmx:OlR8Z0Of_AyVk1uC5yXylOnt0wwauwCDTtBMOZWcbyauk3QRymQ1Sg>
    <xmx:O1R8Z-Vps2mgyaBJTFRIXnd2NKlRM5GDVzzpMayVbzXZfl1CTNva1i1->
Feedback-ID: iac594737:Fastmail
Date: Mon, 6 Jan 2025 17:07:37 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Z3xUOQitjrqHgeZW@itl-email>
References: <ALcAqQAMIghdG5uEpB93rap6.1.1736154109674.Hmail.241270009@hdu.edu.cn>
 <2025010626-unhearing-dealmaker-27de@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sjymY9yLafZZLeEI"
Content-Disposition: inline
In-Reply-To: <2025010626-unhearing-dealmaker-27de@gregkh>
Subject: Re: [oss-security] Linux: general protection fault in __vmx_vcpu_run
 with nested virtualization

--sjymY9yLafZZLeEI
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 6 Jan 2025 17:07:37 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux: general protection fault in __vmx_vcpu_run
 with nested virtualization

On Mon, Jan 06, 2025 at 07:19:08PM +0100, Greg KH wrote:
> On Mon, Jan 06, 2025 at 05:01:49PM +0800, Linfeng Sun wrote:
> > Hello list,
> >=20
> > A bug has been detected in the Linux kernel's nested virtualization imp=
lementation, which=20
> > can lead to a general protection fault in __vmx_vcpu_run when running a=
 higher=20
> > version L1 hypervisor kernel on an L0 host kernel version predating the=
 following=20
> > commit: https://github.com/torvalds/linux/commit/45779be5ced626db836e61=
2e0dc638a1601abcf2
>=20
> For those wanting to understand this, that means that any kernel version
> from release of:
> 	3.17
> to the following releases:
> 	4.9.331 4.14.296 4.19.262 5.4.220 5.10.150 5.15.75 5.19.17 6.0.3 6.1
> is vulnerable, and anything newer than that (i.e. any kernel newer than
> August of 2022) is just fine.
>=20
> Hopefully everyone here is running a kernel newer than August of 2022,
> but hey, who knows!

Is this exploitable for anything other than denial of service?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--sjymY9yLafZZLeEI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEopQtqVJW1aeuo9/sszaHOrMp8lMFAmd8VDUACgkQszaHOrMp
8lPgjA/+PhNPiFsGnykWnxIzphyRaNP38vYUw/NhjCjIS3AkeGctkTpxkPKikiXc
kHQwKjfBZtWvUB4GJ2aB1zIDXEqgazZGJ0L5VcNeDcgatlUOvR/XFn7dr9Or+Tz9
kWDSqYjvswyyIbgjANuQaiYucYrMPSVdqwK7E/u/W4rQW1TX9zGpjYTJNofgMTaP
BRG2coAtrKunjZjRA4WWN7G8v+50K27vbnuMcTqj3HQhZQrz8Qwe32kz1LrJzT4D
qOxH54FCpE1qYQks7DBy6yrdtzWY03Jj1/YQKRDGqWMTv7DJeWl3hJJLbEbLI2Hi
VqcW2/SlYGQmpc13hCrC3xR22nNe9bzdSak+L/Fp5aRuIw4CXrcHh8plAaBQeJci
63JiHZDisSUwvk68+Ode2qffSaoxHlAHt2b+GSzGuwCgcStGr1mrMijRezHnXPnK
xf452EEi2R9fuiMA4RJ85fecVxLvmpxqET6+FJFMDGVDXKCRAAMGS2R1lRip14vR
9R8mNQVaEAaIKmgQxz+twZ+CoxvbHVu/unXMUsLP+gdzSAiJEKB2Z0PrmWm1VGOV
4ooVLsAuoaijp6t2hrtIeLJTFmHO8oH4AGFhcv73bM0xuLjsrFIktAgYWPnW5Pbf
H4BmuV2+V1MiOx2CZ3Sbhh3KAkyXdCkfs9sXEuAoZkOPkV6RpmU=
=ajgf
-----END PGP SIGNATURE-----

--sjymY9yLafZZLeEI--
