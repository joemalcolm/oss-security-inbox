Received: (qmail 10099 invoked by uid 550); 28 Dec 2022 17:37:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3128 invoked from network); 28 Dec 2022 17:25:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AEVM5AUDilZJYaQsZd9oVNR1x46s1U+Ak2sstBJ5jV8=;
        b=j8S08/QHYpGAcDHI/4qQdIScYpGuBRltLRMeaq4DGRSTXK38MdlCFAmttEa3pQ2AAR
         NtXln8auiAZjKs5RKITvwiuO1ZOSR0W++0JciEQIn8C56feM5e5AFKcDHtkheALQVVPp
         r7zMAp6ORF1QFUMJpVD7nasWQGh0kL0KtpkZ4C9/ZXMqHbz5BlpuW8H8UFd1MiDW8OKH
         kyiXRFlSRG5m8C3h/8RAgYplVIyX07AKNInN72kjvOFxhk6+rNlOtc5iUW4hXlqJbQBh
         JpCuRo1YLtBeJlbNRlsujRzhTF8G4fVxxPfdmWgN2GVySWxiR8no5Ah1jufjcdqUB1EA
         OrmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AEVM5AUDilZJYaQsZd9oVNR1x46s1U+Ak2sstBJ5jV8=;
        b=hlK1fbaTPyOZIAVTNocFBnaXQDB0gXyk9j8NIYrjmDiEa24xqM6ks/AZGN6vL4kpKc
         ofpC4diUtF8p40WXgyf+llN7pV5ENJ1T4YFqjeJE7kMzD3Q1D1NGUnb4Gb0eoiDVurxv
         91rDBFYXihyEOJH5FDKKtHbQg/U30khOzzL2fOUjwk+Yy3pzbNcCvEVEmeN4AW8CdOYl
         2BInc2jOUfsXoJ0E83CnLB3/CFNENX2KGPS2CrTqEBXDhl6JSYWZkAMAqUE8CXaU5Ewf
         ygT4Obg5B9RD2KZX4S8wmdZPYZTv3DJ53micSsDbkBjXsUqxqzGrLU4ji2UzwX3/EkXs
         9qFA==
X-Gm-Message-State: AFqh2krjRhVlTMu8GG3bnUtWo8HXJBPqt2SK8ceyMxMGS6/jwMV/QhT4
	eToAFu31BLviPW1KpI/Xher+v9UJk2XcU+uJeBwjD/gX9ysoDbOzG+zt9Nx82dOkWm5/T4q78/I
	78+Hv/P8UG/cWxUMhEmuryS3yqH+cpp+VRfyWyv+gL52+k71D70ghSEqGPcJugxsGefOwnzcBV3
	/IW0OihhZ5lbBlUOxNIA==
X-Google-Smtp-Source: AMrXdXubLSWgdRat/lLGOFgWgMfxK3e5HrzYBf27Lx4PdebB/GXsDoRKstMhux3jJ8bNBBTapYhWlA==
X-Received: by 2002:a05:6102:508a:b0:3b1:3a70:ae18 with SMTP id bl10-20020a056102508a00b003b13a70ae18mr13788387vsb.17.1672248318317;
        Wed, 28 Dec 2022 09:25:18 -0800 (PST)
Date: Wed, 28 Dec 2022 12:25:17 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Message-ID: <20221228172517.l7h3m7wjfpxr3dzw@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
 <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
 <Y6xzIR9P+a6uaaEx@itl-email>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="53fjlxfw5lfxitvk"
Content-Disposition: inline
In-Reply-To: <Y6xzIR9P+a6uaaEx@itl-email>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

--53fjlxfw5lfxitvk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 28, 2022 at 11:47:25AM -0500, Demi Marie Obenour wrote:
> On Wed, Dec 28, 2022 at 10:24:58AM -0500, Shawn Webb wrote:
> > On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6B=
BM) wrote:
> > > Dominique Martinet writes:
> > >=20
> > > > But, really, I just don't see how this can practically be said to b=
e parsable...
> > >=20
> > > In its current form it never will be.  The solution is to place
> > > this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> > > to get the command+args part (assuming I counted all those fields
> > > correctly ...)
> > >=20
> > > Of course, this breaks backwards compatability.
> >=20
> > It would also break forwards compatibility in the case new fields
> > needed to be added.
> >=20
> > The only solution would be a libxo-style feature wherein a
> > machine-parseable format is exposed by virtue of a file extension.
> >=20
> > Examples:
> >=20
> > 1. /proc/pid/stats.json
> > 2. /proc/pid/stats.xml
> > 3. /proc/pid/stats.yaml_shouldnt_be_a_thing
>=20
> A binary format would be even better.  No risk of ambiguity.

I think the argument I'm trying to make is to be flexible in
implementation, allowing for future needs and wants--that is "future
proofing".

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--53fjlxfw5lfxitvk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOse+YACgkQ/y5nonf4
4fqYGw//ei+Kr3PwFtaEm+2Q1h8l2hrnM14W8ORZQWkqtv75yAPUCq6mb4XmSDze
3Z9kMrY4xvdYTMUZa4S1VvXF+tDe7nIqjf4kq6qCOhfyeoozvUm13yXEARvpMsLO
joSrhua4pTi8fCs3ZGebfgM8mNEMl4ZgdZIIpjcRWhVe0XAs7FvwZJyknr6joe8G
HBXB6FzCzbR4AUpp8+MjpwZIoPKw5KVODDGBG2rOvDoCFZceL/d9djmBW0dsI1Y1
EM4dQkx2zUJWBF77sQni1pAK+JJ52Xlwh61PbgHJLzUpUvUl7ZWMZoVn996MEdfF
tD0/V6de9kF6xkyQ+tBI+hRHuAUAAkSuYFR9/1BdLkcgVzaaXbUdTUAJQ/6sD9nt
CRIIhN6sQcYUe2VZbbS+KU+DhFGl6M9P3WPfbMJeaDootxRbkshThvUiXcdlMHIg
q8ce1idlwBxYonLgYdhF2FtOi3kjy0bykabUM3lzHpieadyxfSwP01x8PiOPjRs3
+M48jCecix8LaW8yIzvY42ZhawwsO/7fqr4U373hM6BhkW6HnkzTr0Glkq6pQxVR
8tBkVfaY9+JEqNOb0qU+fO3MVcpbkUnAtbnnGOfEmEaT5aWcaI7m1IvJsN6L+wWP
HNBNpi9Gizl9BbzbIkFxepiN8WsxNK2aEjuSt6YfiUICuguqeeM=
=ZLcQ
-----END PGP SIGNATURE-----

--53fjlxfw5lfxitvk--
