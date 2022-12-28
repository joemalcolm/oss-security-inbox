Received: (qmail 26368 invoked by uid 550); 28 Dec 2022 15:37:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18121 invoked from network); 28 Dec 2022 15:25:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/B1rOCH9HmW+vhDEypyd7tOOp9ZpzuMp1iRK/8e6VVE=;
        b=dZRaLcJt0LA5Sb4x8OsTw5hsUcfVPzPLAtoCa/4ntHT8PwvuRAlD76g80CtcyygsYa
         dCo0hik7AA0m6xY+AeiUqVhR23n9WtVTg7Kw51xF8uWZWA6QGFqCzD8wsH/7eiGIIHQm
         wud3Ghtd73qp89MrwYRwTRtMkJx24SZwmnQO/hWC5rhlkH0FS/O6L8KrTOjsTLZBT9Qd
         dMdnGSbm5PRoj5NlqmEJXr8WgYn4WqdcsySTmyES12faWKFpV7V5bO6FdmF/RAa8aQ6r
         yeeFn/QBhmT+PtTxeOQbRqGexlNjisovgvqBc3Q9xi3fiOhSKcBkFzRQAA4bI5JuDjUl
         35dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/B1rOCH9HmW+vhDEypyd7tOOp9ZpzuMp1iRK/8e6VVE=;
        b=dlqXqPlSQcEOS10t5R7DERIScU0mZpCuZeB7r7RJibGbognBqnE4yg1v9xB/87KF1N
         YRN2yvt4Opd88YTGGY+LPXrAyapSH+9MrKeCk4DIY3Y/UTfcVbD6S/UB+A5smrkpjC60
         bO3AuQqwwEm6y2wSZaZvk4IY3DRKnvxrqgR7cl8YABWIxctzx83as9BUkJAyD5RfLoNO
         0nFg2W1ruPGrzd7k6zajaOcynQMKFN8X21WUwKTLjHkl2LZSQAbNyK57fsUC3gvjrbje
         xzQNqdkgj3Lz4JYOVIMpAqKEMtFca70y08UYtwlfHKhkUkeLpDBLwxzIKn0+tvBBP3yp
         eIzg==
X-Gm-Message-State: AFqh2kpyNMbgaUIcnD7xARDroaI6yz47TKZYs48Ne48dR8ccmuv34nWE
	LZ4O0C/n94YDWAxLkanngCtDrdhzJwCCCMaSGJY2MR439coMNz6IK3Gub0b/GQkSiUxRzZIvDXE
	eT4JExABimVMgrxFsVUzjYYD7eUkU1y7aCLDV29YWD8uLM9CMljnP7OirAIkqEQvw1Tbl54k7G0
	xFfD/jcZg2pSp0lUXHmQ==
X-Google-Smtp-Source: AMrXdXv4sMiSL7vKKuaChkyg9/yi5j3uuoC3NO91mZj+xIm23uyWN3whKb8odSyXTWfADQZtfdST6Q==
X-Received: by 2002:a0d:d452:0:b0:364:1ba1:4bd2 with SMTP id w79-20020a0dd452000000b003641ba14bd2mr26414420ywd.43.1672241099492;
        Wed, 28 Dec 2022 07:24:59 -0800 (PST)
Date: Wed, 28 Dec 2022 10:24:58 -0500
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Michael Kerrisk <mtk.manpages@gmail.com>,
	linux-kernel@vger.kernel.org, linux-man@vger.kernel.org
Message-ID: <20221228152458.6xyksrxunukjrtzx@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <Y6SJDbKBk471KE4k@p183>
 <Y6TUJcr/IHrsTE0W@codewreck.org>
 <1a1963aa1036ba07@orthanc.ca>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tq67mwsdswvrgjh4"
Content-Disposition: inline
In-Reply-To: <1a1963aa1036ba07@orthanc.ca>
Subject: Re: [oss-security] [patch] proc.5: tell how to parse /proc/*/stat
 correctly

--tq67mwsdswvrgjh4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 27, 2022 at 04:44:49PM -0800, Lyndon Nerenberg (VE7TFX/VE6BBM) =
wrote:
> Dominique Martinet writes:
>=20
> > But, really, I just don't see how this can practically be said to be pa=
rsable...
>=20
> In its current form it never will be.  The solution is to place
> this variable-length field last.  Then you can "cut -d ' ' -f 51-"
> to get the command+args part (assuming I counted all those fields
> correctly ...)
>=20
> Of course, this breaks backwards compatability.

It would also break forwards compatibility in the case new fields
needed to be added.

The only solution would be a libxo-style feature wherein a
machine-parseable format is exposed by virtue of a file extension.

Examples:

1. /proc/pid/stats.json
2. /proc/pid/stats.xml
3. /proc/pid/stats.yaml_shouldnt_be_a_thing

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--tq67mwsdswvrgjh4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmOsX7sACgkQ/y5nonf4
4frR+g/9FSG8mCUh/OYcCWgfRUJRi+2bBxoklcCfEcswS60dOe+dAOZ3kfpnmPig
SLm/eY5Bgl1hkHF8+Mz6pFJu9Nlg3+ZmJ4LlWV6L6SZsry0V5NTlwAmUqyqysqYO
e3R6UXGnv5JBYK2fyzk7r2eebzfUtGwCo+vBeq1tJNSPKkqA49fvSVZeGQYPYmAW
FZJHQhKdJ0OBpxNa8JPW+HAsmJInXVBRlZos9yYkaAsvTFH+ymtp8Dn+2h99HL0H
hClUswUv+DD9M/XeBeovg7f07BWUj8kwWjKDfgZCAJKvupFu7hLZemh7+ZDXgXcZ
Wiog9NqztTFJHfZO9YmcEdoBlT1IM9aIwNjOtCjsWNzNINOe//VFuNdc1obx4l32
nnu3FjxLx6kv7rkWfMPB1gloIcKDZmiSVWm8m0UYoVEwIpX0avaGNGg0URVq/Vf1
FukDumq8CSsyb673Z5m4iDJBbKBo2KnMOQcDEdHqkbvXb4Ug/8tGpfq/NRVRjqkB
KV4tDnYZ70paHbJOX6Bb6MEPA4ywyT9Hy4MZv+3SBZkWvLNkpVs+GBWpmzcTQWuO
clxGl1Kz+aHZon4RAnxwU31NBjmvvRvbkGHTjzFFrUxNCrIdu/VSDPFZX4/uWFX2
Qj1SV0/8/pL0CAzLtxiYD9hEWqMEyS0yMZ5zcv2XUMSICItK3/A=
=YDgV
-----END PGP SIGNATURE-----

--tq67mwsdswvrgjh4--
