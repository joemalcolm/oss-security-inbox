Received: (qmail 21844 invoked by uid 550); 4 Nov 2022 18:51:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21823 invoked from network); 4 Nov 2022 18:51:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	invisiblethingslab.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1667587863; x=
	1667674263; bh=Mkq2yWKUc+K507P/sPndCjRU1oG0II39wNHyK4Z8xMw=; b=P
	uHyPpVOb9G5fhWOWlQ38kDcjiZ/yUM0s6+sNjm+zrFD8yqidnnHCFAjBBm9ynyMy
	rl6yhVq8VSx6y1pFSVz+dxivxUqyArBMjnaaowVvFHZ632vDKqfXfghbGZtuU2kb
	K+aeMJmhYp/fJWEU2E5ShwfVFJ5Qn9FR4Nsnsnq4C1XMYKH2PjFGJY81pOeJklVR
	5o4fKN9of4SANPzSzod6pxzG8ZVUZ3Oc8cPgir1i8XWY2W51BVNPsVbRQiRbaTqY
	B8Ttsp1qsWi9jH26lk7BwWZ2UaNn3aSTtcQ11Lga59CGbqbaIU+4933mrBSRGkbD
	k2nJgpu+7OPQlS3BYNM/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1667587863; x=1667674263; bh=Mkq2yWKUc+K507P/sPndCjRU1oG0
	II39wNHyK4Z8xMw=; b=UcuWE66dkg6Kv9khCnY44sdSMBbsIIrOxWaEVN/c6DeD
	lTuBF3m1Ks48AFdiOLpQE+B4RnVo7RCoirNa+ounPV7LWPxDDLQsT5OOHaGs6QvQ
	dPG+jwGANbPbjp38LhHWROgAJ9kpS70o59FpLAprsotDqIsweHPkdVRsczS4G5SG
	G8v84L7LZSwtFLSSc48C2ravjtZHFtT12KT/KJLul5BqZPdE33ixG93qjyDyQDHl
	dD1k+LQ8EvDyaWfX4Ti8QM3ydXLgBVewVsLcM9VgliFWd29VaHtzAgp96OYdhhrX
	xWOdhbVmvn1nII7EIsefad9A/xu6l3g0fyt3qpHlMA==
X-ME-Sender: <xms:F19lY-Q4mITBEMtx8IDI0_lcE2mtY4einNu-t10Eggf-vZTdqLEaIw>
    <xme:F19lYzwtE6pczTPIpadUMmMVQYk1MOqoemjojpiY4zgiKf8gUs4Ya-kXDiUVxa05D
    g8AfSaXMpnkFf0>
X-ME-Received: <xmr:F19lY72CfleYf4Kl6xsgJA-rIFu2kSTAT2XYZxcWhOwRJXc_TqeorUJqwYh1>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrvddugdduudehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
    ertddtvdenucfhrhhomhepffgvmhhiucforghrihgvucfqsggvnhhouhhruceouggvmhhi
    sehinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomheqnecuggftrfgrthhtvghrnh
    epiefgieefvdfgjeelfeeifefgjedvvdefleegleeifeegfffhgffffeffhfeuudehnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggvmhhise
    hinhhvihhsihgslhgvthhhihhnghhslhgrsgdrtghomh
X-ME-Proxy: <xmx:F19lY6DkcpvHLBqY3QKBfxGK9lHlNz-o3C1c4A33l0mAzDCreCyO6g>
    <xmx:F19lY3jcFinjNB0TrDtftIUluExR1rj1fIgHKkjp3LoMr3y3jDrH3A>
    <xmx:F19lY2pLVtj_1UYcBNXTSbaDbYc_NcxMDkO_k-ra2s4k3HEX4oKLPw>
    <xmx:F19lYytcOQS4dChK2R6po73D4CMNpJBzX8H6-M782Fw7Qc99G8ifWQ>
