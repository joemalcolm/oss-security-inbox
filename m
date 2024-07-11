Received: (qmail 17958 invoked by uid 550); 11 Jul 2024 19:06:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17937 invoked from network); 11 Jul 2024 19:06:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.stravinsky; h=X-Debian-User:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description;
	bh=H8cnSqyskC6JvcsGBjn6gl4nD8PXK5TGDWudFRd7FUc=; b=OtehnDoiJJSfxrlvsLswGmGhFg
	OnDLYKTrC51U6DtdpFb8ESRfetfFdxHYiCVDk+MLsrSsRcBBfPKmLiIrpvx1iOsbjrF3xSmrieen3
	mIaHlPLmL4ncIS+Dwv4LOINPjjSV6nUHK0dRF8B4QEfzLqJlBQcox89rWTXOS461VCjOBXsHN+o7X
	SobGbysEilwBukQQN7Xlf4VtPxoUTuthTEm4Md6OT6wAshvJpBmN74RZyf87DFGjg2IfaszvEdT1g
	37yF1H0beHLDUBvMCazIna5+WtSab4JCogUd5hfGJ51SGtkTYw4jygDdNIvAzO/bnaeMKKUjFAsBo
	zR6QqFeA==;
Message-ID: <da14cfdfa8a410fd8589ad93f7e6a9eb271f52b1.camel@debian.org>
From: Yves-Alexis Perez <corsac@debian.org>
To: oss-security@lists.openwall.com
Date: Thu, 11 Jul 2024 21:06:40 +0200
In-Reply-To: <3a3e9afa77884b05733a5cdfc3eaa65defa45fa4.camel@corsac.net>
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
	 <6771f9536d49185fc8f1ea9905c13cf4dd8776d2.camel@debian.org>
	 <bda1ece8-8302-4a04-9f16-c78b51b0dbb2@analygence.com>
	 <3a3e9afa77884b05733a5cdfc3eaa65defa45fa4.camel@corsac.net>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-Debian-User: corsac
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On Thu, 2024-07-11 at 09:07 +0200, Yves-Alexis Perez wrote:
> > If you want to see the lack of randomization, try the test with an x86=
=20
> > kernel, not amd64.
>=20
> I don't have one at hand unfortunately, but I'll try setting up a VM or
> something just to be sure. Thanks.

So I did try with an x86 VM and it does confirm your finding. On an unstable
kernel the simple `cat /proc/self/maps |grep libc.so |head -n1` (with libc6=
 on
x86 beeing more than 2M) I get no randomness at all.

Regards,
- --=20
Yves-Alexis
-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEE8vi34Qgfo83x35gF3rYcyPpXRFsFAmaQLUAACgkQ3rYcyPpX
RFvWbAgAy9nuAhjaNtgT7zBs1/Th5E4/veuUQWdkh4CUbaRjpndmYI9fWGVxtyfh
p1xc10mkxVi0onVw5hwd3fb3GxvSCtZEDfFG/8qfAC5wIn05/ZvKyZvaBySYMqSm
au1tgM1A0CPrsbcf0wVJoE+hoQnGBl/d2fvd3cp9fDV3+ItYtbzH5XIgRugaGkfz
3kx+CK8kM5FbtWZ12ZkERXbvIUf8vqTuGbfqR3M6g3w8eqBqzkmi8TQcbhOP1X4N
G0aJe3K5omlz77wxrCxBfBCT37uhPT6ljfJYaRUWhGXzT3UACmqM9QXu30/XBgjd
rl9bGcbbvQJ+h5WZady6GLEQZg/Qsw=3D=3D
=3DMbeb
-----END PGP SIGNATURE-----
