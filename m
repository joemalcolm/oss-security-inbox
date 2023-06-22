Received: (qmail 1475 invoked by uid 550); 22 Jun 2023 13:42:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19497 invoked from network); 22 Jun 2023 12:52:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1687438326; x=1687524726; bh=3UmM4PVNLzHxChfasdZQkbnBIKtdMhn1I36
	qbdIClF8=; b=mzUB3L0DmV2t8+e9BOjDHOnbQgSAMbbNCqkbbaAjXri6hIIIpgY
	AB73PM1/xij8HJLTrvd0f0AzJWs1SRQmF66tbEdVmjrQKSI+a/4Hpb+4PSJ+grIL
	O+TY3VSIsibD4d7iV189vSV69BMW4cAWetxMVVjDHI0AqUFpkd5AAclOFB/w2xpA
	a6W8csac86NFXOdL5haFnzMPpKRWBC8MjsQy0vi83XpctrY09svrP9a3+vnXAFT4
	k7zDLEU2MYC1ih/JONFecTmkRZy4FLloZui2GtGvsL1PNFhJWcnJBT0pWmQzpLBN
	2A/zHTA5JIWfyKkwO7HZqsWOMcouGDEQkDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm2; t=1687438326; x=1687524726; bh=3UmM4PVNLzHxC
	hfasdZQkbnBIKtdMhn1I36qbdIClF8=; b=OZPHVAminp0ZB2wMsSgxCl/Eepzwi
	ed3zZ7h6Ra4f1GCZkkEsr1nPf8ms0NQ54zYaXesk7oOVkTx3UWyHeaf9tU3ozlQR
	IfKqm1E+5KDYa01VQuLHAjQkaNNHJruWTvmtttcGUtPOBv4pKEBmvPopUjE4dtUu
	1FFPg+tRRGGs4DSYchl0CiGqLUPI10bAERBzabx5W9YDIKuhGFoQenZgNcp+0PH+
	QKevLbwojYchm8LQbbRre0xD+Po8U9GgJqDTjyvKveOlVYUxJUX63OqnVKRnuwz9
	guPZnjCpE5IQSClI8SvpWmYtkXNo09aAICJ6Fd6uqfKenQTDYmcA7QExA==
X-ME-Sender: <xms:9kOUZLErIRMrDZ6BnLLoRWPUhL2Wk77ltsboarYZ3KtjhEeTrS-7SA>
    <xme:9kOUZIW8gv-q78p9OrgWwrWMrNCcZz7OPD9g2lkwoHtPXk7UIk_-7olRP3746gQup
    L192p6QghkC7Lk>
X-ME-Received: <xmr:9kOUZNIaBlhcig2t3uBG0aoXuo4nS6ZRCqlYFvDNBBFMFkjCpbn8ujIVlpk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeeguddgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeffvghmihcu
    ofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihesihhnvhhishhisghlvghthhhinhhgsh
    hlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpeeukeehudffveeffeevgeegffeuuedu
    ledtudfgudfhjefgleffkeefheethefhieenucffohhmrghinhepghhnuhdrohhrghenuc
    evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:9kOUZJGDLRH0OeB0hnT1oHIJT9vu0H7KoQb-bAxrlukZpFglw0zODA>
    <xmx:9kOUZBUPhXhfODjwRFTFLF0ST2BjT6mCz4M6f4aITgRChqoQmk31yg>
    <xmx:9kOUZEPmdno5WobOGHiniLShwDpVI3eayzRFjhVhxAm4SMfBoEvcXA>
    <xmx:9kOUZAAb7mxCNo-ahaWH3GrlFpA2_oG93rHrGrgp8oY3B-Qsz91njQ>
Feedback-ID: iac594737:Fastmail
Date: Thu, 22 Jun 2023 08:50:42 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Steve Grubb <sgrubb@redhat.com>, oss-security@lists.openwall.com
Message-ID: <ZJRD9Co3XtDxeuyF@itl-email>
References: <a37bfa30-f7d2-ae37-5af4-e3674af29a7a@oracle.com>
 <alpine.BSF.2.21.9999.2306220132050.17927@aneurin.horsfall.org>
 <ZJNx4OBlGqGFgOYD@itl-email>
 <1856911.tdWV9SEqCh@x2>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+0L+IfM59GMtVoar"
