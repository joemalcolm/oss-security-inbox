Received: (qmail 13708 invoked by uid 550); 29 Oct 2023 19:57:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9794 invoked from network); 29 Oct 2023 19:52:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305; h=OpenPGP:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:OpenPGP:
	Organization:Auto-Submitted; bh=/mwVL0EvBCe47Sz7ORWBpy0qJcRThSzb5NE3XewR9WI=;
	t=1698609128; x=1699818728; b=QjUVSF0p5G/PSoTI2wvH+MAJIuyzVNzhcQJQn8iDJxgdJ4M
	DhvcPvFC0llQdvy/LzgzzrYuIHCnT81H8FWt9ZlB2RjN2i+o62a+ReM0LMxrpWzz4dD3Jg68FBvV2
	ka/UEZtMAn5XJKLks2Bxtg3KIPA+qIQrDj2/WX29RjG0UINfGxcjZQ8bRCwIyLZrMcowQ1nIfsLfp
	SB2FaoTUN3DUhUX2LI0Z28kUgVRv30wxt6tFR2MX1+KX+CL4KoUTcNW44kKm0GnAyl/vVQlM1XXGW
	ugVaeCQycGs3t+O62nFBfKIZV2LIj8fyhoNKOD65U7jIrRjyRp3EIlgUg0Fpv/HA==;
DKIM-Signature: v=1; a=ed25519-sha256; q=dns/txt; c=relaxed/relaxed;
	d=spodhuis.org; s=d202305e2; h=OpenPGP:In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:Date:To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:OpenPGP:
	Organization:Auto-Submitted; bh=/mwVL0EvBCe47Sz7ORWBpy0qJcRThSzb5NE3XewR9WI=;
	t=1698609128; x=1699818728; b=c2B0nnxoEz2vooTXd4KSKn/mG3Pu+HVwHHwZEq/U5jnEQs9
	BCqeEljmjkqrc/pxjDrIWsaJxMvRMbgotrKpaAA==;
Date: Sun, 29 Oct 2023 15:51:53 -0400
From: Phil Pennock <oss-security-phil@spodhuis.org>
To: oss-security@lists.openwall.com
Cc: pdp@nats.io
Message-ID: <ZT632cGIWqgIJCoj@fullerene.field.pennock-tech.net>
References: <ZSit-X8iB2gx54hq@fullerene.field.pennock-tech.net>
 <ZT0t-5HDT_cAcgC2@eldamar.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MkPdZoNwXkL8A5+L"
Content-Disposition: inline
In-Reply-To: <ZT0t-5HDT_cAcgC2@eldamar.lan>
OpenPGP: url=https://www.security.spodhuis.org/PGP/keys/keys-2013rsa-2020cv25519.asc
Subject: Re: [oss-security] NATS: 2023-01: Adding accounts for just the
 system account adds auth bypass

--MkPdZoNwXkL8A5+L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2023-10-28 at 17:51 +0200, Salvatore Bonaccorso wrote:
> On Thu, Oct 12, 2023 at 10:39:53PM -0400, Phil Pennock wrote:
> > [ CVE has been requested, still waiting for assignment, so we're just
> >   inventing our own in-house numbering for advisories; we'll make sure
> >   this one continues to work after the CVE is issued ]
> >=20
> > NATS-advisory-ID: 2023-01
> > CVE: pending
> > Date: 2023-10-12
> > Fixed in: 2.9.23, 2.10.2
>=20
> While I see the later NATS-advisory-ID 2023-02 has a CVE assigned, for
> the 2023-01 was above with CVE pending. has one been assigned in
> meanwhile?

No.

For 2023-01 I went with our existing procedure and requested an
assignment from MITRE, just as in all prior cases.  I got the automated
acknowledgement (on Thursday 28th Sep, request ID 1532633).  I've yet to
get a CVE assignment.

So for the next one, I tried a new approach.  I filled out the GitHub
Security Advisory flow ahead of release, got a GHSA, and requested a CVE
immediately.  It looks like that was issued the next day.

Going forward, the NATS project will be using GitHub's processes for
requesting a CVE assignment.  Our documented procedures have been
updated.

I'm adjusting our published text format to have known aliases near the
top, to make it easier to cross-reference.  For NATS advisory 2023-01,
this is aka GHSA-fr2g-9hjm-wr23 and GO-2023-2133.

-Phil

--MkPdZoNwXkL8A5+L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSpb2i1s4FmGYGL+VvhPiXtYNF+awUCZT630AAKCRDhPiXtYNF+
a87rAQDikg2YN+OxbvUI/t8b6JGsOR8OSqt43aCEx3eXRSYbFgD+KsZi6n+EIefS
vKJZKNB8au2dm7ZNoX21Da9fzqsESQw=
=VGlm
-----END PGP SIGNATURE-----

--MkPdZoNwXkL8A5+L--
