Received: (qmail 21916 invoked by uid 550); 27 Mar 2024 22:59:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13458 invoked from network); 27 Mar 2024 22:55:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1711580420;
	 x=1711666820; bh=ti6U56nA7hFTM9I3cQXMNC6hsZSFjc84BNPHWZxKS7Y=; b=
	bYhtprS343ZTtzWw3UeGks7K8zT505zgOlDZPNnDCRtus4gjs4vjVo5qyR+zJghV
	rlgqVj0LT/+g7uWyNQL54tDhjnPvJaAfJ6MGZ3gRyCeeSDUbgEbUjuKYgTRY6NZS
	VrBDFu/jAMASsEVn1XXBA0kpvqroSqeYLrO8vzVy53u0bInLi2XzA8b3vsJWtuZj
	P3kHFf/Asvoo6PAJWcqCSKpty+f26+prRTTaSxQUOKbxcpwmvXFlHDKFfX1/NnGE
	BGRH8kidlzENk+arpodh24OHe16mQLoGQrrAV+9brfKBBO41Gn3pk0rpzMFZk5UD
	iAdR7NP4lago623Wua687A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1711580420; x=1711666820; bh=ti6U56nA7hFTM9I3cQXMNC6hsZSF
	jc84BNPHWZxKS7Y=; b=kRWLxnr7Yxz4gUXpYfrpyfZKjFoCttF0r3+dHlc2YxCt
	vrP9VvQI/rrYZPbGJ1qz5UevdVSNfjo7A67VV9K0NepvGgIJQss3nziXguM4W8GY
	S534A2WSezYG/A5frRoGNCme7r2C4M40wtPTMcXfhELLhJv+oPvmOSCjGasqCtOa
	WQJfq10XT6bSLOI6tAoe2QU6rpa6Tl1RL6kgMwzrkeVCO/nutqyCh3S71gB5arr+
	iPiJmtF7uJ2eBtwu6NrIrm+j/vGsE6M9cTBxyNA/3h4HoZlvV7nUj4RrdCcmBJJ+
	iG+IA2u3cHMwXvr/nXtTEb+oGPe0JVFoXFoIK78zfQ==
X-ME-Sender: <xms:A6UEZgruLisSXBwTrzZCdMAR0iOCJJBfeBUh4jAiIRYwa1XY0eCskQ>
    <xme:A6UEZmpyBvLSPnJytgD9M_t4O3YTP4M7guizWsmhWzfa0xL-kR5s-PU3TaDZfzF_u
    GSrW44Ig_7Kexg>
X-ME-Received: <xmr:A6UEZlNLojSIV5c6IC7KAjh3oTcUK4WWVFCFxqjfLGl2N5NcHkWmxA60HK63YWlkG_5C0YrHMdBikbWgHV3FN9Am9kHxvWx36ECfvy0oEn0G0t-N>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddukedgtdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epueekieetvdefffffheevleehiedtgfeitdeukeeiueehjeekhfettddtveffjeefnecu
    ffhomhgrihhnpehgihhthhhusgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:BKUEZn4QLujuZsuhwxrS9MDcC7jHLtrgofp351iCE1Z_9ODZAN2DEw>
    <xmx:BKUEZv792fKrBCxVEvF6CTyqYdZImuZlFzj-WLIxasuTgF_XKgnFlg>
    <xmx:BKUEZnj1ESyJrbmLgakHzX8zXE8mL2cFwnGo_eOvvY8Idn2KeR_HTw>
    <xmx:BKUEZp7lbLNlxFA8TwKlclzhQMK3dNziBVBzwCWwBMaY697HfGDoUg>
    <xmx:BKUEZpRtu0n2Uk6jA70hM-Us9loLsUT-_gUlBA_GpvGWsXHudir12Q>
