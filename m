Received: (qmail 20311 invoked by uid 550); 27 Sep 2024 16:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28157 invoked from network); 27 Sep 2024 15:48:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1727452109; x=1727538509; bh=6qn8Gvci7b
	9dm+JvcmqJmH/c5tiM409yVTYcc7z2agc=; b=T2O8ot7ldZ8+KOeYFHS+TZyQha
	AWlcgpQVUfcJ6CyFoVc5lco3QMdeuEq8YN2uNzx4Cufv4UPhCW1wsHwp/Nf5NEYU
	qJbXhD0K2yBJ7Fnc+VyBTQ/QuoQjxcrK1Q5XaMYVV0NRmG9Gn9TSW1j8mj0lxNBs
	4M3uQ0T+3waYGs6rzYklz8k9TP85Fgj2y3nm1VxKC7mfllo28iCo3yUaDcXkVOrs
	Ddcyh+NcIXDTPVFVqRNsI1h8JJpE3EwfpllBKE0zg/h1ou+BcbPeFJoYs4BGW8Ge
	NLzZauZoO2Gkq7J1rgldCFtY4m7XT2SNXNu7bP29fhhbKiLT1pspz3TqLswg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm2; t=1727452109; x=1727538509; bh=6qn8Gvci7b9dm+JvcmqJmH/c5tiM
	409yVTYcc7z2agc=; b=WIIiyHT9oxziwPwiZiBBrl5ZqLi8VQMzz7svVFkgWTk8
	HZ5s3uDOTGvOoOKgz7tM5B8a7YLdt0L1RYRv1ZN1YDlF8m946iwZqVyX75NuVJBC
	thZhR55BvjTIv8iM6hYkjX326hSnIrNmpYeA9LkutMdYgzKuva706jUCQJdexhkh
	FqZc0M/WRxQbI/5W4IUFMNt0AzbeDUu2q48Kq2Qu3wWsKOJnbWrZkn8DTjbmh+te
	Gm99MGUUYzq2Dwk79BWW6J/AoKBlhTRu0QuG2LUE0eu93OTA/hCEVDGt0oCqK9wT
	ERHLjHKQRVOnPhkjCVg3UxrmMlJf524GC3QFCgZ70w==
X-ME-Sender: <xms:zdP2ZiJ5BhJrbvEJ595ebpJHp1hkOb5h9EqRipCFi3zZrX7-uBNeLw>
    <xme:zdP2ZqI75OyoqUG-TI4LpprnzeaZ2asaYFYqV8dZ9vJ1loFdKhL0DD-1JwC--QczN
    FCvB_8bdU7OCw>
X-ME-Received: <xmr:zdP2ZitIeVfF6Ste_T_v_koI5O3LEhXAI6VsYeLGNlQlR83kEK9bGnFaSsM7wBVzHpUiUaCciG996hz6oUw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddtledgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefkuffhvf
    ffjghftggfggesghdtreertderjeenucfhrhhomhepufgrmhcuuehulhhluceolehmudel
    lehisehsrghmsghulhhlrdhorhhgqeenucggtffrrghtthgvrhhnpeekfeethfejgeehhf
    egieffgfdugfdvgfdujedtheefhffgudeiveejjeehgfduvdenucevlhhushhtvghrufhi
    iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeelmhduleelihesshgrmhgsuhhllh
    drohhrghdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
X-ME-Proxy: <xmx:zdP2ZnbIAUzVCfNp2c6NqFXd0EAD1cQYBjvswgk73FozGDvMT7ULNw>
    <xmx:zdP2ZpYi6FNdcryuFetK-hpbzszPlkwRCBoPn87l4ZThDH70kAuocQ>
    <xmx:zdP2ZjAaGMDCZ36b-uxwRvvKza9vn8c8-OIgpeQZRxztLnR2pVd9HQ>
    <xmx:zdP2ZvbXp6guNsrqpR9btirUpntlrBz8X_jeyvXL1X4Sas2GF8POtA>
    <xmx:zdP2Zoms4OSz3E1o7ejl-xsZoBie00tK7ZF-27P8JTvHM2CPpFyVfHOY>
Feedback-ID: ie6294588:Fastmail
Message-ID: <c64de78736f4c74f1185db288e23fcf716b335a8.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Fri, 27 Sep 2024 16:48:25 +0100
In-Reply-To: <dbf738ce-d236-4c8b-864d-900d4e7c3238@rub.de>
References: <16a2094c-dfa6-a448-b9c7-76ba2dc86f66@apache.org>
	 <ZvR8tR8v-6gpjLsP@itl-email>
	 <CAN_LGv2QzuonfGdOsN88Qpe479xupfceCLYkv0yQFtRdf3CFNQ@mail.gmail.com>
	 <dbf738ce-d236-4c8b-864d-900d4e7c3238@rub.de>
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-iP3ed/iCsm9eOehEEoo9"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Subject: Re: [oss-security] CVE-2024-40761: Apache Answer: Avatar URL leaked
 user email addresses

--=-iP3ed/iCsm9eOehEEoo9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For WordPress websites that I host, I have code which caches the gravatar i=
mages on the
server and serves them directly.

My main goal was to disallow Gravatar tracking users across our websites (e=
nforced with a
Content-Security-Policy in addition to rewriting the image URLs). But, it d=
oes also
rewrite the hashes used when served to the client. So, this could be used t=
o avoid leaking
user addresses.

Not sure if that can apply to this software as well, but thought it was wor=
th noting.

Sam

--=-iP3ed/iCsm9eOehEEoo9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCZvbTyQAKCRBf6SjNlibO
K5ClAKCl+T8/hO13Kem846avt67E5woEWQCeO5eh/5lmxp1xQh5m0ylVbSpBcbI=
=MUHQ
-----END PGP SIGNATURE-----

--=-iP3ed/iCsm9eOehEEoo9--

