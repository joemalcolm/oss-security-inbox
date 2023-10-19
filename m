Received: (qmail 17746 invoked by uid 550); 19 Oct 2023 16:15:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7904 invoked from network); 19 Oct 2023 16:04:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1697731461; x=1697817861; bh=W6
	Gb3+1gLyGzYnAzxROQCQhHc4n8CGuqC6pBrhKBWRc=; b=VhmKDbv97iOJk8F89v
	wsTC87v347wGAHflPEQskM0WHwNVU9QZqwRFssOKIXu27d8r5zJtr4BQ6ckbLrS6
	1bcxAWiJnzvbP220OvmumOCvtWGQf6COOauC2LrVZFB4v3uW6BRgyfzb8sUVPlbi
	yMCyxwxCTlXit3P8ahDrTOpn1Wj3fMHwEfWReb/pQehcfOWF/mxKO92WVEOyYaRY
	tc/ZfjH4hl8uabHpamzsEbk0KaLzaSY3NdDZ6IvxjcZfvgWE8ZR+QVBL9G0Msj48
	cWglRL/OvUZDidzAJuJPF+eWv3ihLOML2icTKtetjP3tyJD0Ne5zXx1N0yluzbnO
	PAeA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1697731461; x=1697817861; bh=W6Gb3+1gLyGzY
	nAzxROQCQhHc4n8CGuqC6pBrhKBWRc=; b=FwplmrOpSA+TykhLHQYd+m6UPO/KJ
	kVELYgS+YcoMRRKYYN2ysclsZcWqrUA2jKlV8SyzJva2yay81CWfDvK52tDpqN1b
	fLHYhj/+sspXhr0sT/Vxp9ez6leCm78e9yPa27wNPXhXKU/bKU+nHx6yBEvO+9a6
	P70jzFMUOWsgLqtZwOzrziM3EALlZ2Iz+fPeF/1yApnw5b0vqG+yichKhB67S/G/
	kWLyp13NaG00gN69uaPNhcW60HdhmuwXUT6UP6A+15ahqXPZVhZVbyRGVNlWgjAL
	nA2/LW2qoqjz2jAEeVu1L2t3ubnAjYVB5EYbOrt/nKvfE4Ufk18znYTYw==
X-ME-Sender: <xms:hFMxZcVbt21Sjk2MRP9mY2em2EwVQeRCd5f7QYNBVNjZ5j5rm6ueGg>
    <xme:hFMxZQktFyvzM7-8-lV04M1KOGrDNgx2aOCq9SG8QSKIKMaLsHjxY3uCZNDvDHS8U
    aGnOrYXdeEXJA>
X-ME-Received: <xmr:hFMxZQabAHVse2e77nvgwzzGWZhjdTVgHT2Q8y5SwP35BaCm2OPHWx-_j18k39BmWV5KGuGJPnKNH92Bs4kpvuB0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrjeeigdeliecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepkffuhffvffgjfhgtfgggsehgtderre
    dtreejnecuhfhrohhmpefurghmuceuuhhllhcuoeelmhduleelihesshgrmhgsuhhllhdr
    ohhrgheqnecuggftrfgrthhtvghrnhepkeeftefhjeeghefhgeeifffgudfgvdfgudejtd
    ehfefhgfduieevjeejhefguddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
    pehmrghilhhfrhhomheplehmudellehisehsrghmsghulhhlrdhorhhg
X-ME-Proxy: <xmx:hFMxZbXR9L4Ku763cz62Q4iCuvN4dSswgqetxiPTQIO0ipdgkQBf4A>
    <xmx:hFMxZWmsxceh84k3VBAhUKqHSocglYtIZrm-4-ODIk93_P49tZ09mQ>
    <xmx:hFMxZQdbwyceN16E4hzVhIu2BXyA_DI-s80wS6_pw9F2CcqOLhco3g>
    <xmx:hVMxZdvSh78lbRSl-cpHbWX9tbiV9uXD6nd7gU7NiigkO61josLHSQ>
Feedback-ID: ie6294588:Fastmail
Message-ID: <d85658c838a1338c829cee30fb9c344688a2a470.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Thu, 19 Oct 2023 17:04:10 +0100
In-Reply-To: <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
References: <e5dc2cc159fa7e7f287e10482366011e.f0e92af0@rotted.prefixed>
	 <bb8d7948-912c-0c96-6a7e-2f05a4cabfd0@tnetconsulting.net>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-NzY2J6fZk1SJGTq3vEsX"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [oss-security] with firefox on X11, any page can pastejack you
 anytime

--=-NzY2J6fZk1SJGTq3vEsX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2023-10-18 at 13:25 -0500, Grant Taylor wrote:
> I think that this is more a problem with X11 security than it is a=20
> problem specific to Mozilla / Firefox.

Also a problem with shell security. If you paste something with line breaks=
 into bash, it
executes them. If you paste the same into fish, it doesn't (it'll display t=
he multi-line
input and expect you to hit the enter key to execute it as a command).

--=-NzY2J6fZk1SJGTq3vEsX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCZTFTegAKCRBf6SjNlibO
K1QmAKCd4fNF24gRvWJK2x2/rOh4eKsKhgCgiIBctmweL45E10MUhpdLzFg7tdQ=
=mUC0
-----END PGP SIGNATURE-----

--=-NzY2J6fZk1SJGTq3vEsX--

