Received: (qmail 9820 invoked by uid 550); 1 Jan 2024 19:04:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9300 invoked from network); 1 Jan 2024 19:02:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1704135821;
	 x=1704222221; bh=R4sbhbyqTBnUvulNDw/0pwhVC4TpNB951Cn0/X0kA2M=; b=
	qi0OtFUkVrAbTH6bY3pV1ygAXXKNERQ5mK/zoAyGaqT+ogwd2CMM52y+kGJDMLQ6
	Exmw4vsCoa+U+dKclG/7aM372xi3+SEmceVyIR/nwx18QNKHL6SJllNI2MiHt7+a
	J5dU8jw9Yv9LU0Z5kpOh2lUrH84XecpXdDzRkK2FPbmR8Dijxn9kAW2OnMhkpygl
	6vpRHizsmFjR9uUB3gBON/3MMdvRSanFjoc1i27bsLMkCAV/BfoJxs8X5caO5Mb6
	DIuhHkZkb5J+LAyIUvgNBqfPUvkUk9Rzgo8hvPIts8tV4yNu46dMSMj8Km/qJ4Ma
	zYLMVRm5kaiO+EhPfNy6QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1704135821; x=1704222221; bh=R4sbhbyqTBnUvulNDw/0pwhVC4Tp
	NB951Cn0/X0kA2M=; b=i/X8TSwCH/m73ZZne2Z9OS3icNfTwmejbfYz5tJO2qT/
	jIjQidh3Y0uHxS+qQTN5HeLZzy52naYYtWiGNeS0a8BrgKsOM7UMMqVu5iTRicsU
	fiF7UwmK9gitZqe77hZsBhoJqUBUMiBVy8N8Yxmwj8sj3WFciNalUrIlTGxcFTCa
	g0GJ6mnQRN246gV9DF6i6RXnS98EGZrzo+HVYH7Wx8/hLhG9OX4VHcMuaTqTRQnW
	Kg+1Nh/pdBoOpYXupIqYIV0SermKZhQhWzTbLxF3UutStPfQsIjnVU8qfNrcO7Fg
	pOSO4uXnzdZLAn6YsMeXZc7A1TioeNEpAVodCyF5RA==
X-ME-Sender: <xms:jAyTZbF1lKX1--XdlEUwD66Bt2IW03BYfXHMvoRhEYyJLg_2st9b7w>
    <xme:jAyTZYU-FSenl0sxyHlZghPHdXQLUQ-OMhafM1KrBau-hrXLkGbbA2wCZmjDs7u5M
    aeGucZC8fks074>
X-ME-Received: <xmr:jAyTZdJ0M6ppnloLqKXpDKARE7H0EKpp6naOot7FD5hBrQElRod-14N5gYSWtcMdvr7jDiQtTzGEew8l-pewLefaJDz578fgxuDAzvzXX5TF6SEm>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdegtddguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeevjeduleeuheehiedvtdeuudeguddvffehhfdtleegteeuhfdvfeekfeeivdfgieen
    ucffohhmrghinhepshgvtgdqtghonhhsuhhlthdrtghomhdpuggvsghirghnrdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:jQyTZZHVWMVyvZY325_ikcjj2N9KJ2fymNkv5pvmgZS1IAPr9kbUBQ>
    <xmx:jQyTZRX5orK3FTGRuemsevh5oZf5V4zzxZoVgo0IuOTeeRE6_0im_g>
    <xmx:jQyTZUOIb9HeZuKwW3wFcJQ7jsiDqOQBq_nGeCJhc4pJb12LpJyJ5A>
    <xmx:jQyTZZiFIQsMeiaqga1fl7GjIzg-rXoRujqQ6QJdsBmdZ1fgnzPdUg>
Feedback-ID: iac594737:Fastmail
Date: Mon, 1 Jan 2024 14:03:35 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZZMMi8DQbVuIvZPH@itl-email>
References: <20231229130718.GA6740@openwall.com>
 <2537-1704125446.658888@yYwZ.TdlG.pmeQ>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qg6yPOTq78pxBnA6"
Content-Disposition: inline
In-Reply-To: <2537-1704125446.658888@yYwZ.TdlG.pmeQ>
Subject: Re: [oss-security] CVE-2023-51766: Exim: SMTP smuggling

