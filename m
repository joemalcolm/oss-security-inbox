Received: (qmail 13767 invoked by uid 550); 30 Apr 2026 01:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22321 invoked from network); 30 Apr 2026 01:26:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777512378; x=1778117178; darn=lists.openwall.com;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=1y1nk/7/benSzNiOt7cfHTg3YU5rFhNCYJ3xHPX3rng=;
        b=d4Ym9rYoU5D8c4DcrXP7/v34Kwy7jyIuEWPc4FDjWaMan5XF3BVeBD1jyVOreLJ4lp
         HzaNgLDofYGo36Q/CxcDayYFqpVEC/MfI0fKmA5ndDcy0d8CuyFdU37+nsauV1jxaoJy
         iy5WKsAP+rvkcBf/XN/p/pqnVD3k3i+8pSVzFPNsABnKt9KK29qVc4bxe9FPhtrDFijz
         WJaemJxrDLenLtQ16Zykbgx7aLs6p5h2ulRBytYwB3IXZzsTm5OvKVS3j4YRqlxEAYUM
         2Q+D7GMPb6zZA86ZAvgXo/SNTRtXfTPz3DAAcU2PrHaNUOPOosav52+/FbupYcrvSAbZ
         hxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777512378; x=1778117178;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1y1nk/7/benSzNiOt7cfHTg3YU5rFhNCYJ3xHPX3rng=;
        b=tVtRUwc2x/K9LRIQnf/pfpxjR2wpSl8o5DYWbmgOt+QtBttDNCxTdjfhmMtE9igvnM
         ssenNd1ZAMDuCh8JYrb96UBhBhg4KY52DN4h8VjsHfBf3x4ku3sVjjiatn1Xxnp6JgIo
         psIZqSlcf87KrTNq6b6WxBkVhC9Ut9bGlmnBbx1EyXNXxUM1Pab8KpWHIh8YN0p72FWJ
         GAPWY4oCtP7idgKBA9Sp9JA7kNann/7JibKsZbrd4VvUSdYjUwFpoTwixPV9q9T13JEC
         C6/uAPS8Tkt7KZnWFCDKj/NgTPiP9bXClURk5gSskSf/tIJXcfl1/F9Li5HkgUtX9jMD
         WJuQ==
X-Gm-Message-State: AOJu0YwBI78T29e3ac2iB7nmFBEnn1h7E2qVxnPrMKgpaPTLO2K5qYZ+
	aktbGfJ1iwYXYZc1qYsGGL3bpDYvUQXeVJ1/MHcAxehZmUhR8HWdxWac
X-Gm-Gg: AeBDiessk8dyJavmo6jyJf3zFmczbmGu82w0keSoEt/KE8Fxgnayp/cYtj5Tymdrxkz
	V+PeUltRdSPCEmq760VR8bugh2tmcTyVGs6eOHvwTamZFdYE2JWI2ghMjQES8CKM89eJPAFfvaH
	2Go9rvVkLlXzShJowxe5/Yt7n0TUQ/dOaLBltOBfZnMoDIDoa8M3brBvGyr+FnAhpydEVaMtz5+
	WeTDbM9gCfuAXavfc+QyELCkjC+35hFVjk1+Q6nQU+P2k1GPkx1tw8VQX54Nq6lMLib/dimqc1G
	89ao4xL9FaXZOQAC8MPd1LpSs1s5Pr+1rWfu4zonhurFDGIRg0iO5YkncLGq2A/0pAirv+EbHan
	XMpcYCnlHhD75gfEqNjWGhlY4UQIcFDa0W8JQulRpUYQnyoLraH1yJOGtBAYUSDhqp5CQIrhb6d
	q2H2e04J2gu37ov8pNxax6nWxL5bt8du4t04m4MRJwRLBY5RrWC/KjtZMQI071
X-Received: by 2002:a05:6808:1a01:b0:464:8a95:6edf with SMTP id 5614622812f47-47c5fdb1d28mr374933b6e.8.1777512377739;
        Wed, 29 Apr 2026 18:26:17 -0700 (PDT)
Date: Wed, 29 Apr 2026 21:26:03 -0400
From: Aaron Rainbolt <arraybolt3@gmail.com>
To: Sam James <sam@gentoo.org>
Cc: oss-security@lists.openwall.com, arraybolt3@riseup.net
Message-ID: <20260429212539.45dca9ed@gmail.com>
In-Reply-To: <871pfxpf0v.fsf@gentoo.org>
References: <afJorKIje4O6dXbH@netmeister.org>
	<871pfxpf0v.fsf@gentoo.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_//aO9LriY0eIgNk5/Pn05dx+";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

--Sig_//aO9LriY0eIgNk5/Pn05dx+
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 29 Apr 2026 23:39:44 +0100
Sam James <sam@gentoo.org> wrote:

> Jan Schaumann <jschauma@netmeister.org> writes:
>=20
> > Hi,
> >
> > This is currently making the rounds and looks pretty
> > severe:
> >
> > https://copy.fail/
> >
> > A local privilege escalation vulnerability with a
> > working PoC python script exploiting a logic flaw in
> > the kernel crypto API (AF_ALG) affecting most Linux
> > distributions.
> >
> > More detailed write-up:
> > https://xint.io/blog/copy-fail-linux-distributions
> >
> > [...]=20=20
>=20
> > Affected and fixed versions
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
> >
> > Issue introduced in 4.14 with commit
> > 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > 6.18.22 with commit
> > fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> >
> > Issue introduced in 4.14 with commit
> > 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > 6.19.12 with commit
> > ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> >
> > Issue introduced in 4.14 with commit
> > 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > 7.0 with commit
> > a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5=20=20
>=20
> To say it explicitly, all the kernels in-between before 6.18 aren't
> fixed.
>=20
> >
> > https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> >
> > ----
> >
> > PoC:
> > https://github.com/theori-io/copy-fail-CVE-2026-31431/blob/main/copy_fa=
il_exp.py
> >
> >
> > Mitigation:
> >
> > # echo "install algif_aead /bin/false" >
> > /etc/modprobe.d/disable-algif.conf # rmmod algif_aead=20=20=20
>=20
> Brad Spengler has been pointing out that this won't work on a few
> common enterprise kernels where CONFIG_CRYPTO_USER_API_AEAD=3Dy (rather
> than m).

I'd like to also point out that the copy.fail website may underplay the
impact this mitigation has on userspace. It's not the easiest thing in
the world to find out everywhere where an AF_ALG socket is opened and
then set up in AEAD mode in Debian, but so far I've found that at least
bluez, cryptsetup, iwd, and stress-ng contain code that does this, as
does a particular test in some Rust code in rustc, firefox-esr, and
thunderbird. libkcapi is also a thing, anything that does AEAD with it
will be affected. Simply nuking this part of the kernel API from orbit
is not a universally safe operation.

(Note that I've not yet made any of these applications misbehave by
applying the mitigation, I tried some experiments with cryptsetup and
the results were inconclusive. So this might be safe enough for most
people.)

--
Aaron

--Sig_//aO9LriY0eIgNk5/Pn05dx+
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQS8QsiCjFi4DcDBX+Q5rdye4jrrCAUCafKvqwAKCRA5rdye4jrr
CEdoAP0QGfM9WXRjrtyAesLLN1HGj5+PlH2LsjjyBUFhxCMZCwEA3IUzy/1C2RrX
8KiEAMzP+cISklv+nRq4K1tfQzRoKw0=
=9UuI
-----END PGP SIGNATURE-----

--Sig_//aO9LriY0eIgNk5/Pn05dx+--
