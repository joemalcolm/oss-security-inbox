Received: (qmail 27724 invoked by uid 550); 30 Sep 2023 18:58:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22080 invoked from network); 30 Sep 2023 17:00:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1696093210; x=1696179610; bh=0PNtYwlfPoK4Cmrae3r5iBdrOKtoD9ITila
	GTych8Qg=; b=pHzdtRHI8JLq32Ha5Z83K5N3TY36olGPtS/Vh5qsgPL6rFnJ1NF
	gbkaqMxpU3bSsa1iu0OKA1JkK09FB20HD3UZyVoivv2l4Pl9ov5+to6crcGrOC+o
	okLP3GO5o9UTr5GuCgZrp9vt+uexaJdgr7j3lhbqZ1kV6IYrkHvbrbXgnZ89MRvE
	NEU88atjRVrMMP6oRurQAcN4aTlBApq+OPYor8XhtYjZkxKGPjF19INZXByyrOyW
	dMlOjLCtWpknk14JdcjifTntzAkVquW3zNCFZyXQf1Vit8IYFiw9kWEmb1i2sZ6A
	L/BWcUYf23MhvLmOvayGMMqiv2udwtqAOfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1696093210; x=1696179610; bh=0PNtYwlfPoK4C
	mrae3r5iBdrOKtoD9ITilaGTych8Qg=; b=MmqbR4XhnAIR8QR6XC7zg4wdCGn/O
	IenoyoU1U2/q0uVporDVCZnjqFhpnWLwxyMe283Fv0FPGMCp0ckl2mIBDy4hXvsE
	wKP0kXYBakzkDM0xuBg005Y8LA+cO/WHQNEqE9d6VOja+BkcefwEH7QoKK0czLwq
	xYVuuyUfYppa3WaTQ/KIUaY8pFShEjwebciT/Y7kPwal8X77MDGZugRCBKZNA9MI
	dXUppGOtu8An8lJEsVFj5r7GHqR+Uf1f7NucjqkDBMZtlwgvO5AaQc2jjcHiQ7RI
	KjS50Tyjk6/1wdNMNEGogwFV/O8VOn+DzaGPUZr+xPC/SF4Uj8EbdOgQg==
X-ME-Sender: <xms:GVQYZXBk1ZPWW39-4zqnEeXg3_u37AgaOggej-5FTZeq5p57PPY-Ew>
    <xme:GVQYZdh_TqlIyHMLNU5DDS5mJeRQm9djD8H6CSsCkll-UKFklH2tE1k811mwScat-
    TWaJLgh_euVMe0>
X-ME-Received: <xmr:GVQYZSnXyL_AmaSPHdqSkPG0E7ktlthyn_mFxeW7rTHysxrRrOh5O0KJJGD4pbSg4nhCwsXsuj_BNsj373lZMS_VsNxj-4Np_Lz04HohfbDbjTth>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddvgddugecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:GVQYZZzegUZocYxS1hiDi4RlsuoY9J_J9n9mfzdS_cs89Nh1afTIOw>
    <xmx:GVQYZcS0X2-QwbF5ng2cWexvtwbtPgNmkikX8Rx-cYBPybGI_DImMQ>
    <xmx:GVQYZcarvoXu2VYsNhvqoLz8m0Fy-Fv0kzjIRmZnu3zZeqRFGoZpnQ>
    <xmx:GlQYZTftYzhe-pHyZOgzjd4MX5poSWDCUJTp2wFhF06rOBYXujI-zA>
Feedback-ID: iac594737:Fastmail
Date: Sat, 30 Sep 2023 13:00:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRhUF9yHctTj5DhO@itl-email>
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
 <22398fb96f04bf431b3ed0e4778e1cfcd64046ea.camel@orlitzky.com>
 <7f60d2e7-59ca-13cd-9da1-473bd70dd5bb@juniper.net>
 <3708d220187cfe4a2f03f53067edfd15f1cbf8b5.camel@orlitzky.com>
 <ZRdyaYEi9YOZUXAg@codewreck.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="L+s4K7cHHO/ETTBj"
Content-Disposition: inline
In-Reply-To: <ZRdyaYEi9YOZUXAg@codewreck.org>
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

--L+s4K7cHHO/ETTBj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 Sep 2023 13:00:03 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Rust programs in distrbutions (Was:
 CVE-2023-5217: Heap buffer overflow in vp8 encoding in libvpx)

