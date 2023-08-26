Received: (qmail 11896 invoked by uid 550); 26 Aug 2023 16:51:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11600 invoked from network); 26 Aug 2023 16:51:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1693068643; x=1693155043; bh=8cHEFtEgzssieldMGUpXvXMn31GsbBbCa8e
	X4ZsWKvY=; b=hQgWDXYoD70cw8yWVgMRUTUcCaVzTsc731qtk8+00PF4ASuDtQV
	pWLjtAH6wSTGEqSwF5XHaKevhJLvJ84B4sygI3T8jtgb+S//3kVtFNyQTotHOgYA
	yzrX2KOI4FyDikZEKlG1KNEnudVbplYleNTApqVs6tjABxnjINp1ree28hHa0ZSr
	yfFHzJa/OetaZsmx87hQsHv6ODejVQQp3z1ViPUvDHZIgSPOEct2Yppk18xBO7N9
	rFhAB3lpEcpdDGH2MWvYest6feZuReOl57Vi7cu2TFRl3SKEBhhoxjyj8e34YMiC
	7gVpSvhXLYL+g4Imv0ducG28tfOYn53duBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1693068643; x=1693155043; bh=8cHEFtEgzssie
	ldMGUpXvXMn31GsbBbCa8eX4ZsWKvY=; b=igvVISuP8evrUzqNTPYQdFEXrUP7R
	muWnFG5Nzgqlwzjw82+sCkwWTKRaaGxjfLMuFSV0y4Y6VW/YNTq4cvbLhCnVaeD6
	VuR2MZtBCDRLMdY4WbK6IuR/XWW8gCVITHj/sMtswcOCvf3DN0YTXgUQUFxWXXND
	OnL0fCDos5KfCggecwwRGGDRLsxHowArAkG7hAWDGBSqdFHNATqEYtApRPmnS6cU
	it7Mo37o5iuies4pcXbp9zfKBW8OmK0vVffN//OPeK8WN6dBzAPL7zXiz/a7bzhc
	833sUNBqZ8PeIcBqDM149NDq7Inn9M96I/uRD5lBW9gZBtqc+JR9LT7fw==
X-ME-Sender: <xms:Yi3qZB1OrD5QhCtyKfUFreZPpXyjpeJuEPE_XjIq7HSdzNLwY8u4aA>
    <xme:Yi3qZIFsPe4NVvBYDDVdqZtbzJiprD1cQ8JKsNq-VPdUnluwIiBN_fut6T9cOy_E8
    qhhrcRCZjnm4Hs>
X-ME-Received: <xmr:Yi3qZB5x73vgpUYMGCZ_8dUCxcv4paSy_f1meQUyIuC7YqNpnARrNwZU2cxZEnT8cf2xc9zLOOp_sDMKK9EGmxGkYcSO97jtnqfMsgNckul6K5YI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrudeftddguddthecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpeffvghmihcuofgrrhhivgcuqfgsvghnohhurhcuoeguvghm
    ihesihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhmqeenucggtffrrghtthgvrh
    hnpeeigfeifedvgfejleefieefgfejvddvfeelgeelieefgeffhffgffeffffhueduheen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeguvghmih
    esihhnvhhishhisghlvghthhhinhhgshhlrggsrdgtohhm
X-ME-Proxy: <xmx:Yi3qZO2JH3U7e_8K00fJOL58rTFCU4ERufRM1tc0hBcRSbVYLes4iA>
    <xmx:Yi3qZEFsGB3tvv6orfe82eED8QhpwNKpPmJcz6frn1m-jtQajT-TOA>
    <xmx:Yi3qZP8Ze__AG9UKablg0gOEHBQmGSOq6AEq3EhxOi2JoxRnjobl_A>
    <xmx:Yy3qZIR_O_KC2bK340ZxYvcM8db3Pkezvt9f3i3L6MjCKMuos1he2g>
Feedback-ID: iac594737:Fastmail
Date: Sat, 26 Aug 2023 12:50:40 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZOotYa5KY5/MGj9X@itl-email>
References: <20230825222359.GA10424@openwall.com>
 <20230826023129.GA2930052@millbarge>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aLG73Qr9yjPBLFdw"
Content-Disposition: inline
In-Reply-To: <20230826023129.GA2930052@millbarge>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

--aLG73Qr9yjPBLFdw
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 26 Aug 2023 12:50:40 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros list policy and Linux kernel, again

On Sat, Aug 26, 2023 at 02:31:29AM +0000, Seth Arnold wrote:
> On Sat, Aug 26, 2023 at 12:23:59AM +0200, Solar Designer wrote:
> > I'd appreciate any well-reasoned votes and constructive suggestions.
> > Maybe there are good ideas that didn't cross my mind yet.

(snip)

> - Ask Red Hat's CNA to consider setting up an automatic CVE assignment
>   process for syzkaller issues. (Red Hat's CNA is now serving as a Root
>   CNA for FOSS issues in general, so it feels like a plausible place to
>   put this process. Google runs syzkaller and has four CNAs, perhaps
>   one of them would be a better fit. Maybe the Linux Foundation could
>   run a CNA for this purpose. I'm not picky.)
>=20
>   We shouldn't indulge the very-low-effort-researchers who aren't putting
>   in much effort but trying to get CVEs.

That would be an awesome idea.  Hopefully "latest kernel has X unfixed
CVEs" puts pressure on Red Hat, Oracle, SUSE, and other vendors to hire
more people to fix the problem.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--aLG73Qr9yjPBLFdw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmTqLWAACgkQsoi1X/+c
IsElaw//eipaDMfdDPuEhygCSEoxNpgp8yIRhz6kE7FhQxAoa65szbZX6WoxyPSR
TMjV7yjkFm83CNKcvOM2LVFCUsb5eblENgttkmbuoCu/fIMwpjd4mZiueIH8F3Ad
65OZEjtr5B6OwiuJ3TE/TqBTeJAtmMVvO9op9FyRbEHVZ9HMZOaamawi7NSnKJDo
FXuCr4Riuqp6n7M/l/9u1MUseF/QHlFhs6Ke1pVSYIl2YvIlF5K7dMVsfJeQ8bCZ
KwcGr8EcECdRdPGxkQtDU1zBzwnUxiGP7ZMFMWMOKbwAE3F09FLkJyRLb13oK2Gd
igqvDxarzQsZjd9vv+k+PZI1gDaIy0Kd8eiOgaIMIyv1vR3QqYegcgcMDXxNOKyZ
yWxQ0H3YTrko5EIOaPs0DsuNGEI8R32q7VbO1Ix/78VT23cf8zVuWzkLVktCv06U
xxwWFDCwcOhuNXFmQa3DlhSAs0fwRk8wc3PsDXHx8Lc4oUycvtfNJxCgJ9thJql9
b1DU8Obf4/K3jQ0Afdg3lHTPogV21FKNUWegFQLmdv76js46JQlW5Q4LMpPPEVyx
LrMaeSiaZQBkysugh/ODmsTmOcXVvIVMAa8HuvL9AHwU4Fnax1ptfL3K/FFKz/7a
zKzjkApwfs0ZSogUpep4llSCqFokH3Gc9eUdBe4R+3tAocsU+mA=
=OzyY
-----END PGP SIGNATURE-----

--aLG73Qr9yjPBLFdw--
