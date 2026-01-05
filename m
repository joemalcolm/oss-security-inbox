Received: (qmail 1644 invoked by uid 550); 5 Jan 2026 10:32:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1835 invoked from network); 5 Jan 2026 10:25:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=verbuecheln.ch;
	s=default; t=1767608749;
	bh=emoZYf0zVpvpTkB7XIaFzCherSQb8Xnn/g34tPTd0qY=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=V3sBcZqH+EnYPCzXlFB7Rd/DuzlADNcvN26GW1vBPy6PCY/T19ymnrNuEMgEbpwsa
	 z8F9FVqhdtP3AYlIPySc4MRr86Fn+Hf/qNnBqv0zUsX6eG4ZKvD5+WIussxS4h8V6c
	 Nge97a2I239ONLLECZJmbTPqM89yvPts8OPeN9ilXqdBN4rMPCHdbvercl9gwg/Iwd
	 lz5CbHSUr2kUFvBCGKs4/Dhf31k+z4KQnx9WFMH3/XiHY44Ecow7VPGF1teQy/7pb7
	 F9lKqADp3DXyoO+BtoBqsAc03KwAIftbt5E+EZxp6gx/kj0VD6DDFQtg5SaGF1lkew
	 xafItXUlyJYAA==
Message-ID: <bf56d9e046e229528284752103fd1c0e035e9717.camel@verbuecheln.ch>
From: Stephan =?ISO-8859-1?Q?Verb=FCcheln?= <stephan@verbuecheln.ch>
To: oss-security@lists.openwall.com
Date: Mon, 05 Jan 2026 11:25:45 +0100
In-Reply-To: <4ff44688-6096-433b-97ab-43150f3512b5@gmail.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
		 <20251228042744.GA629@openwall.com>
		 <0009d6cc-143e-41e6-b240-eb526a9cb306@gmail.com>
		 <d892df77-a488-4a51-af35-697897e3984e@gpg.fail>
		 <4ff44688-6096-433b-97ab-43150f3512b5@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-48RG+Wd00xmJgFrE+orA"
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=-48RG+Wd00xmJgFrE+orA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2025-12-30 at 00:34 -0600, Jacob Bachmeyer wrote:
> I am not sure about that.=C2=A0 As I understand, OpenPGP (and Git, for=20
> another example) only needs second preimage resistance, unlike X.509=20
> which needs absolute collision resistance, and the closest attack on=20
> SHA-1 is still only a chosen-prefix collision.
>=20
> The SHA-1 sky has not fallen, yet.=C2=A0 It may be getting a bit creaky,
> but it is not falling.=C2=A0 :-)=C2=A0 (Yet...)=C2=A0 :-/

For certifications (aka key signatures), SHA-1 should be considered
insecure. An attacker could generate two identities with the same SHA-1
hash and then let people sign one of them.

Regards

--=-48RG+Wd00xmJgFrE+orA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRB1rjSpCJd8a7h6mNgNUJZCjx8YgUCaVuRqQAKCRBgNUJZCjx8
YuWjAQDfGKofD3659a1vOzOUdpQst6wIXB94wQsZ8+f/izox3AEArT7MPZwinMKc
pWRpc12fOO+NWumWJSnOp1/Gr3ighwE=
=xpbj
-----END PGP SIGNATURE-----

--=-48RG+Wd00xmJgFrE+orA--
