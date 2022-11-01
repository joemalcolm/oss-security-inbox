Received: (qmail 27864 invoked by uid 550); 1 Nov 2022 19:27:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11952 invoked from network); 1 Nov 2022 18:13:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667326409; x=
	1667412809; bh=G6PuHQoM/Hsskl9XHzdmdyKUqqstM58K7n44cL17xig=; b=L
	/Kf+5eb2kQbwHE+Xgx3ES4YGj9PSw0SEOMTy4h9urAvqvsxtf9kn0l9lHl/Bxdrx
	QN/vep6vkVmZ0XNirxuGlqRxiE1tFC2qTBSXFYlGqw7koOA2H3t7dQWTlkFaWLRU
	/W6pHTZBMDhK6RbdKDkxlS0xk71yFB6gokl44VBM/liIo3tcw10vc3+iQqhCLCKq
	B2ewqB1GCPLtxcYOS3I03WktiqCfuOcr9RitA+eaku2gKPmpl92gapwa6cleRzkS
	46Vq1hP4CaDeTC4/5hnJ+Yiq6lm3ToG/qs8LoG/pL4lb5ENgqID5iHQOEL4Xxj4D
	NnQ86S65wb0mc8e+QpurA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667326409; x=1667412809; bh=G6PuHQoM/Hsskl9XHzdmdyKUqqst
	M58K7n44cL17xig=; b=ZWvmmh4orEK6tEIBvjG37ZZgLN8OKxVLv/Asty9awAOP
	WeMN8RzQzDl3sRIr+cLvLSnHQ3kEUKUdLfjRFm+TPbVRFzlGiTQjAsStgLuBjDYJ
	cm5Hg253cKB1bp5uw4tPLHSk4IFoWrMHxd2JHnDKYUT98bTGHNKtd5jN+TMFTg/7
	DawezKtPDGfw41y/7EzaMQMcqYPPiJlpYs1VpVT8CIiFlDEPJN5q5f/iKrjv9Q+n
	AJAjkYlB3FXOqsIU3Az9fv0yRmGAVxC57dZYKXHW2a22IdDb5zV+CqFO+7q6vfZF
	KwKyS+7bNytCYKx0XfsVhffV2U6KOU7pZRbX9QoaHQ==
X-ME-Sender: <xms:yWFhY3hXGoJYBnVkWCFTQF2MjbaYff8oHoeacWTPKLvmZQIfrD2Hzw>
    <xme:yWFhY0AqYwqr0eRP449kNjvpfA3fuEvHTxySMpqEBg8WboS3hmbxQrium6XIHwV4f
    TD-iMprMz1uoMs>
X-ME-Received: <xmr:yWFhY3HVju6ffSUu0T0pMQ_JzjFSfH4AdE63F5vk25u-6jjO7Oipo_3IADtF>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrudehgdduuddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epffeiffeludegueffgfejvdetgfeuvdetueevleeuteefleffiedtvefgjeeihefhnecu
    ffhomhgrihhnpehophgvnhhsshhlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepuggvmhhisehinhhvihhsihgslhgvthhhihhnghhs
    lhgrsgdrtghomh
X-ME-Proxy: <xmx:yWFhY0TTo-2-eSA8DU0VVBU2Uad8Tcp8sP0zAd6LTa9dBuri7fkjew>
    <xmx:yWFhY0zQg1XFK8AE85rlAcHcgmS0dN4PH5L6kstPfF517jKC81ZhLg>
    <xmx:yWFhY66UOkVBqcXVrS_6cnjiUCt0T0JKS3vSrYyRn1iGx7XPXCyK1A>
    <xmx:yWFhYz85Ydp5LlAE0OKT4zkFZYVEimDrzdmt7-V0peFxKhUTL5hCDQ>
Feedback-ID: iac594737:Fastmail
Date: Tue, 1 Nov 2022 14:13:22 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y2FhxvA/2e7xFUiF@itl-email>
References: <20221101170833.GA10470@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VCaIowFbD1zNHgK7"
Content-Disposition: inline
In-Reply-To: <20221101170833.GA10470@openwall.com>
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

--VCaIowFbD1zNHgK7
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 1 Nov 2022 14:13:22 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL X.509 Email Address 4-byte Buffer
 Overflow (CVE-2022-3602), X.509 Email Address Variable Length Buffer
 Overflow (CVE-2022-3786)

