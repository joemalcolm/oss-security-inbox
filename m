Received: (qmail 25649 invoked by uid 550); 16 Jan 2025 10:25:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25616 invoked from network); 16 Jan 2025 10:25:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737023119; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U+BiqH/65WeMeYqi/WHWQ7t7P38R7tUpEnmrqDPz7wE=;
	b=rdu8tqdC375a2pSnGebMxuz72EC/dFMQEJXKLZDOvv3O1aVj76Iputh9j1Trdd3u/Feqt3
	3GLL2bZ1bcjcI0gLaYFkh/+zLn76ZBkhWQu5nPx4Db5xwR+ENyDjtQ98ipGrSfryPSCqcb
	3X4Q/AyxuR1qRoCX94ezkXipKG7ROfE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737023119;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U+BiqH/65WeMeYqi/WHWQ7t7P38R7tUpEnmrqDPz7wE=;
	b=lBNt169XDIO+yW5Z+OwHYDX9kHhWnF/SR4JnNT8V/3K6iMTF8KM+0OesBPRccSUB7GN5gI
	mYZ3nDZg2x9kOjAg==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=jBzb4pHa;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=o+jqeFer
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1737023118; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U+BiqH/65WeMeYqi/WHWQ7t7P38R7tUpEnmrqDPz7wE=;
	b=jBzb4pHa4+/SO+aD3l8LIFDDRdh+ff9lE7LcHlvf0H0Ytu1jrC2Qty+zSzLT5Wz68D3JLa
	vUBgDGmY6StGy2aaDD2BQjdCgkzgHKcIaJ5fYJ5+Va5kMSYArQ7KVshDQfMXr/gJ7i547c
	VVKkWpG6stHnpm69ngTTaTQ7/AY/atk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1737023118;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U+BiqH/65WeMeYqi/WHWQ7t7P38R7tUpEnmrqDPz7wE=;
	b=o+jqeFer3mG1aK4OsxR0vj9UnRkhJqqzs312pzez1z5ws7P5h1ofQa4l0YYwb4T5LNyi6I
	CqlRklAiVhfoaLCA==
Date: Thu, 16 Jan 2025 11:25:17 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <Z4jejSMgNUpzFI6T@kasco.suse.de>
References: <Z4ekKFlPfkdWqeW2@kasco.suse.de>
 <5124504d-3d37-42ad-8bf7-fbbb7f8d0317@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="epKNNDuE+yp4Mmmw"
Content-Disposition: inline
In-Reply-To: <5124504d-3d37-42ad-8bf7-fbbb7f8d0317@gmail.com>
Subject: [oss-security] Re: pam-u2f: problematic PAM_IGNORE return values in
 pam_sm_authenticate() (CVE-2025-23013)

--epKNNDuE+yp4Mmmw
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 16 Jan 2025 11:25:17 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: Jacob Bachmeyer <jcb62281@gmail.com>
Cc: oss-security@lists.openwall.com
Subject: Re: pam-u2f: problematic PAM_IGNORE return values in
 pam_sm_authenticate() (CVE-2025-23013)

Hi Jacob,

On Wed, Jan 15, 2025 at 11:58:00PM -0600, Jacob Bachmeyer wrote:
> On 1/15/25 06:03, Matthias Gerstner wrote:
> > There exist utility modules that don't
> > actually authenticate but perform helper functions or enforce policy. An
> > example is the pam_faillock [8] module, which can be added to the
> > `auth` management group to record failed authentication attempts and
> > lock the account for a certain time if too many failed attempts occur.
> > This module will return `PAM_SUCCESS` when running in "preauth" mode and
> > if the maximum number of failed attempts has not been reached yet. In
> > such a case `PAM_SUCCESS` would become the overall authentication result
> > when pam-u2f returns `PAM_IGNORE`.
>=20
> This looks to me like a logic error in PAM.=A0 Why are utility modules=20
> that do not actually perform authentication returning PAM_SUCCESS=20
> (indicating successful authentication(!)) instead of PAM_IGNORE or some=20
> other "neutral" code?
>=20
> Is this a widespread misconfiguration?

I suppose libpam has no way of differentiating the "importance" or
purpose of the modules it runs. It could be argued that such utility
modules that don't actually authenticate should indeed not return
`PAM_SUCCESS`. From my experience PAM module implementations generally
return `PAM_SUCCESS`, though, if they deem their task successfully
completed. This makes sense from a single module's point of view,
naturally.

I could not find anything conclusive about this topic in the PAM
documentation and development guides. Actually not even about the exact
behavior and purpose of PAM_IGNORE.

For hardening purposes it could be a good idea to return something like
PAM_IGNORE in utility modules that implement `pam_sm_authenticate()`.
I'm not sure if I'm overlooking something here that might spoil the
idea, however. This is a discussion that could be continued on a PAM
development mailing list (but I couldn't find one after a quick search).

> Is there a keyword that causes PAM to treat failure as failure but
> ignore PAM_SUCCESS that should be used with those utility modules?

It looks like there is no keyword that feels natural for this purpose.
Technically it could be done using the extended PAM syntax in a way like
this:

    auth [success=3Dignore ignore=3Dignore default=3Dbad] pam_my_utility.so=
 [...]

So it could be handled on configuration level, but it would complicate
the often already pretty complex PAM stacks we see on Linux
distributions.

Cheers

Matthias

--epKNNDuE+yp4Mmmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmeI3o0ACgkQFMQFyXGS
NVOMPBAAvaUG51Mdze4I0IPmwGFIG5yF4NEmxCSVw7ROQXlO7V/9hmJbHhITXuQp
44ROV1V69KayCQhKjS7fZptQZ9nSZ+uqnUQXRCDFAwksrMbrtR5QCPXzZCS2s+xD
tDnI+mVFF3nr41621vxxnGkfZXyF3WyDB98zM7nyLw8ruQSOrsTSEz7KF3Vx/G8q
rUhKgi5k+CcHOJVqYsP1BSwEb9yGfpQswnlhuadV795J5kXEXZu7/qt8xH/jYOI1
iaFq7NNs0e7t4wsP32MQ+3L+VUcTgSiy4ae9XS/NCw8lH/NWuWVPgCImdPxrab7Q
PWbHW88t0NF1QrD7FcKDq4P09SfK34CAa2K4fxmu/68NafGaSRQJqaDFGHNYYGQt
YHOulzj8+v0JBcCpzjkk10TmGfQ5ciC7j3sxm7yc/AKgRYUVz8cULOZOqjQZ5ntQ
vagS3jdtX/8ziAwiYSd2jvOdIzCdDYuxuva28WQfM3N9qG+/xz4wPElhSzpy3x6N
qoC/hEA5IX0MCD289tIK3XIYcBTXHc1HGONl5UU5YXqrdQjPQR1S5x902JJkoVJC
FuMUTuTpz9QDKcxWUr/OLsIWsVFz7o+oo5kyVHwEeS4GGH/K/yhWjdrwmJcpLUjv
EE0dxj+3vRUEoV9IBfhcuikImvIk587ULWxnUGnukr+dm92rG2Q=
=TMuv
-----END PGP SIGNATURE-----

--epKNNDuE+yp4Mmmw--
