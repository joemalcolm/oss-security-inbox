Received: (qmail 26205 invoked by uid 550); 27 Aug 2023 17:41:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24555 invoked from network); 27 Aug 2023 17:40:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1693157985; x=1693244385; bh=5QCZ+pLPc3nYkQi8Y2xmH0zKtUGZUmkNEh0
	XXjJwwDE=; b=Gguur9fPz6VQXEccM7HU1znAMl6G2LR/op5M1wqD9X63iY79Ssr
	Qn14ieDivnTUNBcsV4zec/mzXN/EEv3VS7vZVkrkgOM+B+r+buhuYwJm1TvLqfNx
	MGcP2T8hHykhdz1O4h44RKpvcDgzOMn67hZi58zLI7xD7yOHyppO8Nj94I2x5fcl
	Bc+pnDSZbHDEnar7ePkb5WY6F3ivi76XJD2yxfEDMCYV30oMv7gSx/2cyPfvJb+O
	muls6/SMTq8BxXoZJPtVNPasoZhP4I02hjUeQo421P9TNTOAxCX+Azk6hAXGPlSV
	T4ftta/mATtcKrNyWUPIEI8mqbgbuuri/MQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1693157985; x=1693244385; bh=5QCZ+pLPc3nYk
	Qi8Y2xmH0zKtUGZUmkNEh0XXjJwwDE=; b=fT1bX8FMRpksKYeyMruNSImxgz7L3
	7Y7rMTt0S7wRxtARnQ8RVsx6HLOhgXbMKITdoeFMoBs0DOmOL13O8wcFRaAStsoA
	ylr3SLSEcJXLqs3oxX8xKYlBudCfvL13CJCBIzypmpVAG9tMapnWtjx0Jn+LqzYj
	46Ho3pDjkjAfo6rF40uiqV3VpwDwyrXZh+jgWzEv4zhEAXrqplZ4eDT46+iKp5eo
	WlMZIaRay7gGAOjvRf2zQvGQ6yk/JwDbe9Sp01ZHXCrkp10gghqHi2nzBmI4H7fZ
	6fNS+OjTeGySQRAZ8zArkbxyTfzLbKMcYhEEmel/9pvsSqDbxV0CUUtvg==
X-ME-Sender: <xms:YYrrZNpYOdvlD7XAKAwWBM6cB7Qk2122fhuIj0Byz3Cjn6aQgxBhkA>
    <xme:YYrrZPrMLBoiMuIwPlMVq5BouOrvwrcx0zQEaTZmKuwbSNXQoY3KeWfPpZp8secv3
    B7I9nTSWPejCcY>
X-ME-Received: <xmr:YYrrZKM6FB_X9h1Bc0zLUFmKsCFW_EGEJv1KngFaYrR654cvIMnTQnuCpfKXIx_qaO9ed_M-t30wM_3OzDVzYnDXRP1kCo-5PhdV6Bd8J_PEwb8W>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudefvddguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeviefhteelffduueetiefffeeggeegffegtddtgefhkeekvedtgefgvddtuefhuden
    ucffohhmrghinhepghhithhhuhgsrdgtohhmpdhunhhiqhhuvghtohguvghlthgrrdhphi
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:YYrrZI7VchVa2EH2dg-xCwugPxrIjgjqIPMZbZVdWYlAyX_zrAN83A>
    <xmx:YYrrZM5F7oxKgBM0LFl7hCJXR1QVbX6GNI2YfhipNA4mLSZvN7DtxA>
    <xmx:YYrrZAhp-ZJg5Dj1VkSCefK0weMe6u3mkt-Pm5Tcxpp9xBQEVDI1Tg>
    <xmx:YYrrZOFEZqqcZp8GFyCKRx9Ah9Sa7TySUh1eGAdZCLebyZvuQ9osXg>
Feedback-ID: iac594737:Fastmail
Date: Sun, 27 Aug 2023 13:39:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZOuKYMvCQ8EqIx4C@itl-email>
References: <20230825222359.GA10424@openwall.com>
 <20230826023129.GA2930052@millbarge>
 <20230826214914.GA18442@openwall.com>
 <CAFswPa8ERS8LOgMTk_95Dyb7JO_z_82g1zJx9dUP54t1R8ZWGw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jHOKeUVDU6cqtMiC"
Content-Disposition: inline
In-Reply-To: <CAFswPa8ERS8LOgMTk_95Dyb7JO_z_82g1zJx9dUP54t1R8ZWGw@mail.gmail.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--jHOKeUVDU6cqtMiC
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 27 Aug 2023 13:39:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

On Sun, Aug 27, 2023 at 09:41:22AM +0200, Eduardo' Vela" <Nava> wrote:
> Hey!
>=20
> I'm currently on holidays so sorry for my briefness. I couldn't miss a
> chance to comment on this.
>=20
> Our team at Google is working on generating CVEs for Syzkaller findings.
> This is not trivial.

