Received: (qmail 19777 invoked by uid 550); 28 Apr 2022 20:10:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19758 invoked from network); 28 Apr 2022 20:10:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1651176605;
	bh=cIcMWQQitXwxE6K9d9ih+fOrXYuRR8gC1B+asSWEIpE=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:In-Reply-To;
	b=HmZ8JHAejzt9rmfHS8By8yNjRCdDYJkIVAJ6fgm/E+gB3bKvPYHmnnj03yLoRVlxu
	 7/StfGbqk7YyJttxLghNsZtzf2Tl/4q+tY+YdxpV2XB0J1kTO1DKSQUh8ccvyewZyB
	 xGFdc3+DsqsrNH6BFoM/jTP1PPazvoSr85DEDRa/V3PltX+IJPDkn3Xh3r90admrI+
	 Bizwp0lskhk3tPW/kYHfc1JHBJZTZs9eVMiw2seBd1X4bruqrnJo98QbcEVCSy46tY
	 hTTONsfI7U5k06agf40BetHm8AvQfxGFXZzyJSJ9Ta2xt3TMG1voo/uWRyAYmqjrGi
	 bcXzqFHWDv3Ig==
Date: Thu, 28 Apr 2022 20:10:03 +0000
From: Seth Arnold <seth.arnold@canonical.com>
To: oss-security@lists.openwall.com
Message-ID: <20220428201003.GA1260523@millbarge>
Mail-Followup-To: oss-security@lists.openwall.com
References: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline
In-Reply-To: <484488E0-D662-4F58-80DB-499DE532FA3B@akamai.com>
Subject: Re: [oss-security] CVE-2022-21449 and version reporting

--liOOAslEiF7prFVr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 28, 2022 at 02:12:04PM +0000, Seaman, Chad wrote:
> In what universe exactly are versions omitted from vulnerability
> reporting because a vendor =E2=80=9Cno longer supports that version=E2=80=
=9D=E2=80=A6 this
> non-supported version is still vulnerable?

A large part of software maintenance is managing technical debt --
and being able to walk away from no-longer-supported products is an
important part of that.

Would you expect Microsoft to evaluate Windows 3.11, Windows 95,
Windows 98, Windows ME, Windows NT 3.51, Windows NT 4.0. Windows XP,
etc for every single vulnerability discovered in newest products?

Products that have reached end of life are clearly communicated as no
longer supported; see, eg:

https://endoflife.date/java

There has been discussion about releasing "end of life" CVEs that indicate
when a product goes out of support, so tooling built to compare lists of
CVEs against software that's installed and in use at a site can report on
it, but unless this is consistently applied across the entire ecosystem it
is probably not useful enough for anyone to issue them.

Of course, anyone asking for vulnerability information for EOL software
can have a conversation with the sales team from their vendors. Probably
every company has a price where they'd be happy to provide this
information to you.

Thanks

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEQVAQ8bojyMcg37H18yFyWZ2NLpcFAmJq9JcACgkQ8yFyWZ2N
Lpe7/QgAn2DHEwRNxFQ6yE0zqC7pX6v5XCtRe9TSB/FgwA5AA8MTnoW0bqganCXJ
b92nM1psWfDdKFt+uqV1Ayj9/PBeXos59J2jDPNrK5v+6fuvhJ2Eu03w62QlaXWZ
UvN83nM7o4C0rZt8dtrVASU6mcClyfkuy++m+5mOg4eQ0FiFRPvyh3E84Z+fa9Rf
Rcap/GB/MXr83EmoolPnZANXoRrBveRMX115IfiJT/cuY0oGV7OTxHDEgEyKSJ6A
EhPx6Oi4zlZl5/nJtEmT1xK9UnwgViqmNTyWmc+wH6JHmMx7y5Khno5FsRGzAV3c
e9ljlm2o20vynZujwMLj4Fw+O2PSyQ==
=rpUc
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--