On Sat, Sep 30, 2023 at 09:57:13AM +0900, Dominique Martinet wrote:
> Michael Orlitzky wrote on Fri, Sep 29, 2023 at 07:51:12PM -0400:
> > > There are workarounds like putting all of your Rust code in a single =
dynamic
> > > library, but that's obviously not ideal or always feasible. You can a=
lso avoid
> > > the Rust build tool "cargo" and directly compile dependencies to shar=
ed
> > > libraries with "rustc", but it's not easy to compile Rust code withou=
t "cargo".
> >=20
> > This is the biggest problem. Cargo is the standard way to build rust
> > projects. Nobody is shipping a ./configure script for their rust
> > project. Cargo is what's documented. It's what everyone uses. It's
> > baked into all of the tools, the books, the domain names, the clever
> > puns. It's also a bundling tool.
> >=20
> > Without ABI stability, the cargo approach was necessary to avoid
> > constant breakage. It's unreasonable to expect end users to track down
> > every rust program they're using and rebuild them all manually every
> > time a library is rebuilt with a newer version of rust. Instead, it was
> > decided that the blessed way to build and distribute rust projects
> > would be to bundle the world along with them.
> >=20
> > Except, now, this is embarrassing: the only way for people to get
> > security updates is to track down every rust program they're using and
> > rebuild them all manually. This further presupposes that someone is
> > actually looking for security vulnerabilities in the old versions of
> > libraries bundled on everyone's systems. And that every rust upstream
> > is aware of every vulnerability in every dependency it bundles. None of
> > that happens.
>=20
> For what it's worth, fedora is working very hard to improve this:
> they're still rebuilding each crate everytime it's a dependency for a
> program, but they're shipping each crate (source) only once, so when a
> lib is updated there's the tooling to rebuild everything that depends on
> it.
> (And, if said program no longer compiles, maintainers get the fun of
> fixing it or contacting upstream to report the problem, hoping they're
> OK with distributions basically ignoring the Cargo.lock... But I think
> it's better from a distribution point of view that e.g. nixos that does
> respect the Cargo.lock, as that means dependencies never get updated if
> the upstream doesn't pay attention as you pointed out)

It is also worth noting that Rust-the-language supports dynamic linking.
Once Cargo supports this and downstreams (like Fedora) obtain sufficient
build capacity, it will be possible to use dynamic linking by performing
automatic cascading rebuilds whenever a package is upgraded.  Arch
already does this for Haskell IIUC.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--L+s4K7cHHO/ETTBj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUYVBcACgkQsoi1X/+c
IsGMPA//dGFz/IjYiHYpfMGi8jRDgrcDjqWq5rnc6r1gvcktfJVUf1M+DI750Bd+
/3yOsOMDyERhF6Gse4LNvc2jMb5K/89sMXbCZAXs/HbaU2PoeXuSKfW5WaxMLV3a
dB25zPv9YArGa/e/CQgh8btjmge9twRxjTFc+7mnn4e9XtpxQQoDPnG5byArTmjM
CdKWJpfQz9+83yB3HA6gSUiXUGHex7ogovyWJGwrWn9bHb6GT4gDbg9g4OUpdOZN
7Rn/QSKv97FlM5o79jrqoqsljs2yzcnj3qLOAKxUAWLm7NV3MDmsbQIlYcg20AW9
unix4UfDnYrMxaSPJdDmQpmCYoqfIhYMF61SGKrwVwGn+kJ4lxcEWMeHnYRmbugA
i8YrE+vHr2fO0r2F7D/0luHHfYBK6VoKt7C5wMGd9702Wl/PbjgieaOdEOm9wlZK
rpeBFtvqW3emK2QuLUrpI7XmZsBRGM0IPR4MrN80pyuQMCOD/ScSz/w++kegWdkX
6mRMkKOfUeeGRFLf/tVd/iNK6GSQSXXwwaFsOnZv8NriVGU60JmZaNY3YS9wQRVp
9gDWp3rGpYvG7PELyNDUeFTZ8KzRn9kgyyWVFQEhxjEusGk6aJYL90d2Q+zuA4fb
jnoe5bSvEriADJYsL5m4ABaGjxFQKPVjGvxoVi9woLRr8QFnlZU=
=eU5b
-----END PGP SIGNATURE-----

--L+s4K7cHHO/ETTBj--
