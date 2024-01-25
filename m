Received: (qmail 24298 invoked by uid 550); 25 Jan 2024 10:31:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24280 invoked from network); 25 Jan 2024 10:31:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706178818; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P371//R/K8JcYv/suhKqLvH0IqPcdBhCk/Rs0BC32k0=;
	b=tPLifZKsU9pLAsdRoq5Hn7fZ5RHEOhXwRwaeIT5FcOWyMYMSJdRX9hKP5lo+n/bFz/si5c
	WbxQceWwNIvvHpmJ6hYhdfXo9eYkHhh3lGlmhrSZLVd44KCCmWLreD8Tb9BmfTHwcpnr45
	0ss2sd4oByenpXKqtmWr7bGXr+6a+m0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706178818;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P371//R/K8JcYv/suhKqLvH0IqPcdBhCk/Rs0BC32k0=;
	b=lpR0qYX700eGV5I2NcdRY2y5Zo4sUpcRY1vegaEVenJT5s2fLQIdCrs/dy1gX0g+lQI805
	Cy13E3c2W8K8BPDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1706178817; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P371//R/K8JcYv/suhKqLvH0IqPcdBhCk/Rs0BC32k0=;
	b=19Tfi+E0CW4JEuV5G80ce9lOgwfBIE1gtiaFLdVER97UWDCY6YGupl4nK3BBeKHJkusl2q
	tQy5Mi6Lnz7RxT8NexB8ZVm+ttabelHAHHzZya3S7BbMKmIBJTU66U5VB+nky00MbVcccl
	Jawtq/kQRlR54ZSM7RuUgp3eoNHMS3w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1706178817;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=P371//R/K8JcYv/suhKqLvH0IqPcdBhCk/Rs0BC32k0=;
	b=T8BOWDF/rTvq2Yp5G39OAI+43v0jJ7FQeAJQtJYWBk9j4Uf6MD9KkVzKAtpcWQaniAyh9/
	awZE8sJJ4lLtkKBA==
Date: Thu, 25 Jan 2024 11:33:33 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <ZbI4_WWhLwsuoOKq@kasco.suse.de>
References: <Za-XWUEPml2pcATt@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0pZi+PViFSzq7TbA"
Content-Disposition: inline
In-Reply-To: <Za-XWUEPml2pcATt@kasco.suse.de>
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=19Tfi+E0;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="T8BOWDF/"
Subject: Re: [oss-security] darkhttpd: timing attack and local leak of HTTP
 basic auth credentials

--0pZi+PViFSzq7TbA
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Date: Thu, 25 Jan 2024 11:33:33 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] darkhttpd: timing attack and local leak of HTTP
 basic auth credentials

On Tue, Jan 23, 2024 at 11:39:19AM +0100, Matthias Gerstner wrote:
> I requested CVEs from Mitre for the two issues found during this
> review. They have not been assigned yet, though. I will give an update
> once I know them.

Mitre assigned the CVEs by now as follows:

> Basic Auth Timing Attack
> ========================

CVE-2024-23771

> Local Leak of Authentication Parameter in Process List
> ======================================================

CVE-2024-23770

Cheers

Matthias

--0pZi+PViFSzq7TbA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmWyOP0ACgkQFMQFyXGS
NVMFIQ//fooXdtGps/G0UL96ToriaQ705QX2WwP1H366+Nygba3hRSRP1XI/6Nz4
ZcFW+Cvf6LNO6hXsnhBp3wv5D60ge71mID4KSBWKuqtRIW2DL6ucBD1kC3FMJQJM
LTlH7cMm1DbupAhD/xQ8OFONMHE7uWjPNqMry1G+KHCeYUP/t5YQwcSr/qt2PO5W
0fveg88sPGeqJzWWCRlv64kDsr5cx79Qg1qgJuB7G42d+d4c3J2IlE80GPalMjiS
Y7tXCmpPMTDinPBnMdSWQybW/6wk9JFQMOMBHWs+9d5YKz0old83aj5Xw4D0C+gr
XVPwTf5Pfck9+y4ucuJiGZA5Z33y05S5f53fPy4xQkZD+rJhCDyVH2k4lOAzl2ae
OAD3xbk4ZhlQie3JVoFn9VRLB9Ld1mlwQt74nwb+HTdh/sxiLPGYdBqlUA5gsi2L
Gm7Ksk72qHNfgeppM3MgR++uj1CeQO2UqShE1sBkCrZSP6LCpinlpy3jfvR/ADAP
eTnsxnqE56+qk8AC+x1KgJUwbMhkEt+uGQF8uAnPARa8gCXONaFMshrJObfBh5mE
5nBTzXBjZ4DOdLyNKtq1FWKVznpqcM3fPh82D2R4Pp561mP8ulSGFYAjJ/YCCI62
YTNQb3JGvEw9vRALbyHdSKL6Iq9qkS9U47N33MrteVwJ8rR2CtQ=
=YzWQ
-----END PGP SIGNATURE-----

--0pZi+PViFSzq7TbA--