On Tue, Nov 01, 2022 at 06:08:34PM +0100, Solar Designer wrote:
> OpenSSL Security Advisory [01 November 2022]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> X.509 Email Address 4-byte Buffer Overflow (CVE-2022-3602)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Severity: High
>=20
> A buffer overrun can be triggered in X.509 certificate verification,
> specifically in name constraint checking. Note that this occurs
> after certificate chain signature verification and requires either a
> CA to have signed the malicious certificate or for the application to
> continue certificate verification despite failure to construct a path
> to a trusted issuer. An attacker can craft a malicious email address
> to overflow four attacker-controlled bytes on the stack. This buffer
> overflow could result in a crash (causing a denial of service) or
> potentially remote code execution.
>=20
> Many platforms implement stack overflow protections which would mitigate
> against the risk of remote code execution. The risk may be further
> mitigated based on stack layout for any given platform/compiler.
>=20
> Pre-announcements of CVE-2022-3602 described this issue as CRITICAL.
> Further analysis based on some of the mitigating factors described above
> have led this to be downgraded to HIGH. Users are still encouraged to
> upgrade to a new version as soon as possible.
>=20
> In a TLS client, this can be triggered by connecting to a malicious
> server. In a TLS server, this can be triggered if the server requests
> client authentication and a malicious client connects.
>=20
> OpenSSL versions 3.0.0 to 3.0.6 are vulnerable to this issue.
>=20
> OpenSSL 3.0 users should upgrade to OpenSSL 3.0.7.
>=20
> OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.
>=20
> This issue was reported to OpenSSL on 17th October 2022 by Polar Bear.
> The fixes were developed by Dr Paul Dale.
>=20
> We are not aware of any working exploit that could lead to code execution,
> and we have no evidence of this issue being exploited as of the time of
> release of this advisory (November 1st 2022).
>=20
> X.509 Email Address Variable Length Buffer Overflow (CVE-2022-3786)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> Severity: High
>=20
> A buffer overrun can be triggered in X.509 certificate verification,
> specifically in name constraint checking. Note that this occurs after
> certificate chain signature verification and requires either a CA to
> have signed a malicious certificate or for an application to continue
> certificate verification despite failure to construct a path to a trusted
> issuer. An attacker can craft a malicious email address in a certificate
> to overflow an arbitrary number of bytes containing the `.' character
> (decimal 46) on the stack. This buffer overflow could result in a crash
> (causing a denial of service).
>=20
> In a TLS client, this can be triggered by connecting to a malicious
> server. In a TLS server, this can be triggered if the server requests
> client authentication and a malicious client connects.
>=20
> OpenSSL versions 3.0.0 to 3.0.6 are vulnerable to this issue.
>=20
> OpenSSL 3.0 users should upgrade to OpenSSL 3.0.7.
>=20
> OpenSSL 1.1.1 and 1.0.2 are not affected by this issue.
>=20
> This issue was discovered on 18th October 2022 by Viktor Dukhovni while
> researching CVE-2022-3602. The fixes were developed by Dr Paul Dale.
>=20
> We have no evidence of this issue being exploited as of the time of
> release of this advisory (November 1st 2022).
>=20
> References
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> URL for this Security Advisory:
> https://www.openssl.org/news/secadv/20221101.txt
>=20
> Note: the online version of the advisory may be updated with additional d=
etails
> over time.
>=20
> For details of OpenSSL severity classifications please see:
> https://www.openssl.org/policies/secpolicy.html

1. Why OpenSSL is even *parsing* these SANs?  In TLS they will never be
   used, so parsing them is not just extra attack surface but also a
   waste of resources.  I understand that parsing them is important for
   S/MIME, but that does not mean OpenSSL should *always* parse them.
   Instead, OpenSSL should only parse them when a certificate needs to
   be verified against an email address, which TLS never requires.

2. Why was this not caught by fuzzing?  Is this code not fuzzed for some
   reason?

3. When will OpenSSL be replaced by something written in a safe
   language, or at least with a better-maintained fork?  I know that
   distributions often cannot use LibreSSL (because FIPS, ugh) or
   BoringSSL (because of no stable API or ABI), but I wonder if e.g.
   libcurl should be linked to BoringSSL instead.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--VCaIowFbD1zNHgK7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNhYcYACgkQsoi1X/+c
IsEsnxAA2Q7xcCnfoNzpvrgQ7n2bGEQ+A6d5Vh4fh/I8pJuCEXvUkr0xbo5HJ7ug
8p3avsgomyQInita6SvkqERlmCdj/JMtkRZz1vpW8LhojB8GAyP46arT/tDO2O2D
X0/Nj/cNc2jBSXiS4ToYOtdib4bYkuJUET54rPd2okK6AFwqDov33ciTY4zN+n8s
GXtjpIeDoDhWHUr/KOpT+wfzytUKRTw+gUYEWIAFBWvnCOMR/3HZzbJjmkTIQZO5
gfCLJtc6lQwFmRSQG+l3hHPZTdc0CkO61pDqaVCtcK2Whiik1/zO0OKoJSfkJ1TW
PxM1ZLheGvZw9xScF0oYo8cZAxB4VgsbNJB5hKU54PxAoQJfgCfnDp1UkMYd00IZ
wxCQbButtElJ5Tr1JLD/kkqsHsPPjnnpqmYwFXEzDNR23KscUsyuta0BVj9xv0Dz
9LVYiCa/fY9+JvyAIiO6Ur3B94aM+Nzu3X8a2ItCU9VX+OD1xo0XYgsl759aAofq
NzlFLgwITS05BVgdhT39JOPu3eQn9mAFhmHf/qCxDjxPrDHY/Wseg4QalPhjB7WN
EpAimLYodTAwlEWuVOKzV3bYw73SDnmanOUbhKsBvDt7DKqBJUjRTona9SHpiIwK
d2GWqxI3SSdZWqpW5CPE4Lm/06KlWTfLYg7c1ga09obXu8/GMWE=
=dLZO
-----END PGP SIGNATURE-----

--VCaIowFbD1zNHgK7--
