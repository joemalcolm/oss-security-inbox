Received: (qmail 24539 invoked by uid 550); 29 Sep 2025 14:20:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32258 invoked from network); 29 Sep 2025 03:50:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; s=selector1; bh=7ucJOG6tLl
	VYg6Cs55cyjwevlMNmCdC7xf5LXaYMG6g=; h=date:references:in-reply-to:
	subject:cc:to:from; d=openbsd.org; b=Gg3h3KMWNra55aurf4xw3TQwbkqXANXZz
	xtKzmGnL3x0KrJ4X9U/6e9Esm9sOE0cUM2dywwf7syg9OV/zA4CeAX1xNUDfB2h9WtIsCC
	XVgqNJ74XU4D+5DF7SybpG/WDnJhuMEqeNfVgmt5isQbjCJ31una5wZqzPk+EeKeGD1p+E
	ydV6CtOC4X2ZNgWQse191NwD50y76Z1maGnGO++TurT2FWTUgQpl9wRZ/87Iz8qkAxv0D4
	fClEBlqIbclAw2w5AUHRWxQeuF0+h/GhqlyKcDf+QgNNBOXhWNj6lWK67hkt6UQDVKsHI5
	rmUbGEU5j7nQUz1sQmVOsZU4ZA+ZA==
From: "Theo de Raadt" <deraadt@openbsd.org>
To: Damien Miller <djm@mindrot.org>
cc: "Adiletta, Andrew" <ajadiletta@wpi.edu>,
    Solar Designer <solar@openwall.com>,
    "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
    "openssh@openssh.com" <openssh@openssh.com>,
    "Tol,
    Caner" <mtol@wpi.edu>, "Sunar, Berk" <sunar@wpi.edu>,
    "Doroz,
    Yarkin" <ydoroz@wpi.edu>,
    "Todd C. Miller" <Todd.Miller@courtesan.com>,
    "pgut001@cs.auckland.ac.nz" <pgut001@cs.auckland.ac.nz>
In-reply-to: <9c5ab4b0-4ddb-ca3d-85e2-d47f058f7f73@mindrot.org>
References: <92a89d5d-e0de-c713-e7d2-83f971574eff@mindrot.org> <20250923032113.GA14348@openwall.com> < BL1PR01MB772308134BF946DF07159A05C11CA%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <c5d66517-f422-1fe7-03a0-d79cf4af1fbf@mindrot.org> <76091.1759068746@cvs.openbsd.org> < BL1PR01MB772375CA93AF5608280A224FC118A%BL1PR01MB7723.prod.exchangelabs.com@mailhub.eait.uq.edu.au> <9c5ab4b0-4ddb-ca3d-85e2-d47f058f7f73@mindrot.org>
Comments: In-reply-to Damien Miller <djm@mindrot.org>
   message dated "Mon, 29 Sep 2025 12:44:33 +1000."
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Sep 2025 21:50:13 -0600
Message-ID: <56111.1759117813@cvs.openbsd.org>
Subject: [oss-security] Re: [EXT] Re: [oss-security] CVE-2023-51767: a bogus CVE in OpenSSH

Damien Miller <djm@mindrot.org> wrote:

> On Sun, 28 Sep 2025, Adiletta, Andrew wrote:
>=20
> > Theo,
> >
> > Even after two years we stand behind our paper and the contributions
> > as outlined. There is nothing more natural for any vulnerability
> > researcher to evaluate the most widely used products.=C2=A0If we had do=
ubts
> > about the claim or any of the POCs, we would have simply not included
> > them in the paper.=C2=A0
>=20
> Again, the POCs were not against OpenSSH but your modified version and
> you did not demonstrate any of the techniques that you suppose could
> have been used to make the attack viable against the unmodified product.
> Your abstract therefore clearly overstates the extent of your work.
>=20
> The fact that someone filed this CVE based on your paper demonstrates
> that it is misleading.

I don't think the CVE was filed because of the misleading abstract.

Rather, it was due to the misleading contents saying that OpenSSH is
vulnerable, with a large amount of effort shown, and text explaining it.
Many readers will finish reading without understand how extremely
artificial the demonstration is.

So to refresh -- OpenSSH is not vulnerable, but the paper says it is.

Downstream OpenSSH in Redhat, Debian, Cisco routers, etc etc are also
not vulnerable to the artificial demonstrator.

The claims about other methods lack proof.  Demonstrate those methods
working, or retract the claims.


OpenSSH was probably not chosen as an example because it is widely used,
but because of the strong academic reputation to be collected from
publishing a viable attack against OpenSSH..... except such an attack
is not actually demonstrated.

Many of us understand the zeal to explain single-bit flips against
in-memory variables with value 0/1 versus the benefit of variables with
greater bit-spread, but the bogus OpenSSH side-study is a distraction
which should not have landed in this paper.


Andrew, I think your proposal to change the abstract is not sufficient.

I think the paper needs a retraction of all the claims against OpenSSH;
alternatively you could complete a demonstration of those described
theoretical methods working against a real, unmodified OpenSSH, exploit it
and become rightously famous.  At the moment, you are becoming famous
for doing this wrong.

