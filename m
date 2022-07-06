Received: (qmail 30196 invoked by uid 550); 6 Jul 2022 13:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26043 invoked from network); 6 Jul 2022 13:47:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1657115256; x=
	1657201656; bh=tYWzeENnEiWV/DvTj6vDI8DDj2PDL/sXQ88CGSEftVc=; b=s
	+wIB4ZbTWTx1MVcX4cbwQK5etyAcUbhi0qdcqBZCQ4Z9a13anNvHr0Wm8d7f+zzd
	ecME7YoSUPVnhc3LEVUcAdXSfZ+0jhRtiKk0Zzfu5V2YBmhGiNfuyNRLXX4WXDhT
	IwBYmge3vFXWWKb5I5wZ2RLQGJftBhYWaazUIRstBy982zD4XOF+7zTSGULgzkAs
	2rhAOyNuxWxMoG3bb9YP88qwpkRd1w70JHdBOQEZNzzfw+ZIzTDxPBqgEpfHiR0Y
	40Gj2VLbQyPGsMjHi5KdPy0h4/7t2BKO9pLWLBGbSxhvWCB6bDX4ejAboAJ3pVur
	X+X9V+hQiiM+9JpkZuenQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657115256; x=1657201656; bh=tYWzeENnEiWV/DvTj6vDI8DDj2PD
	L/sXQ88CGSEftVc=; b=Dm/gLNce6iZXDbVV9P58HiB23I5X9pbaGcTI2zK6xpSA
	Oxip0i1FB/tWN5PkCXPPc1z9GwfxQrTvxAp8U1ZXVoKuL1yB+cjea0fniMlQNSpo
	zvhEmQWIAA7ia1reTGbu/38mgAdf9K2z2d9PvFc1ns5krx6k3FBB/dntu7OJXrm2
	j1ZSu1wMBNC29naHdVEWYGfJ8Gr0on1sf2cH0gY7K6pg0cqYGuI8a5lL0JBc/W1c
	T4F/oHiB3uvJRjb7uc+77foRiJfj7WWy3K7gS8XVmANcmYwBChJWinRFjtcyZxPb
	TIAV+Gw+S3GKRDsMQA6g1+6c5/7Pr7G7581hlfc0MQ==
X-ME-Sender: <xms:eJLFYobdTl6m1YvrpuNt66iSaxyNDSIJFtYJUQnViSlglEVZ1s18yA>
    <xme:eJLFYjbSGLY5ozI8i45ePI_JW5Qhh3bZD8hhj75_pTjj82JEnqals1BbwS5HEoMen
    f91qhOvg6UrJ-I>
X-ME-Received: <xmr:eJLFYi9dlmrN41GJyRHtVF-lQo1LxrL520ANzV2DE4RRwiDV3REPosTyhmxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudeifedgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epiefgieefvdfgjeelfeeifefgjedvvdefleegleeifeegfffhgffffeffhfeuudehnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:eJLFYipT9WdRjvnpuz0GWEiNGvWw_Q2rep9Iv8ctBMkowKRvMmym5g>
    <xmx:eJLFYjrpJ__OCFCltRvYwb7NMjMtMIkf4Yr98w3Ownh-R0tzQUKOqg>
    <xmx:eJLFYgQG501uXxWC0hOb3mYZLd2eflftphF2ScylV7xdSf5sflzhCg>
    <xmx:eJLFYg0zb-7eaAXjNq-yyaJPK8a_olS6kBA084w5Llo987eFj6-CPA>
Feedback-ID: iac594737:Fastmail
Date: Wed, 6 Jul 2022 09:47:28 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <YsWSda4ITnaf5bOY@itl-email>
References: <YsJ7JjZ/R/jqN+YX@itl-email>
 <939888998.96730.1656936945905@appsuite.open-xchange.com>
 <YsLj+ux2Pgkir5F8@adhil>
 <20220704150029.vcbamih6dlqdxqpl@jwilk.net>
 <ta390o$qi2$1@ciao.gmane.io>
 <YsVr51JzzpR0A0N9@itl-email>
 <20220706133809.GA2593@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7+5PxrawB+q68Onw"
Content-Disposition: inline
In-Reply-To: <20220706133809.GA2593@openwall.com>
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

--7+5PxrawB+q68Onw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 6 Jul 2022 09:47:28 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: DO NOT OPEN PREVIOUS MAIL Re: [oss-security]
 Denial of service in  GnuPG

On Wed, Jul 06, 2022 at 03:38:10PM +0200, Solar Designer wrote:
> On Wed, Jul 06, 2022 at 07:02:59AM -0400, Demi Marie Obenour wrote:
> > Was adding compression to PGP even a good idea in the first place?
>=20
> I think actually yes, it was, especially back then.  It has probably
> helped more than it hurt in PGP's lifetime so far.
>=20
> Alexander

Interesting.  Why do you say that?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--7+5PxrawB+q68Onw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmLFknUACgkQsoi1X/+c
IsFkXg//fnmlnHaWv1y0t7O/fI36rLiF9D6D7fOve6zdaVsOdLRoPoQVf2d6unFf
PbZCZMVv6XQn9SEbfli66RwB6tuVuhQNUMkwVaoUm7ZWUgmdRrFgXKvrZwuofLCA
f/uADNlBn6PEttS52sJ/c4dl6D29boiYw7LLMQdbNWp0iXRe3pWKE3Gq364wsYST
dNUQBT7Avun79FwWQViL61dG+pZnDs5coo3BeVErYm0jrpn/T2leuVhvaca3SruA
haMXG4KKZHAzuNj/ZpNMIPwArzi1tJd/Y6mR7G8L3FVjR1LMNqQ1T9ROlEIhOWeU
3NIWoLQlNFo0FyjSTiS0OnMZedRFxP72UWPCu1qKOPjyJmOJddrmzSbHjePAWhXN
f1QiFSEMzqRfoKPtOqpH+dR+4kL15D10Gwfx8h5KHwRttf6gjmsuq2cL6GYTOqIl
rkcpWFENxfp46WqcDX4Vpx01jw0hONao5/kZwxeZUAJdmEcczs+eck4LC+aprVnh
6UNN1usDClebcwysm5fYvahT+fPHvdBvxRU+QXAzz1a/TaxYzXl/oJNbvtyvDj1H
wHndSjM7ElImDyBbE+hzc5aeRTvvvhd73nYwnGmKl7+nsF69GXmB/JjQLE7IVJKi
bDqpEm2YBF9kW2rlnrElYNl97Zw0RWRlqDf01WiibO5/AgLSnsA=
=BnxZ
-----END PGP SIGNATURE-----

--7+5PxrawB+q68Onw--
