Received: (qmail 6000 invoked by uid 550); 22 Feb 2023 15:27:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32054 invoked from network); 22 Feb 2023 15:17:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1677079046; x=
	1677165446; bh=dMfVJ9K93SO0r0XRbF7PemxSk0a2LF15Vo5mPufyX7I=; b=k
	nNiJjlVgMB6XRGMLyJThV7MEI34IaixuQJESQBnd5V3KfVrQ1vDxxj7KW9dZuxta
	VBooslIizMd9VFMpgMslC3AEdWyIs7S8mQdv505gFt0xhvnAvwilGnLmXDNuy/8J
	zJAp6f/T66iE8kpHEPt4M+DdNgJCpZ/ey3QfHlWYINrsJyHzLK+fkfBRCYYVSHjM
	UwlJlWsXYR6nCTXyk+QkmzopsGltl8JO/rWkGoZ24aBAsB6AregzYpwXmzwjdYXe
	r+HMI4/ejsgRi4Vf0Ed8AMACBSDZRGzeAVHToOjWx3STtk1EgUi5j7VVf9tqCM4e
	DPJlKfSv6jYSBZQEmsocw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1677079046; x=1677165446; bh=dMfVJ9K93SO0r0XRbF7PemxSk0a2
	LF15Vo5mPufyX7I=; b=eFX4NLZhN8jPmUhPaptpbansZX4AWFffgIq56f/eCZZj
	dhAHWzGk1BmhqmgHk6N3ID5DD8i2hJ7QOewjLtSxo1/Iyq8x5a9AVWsDWEKoZkkY
	KkxwixVBCZMIxvcLmoFMCTunFGBVTaJ+QobfpnDSiVufty0htScCYx0pJXWaeez1
	EkNGcn9mw807nTJKYnQRlIMY9dPHbNqqTKaI8iLtVLUh4cckZucFD2j2t0SIFQGE
	3owMlPotATPCjrcdEo2lOmZzzl4mnRqB9hYiuZuOB0tRaMjRq1D58H8fURDdYmu9
	g2eD0G0Vu2Nl4rpr+w2h/0LY2UpOcZ+HcsyfvwN5EA==
X-ME-Sender: <xms:BTL2Y65jB1mA1ZLa1LRZD7FoK75YIwxdOozAYRW6xXnjn4c_cg9XrQ>
    <xme:BTL2Yz7hEZw1OiR_YiT_dWNl9b5cpqc9izII7M7XMf9aLSD2WB7pJkM23DLr2t7OQ
    5JjUdXgjc7NRdw>
X-ME-Received: <xmr:BTL2Y5fzguTsZ7ZrLIVw-JkJs7mXngcQr-nxWVKmW6Hq38m55CNXCBm_H7R0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudejledgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtjeenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    eptdettdeuiedvfeeiudfgjedtuedtleefvdeukeeltddugeejvdeiudekfefhueetnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:BTL2Y3LNsrjEjtXEAWFvp5yCVSx96onY91thDsDroQcOXC9El4lZeg>
    <xmx:BTL2Y-KpEcahxwt05JA9IqTH9fZe1LpnwHGQ2sPKpS5-NHR_ibsqcw>
    <xmx:BTL2Y4z9ZE0-S4MC4mpDIasTumRY_Ja1RyhWxm8C5uo458kPqrrHlQ>
    <xmx:BjL2YzVWUxc90oZzEneNlpmoyEgBFc_0JtWo12VLLN1erltQMrKFPw>
Feedback-ID: iac594737:Fastmail
Date: Wed, 22 Feb 2023 10:17:19 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y/YyAyP4+WYltYm6@itl-email>
References: <20230202130212.GA15689@localhost.localdomain>
 <20230213120214.GB19824@localhost.localdomain>
 <20230222055430.GA32113@localhost.localdomain>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oAxBwtcY5uargp99"
Content-Disposition: inline
In-Reply-To: <20230222055430.GA32113@localhost.localdomain>
Subject: Re: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)

--oAxBwtcY5uargp99
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Feb 2023 10:17:19 -0500
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: double-free vulnerability in OpenSSH server
 9.1 (CVE-2023-25136)

On Wed, Feb 22, 2023 at 05:54:36AM +0000, Qualys Security Advisory wrote:
> Hi all,
>=20
> Another quick update on the exploitation of this double-free bug on
> OpenBSD:
>=20
> a/ our previous attack (the arbitrary control of sshd's instruction
> pointer via the EVP_AES_KEY structure) works only on OpenBSD amd64, not
> on OpenBSD i386;
>=20
> b/ we were able to recycle the chunk of memory where
> options.kex_algorithms was allocated, into a chunk of a different size
> (which gives us greater freedom), but this happens with such a low
> probability (even on i386) that we do not consider this particular
> attack to be practical;
>=20
> c/ as a direct consequence of CVE-2023-25136, we found an information
> leak (of bits and pieces from the memory of the unprivileged sshd
> process), but it is unlikely to be useful in practice.

Is it possible to use this information leak to bypass ASLR without
crashing the process?  If so, then one could use the control of the
instruction pointer to jump to a ROP chain and get code execution.
This flaw would then be at least the third RCE in OpenBSD=E2=80=99s default
install, and the second in OpenSSH.

Also, is this flaw expected to be exploitable for code execution on
GNU/Linux?
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--oAxBwtcY5uargp99
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmP2MgMACgkQsoi1X/+c
IsFXYRAAnh8LGak7k7CLIZSUISTYYW1Km4w5L/TJ8nPqHaO3s+X1Azx49eJ8cBYd
bxqQ6ACF5xfVKdemTKRIJBol/KfpTb3v04qSQ81x0mlQ4i1lXfpKdFo/r/TJdOQ2
JmqXMxH185OtTy317EDtPvm+EICZubJV3YJeFgzPtNaKp1BDRkGNdU4tYApxdtoW
Adf7fpoPfz6yhNOr1wLMo6y8R6rhx1bMfPX108K1R1/FS/9NYT1HYG/CzZDXP4uv
OgbSDiCSpT7iStiOH6lZQOCcSTM+E1T5Xt7xS3L+MCwBeCINumVYrE8eErHCGa0j
l9aUtBVIJfvxniED/5FMZs0MkTKlxlj7gd53yAcwZZolNXpzUpRc0mTsn0DGA3+V
Vb+MVGecTV8VzvM5oZ29xOz3KZILJrIuNFsbaa7dJGEJAlNm0FfJ+8ZjewuKAEtl
y9z8kf5FDweHqaNLQdToalCWRDN7a0kEO7K0FSbwd2/ZP6dqRYJhV2RvLzjJxEK2
eSkJxaj2PnaAA8TrahpmgF5loVhHZKsBCBL2IIr0lz0mSM2u7TSGeM5oDXXzP1/k
yy2bJmkC/LNVbqYLenVQPS484d5O9h1xBwoxyv+2LtlUhgfSx5Dic1kL2Mpolipr
7Mj6Ja8hsen/OwVxFN2jto3qaGFXpA3liUmwXJlhBTJnH+RNY+M=
=xfJ6
-----END PGP SIGNATURE-----

--oAxBwtcY5uargp99--
