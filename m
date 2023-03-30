Received: (qmail 22399 invoked by uid 550); 30 Mar 2023 09:27:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21643 invoked from network); 30 Mar 2023 06:57:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1680159460; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yPLKxfncgY8eYB6I5DC1XXTAm64qIKpg0zXn/LQg8ug=;
	b=FLRHIOpeUttqICUUn4nJruYs2EL96j3Aq0ihY9EcOdUhCIWJR2ay6TfSdiUZWK/FPF5Hh2
	RV4VYda+rTAZPtp+7bmedwPPgrW7fscIHG/OaIdv7LUQCpkWZiFmc5JoyMVhU0zJ/g6tkE
	EQYFGx5DSvKOZaVs1R3TS8Gy14ePIAQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1680159460;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=yPLKxfncgY8eYB6I5DC1XXTAm64qIKpg0zXn/LQg8ug=;
	b=WlG2PclwuG/9r46/SCzI8E7LDEFgB3p5EqgVOg1/G3N0x0eZlwnAhYEVs8pTZJRbLZwIpo
	j/524GGTFzm9jAAA==
Date: Thu, 30 Mar 2023 08:57:37 +0200
From: Johannes Segitz <jsegitz@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20230330065737.GL21675@suse.com>
References: <20230329133450.GK21675@suse.com>
 <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5BJhDJf0owydRUK"
Content-Disposition: inline
In-Reply-To: <ZCSQiSn/4nRls/e+@tautology.pseudorandom.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] polkitd service user privilege separation

--p5BJhDJf0owydRUK
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 29, 2023 at 08:24:57PM +0100, Simon McVittie wrote:
> On Wed, 29 Mar 2023 at 15:34:50 +0200, Johannes Segitz wrote:
> > This demonstration caused some confusion in the original report to
> > upstream. The POC is here to demonstrate the issue, not how real world
> > exploitation would work. A real world exploit would rely on another
> > vulnerability to be able to act as polkitd and then use the issue outli=
ned
> > here to escalate privileges.
>=20
> Let's suppose you're able to act as the polkitd user as a result of a
> vulnerability. Wouldn't it be easier to get root (or more generally,
> permission to do a privileged thing) by tracing, replacing or otherwise
> subverting the polkitd process?

yes, that's what I've mentioned in my report

.=3D=3D=3D=3D=3D
| If you can act as the polkitd user you can also likely influence the polk=
it
| daemon and gain root this way, so this just makes it (a lot) easier to
| exploit.
`=3D=3D=3D=3D=3D

For me it's easier to just write a file instead of subverting the process.

> polkitd can only be either trusted or untrusted, we can't have it both
> ways. I think the main thing that's wrong here is the documentation that
> claims that the privilege separation is meaningful.

I agree. That's was also my main concern why I wrote this. For any other
setup I would have requested a CVE for this, but here the permissions just
make it easier to get root, but aren't really a security boundary. But the
documentation makes it sound as if the polkitd user is a security boundary,
which it isn't.

Johannes
--=20
GPG Key                EE16 6BCE AD56 E034 BFB3  3ADD 7BF7 29D5 E7C8 1FA0
Subkey fingerprint:    250F 43F5 F7CE 6F1E 9C59  4F95 BC27 DD9D 2CC4 FD66
SUSE Software Solutions Germany GmbH, Frankenstra=DFe 146, 90461 N=FCrnberg=
, Germany
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moer=
man
(HRB 36809, AG N=FCrnberg)

--p5BJhDJf0owydRUK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEJQ9D9ffObx6cWU+VvCfdnSzE/WYFAmQlMuEACgkQvCfdnSzE
/WbESg//bKX9jTdjRtZFcK8/qd5Zy0i1hbkEYNztNlUKtM8rKloy1YC/wSeffuFh
PMrDCqDFXIoW+HYXjIxZG0HTdAxexifsYtMRejYQ0PxK5V/3dZ7LImmeoMmnEhIi
TW10V/u/116unjwKSjmAKQfUtwwbOEPXWoPwSBN1BEV80UVzy04T4Br7lDkSXJXm
JJhJ0wCgZDDBNfQ7SeSCt57QubFd8kS5rULS++UvzALPFw4UxqoOdkEyixaLXNZJ
PqdLXbruRT+pOeg13FbGIIY4dATY0W8zh+adz6pmlgSQ9p3q/lvtBWTmgvQ5dOw5
D5/dd8RPY36bKRrIQ33Qw7bE85NVP9JBMTYmrXHpCHARCPXTJYZcz8toSXKa7WHb
BtK3AQk9PStkA0OLfNrAqenKAJ5KGPtwnVqEYkLC3qOORUXtd+rVvss9RpJGzt0X
sIf24EbwRzLZBoJZdtgLQx7IqAh9nBhmQMb4e6neUkwxQ4IcB0Ov3ayuncQOq0wo
q/u235BmL5g5WKww/ufUO04vAZr1l98oWdjyH3letCB70+XZJeFrDGrT52IP+8oQ
TjkuKW0MlyKxwr15yUqoBEJuDeSCY//Xu8baCr3vooRMQGRKGzuNsUttttNSqDxj
YLzm/h/atJrt6jTG6Q34CWQvRVBbp86HbKB6zdAg4MrzN+Sn//o=
=LZkl
-----END PGP SIGNATURE-----

--p5BJhDJf0owydRUK--
