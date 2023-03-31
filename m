Received: (qmail 24300 invoked by uid 550); 31 Mar 2023 12:06:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9625 invoked from network); 31 Mar 2023 07:02:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1680246155; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FsutdRu1+7Oa90kENYkOY7DYwo4GZnCGgsrULMMAY8M=;
	b=rt9dYWebxJ87WduaBOV70/xf01BzXQkpMDvI6VwKMO1xdtpHGe8BA2OfZRugQmg3Tv+oFX
	t0k/nG5lsfdUy0LtgNm32QZz1OdyfBpqZs4YmT7gPGG/w93dzRRtUbVPSSY9MNOT8Ff827
	N1CNvTeyr70kCk7+BSK01b6cmVbBTJ0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1680246155;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FsutdRu1+7Oa90kENYkOY7DYwo4GZnCGgsrULMMAY8M=;
	b=qR24x8honzC0h7xjclxFk5t3LzkfWo93twIbvIrQIC3zfa4VNJNfWG+I9J4FfNaT5+caYK
	MY43ThqqlPfQyEBA==
Date: Fri, 31 Mar 2023 09:02:34 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230331070234.GP21675@suse.com>
References: <20230329133450.GK21675@suse.com>
 <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
 <jwJLRnVfw9qn5wsHzRxO4mCtkAMJs9l7didEzdt2C9UBuFA7Td4ERwLG_9ZVtCy2SyomGMnZAgYJfJAjXhubHz07SaIQwTLmJemznO-W4CM=@protonmail.ch>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PEWkPmBCIbC5Tcj0"
Content-Disposition: inline
In-Reply-To: <jwJLRnVfw9qn5wsHzRxO4mCtkAMJs9l7didEzdt2C9UBuFA7Td4ERwLG_9ZVtCy2SyomGMnZAgYJfJAjXhubHz07SaIQwTLmJemznO-W4CM=@protonmail.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] polkitd service user privilege separation

--PEWkPmBCIbC5Tcj0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 30, 2023 at 02:08:10PM +0000, Jordan Glover wrote:
> Is it valid conclusion that polkitd would be better of just running as
> root? That would clear any possible confusion. Or are there advantages of
> running it as separate "trusted" user?

It adds an additional step an attacker needs to take before having root
privileges. Also it is not just about security, it also helps to limit the
impact of non-security bugs. So I would keep the service user, but add
clear language that explains that this isn't a meaningful security boundary
and that this account needs to be considered to have root privileges.

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man
(HRB 36809, AG N=FCrnberg)

--PEWkPmBCIbC5Tcj0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmQmhYoACgkQvCfdnSzE
/WaIpA//e0oEXadfGewqfozbX7sL2YmhZLnYvioNpccNE4LKbKo/wCpKMGGUke38
fRWMUTtif4sqCVFO3Ow9iDubuF0fU9aBU1Q572vOkE3wtT4SDc2IJ/6Tp5XalrUv
DXxds/fB/eP1MfEvhG8I48W3XtgvFVgD88XEMQNEgwPyqkg0cNSHi9PSC+FUf+Xk
wNDpHy3H45cKniZK+/KyF6Z60idFqgE1Rot9fBAjMmSvp0Jq7ELR1lLM5rM6NPr/
5/6YBxlDg5XfQj/hjZcCCEhuBwHQWHrG2u9qhq/ngKitJ1R0oGNntH4nnKvb2y1O
574Q417k9lQs2QKkmAbjTwu2SyFmg9pfNI/+k4ocoxthut5OFTp0Ays1489tDjjL
rXxCi8KV3QntFM69WYx30XuSUGdNS+RazmEAr0YbI2tuxP9++vCs+SXuctVn1cHG
4k4BkEa/WPFt2vrFBsBJ4VCmw4fBoqBhzFx+wZrnRivAV3r+hmcHOoLkHo/nz5tM
9EmeyWMzhuhcWts5RPRZgxr/g/XsFRVtqMIPgubRpvY9jH43SIQVJ08DRPseRSFP
o6ReKnpZz0viQQS0RDxX4fwXIQZ72+iqxscL5nSZFB0416Pqa1Gdjobue9iqocRx
QWPn0W7FMb2PxCqNGS8vVUb9I9syOJzGeEvPhjPHu0+GhuVAsto=
=qRaP
-----END PGP SIGNATURE-----

--PEWkPmBCIbC5Tcj0--