Feedback-ID: iac594737:Fastmail
Date: Wed, 27 Mar 2024 19:00:02 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <ZgSlAmss1tT8M2vZ@itl-email>
References: <CAEOG19rkUU8Pam5N67xyE9upepp_MahcnY48nek-VBAwo_NyAg@mail.gmail.com>
 <20240327213041.qyr7sglmxgdmtcb4@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+91qtLFP3wKN2X26"
Content-Disposition: inline
In-Reply-To: <20240327213041.qyr7sglmxgdmtcb4@jwilk.net>
Subject: Re: [oss-security] CVE-2024-28085: Escape sequence injection in
 util-linux wall

--+91qtLFP3wKN2X26
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 Mar 2024 19:00:02 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2024-28085: Escape sequence injection in
 util-linux wall

On Wed, Mar 27, 2024 at 10:30:41PM +0100, Jakub Wilk wrote:
> While looking through upstream git for a fix for this=C2=B9, I stumbled u=
pon
> another write(1)/wall(1) control character injection vulnerability,
> introduced last year in util-linux v2.39.
>=20
> The offending commits are:
>=20
> * https://github.com/util-linux/util-linux/commit/8a7b8456d1dc0e7c
>   ("write: correctly handle wide characters")
> * https://github.com/util-linux/util-linux/commit/aa13246a1bf1be9e
>   ("wall: use fputs_careful()")
>=20
> The added comment says:
>=20
> > The locale of the recipient is nominally unknown,
> > but it's a solid bet that the encoding is compatible with the author's.
>=20
> Alas the bet is not that solid when writer's locale encoding is controlled
> by an attacker.
>=20
> We can exploit this against terminal emulators that recognize C1 control
> characters, such as Linux VTs or screen(1):
>=20
>    $ printf '\302\23331mMOO\302\2330m\n' | LC_ALL=3Dkk_KZ wall
>=20
> I don't see any good way to fix this on the util-linux's side. It should =
be
> fixed on the terminal emulators' side by disabling C1 support.
>=20
>=20
> =C2=B9 https://github.com/util-linux/util-linux/commit/404b0781f52f7c04
>   ("wall: fix escape sequence Injection [CVE-2024-28085]")

Would enforcing UTF-8 validity (regardless of user locale) be a
solution?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--+91qtLFP3wKN2X26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmYEpQEACgkQsoi1X/+c
IsEAZxAAozgHZk/r3S3pF8Hen7+xBwpx3uyXfmAK6dmeOuFjtAObUgO4/KiWNrQP
oqRL9nuXCeLdUp4dAz8JBWBXIX+kBifCBBlsNtVed71J0ZpCMfMMprA8g9JRHOLP
p7jm0JkMyw3nEKEy7kyZRlAmzjAmZxYTLPmOOdFfKoqOhC+b6rTDjiDg2AGAVo8/
dGc5q2gvhmJ9lBXlS65Q2KbHoIS2EtT6Yo8R3GipN0RJlF6z3qyxQyXaRnzOPg88
aV5oSzCQDMupxIPeFOL2FCuhM63AWfX+MDEtWOlUnsdpOMmj1NH6l3OUvaSTCrNT
/f8RlhK8RPiC/4R3J5SR3QnWszofwdSK9xiN8O4FMGcdwysy8vvTiai70NjgvXIq
auy2UrsCPAZVh9LQYzOwQvjGF1iczVB+NmsWEj8nDFmUbWU0koycr1vlXd8KrEqA
/nHQUv4kN8srWgKTeGBw4pdPlBSa7H8m91Mi9i8e2bEjZ7o4T7XOSRw/V34nkssW
r3vljnRfIGEujlPfT4A6UUD3IQAMkfH7SGx5bMIZ5OhmB56p5sAgPGgT/ImlwC0n
XU9DtHlVaRsSbVPn4P5jerLWmwf0XuTQOYN6Q/3XMzlLcDv0/7cyTYakoXbE88VM
MEwz85Wauj6jW/ca5qioGsHfZiqN0ltz003i14sszoecWp6/eD0=
=iMpM
-----END PGP SIGNATURE-----

--+91qtLFP3wKN2X26--
