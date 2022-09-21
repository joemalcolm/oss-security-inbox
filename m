Received: (qmail 5780 invoked by uid 550); 21 Sep 2022 12:42:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5516 invoked from network); 21 Sep 2022 12:41:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1663764083; x=
	1663850483; bh=8TrIoPOgs589c3yqnULr09knisJ7yydeuXYKPvTBR44=; b=R
	6d9zEXEaGw3Dmjvo0HYBV28rv5HgX6inM3YhKbgEl7l6Ag2GSxVn5CTfJ6K5L3HJ
	797iMnOxfxIqpssZ6mufP6scUbsEUR75ISVadWMobTbmegWJPnFAg8S2K1IKHmYd
	xacEciKpidWOeK+oFf+Otj9NxEVpMsg1YiWRVkgulen1SABk4JIhtqnjYnAcMULr
	2XbEAITEHMSiWjCHPL3oV5h2SNRYO1MQ/kEtGGrbAGKvF2RNx4ze1ULXrRX2WC/l
	v2b3cEff+wBVY8HRHkVv3Uavaw7dmfu8Dv/+b/XiU6myZypTMURq0pw9UO3Sx+V9
	qzum4RbYtYif6f7emZoaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1663764083; x=1663850483; bh=8TrIoPOgs589c3yqnULr09knisJ7
	yydeuXYKPvTBR44=; b=xqxOX+1djzZ7YRkC5JS/QPIkyiQ6tV0CWj4SzcdZd9BJ
	DpP4DcT5O7bSGyPcM0TT5ouHGS9axBQaMW9ZeMPFtCK5uvHXcoEJIykny8Yb+AQe
	+QvGKAAEDMwmy+HMaQVX2DV/AQjI08n6Ap3GpWyc3OJql3LV8Bh3LZQ4u6t+yNgj
	7TQa/k25BaP1XWrqdtD1iD+iUQVYf0Z7hhQWSoJzWPV9W24HGbUTixjpYC3Y4fMh
	PRoMaVpWRYqT+B8kfMF2bas2eSvioeA0jk+SCnXfmFETGde4q9zJb0Jns8Qjoern
	UkV3ZBqNvO2cNVfAYiqGWTXd1ujSSh4C48eKOaTgUg==
X-ME-Sender: <xms:cwYrY4kw6F7uMa5ciXNBIl1bUVv62Em-xGflGoyOflnaCWMxqgz80Q>
    <xme:cwYrY33cudjI6TT6sKKhrckw5tP6hRxJaxkcVw5fx6Kx_yZcq61a-vdrvoIRATURc
    ZvCV3Eo-Ac86Bo>
X-ME-Received: <xmr:cwYrY2qH1-NC-OLW4_w8uJz6AEwBQqECg08e5x23k-2mXk4H3YGE09iq0t5V>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeefuddgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epieekieekhefhleduteegiefhhfeftdegiefgueehgfehhedvffevffelueeitdefnecu
    ffhomhgrihhnpehphihthhhonhdrohhrghdpmhhithhrvgdrohhrghenucevlhhushhtvg
    hrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhi
    sghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:cwYrY0lQCa1MEzpU_45MEDje7aftGhbJkSc8q6-r5Bj_K_gQZI9I7g>
    <xmx:cwYrY22JqJhFqRoP9GeOdT5FofcYgWa7R4o8N0YvBhnn8WMA-wOwXw>
    <xmx:cwYrY7sNnSJ-GxwEY9oU1iSZ-hvvZbw0bkHbu2sP2wylc-gvuIE64Q>
    <xmx:cwYrY3DDMBmWyy-cEPd8UBSkpicVLI-iDibJ6ubveCoq9KsoYIVI7A>
Feedback-ID: iac594737:Fastmail
Date: Wed, 21 Sep 2022 08:41:16 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YysGcZi/hcw7bPNs@itl-email>
References: <CAGUWgD8-9ST3-hxOTY+Xar6S88uuydz=ods4k1vBQq_GXXahKg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+MIrn7fPw/4dwuCq"
Content-Disposition: inline
In-Reply-To: <CAGUWgD8-9ST3-hxOTY+Xar6S88uuydz=ods4k1vBQq_GXXahKg@mail.gmail.com>
Subject: Re: [oss-security] big ints in python: CVE-2020-10735

--+MIrn7fPw/4dwuCq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Sep 2022 08:41:16 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] big ints in python: CVE-2020-10735

On Wed, Sep 21, 2022 at 09:17:21AM +0300, Georgi Guninski wrote:
> There was recent discussion of big ints in python and libgmp.
>=20
> https://docs.python.org/3.10/whatsnew/changelog.html#security
>=20
> =3D=3D=3D
> gh-95778: Converting between int and str in bases other than 2
> (binary), 4, 8 (octal), 16 (hexadecimal), or 32 such as base 10
> (decimal) now raises a ValueError if the number of digits in string
> form is above a limit to avoid potential denial of service attacks due
> to the algorithmic complexity. This is a mitigation for CVE-2020-10735
> =3D=3D=3D=3D
>=20
> https://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2020-10735
> =3D=3D=3D
> In algorithms with quadratic time complexity using non-binary bases ...
> The highest threat from this vulnerability is to system availability.
> =3D=3D=3D
>=20
> AFAICT the quadratic complexity is quadratic in the size of the int,
> that is its logarithm.

This is correct, and IMO it is just a bug in Python.  Python should
either provide better algorithms itself, or use an external library that
does so.  Using GMP would be a good choice where available, but would
require using GMP=E2=80=99s non-allocating functions, as the allocating ones
abort in out-of-memory situations.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--+MIrn7fPw/4dwuCq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmMrBnAACgkQsoi1X/+c
IsGHqA//X48B2FX4uz03Du5D2jVMOo6lG0Uj6c/fcH+cay+8h82t/wmBSXlA5dfk
t86vSOQ8Vvu+FX5RKse6rTqgv7XVtooEQbrDv/yhEkM0RPoDaXu5qXpWV/vCwKGL
cTeXjdf7XOlotQgGrxW5/v0RFU0iHzqLAnmdHLtmmCkDU5HrlqCLXM+jt9k+t5ay
mENdWDUfbyQdESexNrAcgNw6Of0+WGLQ/doraF8X/nylqkUs+MRWTiONQhJ5GpBI
FRPI8noA/3x89nJVlExEMA2hZyJKzgWR9G0h3Edn1ti4TjYXXxb5Rjq+8poh4Dtv
XMjz2FC8C5lyhQUDKvMOzxS93SffSssu2snz8LrkWmcfQyfxHWLLrdDi2PUDqERN
kqhxH0oAEET1yjrijdBVe1EgfNYFj1kPPTb4b9IZ9Vijg+2pKRWjKrFb6jAOfJcd
jAlCkcFDBMNVjVgfe55mHs+Zam4NF0hZirpnk9hHTtN48alFGF84ti63Ht3Dk1E5
F8iQwS+Y0/I+Q3DM7r5nXz3qR3PpLcpMntnWnYDmR2tLOcFzIolDVHGY86UMLulW
o7NA8PoNpEKEeHytw+QADx6VabsxkRUGXOiXvaYVsO0Yw6rtVW+32hrTA5lJh2ed
MFdatSuFZXOQ5BW3EHo90rm43/spoi3cRKflz+aYJBqvJW4JwhA=
=nPVh
-----END PGP SIGNATURE-----

--+MIrn7fPw/4dwuCq--