Feedback-ID: iac594737:Fastmail
Date: Fri, 4 Nov 2022 14:51:00 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Message-ID: <Y2VfFUipF21W5dBh@itl-email>
References: <87a657nflj.fsf@v45346.1blu.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2JFQjLmMZkmU7AJA"
Content-Disposition: inline
In-Reply-To: <87a657nflj.fsf@v45346.1blu.de>
Subject: Re: [oss-security] CVE-2022-37865: Apache Ivy allow create/overwrite
 any file on the system

--2JFQjLmMZkmU7AJA
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 4 Nov 2022 14:51:00 -0400
From: Demi Marie Obenour <demi@invisiblethingslab.com>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2022-37865: Apache Ivy allow create/overwrite
 any file on the system

On Fri, Nov 04, 2022 at 12:06:48PM +0100, Stefan Bodewig wrote:
> Severity: medium
>=20
> Description:
>=20
> With Apache Ivy 2.4.0 an optional packaging attribute has been
> introduced that allows artifacts to be unpacked on the fly if they used
> pack200 or zip packaging.
>=20
> For artifacts using the "zip", "jar" or "war" packaging Ivy prior to
> 2.5.1 doesn't verify the target path when extracting the archive. An
> archive containing absolute paths or paths that try to traverse
> "upwards" using ".." sequences can then write files to any location on
> the local fie system that the user executing Ivy has write access to.
>=20
> Mitigation:
>=20
> Ivy users of version 2.4.0 to 2.5.0 should upgrade to Ivy 2.5.1.
>=20
> Credit:
>=20
> This issue was discovered by Kostya Kortchinsky of the Databricks Securit=
y Team.

FYI, you might want to rotate your OpenPGP key, or at least use a newer
hash algorithm.  The signature I got uses SHA-1 which is no longer
considered secure.
--=20
Sincerely,
Demi Marie Obenour (she/her/hers)
Invisible Things Lab

--2JFQjLmMZkmU7AJA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEdodNnxM2uiJZBxxxsoi1X/+cIsEFAmNlXxQACgkQsoi1X/+c
IsH0EBAAt5WHvxKguW7nWaXn8nc71SXGcBQSkptoGlVFbO/ofISl9cEfn08HeOZI
OPUBU2a60hsp1bEy3hr5NIR7uy99RylYCJR3fHXSHHQxnbwtqq/lZ/9WaVOVnJvq
LIEIgeHlKS9Gbm4M4iosi3BQ8Ai6kHGM2aniQEHN8zuj46MV+u+TANLBhmVZLG0n
5HivdVS0tHpn30v7r3KNi1ACuYVy10EfpdJE40TIwJ5jKOfV+NFnyLXeqtPpWNFy
bEkNdpil1BM0Tqjfhyo9dmMpYdNvWhpuMXVYtbvSWo7iNlAehNzzcfYK4iM8kRTy
dpSFJYhGcOMwUkbskYEfQvqTwH4Ly7iEvKh5/UAOCtCdr66Epm3Au/w7e8BRgxfB
G32ZmYnoUEEQK3gLuOTYVEbTmoQx5YRWYeCx7EdaTH0ALWT1Ao7+khXYogOP34m4
Vbz7LxSYQdnaI4teeGSAd4l+HT4VIrQLXyMf2N7P2drJSi8gfXTOh9S76Mmwdkkz
d2rYwB2TzqmEpXHxqD3z25dhk6jESMICrMElMAaoPYnjSyBGpcpaVWeykOzrotJZ
fbF1zNmYpXWTJWgKUyMPRgo39nLj2LVGgjiZ+pg5sr6eQLhTkW5bb5MNDTxUJFn+
I2T9Src4R1Te3Uif4cnAmkjICTkoLZcJQBSG0bgk1yvZkh2zvDk=
=2TQU
-----END PGP SIGNATURE-----

--2JFQjLmMZkmU7AJA--
