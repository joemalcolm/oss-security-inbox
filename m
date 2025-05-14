Received: (qmail 9806 invoked by uid 550); 14 May 2025 11:27:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9785 invoked from network); 14 May 2025 11:27:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747222021; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4DYk/Ts2/c35B/egjHYnyNpm+DcXXfUQRYDeyi2PSoU=;
	b=0gqrQnKE+kSMIJrVxw4Ah6en+hvnhDWdNu3tzrvN8njUYgK3elZOabfvuvToB1UjWPv2iK
	E24iZdiUjkXqEULDAgfWldm4tPw8Dw87c+hE1N6OUkkM72WQPnqouHoBEI8p6clvidFukK
	VqN+Z+ogY0p2N6l/CVFyOQM/lX82LYI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747222021;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4DYk/Ts2/c35B/egjHYnyNpm+DcXXfUQRYDeyi2PSoU=;
	b=ppbQpniOQTOqTtV6nQKLY4WISLzcLVOmKgXAG50VTgQSMSz/m2oZYSqv6I95JcwoG8M2ru
	tdoHQXQHehLxrBBQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b="jyB4M/EV";
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=8QyEDU+I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747222019; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4DYk/Ts2/c35B/egjHYnyNpm+DcXXfUQRYDeyi2PSoU=;
	b=jyB4M/EVQlcuMB3M/tsvbeDeyUwp/DwJ0NVMFtUbpYatZ/tZJuhFFd6ovptbmO8915vyyF
	eUBFSpAlw4Px1gjCJf+A8ud53Mjgw+j2+Rbh0ibZJLaXD25Jug9GF8Ym+Rvs0PczTeuMur
	1rseMGH/qAq96oDraRm93FFD4cSqckY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747222019;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4DYk/Ts2/c35B/egjHYnyNpm+DcXXfUQRYDeyi2PSoU=;
	b=8QyEDU+IlZdbshzOxPYW15ezudvoGsIt4/Yk5CSsr5vr4PYn284RWuh4HMdcclfMP7rsEg
	R/1zJwzoJUa9B1DQ==
Date: Wed, 14 May 2025 13:26:59 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aCR-A6lIgS2h8efj@kasco.suse.de>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <CAK84RTXnye4-qBA0Yfachi-8gQHZc2bdcSS=9Zi4cfpaDhCFmg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Bl0y7QWgr8jXvTYP"
Content-Disposition: inline
In-Reply-To: <CAK84RTXnye4-qBA0Yfachi-8gQHZc2bdcSS=9Zi4cfpaDhCFmg@mail.gmail.com>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

--Bl0y7QWgr8jXvTYP
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 May 2025 13:26:59 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Hi,

On Tue, May 13, 2025 at 03:48:31PM -0700, Mark Esler wrote:
> Cheers for the report Matthias and SUSE Security!

thanks!

> Could you please comment on the affectedness of upstream screen 5.0.1?
>=20
> https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=3D4=
64c8d8f945f53f8cbb854517279349e09d74756
>=20
> This version was released ~an hour before your initial oss post. It appea=
rs
> that upstream landed the patches, which may be worth mentioning in your
> timeline.

Indeed, this is the bugfix release announced by upstream here:

https://lists.gnu.org/archive/html/screen-users/2025-05/msg00005.html

We just updated our blog post to reflect what we could find out about
the upstream bugfixes:

https://security.opensuse.org/2025/05/12/screen-security-issues.html#8-upst=
ream-bugfixes

For screen 4.9.1 bugfixes landed on the upstream screen-v4 branch, but
it seems no release is planned here. We reviewed the following bugfixes:

- commit 049b26b22e1 [1]: fixes the PTY mode issue (item 3.b, CVE-2025-4680=
2).
- commit e0eef5aac45 [2]: fixes the file existence test issue (item 3.d, CV=
E-2025-46804).
- commit 161f85b98b7 [3]: fixes the signal sending issue (item 3.e, CVE-202=
5-46805).

For screen 5.0.0 the 5.0.1 bugfix release has been announced. Patches
landed on the upstream screen-v5 branch. We reviewed the following
bugfixes:

- commit e894caeff [4] fixes the logfile reopen issue (item 3.a, CVE-2025-2=
3395)
- commit d10eb5b2f [5] fixes the PTY mode issue (item 3.b, CVE-2025-46802).
- commit d5d7bf43f [6] fixes the default PTY mode issue (item 3.c, CVE-2025=
-46803)
- commit 710cda5c7 [7] fixes the file existence test issue (item 3.d, CVE-2=
025-46804).
- commit a17b0da26 [8] fixes the signal sending issue (item 3.e, CVE-2025-4=
6805).
- commit 2bdebfc98 [9] fixes the strncpy related crashes (item 3.f).

The last time we checked no screen 5.0.1 release tarballs could be found
in the GNU Screen download area yet.

[1]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v4&id=
=3D049b26b22e197ba3be9c46e5c193032e01a4724a
[2]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v4&id=
=3De0eef5aac453fa98a2664416a56c50ad1d00cb30
[3]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v4&id=
=3D161f85b98b7e1d5e4893aeed20f4cdb5e3dfaaa4

[4]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3De894caeffccdb62f9c644989a936dc7ec83cc747
[5]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3Dd10eb5b2f7eebaa347f09c010bd391373fdd1695
[6]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3Dd5d7bf43f3842e8b62d5f34eb4b031de7c8098c1
[7]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3D710cda5c71cacfed201b5659e04a83815313d8e6
[8]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3Da17b0da26494856640bd9d52a03fc1b575400170
[9]: https://git.savannah.gnu.org/cgit/screen.git/commit/?h=3Dscreen-v5&id=
=3D2bdebfc9837cfd3cea0645030e626b08bb6bc2d0

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--Bl0y7QWgr8jXvTYP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmgkfgMACgkQFMQFyXGS
NVNBPBAA0b2l/Psice0Oq2TFGjLBqD7Hj1hIKstgEKT0qx9HKXHAU/+Zsm+uybLt
zgh14JxQEIoCwN2PG6ExDNPHeDaYtefUIQw4N0lfwL2cDNfLjANmicULB9YK6ju2
ZBmRK0Xyh2OWzrZG+O6cXb8wbOw32p42Qg6U0MVly3MuDz/RTrfUSqlOU7kwtEYg
AnZa4vr38rwHKuN1az4IhuaOBzNqGYa6hYeUYuD2d5NJGBG5vnYT6SyEW0+x7yqm
wVyvf/HHfyY2W3I8ZW1hB231jl/MikImSom91wdAfneytd2/xbE2q8KvjBbKbtlo
wcGX+laJ1jTe2DZOzuSK469kzeyl+SgEZmyoBkIxEA67Jq5fKTZI3GGhGCV89+J5
3CF5YgbgAB0yCKFnl+dvrg9NHMuzu+doW2zuTmmFGrbxITvwS7vLHO4iHNNHeCf1
JtK6R+7RBlCt25dbYQrWSnqfwS3V0EGPYfjQo/Lf+QNiy3CJTA3ARipbFoPxOBGq
ejT2/hKOAhqWC2/QIYYk6zXOS0LaVr3CAQJpSfSk7yMMd7tj/rcmv5fd/PuKr4x6
v7XLsBmSVjtF28LfF6IlkA+q7K6/iejTMoq4rnVXnFEIVxrnccj9DTrgloyxsWQT
evLBieFB4dZlzO/f6q5ib+x6y3S8x0m5v1as8kadeDQW5WTVYOQ=
=5uJj
-----END PGP SIGNATURE-----

--Bl0y7QWgr8jXvTYP--
