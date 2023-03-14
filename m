Received: (qmail 32118 invoked by uid 550); 14 Mar 2023 22:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26528 invoked from network); 14 Mar 2023 20:57:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hardenedbsd.org; s=google; t=1678827447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y7sRG5VqOokm/H+RQastOzCABulHkUx3GpqpsQnvvYE=;
        b=ddZ1tDQOlKY98UKo8NOxuFPWjjmtNnJGVEaDRbB43ICbsGr4oDgsH+4hTi/agmFTjQ
         x/aqLjsQ/0H3SL76pDBSpjZAhy8Y3Y1F+zCqIxkzjOmEEWLUfeZaJfc7/o9f2EvHKQel
         xR1h6orn7Gy9ZvoUQvr4j5pbK4QX5VF5uZ3/kqNKooev2yL1vK6N3OMhD0to8aCQzcgQ
         3r5R5YtKj8KzNXWN6EB2yO4bLhHv37GHMeyUj4jlAxmj3tDPzqlrddE9Qu2Gw2PqmFbo
         BolnsmstcGsoCAJwurWtBEDGBDy4SDDaZb88L3dvnMQZDeu27kCGFbdUsMsvH59MhBla
         B5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678827447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y7sRG5VqOokm/H+RQastOzCABulHkUx3GpqpsQnvvYE=;
        b=o9M2XPv0zBd79UpL2mrXzACnUMGxicOvEvII9XUCQgtA20Bfpi8aJ9F0cpNTGGCVT1
         C+P9RfL9kbAWMccXnuU7gMITG8ddY9pbclOVJrEWb5d7T9d7jshhLTn2FcimZFMpVAv4
         Oof7A5Sxu8mh+aYXKkKDdlV8GOyyUQT772DnVk5mgKHeHy/QtM4Wka1Ad6Fp3roWiEWm
         1txJHHGezALF0omY/oi8icWGcq94L4b34EZ/tiChIZyKY3uLe4Q0RUlOO+ARIwbj2B/F
         2HA1FwJi/0sECbruYcOnmFr5gp1dWeIPe08fb4qBF9Z5fEWFu8zbV5BLrzpZLBF+/Hb8
         PWtg==
X-Gm-Message-State: AO0yUKUbNUiqKHmkGs6L+cRI9Sd5yy/d+I+KkPArAWVRLqgblA00v1Nl
	VaFNny1GO7IXpgjxWBlW2dE4wOR4fhewIToeMgkwvknIZKY5E6VAmLvkp6tskwDQ8h/SW4TX9KC
	17iHwP7+kATyEcmr24rX/6FCAhk6NXSv0dZOItpxMg6G6sQtVXfyRiSfXF+2Vsd2d5NWA0nXfi7
	QDbrfSQq/vAY1U4M+IGW6x
X-Google-Smtp-Source: AK7set+1k/jKMjtDR6Vf6GoEV419jPdRB95QU+qvgYh7I6HvCDIOz6Y0WDJvdIT911UHmr1yWjzOtA==
X-Received: by 2002:a05:622a:18a1:b0:3bf:cea5:7004 with SMTP id v33-20020a05622a18a100b003bfcea57004mr66907696qtc.51.1678827447041;
        Tue, 14 Mar 2023 13:57:27 -0700 (PDT)
Date: Tue, 14 Mar 2023 16:57:25 -0400
From: Shawn Webb <shawn.webb@hardenedbsd.org>
To: oss-security@lists.openwall.com
Message-ID: <20230314205725.oqr3um7kkkyq7zr3@mutt-hbsd>
X-Operating-System: FreeBSD mutt-hbsd 14.0-CURRENT-HBSD FreeBSD
 14.0-CURRENT-HBSD 
X-PGP-Key: https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/blob/master/Shawn_Webb/03A4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc
References: <20230314095103.1ed76cc0.hanno@hboeck.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7x36buhswl5piada"
Content-Disposition: inline
In-Reply-To: <20230314095103.1ed76cc0.hanno@hboeck.de>
Subject: Re: [oss-security] TTY pushback vulnerabilities / TIOCSTI

