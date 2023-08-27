Received: (qmail 30443 invoked by uid 550); 28 Aug 2023 09:07:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22315 invoked from network); 27 Aug 2023 22:48:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1693176510; x=1693262910; bh=TTMt9ZTAe+VoXE+2h7bukeaPYIEOot3Lg1b
	KkDbmzVY=; b=CA5x993b2P7IwadE8pt3Gn8jsSThGIVmRIcjsmEp31XHG3K6ycd
	8i4+wFIxrLesrtu2tZOg/bpw4lD65/bs1WP3GAHjlbveYQwsTeGfxON0Vr8IrjfR
	ypM2goBl1WgcITAE5z2GmfDFVZdsb/HxhlC5mpRYSN/HfMVezj/OrKNBa0qDQHGQ
	yfNVOQxUsyvLECrammrI6sZ/c+0HXRCFQ+67dyvX7j2FxuUHZ/EOSQWP1abwAGhR
	go/rVrefVMq3D0A9AyH0Stn3fRrqErcNkR7ydp0SleA8bq8eGhoataZih8ZA+SSO
	gjY10AkiLsHyc2nAPTWkWsJ9i3ZfYuv532A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1693176510; x=1693262910; bh=TTMt9ZTAe+VoX
	E+2h7bukeaPYIEOot3Lg1bKkDbmzVY=; b=1g1KVj+IAoyOnFXV3a69Ilw4wAoeW
	8oGy0XAxJnmSlwRNmzgfjIvoTpgiIYlO/msO4a/zEpaw4Gy6AWzrqyj/+A0Rj19W
	X44fNiKAFQ5XDkg6cIzZy8cOt9+5xjSumIYVDRqXR+IxT3JxJDUyGeMyBsWabBOr
	U09+UJsIsyOmMzWGceIvkQsO6eFTTdUZf8ocPSqcGz8qyd/GvY/ssWHSR7nSUyeQ
	TpFN5lxOUsQIY22s+qKQ46hmVRygI2m0iQJdpKATCCkUtj8OBtU1BoclofgmrTod
	FEhX/fVVR6groPakGrgLD1etONQd7Zwlm3Rak1qLdPevnKUCIvY9/Wcnw==
X-ME-Sender: <xms:vNLrZOEYCJrBnBdMwkQZ4lr2I_EH0ckaf-iSpWDoGLCSVOduT40OPA>
    <xme:vNLrZPXZLjHbUHeg-k6BsATx_i9UEnYTB2Bye8lboWzhScf5oT22xK4JmcJxMkUoX
    aAN8TzmA-xrZsU>
X-ME-Received: <xmr:vNLrZIJDAWScbGWWZnxczmYAx1m_lIIOGXgJOJQdfYA_w4SLoA5X5KTdYakC8S_sDGUziJIkkOh4vAJhol0WYegcMYrGYLKZLyb_h82LLrzvc-zT>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudeffedgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epkeetheejteejgeetlefgtdfffffgveehueetveevheegvefhgefhkeffgfegtddtnecu
    ffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:vNLrZIH26_P32hhF3wvdyhD7v8s48vWmzfssxrVGbqOKCsZSHY5mLg>
    <xmx:vNLrZEWfHzSTy86J7gg4OVd3uSrgzGX8f_iEex2gOuNV3fY8E3ihrg>
    <xmx:vNLrZLNqEcU22SxAk7jZhqQc8SKOuUk9aLIOuK97sNdSD_RGEucU6A>
    <xmx:vtLrZMheVMZ-pB6Ils1fl0KuMVGvGxID3YEky0OiByzQSmOvFaLTYg>
Feedback-ID: iac594737:Fastmail
Date: Sun, 27 Aug 2023 18:47:54 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZOvSu1BAV0jp/6t9@itl-email>
References: <20230825222359.GA10424@openwall.com>
 <20230826023129.GA2930052@millbarge>
 <20230826214914.GA18442@openwall.com>
 <CAFswPa8ERS8LOgMTk_95Dyb7JO_z_82g1zJx9dUP54t1R8ZWGw@mail.gmail.com>
 <ZOuKYMvCQ8EqIx4C@itl-email>
 <CAFswPa83igZYQN7oAEEZERPCyOuiJv3sFD_+SZx2M_g8fhJDbg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rCptGMRsz/yxutPA"
