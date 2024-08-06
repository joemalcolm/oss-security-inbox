Received: (qmail 13554 invoked by uid 550); 6 Aug 2024 18:58:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28007 invoked from network); 6 Aug 2024 18:48:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1722970098;
	 x=1723056498; bh=Zpp4wcMsj2B2TGcfnXlJ9ljxed2RuwDLPVJJybbksuM=; b=
	BV7udk6GKN/IzXWng2FDofWzC8+DbKJGrC6CL3bFESAgyfYDMeONPiztdEzFLAOB
	6xs93jA7RMq9ggY3H0FNMHX4fh931d46sinyjrKtupsTWg1GckNd7Puy1D2vsidb
	EguPvv5BJb9XmR4NbXJ4bsHxyPwkZYSqT7Si2Xe3QtSl5iDpFnE75AcUtFKjK03R
	fSwJTHNpVDlVVY4d7wmOChL4XW/obRslZVfXf90UyVnZcRX5YXyEcgY23JlzbktP
	tW+404tMcsviZEsAtewKV3bkkfFk+1IU8TIP5wUkJv+7EESTORte/dU/w7xsKLlB
	0PeTDv75gBv9Sz9dtXf2mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1722970098; x=1723056498; bh=Zpp4wcMsj2B2TGcfnXlJ9ljxed2R
	uwDLPVJJybbksuM=; b=howhvBHnLjo7N8AxQVXuPgYRsEhMPLRLB+V1Ctm3Q0Yl
	8aIgy5Wv/16q7LV2Qqy8Qlq1dUajz/D4e9X+FRA9Q9Dzs4VPm+IWcHObmrMITdAI
	+EetIAcqD5N3lPhtknQbW/1rzo+ceCsyb2UIA+rs9J0fAkwaOIPfPqyLfjB8wRmY
	A7s/b1dNV2dYJsOSpcD7fW4mVNTlvMVxNhkmVhasJyH46qI8Pno8DI/d72+zZDt/
	IPQOjefsY4XDNFBz5HXY//mOPer2lG1QrTOTf/6VgNoHznkciwpSqVS7F3xGkxE5
	svaW0Mof7lrRNhX9fham4gZE4L9pqWyLNS7hT5HTpQ==
X-ME-Sender: <xms:8m-yZh06zGi0YqXqD2lbj1HmQYUGxP5faXs5aj4s5s_7NSX55HJXoA>
    <xme:8m-yZoHo3BuQ49NO_zGMYq6H1BR95ZirkbtlqeJTp6PdUFEH1Y31bnI22Ot6qbJRq
    90hEm1N3Tqq-WU>
X-ME-Received: <xmr:8m-yZh49P4KtT2o4zTDOg3aQ7oINfRLdOGVtQxADAg4oYfQfUo1fZn7G7JVpMwmNquQpUtzOqR3yhXW2LwSP39w6h6h9cEd1cWUtxzDxEjpS47_c>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeekgdduvdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epiefgieefvdfgjeelfeeifefgjedvvdefleegleeifeegfffhgffffeffhfeuudehnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomhdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:8m-yZu1lYebNx6vkpTGsCQhZqfo5UiMAv0Xn0y2uXBYDkmvJrbogmA>
    <xmx:8m-yZkEYy1F-fSqhEHi22ADY509-JMeB1zOt_56jyIIJZS7Lte7DPw>
    <xmx:8m-yZv9VFobo8TMRZfK0jESz99lN5g1ToZI_tsMUlUtJ18plAWHgqw>
    <xmx:8m-yZhlJdwSMBGwkCosEc_ALF1CxrvFWUkCW0HCt41ArkKz4Fx2JDw>
    <xmx:8m-yZvOfv7DBcuyxMqkRD25142Rb2vYojLGpWwccKGgzSHBFWWuG-aDG>
Feedback-ID: iac594737:Fastmail
Date: Tue, 6 Aug 2024 14:48:14 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZrJv8PDeCxQQJVxH@itl-email>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YWSf49jythUrEuU1"
Content-Disposition: inline
In-Reply-To: <20240806171232.6bd08942@zbook>
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

--YWSf49jythUrEuU1
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 6 Aug 2024 14:48:14 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] feedback requested regarding deprecation of TLS
 1.0/1.1

On Tue, Aug 06, 2024 at 05:12:32PM +0200, Marco Moock wrote:
> Am Tue, 6 Aug 2024 05:02:14 -0400
> schrieb Neil Horman <nhorman@openssl.org>:
>=20
> > 1) Are distributions/users comfortable with this approach in the time
> > frame proposed?
>=20
> As a user, this is acceptable for me, but I know there are still
> machines outside that only offer such old versions.
> Some of them can't be upgraded easily because the vendor doesn't
> provide any new versions.

Can those machines be put behind a proxy?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--YWSf49jythUrEuU1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmayb/AACgkQsoi1X/+c
IsFEEhAAs2WjuriDmKSB0LNfxiLYpjMd+AEPG5YT7d9KvwxNXr3XpNBIBBL3bDTv
s/Gs6J8hhvQtlCTvNvhL8WX3BI0ltqkLZUERGnUgaIp6IjH/kMCTD8/ty4eWCcxb
WltodeWbbs0laTepxVyCuQd5rAEW2k5jRwK3jAZ0/o2lIPfZBIf6Y/5ItrM8B9Na
wK8oSwZ4xV4pADkfODGJpLGMqltSEfXqFs9Xsa5KknyiCysTPf3TZ+lsgRsLok1j
az6ephi5Sa1219hQv0dVnjdpI8DbBaarL4DoXYBn14OSMmH78cOGgrYqxrKewrv+
etMkCnLpJAQw3Q0vd5GFWU/R/juyN4tft67Am+0aIxa5panxdNY8NCLcTEVT46B3
ykB+tFEUAYKbNc5byVejQ76Rq2lrvYtSjPhvXt+1aSzagzffUw+sNrCnxej4QHrT
ZNZDGQrWgMQK1wppGcHie0EPZyVBEVL5z+SzRIrGV/Y6Wjgho0RpKQAsVIPhsZIP
M4BYErTigveBKQ16xX0O2k9HAziF5ZiwWdLbBQah3UOEQYIla3hIMLrKejrYPrey
IJyhH32/URhk5xDyYw6VnLjFpR/gBLmCgsrczFWJ5rhMPbTxSm4xfiDu0x5JTndv
SL0SHpmP8t21W5cVu4ewV6tNrb4hlPrNxMFcIQEzsewslNsPHG8=
=XSQh
-----END PGP SIGNATURE-----

--YWSf49jythUrEuU1--