--7x36buhswl5piada
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 14, 2023 at 09:51:03AM +0100, Hanno B=F6ck wrote:
> Hi,
>=20
> This blogpost highlights TTY Pushback vulnerabilities enabled via the
> TIOCSTI kernel functionality available in the Linux kernel:
> https://www.errno.fr/TTYPushback.html
>=20
> This has been discussed here previously:
> https://www.openwall.com/lists/oss-security/2017/06/03/9
>=20
> Though I think there are some noteworthy updates. In the 2017 post
> solar designer mentioned that the Linux kernel developers have multiple
> times rejected changes in the kernel. However this has now changed:
> Starting with Kernel 6.2 it is possible to disable TIOCSTI
> (unset CONFIG_LEGACY_TIOCSTI). It also appears that very few (or no?)
> applications practically use TIOCSTI.
>=20
> This seems to be the only real mitigation for this issue. It appears
> su has a parameter, and in sudo one can configure the creation of a new
> pty in the sudoers file. I don't consider these as satisfying fixes, as
> they are optinal, and thus rely on the expectation that users are aware
> of this risk and manually use these mitigations. That does not seem
> realistic to me.
>=20
> This also affects such a large number of tools, not just
> su/sudo-like tools, but also sandboxing tools. E.g. bubblewrap [1] is
> affected by this by default.
>=20
> Thus I strongly recommend that people disable this in the kernel.
>=20
> [1] https://github.com/containers/bubblewrap/issues/555

With commit c7d6d4bb4874720d9dab1625df62c2ea6eeb9df5[0], I've added a
toggle in HardenedBSD to disable TIOCSTI. The toggle is set to
prohibit TIOCSTI by default. Now attempts to use TIOCSTI will be met
with EPERM.

I've verified the toggle in a real-world scenario with the doas issue
PoC found at [1].

[0]:
https://git.hardenedbsd.org/hardenedbsd/HardenedBSD/-/commit/c7d6d4bb487472=
0d9dab1625df62c2ea6eeb9df5
[1]:
https://github.com/Duncaen/OpenDoas/issues/106#issuecomment-1467202981

Thanks,

--=20
Shawn Webb
Cofounder / Security Engineer
HardenedBSD

https://git.hardenedbsd.org/hardenedbsd/pubkeys/-/raw/master/Shawn_Webb/03A=
4CBEBB82EA5A67D9F3853FF2E67A277F8E1FA.pub.asc

--7x36buhswl5piada
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEA6TL67gupaZ9nzhT/y5nonf44foFAmQQ364ACgkQ/y5nonf4
4fopLBAAhjTfc4d4SNToU5m/9GEnFgyBWOp3kFUqe83UTEkYy4D1/2MPjkvha9Iw
AZQKxohI6qUUq4nsHkCrPhjiNhuSTHhAUGKHfV+EKLVnZM/gT9uGu5RpDr2TCI0v
rCK1ZdXR6f5PPy5CYKihqXXkIyJwwwngzwv67fyZ+5+W5n3Av4/GqanouBYC+qZ9
Kbag/m8OAHZSzho5ZPYeuxtosqoWe831+ApeC6UXOCbFQZybQb5E+kt6TmJ1RWia
ZZAaEyPvmA3Mmy0J6aqKDncixB+aYknIKaT5JIEy73zHNF2k4blT+vy7jXLDq3f3
1QhNEmqUR+qTnybfJfhzKWbscLElLMB0DqajE98qeKUtpKNmXZyzI/QpkGTomCUX
ijHo7ebqtP8qAx/88er3lLhHv5nvoNMYpyHVKDIhndJwS9cc9kULRYvJgniwk0ch
c3MzJs9tYswkBmiBFNtbjelWg9fsty1UhjI8/lMkiQx+zggwa0l6vUNZGIF4sD1B
sAOtoEJWWvUBvgpxqWQ1qz4jnaG+WNTeHQRRmpCf3mnvNw5jZrHs7PSTKpGB+b4b
Ve9LUV6OhpWiNyvvNVzPmb/OxQY38CRhZhXjaTRKgPxbrjOrcHlH65l2CoN9cSND
l1PkmyDbFFUp/ljuhuJIbrUD0gyBCoIxIoW/KsJIvPcgr92RGkM=
=O0p1
-----END PGP SIGNATURE-----

--7x36buhswl5piada--
