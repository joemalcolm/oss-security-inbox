Received: (qmail 31852 invoked by uid 550); 16 Apr 2024 23:41:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9599 invoked from network); 16 Apr 2024 23:14:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1713309234;
	 x=1713395634; bh=GFAtfz8hbvmrhC89O+R8cgANLTSODwY+L4APfkbLuX8=; b=
	U4a0p335s0fOvOm7pI73dHIjN6ifO226hdC5SNs1WQx68wOxysz2jeAJNKxGz2W9
	AyNeq6p1AaM1t4yKDzTROtHUlT4N1a4LfGVMabqOML4T4aNbVbyJRzPSX/upt/Cj
	EYQq1SMfll1NwriijbRE/yJGtr/c1gbw19Zq0iDdx3iYMfCvTieg6Bfvfbv51y1u
	1LalqyD+joHU+w5l9seaHDIrO1roeLNQ3IIckQrD7Cy/ELJx9fjwZOl68WlZtRS9
	+bmR0GrFUJ3yFZjIDq5/HsaqQMMooUsWMqzqw4Uh+HTpwdLQKbt8LEho7CxrDMhZ
	tVgRblowxmaGQti6K6RSXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1713309234; x=1713395634; bh=GFAtfz8hbvmrhC89O+R8cgANLTSO
	DwY+L4APfkbLuX8=; b=iioboSXM3v2fKBRyz8peOAUOjxGl7oTIM9EUefJkT7ZY
	+cxOlVy+VaS7cgLXLthpfrNYcih+Rhlx/Zbz9+x1t9gyGvDSMEjg3rsm2B2ldgm6
	0gozur3YfAppn1DH0FDV14NmNFFrL2/mFFc0WkArkwayEFgGgRoO2a2EeOI444v9
	NnmI3TCdVGaIqWwASplSTewiZKZyn5aOTDTCLk7FDGqg6/XS/W+iPI/RxxWAWh0p
	jQre7NYn9sVvvbt9jLcbrOUyogxY1aHVWUOnXXUJr4ZNUtxGXYpDR9sJKCCEYDN+
	dPNalWXtSYBs5ruj9uAEktbSV5LbFKRHxEvfnKBk7A==
X-ME-Sender: <xms:MQYfZona_byQeRZreFcxF9W8GFeH-1623mk3R6jBXen707S2CLQD7A>
    <xme:MQYfZn0-rxZxkZJogNN9O49B_OXy6uUT7h0qxuARruRyADcxZs4UDF7TxBzjLgnPg
    v-GOOKghbDbyQo>
X-ME-Received: <xmr:MQYfZmpBXhOkLWFMQWyiI-FBTu75rBR1Ve-zqq4pQSPmwQMXaBZecXSPunNRwYrZEfHCDOxTytX6ejAqDMgr2FWA-lJ204vcj_F0RE7qrXjnLUWa>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudejjedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epjeegteegleeludekheehteekvdetueeiteeukedtheehgeetkefhkeejleejueefnecu
    ffhomhgrihhnpeguvggsihgrnhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpeguvghmihesihhnvhhishhisghlvghthhhinhhgshhl
    rggsrdgtohhm
X-ME-Proxy: <xmx:MQYfZkmCgmzxcAk1QUoqDy6MVkyClYiIdqc8yCvoLFTkd4BAveL8cw>
    <xmx:MQYfZm3TLhoYJHS8dyR0cqy6ywyU8KQVAer0Vr1dCH8nT0SGFaZiUA>
    <xmx:MQYfZruPRicpwZ0cE5IzYs1MEmu2dzqfLxMFBCE1mY9OolXDjfUcEQ>
    <xmx:MQYfZiXGLjtD2s0zSnhnXJYguv8lnmEjpowdLbck-S01TgEHegaGkQ>
    <xmx:MgYfZr9hZnz4Hy7FTN1YvkOZyqj4053N-41ALte1_EEnKNeSfO3qQEM->
Feedback-ID: iac594737:Fastmail
Date: Tue, 16 Apr 2024 19:13:50 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Zh8GMOtfoUOZPILD@itl-email>
References: <CAN+za=Opi5h4o1vi1pgqf7NikTQAhZ5tYPHqU+Quwv4WUZdxMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/f77bwQcLX6RBsLo"
Content-Disposition: inline
In-Reply-To: <CAN+za=Opi5h4o1vi1pgqf7NikTQAhZ5tYPHqU+Quwv4WUZdxMQ@mail.gmail.com>
Subject: Re: [oss-security] Linux: Disabling network namespaces

--/f77bwQcLX6RBsLo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Apr 2024 19:13:50 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Tue, Apr 16, 2024 at 11:31:43PM +0200, Philippe Cerfon wrote:
> Hey.
>=20
> There's even an allegedly "wontfix" bug of mine where I requested that
> Debian switches back to a secure default and disables user namesapce which
> have a long history of being exploitable:
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D1012547
>=20
> Don't think the current hole one will have been the last one.
>=20
> Unfortunately it seems a feature that only a group of people will need is
> valued more important than keeping users secure. :-(

The problem with disabling unprivileged userns is that in the desktop
Linux case it actually causes serious problems, because creating a
sandbox is now a privileged operation.  IMO Landlock + seccomp is a much
better solution for sandboxing, but I don't think it can do everything
browsers need yet.

For containers, I'm not aware of a good solution right now.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--/f77bwQcLX6RBsLo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmYfBjAACgkQsoi1X/+c
IsEWmhAAkAXDK8vmAZCQXYgTeJNVkYgvxaMH7HDUMrGlFiiRiQUKyeiEs1iFC0+m
rQe/aEurDX8/RX9NHQmki66KVCsDqWaQJG4f9txA7zmJU61eUTQUqs32oI20xWzS
Ii6MOS/3EEzEWVP8trXLguYHidkwLcz0nHZfFdYdRvxMBT6of4oxQQLAI/R78Fc1
8vuFg4bPeHxIa4b/QBk0YA/FuCNvKWgOkUiCVumEpFgGQNq5x2XwxQsw66YuA9kM
1i3vSktZ6b6gz2KxFYcBCZ8EZg5txWiy9vRYgk8gosdGRjB3m2rCgbU+2bv9yJ0a
XjBf0Gh3GJMGu1j4+LL6qgsFd5UFOxyR7oXdkPa6VFiuqyNg/x+GYyurvuN8FkSU
UuCrWb62OcOVMEnclJj4klMwonYxYxxkLEfB335jxrN6SQV6rNfhNzVxmBmMYxYc
3Ce+7cA5VU5uz/ArJKe8ga+HhxN23LPc8gfs17PVa8LE4e21e5zArX92QnbfipHh
pm7qy9wJvdb3ObhVhUkvMIx+BbTYlh3+R6ePPHzlgHaVwE5M5JO1HM7rZn/j2ViJ
gHfXFWt/ePBonHxw/6CE4kL7Fgu9PjNcwSFK+pNZKkXOhTFMMALVNHrGfafhNZmX
aj8WNIYSa4VyS9gyhZs5lgf7TVTq4/iJK5LpbGly1Fb39oR163E=
=JBZt
-----END PGP SIGNATURE-----

--/f77bwQcLX6RBsLo--
