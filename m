Received: (qmail 22100 invoked by uid 550); 28 Dec 2025 23:09:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19703 invoked from network); 28 Dec 2025 07:30:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=verbuecheln.ch;
	s=default; t=1766907032;
	bh=pJ/pxUtNXU9pvJZEqi+QUemit4U3FpLwDQIQH55EIo8=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=PAalMJSqK0z4BnF3G3BYKC6FsKlsiFbd2pzgmTisoFLoBqZWPjov3Ms0ftLI8Dc2K
	 LDfWwSWWBMnLQ1K/bs9BGLiQpgxY6avTcUzof/m2ZLjLxpqI7QkpR9oCEA3SslvAIk
	 ZJUSMy987yz3tKar44agLSbl02PDRLSTcibwnhz4/w2CUAyz+ot0hHXXB2t+Zffwtx
	 wPjl1T8x98AuQRd9MVStxz/ITEh8dB+2w2EBW0WO5NYD4FwRKZ1zO15n4byCXGsBgQ
	 A0rpdhzbRKBUtx0afA9U7bMJc5EuZSFsYUPdCN3PHCA/uK6GEJHlzPpFCvbrlZLOW0
	 lgKyblPappmeg==
Message-ID: <0bf8169edb12d002a4654c4ccf6aa54d84eba14a.camel@verbuecheln.ch>
From: Stephan =?ISO-8859-1?Q?Verb=FCcheln?= <stephan@verbuecheln.ch>
To: oss-security@lists.openwall.com
Date: Sun, 28 Dec 2025 08:30:31 +0100
In-Reply-To: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-G67T+BHu3agkxzJV2DSD"
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--=-G67T+BHu3agkxzJV2DSD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Most of them are about unreliably displaying what was actually signed
and vertified.

The RCE bug was actually fixed as they already state in their slides.

https://github.com/gpg/gnupg/commit/ad0c6c33c3d6fe7ff7cc8c2e73d02ead5788e5b3



The overall status is not good though. In total (in their slides):
- 1 fixed
- 1 mitigated
- 3 unreleased patches in Git
- 7 unpatched
- 2 wontfox status.

Regards

--=-G67T+BHu3agkxzJV2DSD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRB1rjSpCJd8a7h6mNgNUJZCjx8YgUCaVDclwAKCRBgNUJZCjx8
YsYDAP0Vv4fdWDPju+yRCwrBEUx7TQcnuzbt4VqRW1Wrt5LvjgEAr+aNdfhXZBRQ
OVoiOEzH3dVmDcAJ9dp6i/kTbkVN7A8=
=0bGj
-----END PGP SIGNATURE-----

--=-G67T+BHu3agkxzJV2DSD--
