Received: (qmail 5547 invoked by uid 550); 8 Aug 2023 18:44:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18307 invoked from network); 8 Aug 2023 18:27:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1691519236; x=1691605636; bh=z5hgF7+pMhuPN/rF+t5RKl2U+5mSvHyA/bh
	ioAtp2SQ=; b=OemWi7R915KxtC8q/ly8r4sZtKRS33lGKjfdjObV36Yv4EA4PMQ
	eFOo2/vXP9aVi4IkOKP7/GVFdFgWQzsOAsOdqCQK7Wak6P1u7iHU0xItVE2nTwB7
	6K8bULkaKD5wqmzWKWnXznIipzNLouFmzisnLDIY49NdsvKtrPwAveOnWzNyi9qj
	dktmf0XRztziA2V6lvUqhfTX1s8y62YKCd2wfxUQuO+jEmaJ9lI21vnQejwlgQ69
	bKQ/amnx/9cU03UD8cewKYEjXwc+Ex7WE2wd0aEXPrz/7AXSQ6v41URw1NdW0x4s
	4lo2CPDgNu9zXNZJ4iilIz5Zxav7a9F5C2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1691519236; x=1691605636; bh=z5hgF7+pMhuPN
	/rF+t5RKl2U+5mSvHyA/bhioAtp2SQ=; b=bWSp5rMe/o2UeW3fwyDQkdrX1CS2V
	CCrCjcphDIm3Kh4njEMTj4GjVl5+s5q5tip5wHdDhRVVu9y5AzTdYD1azTsOnK7v
	0BWClL02l7TyQvpSLzxsLgN6OGpOKYfPR3c+r02CgFPLO3OC1Na9ApiwoVztckz1
	Ay0CwUslji5OdpJcWETypWWehrUJlC/WP1M5orYNt6pAU7am4XJURwi0H4WrK6NY
	suaSo8HpqEgZ0p20PffIKYqivGry6FDNqPJKYa2VOrkHifYvBss2TL0C9dKF/XRG
	mZe/v8lJuVXFWLFNTRqzfuuJX22+x0xtfG0JwMQO6ee8QF3/TeARsAKXw==
X-ME-Sender: <xms:BInSZGtX5_amT6PG1FjkWeYlfBNfRO349ZeC7JqcCegNevDxqe35Cw>
    <xme:BInSZLd2pKEEnAOgqgclUaKojvEh4749B8j6wehpkJdOGammkeCfXED5SnkTod2wV
    v4Ni5xtP4kChPg>
X-ME-Received: <xmr:BInSZBxOw6_gSmA00uusc03XUv_LXM6fG9TZy8anB14RSsFbQGx58VLTXKx-63bb0e3-bYxuUKIYuQ5Pvt4Jj0UZAEmKPFKrKRHTGn_Kzmxu6q0M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrledvgdduvdegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeefkeeigfehudetgfevjeetjeduudfg
    hfejhfevgeeghffftefhudfgffefkeevgeenucffohhmrghinhepgigvnhdrohhrghenuc
    evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:BInSZBPWCN0tiIFJ4l27AJ-3i_DLiWY388hfhqYVBuOGiRtQziwdUg>
    <xmx:BInSZG_83xzOOsAC4_GGUzFAf_Lh36fnLR99YGARygbMkuryUjR6JA>
    <xmx:BInSZJXRZAFd8fZVnALcG-EETQKQzCLyppbYpPOPcB8hqHwyeHmWVQ>
    <xmx:BInSZHIpJj1k0d5Y2wG8RlBegubgUyUCQsHn0kzPUm6oxTt7WsO1MA>
Feedback-ID: iac594737:Fastmail
Date: Tue, 8 Aug 2023 14:26:58 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	"Xen. org security team" <security@xen.org>
Message-ID: <ZNKJAaZ+mGnORQNS@itl-email>
References: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org>
 <20230808180009.GA20736@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WZU20gE1n2CyF4kn"
Content-Disposition: inline
In-Reply-To: <20230808180009.GA20736@openwall.com>
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) -
 x86/AMD: Zenbleed

