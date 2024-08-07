Received: (qmail 16176 invoked by uid 550); 8 Aug 2024 12:53:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12188 invoked from network); 7 Aug 2024 21:55:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1723067746;
	 x=1723154146; bh=Iq6pxoSDDnUlu+xoM/hykyKlJA7F0f5mH2tl0wz7gAM=; b=
	ZQGMGzVfjdgXoICJduC0RPlV1PewhOYBFYywm8P8Y5UnLyCO2a3iygec9dWWMnEM
	3gymmBsJJsEUp+B1ktTEv2VbWgLdIm5dUw+ox15wQ+z3PRRDzABvsT6xnGFsUUHH
	eH5AVkBsdqEiHpGjf20mytku/QmY93tG352ogea5P7Rv90tQdxgEv9U+8lZr8bAe
	DmKbIMXS2zyFB4ltY15LWgk24NeAaA09fHIsvJYlw8wd9DIS13yQ0I6mImJvC6C+
	on0PwY+2tpB0J/D3Si9WzpMvu/nL16EYYz2+NFNnQ21IobEYbeAYKTjUZWqgJlnC
	b9DkFaqya9pTipSqkqoZIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1723067746; x=1723154146; bh=Iq6pxoSDDnUlu+xoM/hykyKlJA7F
	0f5mH2tl0wz7gAM=; b=ssYxQ8GWl9X3BcLXc7LKDtfYnnyMlvTyS5w66fzVwuqF
	zwFxZj80FyG7SfaVa5oqGBm1BNoFT9dnzUtIP6UjJnHaCZvcuEgn6oCR/PM4Okx/
	MGdqDTzsEru3iuwlte6Bd19Vv8zlQnAngzIplb9TasK5KMWrFgYi4rxIiPhiZMk1
	6S6nSKafInljYf8eh78tMwCWaksS5faCYAzvWI5h3NWExLrv0M47CJZvuNwps9Ky
	1qmGUnm/6hJTNH6bRNlc8nEVSZQx9gS1TSh3xVP9dLu4yC48DdT9QwJkOc6DqQm0
	FohL64NH5FcxK10d6fR24yJ2Qn24JG/2cPKy83ZsCw==
X-ME-Sender: <xms:Yu2zZoBJLMc9A0TETkY_WqQF7_Sj9C24zDcU0EUEG8LAyN4Vh1xFQw>
    <xme:Yu2zZqhn2qGdbtHPWGFTdsh52C1J47WzHs_TTJ-UOB9QZRx97Dh41M5gf77z4TJ5-
    aWYIR_JuE7anWo>
X-ME-Received: <xmr:Yu2zZrlqX1l0-TG8yKGDSkxsh7Kb7Hq4S2sDgqPUIaFegc0TLa1rysdMzJF8u7KqjZbVobUPEn1tSRdG-O3tEpAEenQqCflbtyIBYnZ_QIWIMXZG>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrledugddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmpdhnsggprhgtphhtthhopedt
X-ME-Proxy: <xmx:Yu2zZuwS8txa6AR1a3rRigXqEDvwRSqk0K56o7qJtSUm5-RBIUk0Ug>
    <xmx:Yu2zZtTa5eU04l2m28yMAtRZmNrL9FIRYSiV4RMoaNGwkpZkqezKPg>
    <xmx:Yu2zZpZAz3kmPi57DozOaqhETi1wlZyaX0nsXpxBYRgZM2VDvwsOyA>
    <xmx:Yu2zZmTVKiKI5Hv5aR7ST3b_gNhhz8-eeUMdZRx91dPnaY6uRozqxQ>
    <xmx:Yu2zZu7Fn0RrRzp4k03XF2J2ulAw9IzNOsm_S7JLLHndoAustMSzbm8v>
Feedback-ID: iac594737:Fastmail
Date: Wed, 7 Aug 2024 17:55:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZrPtYKhe5AtS5XcT@itl-email>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
 <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test>
 <20240807174807.GA4206@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DdkQ2/Lmrd+QHFcq"
Content-Disposition: inline
In-Reply-To: <20240807174807.GA4206@openwall.com>
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

--DdkQ2/Lmrd+QHFcq
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 7 Aug 2024 17:55:41 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On Wed, Aug 07, 2024 at 07:48:07PM +0200, Solar Designer wrote:
> Hi,
>=20
> I think there are two categories of use cases that need a wide range of
> supported protocol versions:
>=20
> 1. Hosting a public server that's meant to be usable by the widest
> audience possible, including from both up-to-date and older systems.
> For example, a website should display in latest web browsers, but
> command-line downloads from the same server should also work from old
> systems (e.g., running LTS distros).
>=20
> 2. Scanning or crawling a wide variety of systems, e.g. by a search
> engine indexer, an asset enumeration tool, a security scanner, or during
> a pentest.
>=20
> For both of these categories, it's desirable to have a maintained
> library that supports this wide range of protocol versions.  The proxy
> solution that Demi Marie Obenour advocates for isn't of enough help.  It
> could kind of work for #1, but it'd require two different end-points
> that users would need to explicitly choose between, or some other hacks.
> For #2, a workaround is to use two libraries, maybe trying the newer one
> first followed by a fallback to the older, but this may also be tricky
> (e.g., linking them into the same program might clash).

That is indeed valid, thank you.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--DdkQ2/Lmrd+QHFcq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmaz7WAACgkQsoi1X/+c
IsFOvA/+IxLElWbDGuFXRzWrD/E57k2ro1cN6cGcP69sLqIbasMOYwdmUGHdnLuG
K1coatqRRdcG4fi/j6x5NLZg41z+HnemGQmyCKOC/5jR+X5DyYpLq/RtAvDp2mR7
OOOm4C0uV2dfDqTE9A2QjwH595W55oivZ8/C5XweBP2helWecSa7Q2b2MMa4qhx7
TLnHilqDFN9FUmlj16Yuv22hYyKsR+jRiZNwgWzWx63XPrEYi4WCWMpNvzax6I9T
faFzxkaQJANHTZ6XTAyrhUUNoNUnpsN1EFalVC9dYrt25eLKG6mCPDVJWztLmxRr
AKfL5/bXmJdHNzTybxKvsd/imCAQPHd7arSiHKsk01zUs+9bxxAFSGtDysLwvY9a
O1RoWhtphoUKkI2azdzRqjquro2OfleZCpLQ7j2d+P3qV6INXVrf/b/ANTQGvTMb
xuNaNfCZlGyoV0u2oB9ix8ZeeR8uZB1QfmxRgHqz4hQqXv0uAEQac2JdrUVTbJ/K
1l++b8+fzmIANeLyaAaMsSjW7opDaVMUGimx/77Hu1fCFh4aEWX7dMXv+XOZYW0z
jOcxDqi3xWbXfseo5YoTgZpKrG7wxClD7BE7+FFJqrdByn+Uausgi4C1nCYriW5T
vZPtD4vPYG/ddiYmZQG25IqLkdBxQvxNeXW78TZhKIUdMAl/TQk=
=eeoE
-----END PGP SIGNATURE-----

--DdkQ2/Lmrd+QHFcq--
