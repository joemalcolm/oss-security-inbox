Received: (qmail 26390 invoked by uid 550); 29 Sep 2023 20:27:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23750 invoked from network); 29 Sep 2023 20:24:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google; t=1696019056; x=1696623856; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vXbBtBLc2ym8IO/2S36+S1O7HE+5Tk0GNj0aP3vV8Xs=;
        b=GbjwrZjyOtPHIZuKvz+IjgDB8uZJ1jXPaS/+IuGtTAsBTv+BW2niK3+dWqhZfxL2FK
         qkf+mnmtn4LyKsJnB11Iv2gt/boQlnQpoJa4puCfAc9iZROgf3/yv46+Qctx7J99Uyje
         b3qfAZjFzxYzeXY7v8L8T9Cj5TLGsDSHy81HZ4BIoXsGY2XtvbhF0pdm5AeRgrHhmpSy
         1T7cdzFNQxDTZ1HZNwh/8ChVZTb1IBEWv8C6eYYzdU5JKPwXlG+vgIvN2eAItZxzU+hL
         pgWOTFm0DPR/Gx2vYpLSQur6Xf3ezV+5rc12+E5r0xSCp2s2dIRcA/PBl7s4d1JPOC1u
         waaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696019056; x=1696623856;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vXbBtBLc2ym8IO/2S36+S1O7HE+5Tk0GNj0aP3vV8Xs=;
        b=sGrH2gmBtAjX3vavJYCv4PU66lEYlWkh56QaDFZC6qmKN4lH8PZU6TGzEtFCO+zlXy
         1+geff7V+VMopE57l/k26A7hlqxHxP+3Xxij4ACOsxHCtQR5VJ97FPHRF0sRTJ2SWZVA
         h8HB6jT28a6RNUc5Nkd/o2ADgZVAUR8REW9lAyINN55NT97ciVBxzqZo5oDOK20nYNeT
         AC3zW4v5Sd9Gv7chmpOg+NHvBhILzmUYxeGuUWR3LCBh5HlVJnsMxLhDRoTl9jn24UwX
         HmOis8mHxkU9jx5a/UPNo5us/c0FZIDZLENycWVBIEfINAqhETzAOBz8bY8BxYxsxRUW
         TC2w==
X-Gm-Message-State: AOJu0Yy34ih/AbcAsPItXzBCFnNSrkNj+QM4BmllYufVQJVQdPKkVQgo
	CE7jfAshn3Vkr9TcB2KnmO6HjYisCsiXQ5WRRzDB5DHmsYE2ThS7Po1PE0q7CDU9U7ozgmry9g9
	g0KbQMteIXN9U49oPfQ1GVE4419eCGpqvSfW7tjipu1TOMx1wkINtmBKaPax0re8IP8qFp0Uy6L
	qcsLIQiOYK5HleORWZZ9YY
X-Google-Smtp-Source: AGHT+IE2ylzCUuLqe3MUAc2lJlLFv/hRiMgBYV/Yw+RWbQGMI4IwWNCZnB4OMBPTzJt7jkQxr3SPoQ==
X-Received: by 2002:a6b:6e06:0:b0:79f:da3d:c47f with SMTP id d6-20020a6b6e06000000b0079fda3dc47fmr5861774ioh.13.1696019056579;
        Fri, 29 Sep 2023 13:24:16 -0700 (PDT)
Date: Fri, 29 Sep 2023 16:24:15 -0400
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20230929202415.bmsmbdapaljl2pf2@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 15.0-CURRENT-HBSD FreeBSD
 15.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <bd99e07a-8d8c-4652-9089-7c0fc2e86409@oracle.com>
 <ZRXlPoozp5n+cWv1@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zj3nranmuwqx7xkr"
Content-Disposition: inline
In-Reply-To: <ZRXlPoozp5n+cWv1@itl-email>
Subject: Re: [oss-security] CVE-2023-5217: Heap buffer overflow in vp8
 encoding in libvpx

