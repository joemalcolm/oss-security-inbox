Received: (qmail 20185 invoked by uid 550); 20 May 2025 11:15:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20167 invoked from network); 20 May 2025 11:15:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747739748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bUJJ3jSTAZz02KJV97uV/JWiU8E88gw4kl0XIeBIWl0=;
	b=kfRZl0ZWHyCcr68DRWLLACrnBx908X9nIMme7VBRvG1+p9kz2cZdm+V6ylmvzNyg+gDjas
	NqtAh7pLWcOsD3fpfzYpHIwBAW237wt1pUlxPdyHq7ST5zME7Gpwt+N5I6Ipup/owG3mke
	G3AWmxs3IzD1nMrBirj6i5sppfgS9Rs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747739748;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bUJJ3jSTAZz02KJV97uV/JWiU8E88gw4kl0XIeBIWl0=;
	b=r1Kw4GIpZyRv2Eoqh06EARc240hUzMRBqEPrsR6yfFCUM7ip/pmFuWjoge/qpkwKrDGOb1
	mTdOvkvyecgt12AA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747739748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bUJJ3jSTAZz02KJV97uV/JWiU8E88gw4kl0XIeBIWl0=;
	b=kfRZl0ZWHyCcr68DRWLLACrnBx908X9nIMme7VBRvG1+p9kz2cZdm+V6ylmvzNyg+gDjas
	NqtAh7pLWcOsD3fpfzYpHIwBAW237wt1pUlxPdyHq7ST5zME7Gpwt+N5I6Ipup/owG3mke
	G3AWmxs3IzD1nMrBirj6i5sppfgS9Rs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747739748;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bUJJ3jSTAZz02KJV97uV/JWiU8E88gw4kl0XIeBIWl0=;
	b=r1Kw4GIpZyRv2Eoqh06EARc240hUzMRBqEPrsR6yfFCUM7ip/pmFuWjoge/qpkwKrDGOb1
	mTdOvkvyecgt12AA==
Date: Tue, 20 May 2025 13:15:43 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aCxkYz-m9xY-NYaU@kasco.suse.de>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <aCdTYYH_N9dXOYf8@netmeister.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oenP2nBS5Y5NW5tt"
Content-Disposition: inline
In-Reply-To: <aCdTYYH_N9dXOYf8@netmeister.org>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

--oenP2nBS5Y5NW5tt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 May 2025 13:15:43 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Hello,

On Fri, May 16, 2025 at 11:01:53AM -0400, Jan Schaumann wrote:
> Matthias Gerstner <mgerstner@suse.de> wrote:
> > we were surprised to find a local root exploit in
> > the Screen 5.0.0 major version update affecting distributions that ship
> > it as setuid-root (Arch Linux and NetBSD).
>=20
> I think it's useful to clarify here that NetBSD does
> _not_ ship with GNU screen(1) at all.  NetBSD's
> third-party package manager pkgsrc[1] includes
> screen(1), allowing users to install additional
> software on top of the base OS.

we apologize if our report contains any ambiguities in this regard. We
are more familiar with Linux systems, naturally, and only look into
other UNIX systems when cross platform software like Screen is affected.

I guess it is still correct to assume that if a NetBSD user wants to
install Screen, using the pkgsrc binary package would be the canonical
way to achieve this.

I believe none of the systems we looked into comes with Screen
pre-installed. In our report we assume that Screen is installed using
the system's default package manager. Considering all potential other
uses of the package manager sources/artifacts in other systems would
complicate matters too much for us, however.

We did not intend to single out NetBSD, but simply looked into it,
because we believe it is one of the major free BSD distributions in
existence.

We can provide a clarification of this aspect in our blog post to
reflect your concerns, but we would also like to avoid to unnecessarily
complicate it.

Best Regards

Matthias

--oenP2nBS5Y5NW5tt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmgsZF8ACgkQFMQFyXGS
NVMA1g/8DllaVVveQdfbdHIEBLUULG8yTLyXgb6aWt3v7/2GtzWTtVdHA6MIIPsD
Bk+D0/Cc2cmIvsneXmrSxkikvTKkp7U1v5sWeY9xpH4178a71cCRxvsY2O3SOot+
h3uKPEi/4AIKRXcetaSnONbZLXK4f1OcOE6MzQsmDphnn1oNbNWcBvfx8lu7JHDy
GRsduWHJcv7mV9g1K8iY2diSyfn/aSo35+fwnPt6EmxYNmvqhFlhTCH2D+FO/adb
0HVQn7np6BJT/4ZcnYW5+dp3uFQeR3Qz89jVgfOvZ/BJCFOPa6CsRNClS2CnypWg
jWLDkJL+INe7apNTfP44Jku6/PbsZW5vVTDOXjjeX/hjdJIuIRIgRcdxUvC8w5fN
H226zne8b8x9lXhjVo1Kxy+sXvo7XMxbhDhszEXicMj4k05GDXdvt18evzT07hJi
c49kVxdoiKFsgjtTJswqNi679XpEikmlzXh30KvZKnP1iVNq5wkaLPUy4C3RGuEX
ILVLP9lCRmVUoqJ9m8hyX8ydONrPIm08rYjupHBQgbOOxF89ceCp4PK3/c2lalL5
l004V+3DyGxsSuiO5CSHqMhnxxSiTLAu+G+sBiU3fPH6uFzM1ynDaR+ZlVbbQzua
6s9aDGqyh80G7nlgbMDMlcuPLUYpOQ5ujBAd7GFuiWi47aOChVI=
=eyLO
-----END PGP SIGNATURE-----

--oenP2nBS5Y5NW5tt--
