Received: (qmail 7676 invoked by uid 550); 28 Dec 2023 18:59:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21870 invoked from network); 28 Dec 2023 18:31:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1703788331;
	 x=1703874731; bh=VE0uAr17SdVqgHXCQ4q4C0QWdxA5KIU7chYVkCbfY+E=; b=
	dS9Pdw91odOm7SQMyJ2D5iUaUQaW/S6vLIEG8pkLaBnpbsIwvTqT2MGQLZ7NCpXm
	yFjdKMH9OosAFrpE1Uz+y48pvjx0gYodQiJwxXHd+4u0WLsbuprmNdiywNWUw10q
	3fqN9uXjDDFaYvQsQ9r9k84L8FsxYiuyjScN0VgtwpaI47febLcnj6YaZaZN1Fp6
	Ckuw6CobRFAfG4Oa3FneF1034+5q4oMjexGd5rDz62TSVEcr/Tm0Omb+joJ0nGz0
	rIUauVPlGXdHUeAYdlllDI2eki/5kybDDJEWz6JA6xchMUcsHHv1UaOeQsgk3j6u
	IbU92R0jM5QVdaWLWOf0hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1703788331; x=1703874731; bh=VE0uAr17SdVqgHXCQ4q4C0QWdxA5
	KIU7chYVkCbfY+E=; b=mv6H7U5uenQsYY9W1iDU5AXEqZ2lbPsJ5HRf+S58GYkf
	/L637VlosceX39cd607tM03kVd2Pp0g1S3oCQE9r87HCIWvA3pRZgOE8rNeM6Qdu
	GbR87OQWaJ6OaoizxY1r3ahaNcVsX7k6eYeR5d/n4H2R+DwbOioYlH2uMh+SEdON
	0DlRABlNEJAAZx29f4f8xd5iLyR/Mv09Cz7RyOie/8QmZNGInruJOWWUVStCsqMK
	/qNZWD0K16W4T9NvqJ3oJpKF1ZEEXeSXs6iT7i3qJlOzT2yh0GgNHPJjNUngc+ul
	0YX7Usrz3kVFgx9D1pDTvDFacm+N4FMwpSwGpB6MwA==
X-ME-Sender: <xms:Kr-NZeTV6-4ttTfdAXDuB5GblIhmhzituXVJjaIg6660nCIrZEOsqQ>
    <xme:Kr-NZTwGu8omYMiHbul_AgQL5bV2q8g8Uc3KDsWhTaIt8P5b_t96Nb9BblhKnzA6a
    db9Ww3afLEq19k>
X-ME-Received: <xmr:Kr-NZb3n6xeMRAPGfHTe5KnCIGYVsz3-eIXtpt6qeIX1kZ9w65K1PTlu9r3OUWyE15UJhrpHGkAkNxIWDJ3dnSL2jwuX-3HitFCWDZD98jtOb69y>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdefuddgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmih
    esihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:Kr-NZaDlxO4JbAhHK2kxcpxFDaU53SGzqbdID2iNF8qlIK0BjYuUoA>
    <xmx:Kr-NZXhJ5ztZMB2lPBqmornzLH7X32Cb_hpwyY-kyC-xmcz4J7suMw>
    <xmx:Kr-NZWq0Apkw7joT10qST8bWwquGsEjnufKj60mrzQ5fxixTD4suhg>
    <xmx:K7-NZSuZg1j-g5lyaJqMA_0UokdoQxrhJY1ImP1TzSfPZQtQiSJ4zQ>
Feedback-ID: iac594737:Fastmail
Date: Thu, 28 Dec 2023 13:32:07 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZY2_KYCRMCjlL9ED@itl-email>
References: <2023101622-imply-tidal-b6cf@gregkh>
 <ZS1UPsZo1VyHDAkV@itl-email>
 <CAMr=8w4N87t24jrRzw+hLHnhB9EoYDtjgic8yVPBqv6jJY_ZvA@mail.gmail.com>
 <20231223181636.GA8305@openwall.com>
 <CA+-XxSE0v4B32UjrVZgu5WUpTb+78W3zpupnoJq4FeR3omPGSg@mail.gmail.com>
 <CAN_LGv2C4DNFaK2TRA5upQuwaP=SY3K6zzOzp7zT8J-k1HaM0Q@mail.gmail.com>
 <20231225220925.GA17188@openwall.com>
 <20231225233836.R7BLTwQ-@steffen%sdaoden.eu>
 <20231226003555.GA19071@openwall.com>
 <2023122830-stopwatch-sierra-7cf0@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v1QsHwu7jZDLw3L8"
