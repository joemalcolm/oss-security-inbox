Received: (qmail 27710 invoked by uid 550); 1 Nov 2022 19:57:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27682 invoked from network); 1 Nov 2022 19:57:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667332622; x=
	1667419022; bh=g62ftjFMyVSBSQtxJ+8qT/XDCPkNWZidu1ZiOJjsG2w=; b=K
	BHSXac4N7Qb1zQl/OIV08+fs+PD0D2EPWwPpsPJCBrr21L7T26OCBlxJ2wpYAXW/
	smFbfQOYX5+l2tXKcyJNp1HK2z1LWmjK60Q4KYwbkuK//0pzFfpzM8l10A1Sd+hb
	/aYm2Kn3Ih+oswo4AGtMNt5BD8nPZ2hTclowQQZb23XwASAaI+vDh9jH/OYwCrDm
	Mi9IzyAkMNkaVe33EYK0AEFft+36Ong2CL9HqDzDDT+qlqBGgxH9K2RK54VrBCej
	muxvVXYXvExjL971OGavwgcvffk5enBnkw91XjFfQI2FPOuYejR4gYOUBl1B5zct
	r91goqjVjqkbo7UBuQXCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667332622; x=1667419022; bh=g62ftjFMyVSBSQtxJ+8qT/XDCPkN
	WZidu1ZiOJjsG2w=; b=dpz5aD9ixFHtdv6kLelQQUMNpGaFXhuewHWEh9As2kbO
	SJ9SyqaFJz/YGsW4F6qaC3WHgf6ebKtvVvikPSJcsAAxT1o5NjQrBxNzYDzbQ/K4
	1HzyhQ2zvkz4qzO92ee88NgaC+NxHILQIikkXTAdeKjDxdiBSx8C4aHZWKNZhNO9
	nJEK+FrFXpxnBZs4/CBknlzjHSUjtu4SE5wE8nD9KNTociUPEhCZF8WlINHPTm1E
	GdW7fjo/LQkMPZkT0wxCx7ImmEqNQxfOP0hx6xf6uu1naA+KxAx9AN2tcLXaEFkS
	RhR3z71DAeT6lNsxqCEKPWKw6gKZTvzWuGutJj2A2Q==
X-ME-Sender: <xms:DnphYxGQsMTBtbfE9NpfEpYoXVZucf5zUehlbsYz5MHGxX86Nk3_aw>
    <xme:DnphY2W5PjYDpK8pCsBQVUKdkRTP5ibKLntO7OEDeny4tWCMR92FxBbsXTfQWNi9d
    4_yk_T2SNSFD_g>
X-ME-Received: <xmr:DnphYzIGwunmqYfe40yqa5Yo45sCB-Nuqj80BGztVbF7fDKa5GEyIOfduM8o>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrudehgddufedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epvdehheejtdeikeejkeejveegveejgeejgeeuvdevgfefkeffffegteduteeitdejnecu
    ffhomhgrihhnpehgohhoghhlvghsohhurhgtvgdrtghomhenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvght
    hhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:DnphY3H7KDAfE6MhloUklOtKpa6GQjmNWKeeNFvSNlTzqkrDET7naw>
    <xmx:DnphY3VZylmCrA5rcGakleq24jRpIhQxM8iRrJzem4ZCDgoBpk8Aqw>
    <xmx:DnphYyPRSXYIm6Kr4o2LuTw3_-OfoDLwxEkTINoR3Rl5CJRi43aVqw>
    <xmx:DnphY_iLAvJe7TEQ7ZMF6mj2peiqwE4TWNWiLkeY3CCJJTWscalpLA>
Feedback-ID: iac594737:Fastmail
Date: Tue, 1 Nov 2022 15:56:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y2F6C/dZo5njPUfd@itl-email>
References: <20221101170833.GA10470@openwall.com>
 <Y2FhxvA/2e7xFUiF@itl-email>
 <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y7OB7lgTSr0fBxKe"
Content-Disposition: inline
In-Reply-To: <alpine.BSF.2.21.9999.2211020631160.34372@aneurin.horsfall.org>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--y7OB7lgTSr0fBxKe
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 1 Nov 2022 15:56:57 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Wed, Nov 02, 2022 at 06:35:42AM +1100, Dave Horsfall wrote:
> On Tue, 1 Nov 2022, Demi Marie Obenour wrote:
>=20
> [ Massive trim ]
>=20
> > 3. When will OpenSSL be replaced by something written in a safe
> >    language, or at least with a better-maintained fork?  I know that
> >    distributions often cannot use LibreSSL (because FIPS, ugh) or
> >    BoringSSL (because of no stable API or ABI), but I wonder if e.g.
> >    libcurl should be linked to BoringSSL instead.
>=20
> We see this over at https://boringssl.googlesource.com/boringssl/ :
>=20
>   ``Although BoringSSL is an open source project, it is not intended
>     for general use, as OpenSSL is. We don't recommend that third parties
>     depend upon it. Doing so is likely to be frustrating because there
>     are no guarantees of API or ABI stability.''
>=20
> If even the manufacturer says that you shouldn't use it...

My understanding was that libcurl gets updated whenever BoringSSL needs
a change, and that libcurl=E2=80=99s API does not depend on what TLS backen=
d it
uses.  Applications would not be impacted, since they would only use the
libcurl API and ABI.

That said, this would require constantly updating to new versions of
libcurl + BoringSSL, so it might not make sense in general.  LibreSSL or
rustls could well be a better choice.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--y7OB7lgTSr0fBxKe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNhegwACgkQsoi1X/+c
IsEcjBAAwxA2nHriJ5QBPuK7IdA9OaBTk0+ZY33o+ShBoJw3N24NW4ZJUsxvxU1w
jLy+UmvKlX6BHPimpYrLvhnsM4rbBd3LcaA1R+SzPKQSbDTak7pYJtik2q3rWPUF
L0LF52g+AU449SxaySG4gNUWSZBNZC/+kgrP3BwAG//MUMDaKOZTlxE6VG6+P2yr
qLLcv3h/XAMDceZbY9C2CbQwMhQuJRKcf1O7IgvL7oI9u9FPSERcaW61kr93JWK6
3hqPqnxsb8TWdovqawdbA2J7INXs82B/VBirRcLMY0Bzw4H8i+G6oRDZAyqup8wW
s4QumavnWBIWMpDhpFHk10BDH3FIw2WmBVn77BDGoISfuNC6Ja36ESYoFC1CDXEZ
0bIYv7PMlkEJ6+rHviGq2dSntC00E1JL/FyHZmRnHETgDsPKN0Jwj3s2C2+d12L9
X5vMdgjBpxFti2PMYUOpozs38KoqTDYAaKxWqEwFSmlr/AGEeaZ1gbUNXkNd3ccH
2H/rzKCq6s8eEOY0E0neepmcTfrK1nz9tkdek+lsmLdKGHX+RmuVJGK7YuXcGbC7
2M7KvG6O80hUF0lLrioToAkPsoRt2VdUhioqsNseOIZfd2kmRiX8bOKxJS4sqLpV
wKtb2cZBngLnR8xvzc+CZ89ci6VOzxLCo3UnzAzh8vi9DbJsPw0=
=diwP
-----END PGP SIGNATURE-----

--y7OB7lgTSr0fBxKe--