--WZU20gE1n2CyF4kn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 8 Aug 2023 14:26:58 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com,
	"Xen. org security team" <security@xen.org>
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) -
 x86/AMD: Zenbleed

On Tue, Aug 08, 2023 at 08:00:09PM +0200, Solar Designer wrote:
> On Mon, Jul 31, 2023 at 05:00:35PM +0000, Xen. org security team wrote:
> > The patch provided with earlier versions was buggy.  It unintentionally
> > disable more bits than expected in the control register.  The contents =
of this
> > register is not generally known, so the effects on the system are unkno=
wn.
> >=20
> > A patch correcting this error has been committed and backported to all =
stable
> > trees which got the XSA-433 fix originally.  Additionally, it is attach=
ed to
> > this advisory as xsa433-bugfix.patch, and applicable to all branches in=
 this
> > form.
>=20
> where xsa433-bugfix.patch includes this description:
>=20
> > This line:
> >=20
> > 	val &=3D ~chickenbit;
> >=20
> > ends up truncating val to 32 bits, and turning off various errata worka=
rounds
> > in Zen2 systems.
>=20
> and that patch then corrects the truncation by changing the type of the
> chickenbit variable to 64-bit.  The context is:
>=20
> +	/*
> +	 * Microcode is the preferred mitigation, in terms of performance.
> +	 * However, without microcode, this chickenbit (specific to the Zen2
> +	 * uarch) disables Floating Point Mov-Elimination to mitigate the
> +	 * issue.
> +	 */
> +	val &=3D ~chickenbit;
> +	if (sig->rev < good_rev)
> +		val |=3D chickenbit;
>=20
> This leaves me wondering: why have this line at all?  I understand Xen
> wanting to enable the chicken bit on vulnerable CPUs, but why disable it
> on other AMD CPUs?  If someone or something had enabled the bit, that's
> probably intentional, and even if not it probably shouldn't be Xen's
> business to alter CPU behavior beyond what's necessary for Xen itself to
> work reliably and securely.
>=20
> Am I missing something?
>=20
> Alexander

The microcode is effective when late-loaded, and this code might run
after a microcode update and/or kexec.  Not sure if this is the actual
explanation.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--WZU20gE1n2CyF4kn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmTSiQIACgkQsoi1X/+c
IsGLUxAAuSjjzFUUWP/OGkUmkpduubmO9ElkFxwA/0LjnTaxYGv2ZWc8k4IEL8h7
KBl5oMPBV2iOAuCmBmuyNI8Hj96HDxkh93gpSzEHqT1wHnlbVaevVXwhdjcAzAQx
T803RsEGOqkqWvU76G8oBxjHJZSTescXAhAW4s572Kzn/SSE4+41GNAY94stgCzd
IuwDkIFOiHXJoLI6auVeH2QW9RPIjefzJeJtxvIOLMRDcCSVlpk7B3/nCbXh7uyU
t92OEq3aNb6YETpNurukwOooH8Q/lCtCSpIM19SSmDrp3Xz9bdqTl1Px2OEGGyOP
Je1wXoM6T9RHq+c7M49qPGOst5/0Y/ws6AM4gXgBIIX7eh7dUJhRkApxxCLBIEsn
62KhhyuTX8Tsuod1Dp5wq36esX4wWDlWv9MdoRg9XpfI2XwyiM6xGrlboVx1N1U6
m3EbeQGe/CR4RnTjAD1NmQG1gdW61v2ee8Leo7f+lKjykzn2JsBUt5tyvN/DHQ1t
X8sbF1+ue+yVnnZz2ct6VmGagOPSd9ee2YmfEpN+9x0jadQPASOdjl8S1N7nnC3h
oG8cFFUBkBSg5dzYhArdVwLBikVuOIwtCbFfHFs5fIrL80l7hDCehdDAIuN3sgnr
/pitDpRh0JeemdZaMlGb5iouENWLGCMHFHMY4IMYh9wxrnFFS9I=
=SO5+
-----END PGP SIGNATURE-----

--WZU20gE1n2CyF4kn--