Content-Disposition: inline
In-Reply-To: <2023122830-stopwatch-sierra-7cf0@gregkh>
Subject: Re: [oss-security] linux-distros membership application of openEuler

--v1QsHwu7jZDLw3L8
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 13:32:07 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Thu, Dec 28, 2023 at 10:31:42AM +0000, Greg KH wrote:
> On Tue, Dec 26, 2023 at 01:35:55AM +0100, Solar Designer wrote:
> > On Tue, Dec 26, 2023 at 12:38:36AM +0100, Steffen Nurpmeso wrote:
> > > and i really today stumbled over his funny opinion
> > >=20
> > >   . All "early notice" lists are leaks and should be considered
> > >     public.
> > >   . Unless your project is not used by anyone.
> > >   . Otherwise, why would your government allow it to exist?
> >=20
> > I think Greg's stance on this is inconsistent, if we also recall his
> > preference against full public disclosure of issues discussed on private
> > lists and his running of private lists on CPU microarchitectural issues.
>=20
> As you are referring to my talk here, I figured I would point out that
> later on in it I do talk explicitly about the private lists that we run
> for these CPU issues and how much we hate them.  Companies who are
> currently not on these lists are actively trying to circumvent them to
> get access to the information on them, despite all of the lawyers and
> governments involved agreeing that this is the best and only way we know
> how to handle these types of issues at the moment.
>=20
> In other words, I hate them, companies hate them, and governments hate
> them, but no one involved has solid ideas of what to do instead.

Change the incentives so that CPU vendors decide to produce CPUs that
don't have bugs, and therefore the lists aren't needed?

I'm not sure if this is practical, but if it is, it would solve the
problem.  I also am not sure what the unintended consequences would be.
Mandating Speculative Taint Tracking would get rid of the speculative
execution vulnerabilities, assuming that it is implemented correctly.

> "Luckily" I think that laws like the CRA are going to make them obsolete
> in a few years time so maybe that will cause them to go away as I don't
> see any end of CPU bugs happening before then.
>=20
> > However, the concern about leaks is valid.  I think the most effective
> > defense we have is the 14 days maximum embargo time, which removes the
> > data's long-term value for potential use in attacks.
>=20
> Again, I still consider this a form of blackmail against open source
> projects when you do this, but hey, you do you :)

--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--v1QsHwu7jZDLw3L8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmWNvykACgkQsoi1X/+c
IsHz0RAAi77lXNPgXvuprMdMzYPrTI4j1qnnuQ9meI7K2RsrNG4gmgs3vsR9f268
JS1vhQadck92CZbLfCvs8fQoCYH+sr1Shv36Ht6WG20n7jXX8wqXNuv18P3tgVCI
LWYqtcLuu4jwt4L2gqHmmY9Mi7TWY6nRllhxgDcSI2HdgJc3VCVUEpPXEOu5xPOc
aNH9rgPAXUwdeAmXvMZs+JhlMwuIXzl/KCHKqN3oOg9NyiHE+UlIHbdLU2YOcrKs
Y2lhEzwMyw7QsrXh4yGMzk3xJQBu+uiVmpZRAPxpaOt2cBlxN9PaUpARed5mJ0OA
HTCrIqACpb3T+RamamBIxu76FYbDco4JKMPxRz282GYclJy7sosIVR96UuJN0ioB
43wHJqwddbyqJLx6NU63SZxUi3C+uoVpgsKSQ/egyoQtzYmXM0mHpOZNlrGbWxWz
rI91w5OwcSNoSvK8C3/e2GIFVLV3lBgu+YkC1wrae+TVOGINSMFbE+H9RooEV47C
hMPvN+wfaNA8pddJqd0X2jkDEM4Xdcb/ABQzyBeHmRFHj5U4lz1OPg+EkNzBQ8m3
zOX/3wOU7BwUHJHJn/HXs4XxB9hKQxO6f9P8We1qS4XcH5eU9XQQP0GLqRXeDdG5
C+md0U5SXl1OPwg367EwSmTM5/+3aYJFYPcMcaDl77HADBKfSXI=
=DRyx
-----END PGP SIGNATURE-----

--v1QsHwu7jZDLw3L8--
