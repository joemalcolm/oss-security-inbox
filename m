Received: (qmail 32240 invoked by uid 550); 30 Jan 2023 19:20:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27708 invoked from network); 30 Jan 2023 19:13:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1675105997; x=
	1675192397; bh=eT6dT+F3iIfIKQWfZrasWxyJhKgNY171s+KssXapPxQ=; b=D
	/GrT76IlUSCDMwShM0UMS2nL37s4dXlJK+/bg/+BeW2wNWu/a8X6/EyUKxIP7tdI
	G6yqCUYErKc8nBNXhUjeKrfGestCPryjVUe9lo/249v1Q0rha6Edno1hBguMH5ra
	hIfuAlGLUffcRG5XoKffJw0guF7Xx3w5rreORaD0Dy4VeNRFZJ8BcZKuymLgr92Z
	2FD72hFkpeggRH+Y8qp4XVBCT/FNCH6UvXsD8lC8TDaEGVEZ6JtQDBxRjekz4GyF
	9UyQw68GqVvkVo1bq1TtKV0s1la9Wvx0uShYp35TaDuoihDjqjZryNsE0RIMwZ/8
	4Ty9lIZcNz9THwjiRQMbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1675105997; x=1675192397; bh=eT6dT+F3iIfIKQWfZrasWxyJhKgN
	Y171s+KssXapPxQ=; b=hxSSlSA9HjQB7oCj8nh9Njo/FXI4mtsqGxoa5F2w2HYw
	Z4hxaaxMdEt685Puz0HcaEG6B7RYuz0P7OAwEeEYtUeQqz2zTcJq+u5lxXtN+Vf1
	nm0frWn8ulH5+8HXVFqUidLz0rayVAVQsCmYFFnXHk15jCuuPR4itDnP8OjiBQaz
	kdUZ3cXU1h4MK2IPOuFYxKhfI5iHsAu8tMsOcFcC3uB8XA3XK19J5Qk/L2MZRBm9
	ApbteXw2HR9SHKH9S+OEvqiQCSZAtAakx+pAkkMNuuhJdOdkxopLZnU3xe1fItYs
	tdvZGX8nDGBl0S+LiLHE2opeAmlzwe1nwYEQY1f0Jg==
X-ME-Sender: <xms:zBbYY6knoGwsPdhAS-Q8VsWj9-N0VD7zydHlhmM-sELkaNROqfwldg>
    <xme:zBbYYx3VlIn2fPEK1LQTVtPbgCU2_OKOCVPop8fcAyWwhFkOrNQCA_6llzsLuI0_h
    7cumWcnV5O1ypY>
X-ME-Received: <xmr:zBbYY4oj899vuZOi4r0DXuNfHO6UuqUI3X5qLhfZ0toTUO-EI_QTg48HRnk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudefvddguddvgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepiefgieefvdfgjeelfeeifefgjedv
    vdefleegleeifeegfffhgffffeffhfeuudehnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:zBbYY-mJj4BzJBqRv4dTNT8eE_VvfoijThpB2HnRpTXQb7vWEoSfAw>
    <xmx:zBbYY43SFCCPfkP_cvspzGha9BKsIfO0PiZylamNTvK0HLyogk-Qew>
    <xmx:zBbYY1vw6j5xi6XoV-k6Npyvk3jsuMtHrY5-MM2uoFGi1mNY1zs0DQ>
    <xmx:zRbYY5iugWyWesJ40DzYseSNdcNYKXxV7UYhRFxVvYlxoFFPJdL2Jw>
Feedback-ID: iac594737:Fastmail
Date: Mon, 30 Jan 2023 14:13:10 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Message-ID: <Y9gWyhCK9X8onWos@itl-email>
References: <Y9GEU0G9N5etu+H3@sol.localdomain>
 <20230125214445.GA8487@openwall.com>
 <Y9L5/9/Oi732Y+a5@gmail.com>
 <ef62abb418ad781fa159cc57b2270e05b0f88d49.camel@markhack.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iZ4teCVf8Hmf559r"
Content-Disposition: inline
In-Reply-To: <ef62abb418ad781fa159cc57b2270e05b0f88d49.camel@markhack.com>
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm
 CPUs

--iZ4teCVf8Hmf559r
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 30 Jan 2023 14:13:10 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Subject: Re: [oss-security] Data operand dependent timing on Intel and Arm
 CPUs

On Mon, Jan 30, 2023 at 10:43:16AM -0600, Mark Hack wrote:
> This is a concern, but if you look into the crypto implementations,
> data blinding is applied to mitigate both instruction and power side
> channel attacks

Can you provide examples?  I have never seen blinding used for symmetric
cryptography outside of embedded systems.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--iZ4teCVf8Hmf559r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmPYFsoACgkQsoi1X/+c
IsGkAg/7Bid8V19zW+48s6OChDdwWFkJVOdfIDxce+JiKb5kKpz1LlcJKQX1vS9H
Ci2G3nq/3E94IeMqBjsMiRes4DYAd9A5FlYX2Lb4hl9L3fa5mj9TnliSjFpoY1NO
i3TyYiBAyM+mN/gmgP4G/I0hHM3NDzoLQAJZM81b0KZv5GbtUXA7/HJTxM35/RXH
IFCy/trU6d6qoY0aVqxhigJN0jj4Eib181wJ/tXYrMK+CoFJDv45+2mBr+nbhPrr
PvFHuVQ8LEroVgMo6PhfNiS5heZU74r3ALK+HGlv3v3dIL6EtXR9+qQmZ5LVN2wc
Up3Kdoj36XZomjm75xxVkE3mO/IsMn4/9XN7Jnpj2eZLLjc3bDZKgi+te+oPGf7d
k3b6INdCWDJThWNbSGcPYsUmICyFQCxiRZVF8DnrWw773tw8vUSQBxpr33Q3+upo
Lh8nW+lUfI1CvQEdgZoGiJswod1LPZUWzki1kZXqt6bnwOTEo2jLh6cXcVe0l02f
iFhy9NQTAtHetCqmZzYj3IpHK34cKvlataa3/D8utlYoKsHmAVbdqwcM3jdHoD2x
HsbvN4Sgd+BKzfRRjcq15ug+lYldncBZBYjt2Ea/kISTy06m2UK2HreGIgK7dssx
Y2lv56MMvbRTxc/WYRfieu5Sp2JodSKx4+oC+85CeUhE+jtS5Rs=
=T22u
-----END PGP SIGNATURE-----

--iZ4teCVf8Hmf559r--
