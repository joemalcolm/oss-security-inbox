Received: (qmail 22270 invoked by uid 550); 29 Oct 2022 20:44:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24396 invoked from network); 29 Oct 2022 19:40:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667072447; x=
	1667158847; bh=GcQWky/hebzZ86Lbvd8u+O9QlouGeWiQPZRBq6CUpmw=; b=D
	SwRnSEw222FZv1hnNH54EQmhwxqCRNbidt2+nDmlaTrfHcZyAz6bITwagZBDB4Od
	QXUiS4fTLEmOb6JaedN/45HXc9fXXzkYwJMQWwHgJxoyzidGje9j7mQ0jIzvXQkk
	afKzvLOGF63/l32hDs7FWrTusHN02qXsN4I4MnSAC3b9NMhZvUb3pWMcWF4SUwi4
	YNPZIaFLlOKrxAZHpdjxWRF1JnrGY0Q04MwRafnvXNDL2Bbul/JTyqX3dNvkrVxk
	tP01HSnAMW0C+C+Rd5ZkDT/aeRr+YqCeKopBWVRRxGp+aEbFXT8Y/WuzIYFqcZ9O
	5tqcE/nkCGp49ZOBFXZ1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667072447; x=1667158847; bh=GcQWky/hebzZ86Lbvd8u+O9QlouG
	eWiQPZRBq6CUpmw=; b=fSo7LA/o2GmdC1xyckPDB38Q3EWuyXDGRnuXIbGXoyhc
	tDucDHFDd+lOqo//s16hbGgMyUIjEDg0pzlIM4p3GUbFhvPhSp/hCjSIIDV1pRqe
	3DpEkBfYUBQOP+M2x4SFtdioeN0Xsp+EAa0beM/dYrBkivyZpfZgbRcqg8T43L+K
	1P5PT/y4ceGyopQRjqKZyHp5DFSzUftrDbO9Q+SdNpMxIICaEpIMmDiyTWuL8LKI
	PtRMCGt1RBdLp0QPGGZK2X85+HYJ2zt4dvBZqb+hBfuxALUIHjAfueZJsJAx1lb3
	nLu00iaXiDreij+nJkZ2ck7shofvs9VYrtPaWyTU1A==
X-ME-Sender: <xms:vYFdYxOw2pkDQxkABk4u4UdymuJfmilxpgFZPjRVgGlOaT8NA1-m9g>
    <xme:vYFdYz8myA_CvwnnmHp5pTu0uV2BpHKV_qY6IkHQhD1y-OWsgz5KAxI4AFsi0OMa4
    -WZ2dN7OvXZ7Fc>
X-ME-Received: <xmr:vYFdYwQ7CWaD8F6Czr3EJBe1WJayO24qsnz_YgzTHQ6F5G8hi2_JrAZps2JP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrtdekgddugeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepffgvmhhi
    ucforghrihgvucfqsggvnhhouhhruceouggvmhhisehinhhvihhsihgslhgvthhhihhngh
    hslhgrsgdrtghomheqnecuggftrfgrthhtvghrnhepudeileefueetvdelheeuteffjeeg
    jeegffekleevueelueekjeejudffteejkeetnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:vYFdY9skh-Engveo6pucUQzyzPU8f5ZFPEgR203F4ctomzNl1aTg4g>
    <xmx:vYFdY5c3z5H8agasyOQRRpRXo1auT1-wzrJFHEf-SpYn_-djBY_p2w>
    <xmx:vYFdY53xRvMbbZj3DoXYSFYAoNXUflvysPoqBW4W6FVgs_Se2Tk2ag>
    <xmx:v4FdY5k0uQ4RzI7Q2N-EkBnfZB5kM-cvjQCsOnvqPdNiZALc-GZlzA>
Feedback-ID: iac594737:Fastmail
Date: Sat, 29 Oct 2022 15:40:42 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Jisoo Jang <jisoo.jang@yonsei.ac.kr>,
	Minsuk Kang <linuxlovemin@yonsei.ac.kr>
Message-ID: <Y12Bu2dSDbwtLoB3@itl-email>
References: <CAM5P+QTzZEywndb2H1=hce+ahtz1TsrsJZEM6ZuKEmFM4ozL8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FdJ/88N4CvtxposF"
Content-Disposition: inline
In-Reply-To: <CAM5P+QTzZEywndb2H1=hce+ahtz1TsrsJZEM6ZuKEmFM4ozL8Q@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-3628: A USB-accessible buffer overflow
 in Linux kernel driver

--FdJ/88N4CvtxposF
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 29 Oct 2022 15:40:42 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Cc: Jisoo Jang <jisoo.jang@yonsei.ac.kr>,
	Minsuk Kang <linuxlovemin@yonsei.ac.kr>
Subject: Re: [oss-security] CVE-2022-3628: A USB-accessible buffer overflow
 in Linux kernel driver

On Sat, Oct 29, 2022 at 05:33:21PM +0900, Dokyung Song wrote:
> =3D=3D=3D Description =3D=3D=3D
>=20
> An intra-object buffer overflow was found in brcmfmac (an upstream
> Broadcom's USB Wi-Fi driver), which can be triggered by a malicious USB
> device.
>=20
> As the object where the overflow could occur contains multiple function
> pointers (e.g., bus_reset.func), with knowledge of the code layout (i.e.,
> KASLR needs bypassing) the vulnerability could potentially be exploited by
> an attacker who controls USB messages. Without knowledge of the code
> layout, the consequence is a DoS.

Can this be exploited by means of e.g. partial function pointer
overwrites without having to bypass KASLR?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--FdJ/88N4CvtxposF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNdgbsACgkQsoi1X/+c
IsH5Aw/9Ee98O8Nk/joStw4hY2HyI1nyL+COcybuFGZjeOEPkoQTn4PXOoVFOLyj
Gs7dY0dI7To376dWVczQfVyrz0+nvbyuLhhr51I2USh5Eunshk62jeUYb+LTkUcc
zEWXvTCdcUgctWJDATQJDHnzEEMP2vQuhgS3pK5zsCnOL05pFK8kXLx82302lIkd
0Kov4+nVU3GgwQRxH5rM/chBJkbP9LSYG/69AP8T4D6GuCYcE4QGGUyP+IXJQdl/
KFyhBtOPOeYr8mSZDoCDkjl9/LEZtSMBf1m3lCnRo7cHrPxhpe4hbA3dTyi7Pp2y
X3icS78hZdcVkWK2pACK2yxpJBZofOZhna432FGjQ2IrM6giEUdvEp2wnDdmguFk
EAcFEqeTW5JbnEp7M8sWnRj86OEHzRhV+ID2k45Un0eQq9TPmvVdDC1zHTVJJQh4
63z8nuiZi37pDRp0K+fR3xtTdPrlZO8hSpDTeX0+rMJLJB9OAKwYaT6UQU0cXB+3
cza7BRhm6o9oCv4HdISvX5wWf/5Tr7dZAXuDjH/C4cvNKrGJ8h5Uy7pqpjmWDQnW
VTd7Q9TUMxU/lv3686o6swt2KHld4BemB8MQGZzyfTPQuqCubHOAgLaWI5bjEHYn
Zh7JU15lzMiQEAAIzDFi5USNp+kV7Gct+b8f5ZNzn3SE6jEOHrw=
=vQzd
-----END PGP SIGNATURE-----

--FdJ/88N4CvtxposF--