Content-Disposition: inline
In-Reply-To: <1856911.tdWV9SEqCh@x2>
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

--+0L+IfM59GMtVoar
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 22 Jun 2023 08:50:42 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: Steve Grubb <sgrubb@redhat.com>, oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2023-31975: memory leak in yasm

On Wed, Jun 21, 2023 at 09:53:54PM -0400, Steve Grubb wrote:
> On Wednesday, June 21, 2023 5:54:57 PM EDT Demi Marie Obenour wrote:
> > On Thu, Jun 22, 2023 at 01:44:04AM +1000, Dave Horsfall wrote:
> > > On Wed, 21 Jun 2023, Jeffrey Walton wrote:
> > > > Memory leaks on exit are par for the course in GNU software per
> > > > https://www.gnu.org/prep/standards/standards.html#Memory-Usage .
> > >=20
> > > Don't bother with this, don't bother with that, etc...  Call me
> > > old-school (which I am), but I cannot abide sloppy programming[*].
> >=20
> > Memory leaks on exit are a _good_ thing in general.  There is absolutely
> > zero point in calling free() if the program is about to exit =E2=80=94 =
the OS
> > will do a better job of freeing resources than the program itself ever
> > could.
>=20
> Sure, but how can static analysis or address sanitizers tell the differen=
ce=20
> between something created and leaked on the error path, vs something that=
=20
> mattered during the life of the program? Meaning something leaks in an ev=
ent=20
> loop and slowly accumulates leakage. Nothing gives you a free pass but th=
e OS=20
> when analyzing leaks. Mundane leaks need cleaning up so you can find the =
real=20
> leaks that matter.

glibc exports a function for this exact purpose, and sanitizers call it
precisely to avoid false leak reports.  Static analyzers can also be
told to act as if that function is called.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--+0L+IfM59GMtVoar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmSUQ/QACgkQsoi1X/+c
IsH+lBAAuEvDJ7nZhvb9sbRJeq8vVL0TBLW5XWP9WMjSH3Mkhv8BKeSI7n89yk3c
PsO10t9kyJsdCau66joM4JMP0A5qdT0A2So7fvdE+ErdSBKkxBFj59RRlx4EocXD
0TUxGygYqvjB7VTHQwKu/WWBrKZpHk8DHlDWz8G5sPcLFmrC0doCBfmcNCeTHM1l
/P2b8CRkS+h3w+HaQ/wIiTYX77rhQ3gUqaEPNFjAwogSCpkvYSOH5hsZ7PrpdU8U
oByJb3bZhhmqVrjFRoJKs5NlAQTDnx0HlBJaaHT5naYYtazfkRQlat2tryD1L0A4
bsB/dN4PKNC9h8gff2WoQ9QSW+R9G59J9xRP9WYrMSRMYPqQsFY5rZnjFO20HbZd
HtwcC2wyz0UalmIGGUo6Eps9yG6tHmbjCBBZEeujx0CfJOp0vl4tR2TR6aX1nfyz
PRvrf84+LyWDjuQ0e5+5/KiVi2YKlgH5zU1OxE6NAGOf7DCkCuYPWM96Hai2r2E6
fEDdsh22TizrMGaNFtNnOYulg9eBT6hZGKL8oyWTfy4usBdlATE5jZWPNiYZPdyh
bOgYls+DE5tXyU8bOxfB9jxONdtW29Up/u6RNRNy+FkTG4xLJlw8cf8uUJWc6gA0
iPvX6fA+zx/unSVD7p91Ry08/cyfT25eeFSbOdWxL67nkRsFqgQ=
=XbTS
-----END PGP SIGNATURE-----

--+0L+IfM59GMtVoar--
