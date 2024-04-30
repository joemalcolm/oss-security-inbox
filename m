Received: (qmail 16371 invoked by uid 550); 30 Apr 2024 10:13:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32501 invoked from network); 30 Apr 2024 01:20:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714439994;
	bh=m9UVp2raPSAuA3AXk/cr6A1v2ulq9LeQrRX9bXlSd4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=NqNumBWr6kfG9ytouyNb87HqkarIVFmxoQn40LLhJw4qubcgex+IL2dTH4mXklM+H
	 VCfg35kyzUHozYddls4J2ZZDm1tHdO4KhlsDMz7MMMcUSE3aikjRQdIIGrUEubMBpm
	 UOuyty5D7mMbCKL8z5Xr1A5XNQeeU1D1mFbwE81rxK3NfQ5GOoxeb2vw9kLnJI1Tu2
	 MQ0atQj3LaW6ZZMq+XCmDoUS1YAxh3r6eQ7bOe9CffCER+h0V/stp9crHpOtyYBvl7
	 8cgyNcU3bY9kr6GLaIcf3kqhbkcBLTNeTsnnzRqaO9faFEqn3bvo+7RFo3ywz4pKtC
	 1HZMuGpPqkMmw==
Date: Mon, 29 Apr 2024 20:19:52 -0500
From: Mark Esler <mark.esler@canonical.com>
To: oss-security@lists.openwall.com
Cc: Bastien =?iso-8859-1?Q?Roucari=E8s?= <rouca@debian.org>
Message-ID: <ZjBHOEHylGAaIo57@moon>
References: <20231221143630.GD14101@suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fSetIqajOx+G2Q/E"
Content-Disposition: inline
In-Reply-To: <20231221143630.GD14101@suse.de>
Subject: Re: [oss-security] New SMTP smuggling attack

--fSetIqajOx+G2Q/E
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

To mitigate future end-of-data sequence attacks, like SMTP Smuggling, MTAs
should comply with RFC 5321 section 4.1.1.4 [0] to strip control
characters other than <SP>, <HT>, <CR>, and <LF> in the DATA section of
SMTP messages.

> 4.1.1.4.  DATA (DATA)
>
>    The receiver normally sends a 354 response to DATA, and then treats
>    the lines (strings ending in <CRLF> sequences, as described in
>    Section 2.3.7) following the command as mail data from the sender.
>    This command causes the mail data to be appended to the mail data
>    buffer.  The mail data may contain any of the 128 ASCII character
>    codes, although experience has indicated that use of control
>    characters other than SP, HT, CR, and LF may cause problems and
>    SHOULD be avoided when possible.

e.g., `\r\n\x00.\r\n` _SHOULD_ become `\r\n.\r\n` and then (as per RFC
5321 section 4.5.2 [1]) dot-stuff the _forbidden_ sequences.

As per RFC 2119 section 3 [2], the word *SHOULD* implies *MUST* unless you
have a valid reason not to--which is never the case for these _forbidden_
sequences in DATA. This is why RFC 5321 4.1.1.4's _SHOULD avoid_ implies
_needs to strip_.

Also note that RFC 5321 section 3.6.3 [3] and section 6.4 [4] do not give
the OK to send along NUL or other control characters. These sections are
about _adding_ missing information, not preserving messages with
potentially damaging garbage.

Cheers to Pete Resnick for this clarification and explanation of RFC 5321.

This particular issue was first noted in SEC Consult's analysis of SMTP
Smuggling [5]:
> During the research we've also discovered some exotic inbound SMTP
> servers that interpret end-of-data sequences like
> <CR><LF>\x00.<CR><LF>, with "\x00" representing a null byte. With
> proprietary SMTP components and lots of different e-mail services
> intertwined it's hard to tell what is possible until an e-mail reaches
> its final destination.
>
> Even though SMTP smuggling might still be hiding in some places, we
> hopefully eliminated some big targets.

Stripping NUL and other control characters could have unforeseen
consequences. MTAs which errantly rely on non-compliant control characters
would break. Major MTAs are therefore sensibly resistant to enforcing RFC
5321 section 4.1.1.4.

What is the real world HAM:SPAM ratio of emails which include NUL? Would
it be safe to configure sendmail to `O RejectNUL=3DTrue` (which would break
RFC 2822 section 4 [6] by rejecting email which include NUL)?

What are the benefits and risks of stripping ASCII NUL and other control
characters from SMTP DATA?

Feedback appreciated,
Mark Esler and Bastien Roucari=E8s

[0] https://datatracker.ietf.org/doc/html/rfc5321#section-4.1.1.4
[1] https://datatracker.ietf.org/doc/html/rfc5321#section-4.5.2
[2] https://datatracker.ietf.org/doc/html/rfc2119#section-3
[3] https://datatracker.ietf.org/doc/html/rfc5321#section-3.6.3
[4] https://datatracker.ietf.org/doc/html/rfc5321#section-6.4
[5] https://sec-consult.com/blog/detail/smtp-smuggling-spoofing-e-mails-wor=
ldwide/
[6] https://datatracker.ietf.org/doc/html/rfc2822#section-4

--fSetIqajOx+G2Q/E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE0ZC278nRi4l3b3GjszvZgG6FIMYFAmYwRy8ACgkQszvZgG6F
IMa67xAAjqEUQTs2FVQICGuQ2fksHA5lFUivo8oR+Isc1iTLl2sWBNyB+3iiOOBY
bj4kdPb5uwYrtA9qTgA3ukXnRYMoeXZ6Wh7sRhNQ9uMRIBCUodVR5qzVMl1YQawJ
SIgCXaceA4a9vdCGhCYmbMN0KhaH4B2bhWcC2kAJcMTeDRNCMWfk61OAXjxbh2Iz
s9D+KK/HqpaePdSgxQPeoB/z80tFB9TMkV+C+4CZsbKgQjNWc2KcvHQN4BI8mbOf
hiQKJiOLSazGi6X2oz3dRSTCtPZLQ75IswSAwkLPh40zrbA7QyvDVlMgXsY/84Ts
Oq7QoL50KOtjVWHjbCKkImp0OXNL4cELUJTfMXUaKX7+/lJxGaeimxmIF5IjxZdG
wdSdI1T6tO4eVbTwPSd1onULWYLZmE5NpXuggyuztFp4IhcxJXHB2mBh5fYPU9Vw
oEUYTgBE7oAaF/LaN87vP26P93PAtryqRfJAxfjKr3htfuJ3UT+rdildoHwsPT29
m0LZJTTQD+srRCPmrDNaMkIpCKZLQp//2RhXvjAnIDqYxBrgajOYxihNdSbP9B/m
pM09Raxzx8qKFI/wfO2Dv5+vTNVqQaVRv9/fPXIFw88S7qy8PHdRjSaiWNIxZ13k
iA/2ltlk0TP7J1SzUjiy5GaLiHR53/5RuGTasWVDGjEtF6HPZH8=
=Xk8T
-----END PGP SIGNATURE-----

--fSetIqajOx+G2Q/E--
