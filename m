Received: (qmail 16273 invoked by uid 550); 7 May 2026 16:41:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1942 invoked from network); 7 May 2026 07:22:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alyssa.is; h=cc
	:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm2;
	 t=1778138560; x=1778224960; bh=/5lil5HF9cPgOZEUMtyy/BxL/h0yfBkT
	4lLA3M78K+c=; b=C2lMFvdw9ZSxHKru4v1Ym3GDhufNxoNEkgsfQMi8WgWNOu40
	ZUYylwbHlFZblDhK8ryzNxbm0TuPfJ0Mm9av2YToSVMq3Q0zv4AoYKzK/atz6guc
	3rFscW507fAWE2PAJpttLKl5WSObSsTtRDH7hg+sunpuroAFRYEJnUjL9x34g2xK
	66aJWPdEWyUCL3hu42p8SOdlbjXJQOzalGAlPwXZqoLeWEN7eXCg5W2Hc93HlzNQ
	X10bhNBj2BX5GhhiVY1UQSrnRsYG4Gkcc7j8hRZ3aYOtABnFnryOYi+nJErIxv6Y
	FwZz8s27ysI9R+tOu0mrxCCqCYxTt0ugSxT17w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1778138560; x=
	1778224960; bh=/5lil5HF9cPgOZEUMtyy/BxL/h0yfBkT4lLA3M78K+c=; b=H
	2f2LP6CFPqCWnOYXrmib8OJ5LWbrxnMli5n/p6hIjdqwZV61G9yO4P+H+2tiu/mp
	PJsJToOfbGA6Qy8ABjCp4SzTM3kCCqKpErrRToLmPR7m5KcOvAA+i+i0+LrP2/YY
	AtRGjtsKwPDI+5Pn3NrfSyPjEP9CStmKuwkWqtBQ7ZUY+o/AktJn2HwUeGQs8hQ0
	l6rHmXJVglN0K+SCJcHtY7cklxaI4+zkEasOfaLjlu8vLJfw2qi4wOA80HqhqbEy
	SBxb0z+RyoxyIxCgYq2m18AXvSO7NdATo3bcMDjT+frRXJzXAmptTEe27L2ro88B
	OJ+bqSsN8tQb2SASmgV3w==
X-ME-Sender: <xms:vz38aYs_W5e-YS2995aJLVJwDSv9j3mgRjQrftVyQz5eeExtAVGo2Q>
    <xme:vz38acYEtTEKieRCcox3GNAYNnZGiAYcR6-dx6n7R7714FgBPI-JPZUXrV1DglYyQ
    L1L9ddxfpZEqJyrwOjfUmCjS7VnJrBZ2TO3p2-qBejV-GsCPdTn-2c>
X-ME-Received: <xmr:vz38aZZXB2M8UyQZ942ZIxb2R-R5wfqIzwYg9t9P6hGYSNvdcaWxs4jA7QUkNew1c0Er-PknK9v52i99KIQj7Ck4O_mv3Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutdeikeeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkgggtsehgtderredttddtne
    cuhfhrohhmpeetlhihshhsrgcutfhoshhsuceohhhisegrlhihshhsrgdrihhsqeenucgg
    tffrrghtthgvrhhnpeethfekudegffdtieeklefgueekieefkefhgedukeejuefgieejte
    dtleetuddtgeenucffohhmrghinhepghhithhlrggsrdgtohhmnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhephhhisegrlhihshhsrgdrihhspd
    hnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhs
    qdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:vz38aQWQjv3a7P7bu7yNZzTBLWWDEjcrnPDfstX1QfgoCmGfugg1tA>
    <xmx:vz38aY3F2MY8racSx3YT5QdX6z3SmuYl0rwiXfqegjoZtGF2_R-pJw>
    <xmx:vz38afa3b5GBoM6rSrGjGi77glcUQdfKsdijUkzyNpSYGqoOWWbPGw>
    <xmx:vz38aTphn0WXe_qM6RRn_-92vwVQ0OS18y8Gve37p3oXaE6Tg_jwSg>
    <xmx:wD38adlroGmPTaWL5KSaL5cVLQOedF9Z5pu9r0WDU4QlljJKTWYdzNHA>
Feedback-ID: i12284293:Fastmail
From: Alyssa Ross <hi@alyssa.is>
To: oss-security@lists.openwall.com
Date: Thu, 07 May 2026 09:22:35 +0200
Message-ID: <875x4zk7k4.fsf@alyssa.is>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: [oss-security] XSS in Postorius (Mailman 3) 1.3.13 and earlier

--=-=-=
Content-Type: text/plain

The current released version of Postorius, and earlier versions, contain
an XSS vulnerability in the admin UI.  A fix was merged upstream in
January 2025, which included documentation of the security issue in the
news file[1], but no release has been made since, and I don't see any
previous discussion in the oss-security archives.  Distributions
packaging the latest release that have not backported this fix are
vulnerable.  I have heard that this issue is being actively exploited.

[1]: https://gitlab.com/mailman/postorius/-/commit/c4706abd05ba6bcf472fc674b160d3a9d6a4868b

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQQGoGac7QfI+H5ZtFCZddwkt31pFQUCafw9uwAKCRCZddwkt31p
FUTSAP0Uq1KXfF0+SYzhdkWHUcv77SGgVr+Kw9WrUntSWtX2awEA21hAGCKRxPjo
/7VlxLrSVuCPz5Hterj/Qlh7dojb+wc=
=dUQh
-----END PGP SIGNATURE-----
--=-=-=--