Content-Disposition: inline
In-Reply-To: <CAFswPa83igZYQN7oAEEZERPCyOuiJv3sFD_+SZx2M_g8fhJDbg@mail.gmail.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--rCptGMRsz/yxutPA
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 27 Aug 2023 18:47:54 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

On Sun, Aug 27, 2023 at 08:56:12PM +0200, Eduardo' Vela" <Nava> wrote:
> On Sun, 27 Aug 2023, 19:41 Demi Marie Obenour, <demi@invisiblethingslab.c=
om>
> wrote:
>=20
> > Does this include unfixed vulnerabilities?
> >
>=20
> The link* has more details, but briefly, deduplication is done by fix
> commit.
>=20
> Efforts to fix unfixed Syzkaller crashes (also something being worked on)
> are complementary to the effort to generate CVE identifiers for them, if
> that's your question (so, yes? Unfixed vulnerabilities found by Syzkaller
> are meant to be fixed first and then a CVE is generated for the reports
> fixed by their corresponding Fix commit).
>=20
> Generating CVEs for Syzkaller reports without deduplicating them first
> would be disruptive and useless (the link* goes into more details).
> Deduplication is subjective as it depends on how the bugs are understood.
> The analysis that is needed to deduplicate is happening as part of the fix
> review process.
>=20
> One could, of course, create a different mechanism to automatically (or
> semi-automatically) deduplicate Syzkaller reports and accept the risk of
> duplicate CVEs. This may be something to look at in the future, but it's
> not what's being worked on for the first iteration, and we probably will
> have a lot to fix and learn from even after the first wave of CVEs are
> generated.
>=20
> * https://github.com/google/cvelist/tree/cve-automation/fuzzer

That makes sense.  Do you have any information about the efforts to fix
the crashes?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--rCptGMRsz/yxutPA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmTr0rsACgkQsoi1X/+c
IsE2+BAA3Aiqb2d99AKHEtLPPhLls+ImYRWnZBsBpfDDiewypib+bKmYAT1Pyza4
YpJwmPS2RgasOmxlrWnybiiAY219EDBBCc5uU8RHkMwvI0+vsPFXQAhBelM/Rm3H
86dXZY4zDHHwVXbKNmHCKSrrFbNWRkWZTw14cWsqx867p/6o1N9Lt5XVzuB7MWOV
/fbm5YCQTc+RXOXWdJMGLEMn5lgOfVWKmHtTLX5JKXUjC072IXsvdElsQGdgflPP
Uw6yBR6JXy+jDTraz9vzB2UI27B3uMzyQ+N7FGSiBVAAHd4tgiCneKRpC4ntfE6L
2WDdCYYqJhVZoz87JjArp5F8zQQAEMpR9mxX1JKhOXFIw9Zaxd7ITDBHPws2Fr81
t1trFgJHJYSukb7MorpbHQbS666Hyi2iN0oFkxs7zjp5iCLN5P7oIv2PgLuss/Bj
rLO9oD6dNUSwXAmNIYK41zRa2+hEW1J7+E/a1/wDnJ1VUb379CelLE4VaMjLeycI
MdkjbX90LnZq2YRig1Xlz40zLHyqB1jf2MbhPIK8T4gXiRbPCehAgU0IF1FI2613
yg5l0/Hq1fZ0gjvLTcOvl6a/Az5KOOfO1Bfpzk5tUeP7CFuIMM6XOfF3IcOYIhfe
s9H8r96RSrhWWT33OaHUdIs7WtimFE/KNTTpf6cy1yEDVVSk25s=
=H3Tx
-----END PGP SIGNATURE-----

--rCptGMRsz/yxutPA--