--zj3nranmuwqx7xkr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2023 at 04:42:33PM -0400, Demi Marie Obenour wrote:
> On Thu, Sep 28, 2023 at 11:37:23AM -0700, Alan Coopersmith wrote:
> > Google has announced another media parsing bug, this time correctly doc=
umenting
> > both the base library and Chrome versions affected in the CVE.
> >=20
> > https://www.cve.org/CVERecord?id=3DCVE-2023-5217 states:
> >=20
> >    Heap buffer overflow in vp8 encoding in libvpx in Google Chrome prio=
r to
> >    117.0.5938.132 and libvpx 1.13.1 allowed a remote attacker to potent=
ially
> >    exploit heap corruption via a crafted HTML page.
> >    (Chromium security severity: High)
> >=20
> > Unfortunately, the bug report it points to is restricted access still:
> > https://crbug.com/1486441
> >=20
> > But the Chrome release notes state:
> >    Google is aware that an exploit for CVE-2023-5217 exists in the wild.
> > https://chromereleases.googleblog.com/2023/09/stable-channel-update-for=
-desktop_27.html
> >=20
> > Mozilla has put out their own security advisory at
> > https://www.mozilla.org/en-US/security/advisories/mfsa2023-44/
> > and delivered fixes in Firefox 118.0.1, Firefox ESR 115.3.1,
> > Firefox Focus for Android 118.1, and Firefox for Android 118.1.
> >=20
> > https://bugzilla.mozilla.org/show_bug.cgi?id=3D1855550 is also still
> > restricted access.
> >=20
> > It does not appear that libvpx 1.13.1 has been released yet, but there
> > are two commits in its git repo with the 1486441 bug id listed:
> >=20
> > https://github.com/webmproject/libvpx/commit/3fbd1dca6a4d2dad332a2110d6=
46e4ffef36d590
> > https://github.com/webmproject/libvpx/commit/af6dedd715f4307669366944cc=
a6e0417b290282
> >=20
> > Mozilla's commit references these two libvpx commit ids as well:
> > https://hg.mozilla.org/mozilla-central/rev/c53f5ef77b62b79af86951a7f913=
0e1896b695d2
>=20
> How long will it take for corporations to accept that writing media
> codecs in C, C++, or any other memory-unsafe language is a fundamentally
> bad idea, and that it is better to rewrite the codecs in a safe language
> (such as Wuffs or Rust) than to try to secure the existing ones?

$ git clone https://chromium.googlesource.com/webm/libvpx
$ cd libvpx
$ git log --reverse
commit 0ea50ce9cb4b65eee6afa1d041fe8beb5abda667 (tag: v0.9.0)
Author: John Koleszar <jkoleszar@google.com>
Date:   Tue May 18 11:58:33 2010 -0400

    Initial WebM release

I think this might predate Rust. I wonder how many technical folk
would welcome alternative implementations of various popular
libraries.

I especially am grateful for those who advocate for, and help advance,
software diversity.

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--zj3nranmuwqx7xkr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmUXMlwACgkQ/y5nonf4
4foB0Q//YviBtQIDOKl9uMJKcoJSZExB3c4kGcOqKod/nhgfDlph6ycACvFcq7R/
B1+UMxLcL7XFIJ/bKjgCj285bw+gcGrhd+vAx0q+kid5TCmzt+IxP/YWJOBc7ogu
7ePTjy3jkX2JCmZ5vg4Zi1iby+D5BJk26OD2aKt7icBcBeGsqr5GxhokbgPXpXf4
lTfD5TfYXxbQ5fi+/EuLzQ+FQGAIrjNKkKUJBq8iTryIoJPPrnN49D/PmbqoYYs+
z4hTepzMI8jZemMQTIS6p/LH07QesWZbW+xoS79JIsfnMzpDEdA3CQo24NmrXx0u
B2XhjcIFp0C9kTx759Wr8fiKSm8X2qlofbOk90I9srb0FFBuPeYknmLp3njj6/JV
o3OYOub/uOEt3qUiU6zYP3iyCt1OfS/XHoY7I8bJDAGQqFPgAn++VEYQe7spqX0Y
R99dPElPg3K0irbsS+vHp8/lWq69OF2KbnZ4OLhHmxZlZw1WDKcsTyxstKfJ9wwm
1VXXZxMo1LmHFyIzDfxFkAF4CDjLq+G3G3eWziUhnwZku5mISlukmvWlNn2fY/u/
AGg5ZU0Xgg7sSV+ort405KJR1Gdt/GQIQBouOSMWf/MRv1VxLeOFRruHSh/L7qkj
EiuRbzP6N9sNmqgiSt8ZVrb0w2alL+NqTVQ1h0hUWqYSxjrlugI=
=2VFu
-----END PGP SIGNATURE-----

--zj3nranmuwqx7xkr--
