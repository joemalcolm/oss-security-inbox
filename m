Received: (qmail 9708 invoked by uid 550); 16 Oct 2023 14:08:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5783 invoked from network); 16 Oct 2023 14:02:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1697464909; x=1697551309; bh=V52KWpe/qZ8S9oGISLBIk+cu8XbgpEmnUd7
	5r3DBfSg=; b=knJyev4Ty2aePgjtsbjLsdKFxXoe0iVZylT/MWi96gggJYAaJEN
	xEOd1EDtQohXBNyjT04GVakbY1mCp0pfKph0l7KlXY9M3Yxu8HEcOPbsltFAUgMF
	9boA5hTbt6CJ9cP9YePVRy+g+IYyOyCzF4eeImhOGBvsk0hp8a/JtuXKa2qOwUO6
	pzGcCLO/tm56VrYLAJyL7klQ/jRsi14d4/O/ric69kJtnYv7dEY12oZNDlqTWLw2
	uiK3elV8QiAAWKyY/Ou/isCqRHUe2zIn4+rLrBpEt1vADzq84Gk9rt1s9Dp8jFyT
	ctxrn4T38e53PAF6SNw1qHfvWz7io3gSNgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697464909; x=1697551309; bh=V52KWpe/qZ8S9
	oGISLBIk+cu8XbgpEmnUd75r3DBfSg=; b=iJuaA2UtwTufmaFFbhyBa4gF0GCdT
	KSSGdV3Zn2uAQr5Ry9/q5kBADp2DaWLleBdmF4gUDMJPHW7UEsLDv7SdvaNjOlG2
	xRl5EFl2VURXdZakoatU/T4lT6B1cGCU4QzRDW0DfB0Fmd1NrdlLvF6nJQ5GqoDP
	ARUbp1aXzfzbyfEV9Ww+M1CcuDnOkhh38ynqVQkDCwMVumDmdcJWV6nDVjlOw5kV
	kZSHk3G8HOsSMxuIPl9PJFi/h+EDAXnmtWOmj3FfXSDuzETvZ8EGEG9meY/doD7q
	hkt3Zctvmij1lwk4Gb4B+FCEPeLf5hzLW7NpH3Lx2gFsUglfyg2NJgmMg==
X-ME-Sender: <xms:TEItZQ7XBIRx3WgaVSoSIa7Bzire3KWhHPsFv7qb-DHHgHZKoOlFwA>
    <xme:TEItZR5BJDyBrDjPIryWIFuIC6l48D7ZHisIlDM1PcWphz2yhzIHvL7LHdqr4wHk4
    xNKcL2YV_3itq0>
X-ME-Received: <xmr:TEItZfcF-TAFxwSUT9SOVIrb-ktjMMwty0-SRofvdpJxICnN5v46Rkl7-PcMaq6aNAJ9SFm7L8r175YuiSXSOaTxEPN5FAnAvy-HLo4w16RihoG8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjedtgdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghmihes
    ihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrhhnpe
    eigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmihesih
    hnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:TEItZVLg-osowPVnCJBPBQTkroniNNJy9NLpd__rl-GtwEAL9alJFg>
    <xmx:TEItZULzNiOtCIcEb2D3kSv9bn4vzYa76X7kDm305xX8ehu8eisnSA>
    <xmx:TEItZWx7sVo3AwJ7LFrwFj6k7RdT2_NzNCGScsAJHE_Qq13rPDcFrw>
    <xmx:TUItZZXVh1k_J4KXS1ZSqM4-6m45XeX2UUbWvbmq5N6Xgp-FPlv7ww>
Feedback-ID: iac594737:Fastmail
Date: Mon, 16 Oct 2023 10:01:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZS1CSkbTjDYdGq8F@itl-email>
References: <ZSyUUSF_-3YbT14k@workstation>
 <20231016080850.GF10758@suse.de>
 <2023101612-snare-dart-c7cf@gregkh>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YLW4IvL3unZ2hMJe"
Content-Disposition: inline
In-Reply-To: <2023101612-snare-dart-c7cf@gregkh>
Subject: Re: [oss-security] linux-distros membership application of openEuler

--YLW4IvL3unZ2hMJe
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Oct 2023 10:01:44 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application of openEuler

On Mon, Oct 16, 2023 at 10:23:50AM +0200, Greg KH wrote:
> On Mon, Oct 16, 2023 at 10:08:50AM +0200, Marcus Meissner wrote:
> > Hi,
> >=20
> > Regardless of your viability of subscription status I think we also
> > (sadly) have to consider current geopolitical issues here.
> >=20
> > As far as I understand, US companies and US citizens are not permitted
> > to work with Chinese organizations and/or Chinese nationals.
>=20
> They can when working in the open on public projects and other
> open-source-like things.  For "closed" lists and groups, please consult
> a lawyer as the rules there are quite varied and depends on the
> countries and companies involved.
>=20
> But to be sure, again, consult your corporate lawyers, they know the
> rules and the issues involved better than I do.
>=20
> good luck!
>=20
> greg k-h

The question is _who_ should consult their lawyers.  Many security
researchers are operating on their own time or work with small
companies.  These researchers may not have access to corporate lawyers
trained in the relevant areas of law, and expecting them to retain a
lawyer at their own expense before posting is not reasonable.
Therefore, if openEuler joining linux-distros would require them to do
this, the request should (unfortunately) be denied.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--YLW4IvL3unZ2hMJe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmUtQkoACgkQsoi1X/+c
IsETDxAAmFlfIN0yTmbhxlQo15hyLMsZ/kzf4CZQwst207LZoTG2UGOnz7i4dW5i
tq7xmCFB406TYSSHnE3PtI+eTFsSzHONwH9qblCgUloywLpOUdNGi9gij8v5njxT
tJvqxbY1L2xpb6hl9Hx/4Hc1EvONLqwlEn7axZubTZgjdySnmtvK2SX0489r8PmC
5b0DGLWw+gfxIz6ng6cp7wYMXI/dt7yDt6VdAmVuWkO4XXpnrQSxPFFPu+uLLn68
xGABBVLJeay5bPxR6Rtbq1Tch8SBvEKxSzj8UZNMCFDNmAvTEUW61E9z6xRtYzKL
0NGeJ4k3FKHlvoIF4T27vmVKCPyGgJRAWN0YckX6Yxblj2cP3WyhrLrC3lJrIT9p
cRg5CyMi48FtNnewOx7yXlx550euh6Rgs3grbp1+t+6SBPos84kPyTMaS9Z4DE/Y
4SQgnjqJTVbg2WKNaAioGXerUfpPyNRpngJqZcGjmAXse5qrgUoufyjOj2igjTR+
1No+8P+duwxGsRxxsX6M5nPI7OMM+XUbWFKwzC4cPfS8rIgyWNxHKZIHTjfIjqHK
8wJJMkMcZVNgoZyiOJ6vGIvtlKrdXwClblSQsJnrG/ZVh5Y9avKgx1RXnW7sxWWI
2T18NeYJR0BOW7M94XdvFT6v8YrI8xG3KRpZ3U47Aldjm6gzIhM=
=mlFx
-----END PGP SIGNATURE-----

--YLW4IvL3unZ2hMJe--
