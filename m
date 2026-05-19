Received: (qmail 3686 invoked by uid 550); 19 May 2026 23:59:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29746 invoked from network); 19 May 2026 23:46:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riseup.net; s=squak;
	t=1779234393; bh=0nrM2BLuEOOkp4Dh9YfaT0d6NSQ4SWhd1rnYz2eleRs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=h3tLd+8Ry/qopfhT9mBNeMOUqsiYEADVcl+X2mhXfmSz6jtwkMMqysqrhQjv1zcg9
	 PjxTc+mcdJyUHC0u18VeHGXIVhkgPEqddcblaUF2vtZXBSybXWn9x7JRP9YACNPvoT
	 gQwHsG5OH7K4PTagqi//wX2S8DxosJAJ0KVH3WI8=
X-Riseup-User-ID: D932CCCE7194B980B751FE817A43C650F0C96CE4693E2BBB8ABA0768A78B5AFF
Date: Tue, 19 May 2026 19:46:29 -0400
From: Aaron Rainbolt <arraybolt3@riseup.net>
To: Simon McVittie <smcv@debian.org>
Cc: oss-security@lists.openwall.com, arraybolt3@gmail.com
Message-ID: <20260519194629.3e3dfa65@riseup.net>
In-Reply-To: <20260519193042.3feb8374@gmail.com>
References: <20260518220116.170677b2@riseup.net>
	<agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
	<20260519193042.3feb8374@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/=SpB8ny2LjfGfoN5bWb_xmN";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] On the issue of MIME handlers that execute
 arbitrary code (e.g. Wine)

--Sig_/=SpB8ny2LjfGfoN5bWb_xmN
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 19 May 2026 19:30:42 -0400
Aaron Rainbolt <arraybolt3@gmail.com> wrote:

> > >If all applications followed the xdg-mime manpage's advice to never
> > >execute code when opening a file, this wouldn't be that big of a
> > >problem. This is where Wine comes in; it ships a desktop file that
> > >registers Wine as a MIME handler for
> > >'application/x-ms-dos-executable', 'application/x-msi', and
> > >'application/x-bat'.=20=20=20=20
> >=20
> > Note that not all packaged versions of Wine do this: for example in=20
> > Debian, this MIME handler was disabled in 2013 in response to=20
> > <https://bugs.debian.org/327262>.=20=20
>=20
> Good. Unfortunately, convincing upstream to follow suit is proving to
> be a challenge...

Someone in the Wine bug report mentioned portability as a concern with
getting Wine to handle EXE files transparently. binfmt-misc can be used
on Linux, but not on the BSDs, which Wine also supports. I'm not sure
there is any good mechanism on BSD to mark a file type as executable,
which is ultimately what Wine is trying to do. MIME handlers are a
(bad, but possibly the only portable) way to work around that
limitation.

--
Aaron

--Sig_/=SpB8ny2LjfGfoN5bWb_xmN
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCagz2VQAKCRA5rdye4jrr
CCBwAP0XABFTeG5OPIs2N+ASIgiG2uSqn+RC4iLWTInC9ItlSQEA+t+BluGpZvlB
W7BakpnoWnWwHvccqB5t4HUFN2bDEgc=
=DORy
-----END PGP SIGNATURE-----

--Sig_/=SpB8ny2LjfGfoN5bWb_xmN--