--Qg6yPOTq78pxBnA6
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 14:03:35 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-51766: Exim: SMTP smuggling

On Mon, Jan 01, 2024 at 04:10:46PM +0000, halfdog wrote:
> Solar Designer writes:
> > Hi,
> >
> > Exim was also susceptible to SMTP smuggling, and version 4.97.1 is now
> > released to address this.  Included below is doc/doc-txt/cve-2023-51766
> > from the exim-4.97.1 branch (with erroneous Date: line omitted).
> >
> > Alexander
> >
> > ---
> > CVE ID:     CVE-2023-51766
> > Credits:    https://sec-consult.com/blog/detail/smtp-smuggling-spoofing=
-e-mai
> > ls-worldwide/
> > Version(s): all up to 4.97 inclusive
> > Issue:      Given a buggy relay, Exim can be induced to accept a second=
 messa
> > ge embedded
> >             as part of the body of a first message
> >
> > Conditions
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > If *all* the following conditions are met
> >
> >     Runtime options
> >     ---------------
> >
> >     * Exim offers PIPELINING on incoming connections
> >
> >     * Exim offers CHUNKING on incoming connections
> >
> >     Operation
> >     ---------
> >
> >     * DATA (as opposed to BDAT) is used for a message reception
> >
> >     * The relay host sends to the Exim MTA message data including
> >       one of "LF . LF" or "CR LF . LF" or "LF . CR LF".
>=20
> Interesting, that also LF . LF is causing the effect. As there
> might be some aggressive mail server testing for that issue in
> near future anyway, could it be, that this was exactly the issue
> affecting Debian mailing lists at least 2018-2023? If not so,
> and there is a second bug, the increased testing and also public
> bug report from below will give them some interesting times ahead
> anyway.
>=20
> But if so, any automated mailing list forwarding might be quite
> likely (due to trigger probabilities) to have left truncated
> and non-truncated messages online, so that finding those pairs
> automatically, e.g.  using more unique text parts from list A
> messages to search for messages on any other list B and check,
> if one of them seems truncated.
>=20
> Here are some message examples from 2018 showing the trunction:
>=20
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D849754#60
> https://lists.debian.org/debian-mentors/2018/01/msg00331.html
>=20
> Then there was also a public bug report on those
>=20
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D922652
>=20
> or the ones from below.
>=20
> Kind regards,
> hd

I think the only reasonable thing for an SMTP server to do is to reject
all LFs and CRs in DATA that are not part of a proper CRLF outright.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--Qg6yPOTq78pxBnA6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmWTDIoACgkQsoi1X/+c
IsF0PBAAyEOewGaWNAnAuPg9kmx4mnPnFulibPEBySYG+hX9VSWTkRqnIAKCkSMo
yp2n7y6RajIIc5Zibt8V6r0uFrIImnv50EeUQWNfrNQ1JsIdet5Zp6T01FLYgkEw
frLNdkowgV3y1/S6SphaV2DAC529MYOj0MeXyS9dWKQQ67pTrIzZDSuI6m6SeLUB
i4jmT8iq/SJ3mgTNHZEt5USl/fACywbx8lh/rMuJHWm1yEzXgOUJF28FFcWPad6m
uYMVWAmP8ymQUL0Tjxw2XatD4zZVU1u9Fiy1h0tzOepQV4hp9iyASVB8yOxj2uam
D3+0nm2rX0i0sqvuzTMPiMU4lzb8R+ku0f4Ht4LGUv3NDOsE0iYQ3vWI5WTBhfRO
cTMZwhS8TcfCIHdZlxElDM1yK6Nlf7nhvhs27IWvzlb3wX9fu5i0r6jpkBi98YXj
0ZlMYWPWLqNhW1P588uWOIduAuRjnhokZaqoxmIUpr3bRkmiGAY6rxhXKbqcSzYm
/2/s8GpdV7RJBhB4DKWabJY+scO1fKaKJr+bQL9pJ3i111f/4ePdUV0CjWwPklfu
WIcYWqWfBgcsSzTzTURHY5htzXdiyzhc5IaeXfXap7L1jadIUvivgvGbdBHX0SMY
vjMIz09XwpUYd40WxjCAtAeUhEvW5dwc/nJr2EKYiFwqA6uqkGw=
=EakO
-----END PGP SIGNATURE-----

--Qg6yPOTq78pxBnA6--