Do you plan to generate CVEs only for fixed issues, or also for unfixed
ones?  The latter might be better, as it would reflect the actual
security of the Linux kernel.

> On Sat, 26 Aug 2023, 23:49 Solar Designer, <solar@openwall.com> wrote:
>=20
> > > If every syzkaller
> > > issue received a CVE automatically, we'd immediately remove the most
> > > noisome posts.
> >
> > Is every syzkaller issue a vulnerability?
> >
>=20
> No, they are not. Most (all?) are bugs, so they probably should get fixed,
> but I don't think we can claim them all to be vulnerabilities. Even if we
> did, we probably should help NVD figure out severity for the CVSS or they
> will just have to guess randomly. Figuring out a criteria for what is wor=
th
> a CVE and what is not, as well as deduplicating is probably the main bulk
> of the work here.

The issues also need to actually be fixed.  That will require that
somebody (Google, Red Hat, Oracle, or someone else) hires additional
people to do the work.

> > - Ask Red Hat's CNA to consider setting up an automatic CVE assignment
> > >   process for syzkaller issues. (Red Hat's CNA is now serving as a Ro=
ot
> > >   CNA for FOSS issues in general, so it feels like a plausible place =
to
> > >   put this process. Google runs syzkaller and has four CNAs, perhaps
> > >   one of them would be a better fit. Maybe the Linux Foundation could
> > >   run a CNA for this purpose. I'm not picky.)
> >
> > This is an interesting suggestion.  I think we'd first need to determine
> > whether this can be automated at all without ending up with CVEs
> > assigned in cases where they shouldn't have been per MITRE's guidelines
> > (e.g., when no security boundary is crossed in proper documented usage).
> >
>=20
> So right now we have been experimenting with this and want to start with a
> basic heuristic to generate OSV identifiers. If it goes well with OSV we
> may start generating CVEs.
>=20
> We analyzed crashes and concluded the only ones we are confident on
> generating CVEs automatically are KASAN crashes that aren't null-ptr-deref
> https://github.com/google/cvelist/blob/cve-automation/fuzzer/syzkaller/un=
ique_to_delta.py#L51
> but we will revise this criteria after we have a first version.
>=20
> Anyway, as you can imagine, we know generating CVEs automatically can have
> a significant disrupting effect on the industry as a lot of the regulation
> and process depend on it, so we want to minimize the hatemail we'll get.

Much of the problem comes from generating a huge number of reports and
not helping to fix them.  This causes upstream maintainers to
de-prioritize syzbot reports or even outright burn out (as in the case
of Darrick Wong).

> Anyway, for the curious on our progress
>   - https://github.com/google/cvelist/tree/cve-automation/fuzzer has some=
 details
>   - https://github.com/google/cvelist/blob/cve-automation/fuzzer/syzkalle=
r/output.json
>     has the output of our current heuristics

Does this include unfixed vulnerabilities?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--jHOKeUVDU6cqtMiC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmTrimAACgkQsoi1X/+c
IsFvfhAAoG6Zh+5LMvsxEFHD55vGhjjiVwYT3CBsaju9/cCok2A78N3JLGj0P84u
AjBGCnGlNNAJD1fZyJ92X2OS3GHdmr+2LHU3YivIeGFN3y4CYj5fUvldmATT1/PP
57zvMFJqfsl2DKcxAWJo+dXe56Swy+16XX/DuXCCyUzaFz8N9od6yLRplCsEuFLA
GB/kyJpL2KWEQjXnqIMPUwgYsnfR7Kf2qKK3Z7uzUUjA6zgbllhO5cl05RY/Yo8Y
lG6PCORRK2iA+f0x4ka5hJ0vPzePJnXtM/ZoPeaR2uue32vHfmFvW0t6TACpN3f3
111bRUdisWZOGMI0uHmaBmiPfy1Z1Lf+neurgh8AS3GlA6Z59zXobDnYnJ7+FiqQ
2RlJb+otPu3TPd5UqdO+4xGCqsoVDkFN7G8qfAeMFctfrHVaMMXlgrkcwNtwyB+Z
yQO3xGZGNmzJfyjwYKVsJjjKazRypxGexNSde8mRa4N5DUp/DHnUZSczbSQngVWH
HRWf/xyTVI6WnLuBCobk/wXIIOuYsPtgQFAvg8oAKgJ0uGoJsdCxlnKTd9v6X4Pe
zENDRp1qLLBUCf1r+goOU1QbeZzRRiXAasl+hkWuhkrjBzOPaTh2hP05npc645FA
6itfqYR/idL9M5ntSy/GL73hEtPTXqZi+fBGvrBjHbGwNR0DPI8=
=ODy4
-----END PGP SIGNATURE-----

--jHOKeUVDU6cqtMiC--
