Received: (qmail 24403 invoked by uid 550); 15 Oct 2024 11:43:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24379 invoked from network); 15 Oct 2024 11:43:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1728992625; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tSxRFG2WeHlM3rjTFdQ18MFPsSJeV2legAjv2tCYqEU=;
	b=aWmEmxx9A010RDDvMXjEXLX0xMyD8Cz3OGi2Tlnv/776PJdV1Cu+FB+kGdARSwDaBVfclj
	WVjbS95gRNbS9oPM+wVIAFAg8DzgsX5LLkCW+JOiSUFAKDLISVsqh17T5TfRYh/ZjYAdjh
	sUHcQbMOVgEMCdJ/I68QU/LjW3qb5NQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1728992625;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tSxRFG2WeHlM3rjTFdQ18MFPsSJeV2legAjv2tCYqEU=;
	b=x5XW9Ao4zQCTdNVzEXJN99H8S5cvEv7Cx24KeI/exDssGA8UUr26H48lRDSIIGZZCcsM/4
	oMsRsslycSSOKlDA==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=aWmEmxx9;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=x5XW9Ao4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1728992625; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tSxRFG2WeHlM3rjTFdQ18MFPsSJeV2legAjv2tCYqEU=;
	b=aWmEmxx9A010RDDvMXjEXLX0xMyD8Cz3OGi2Tlnv/776PJdV1Cu+FB+kGdARSwDaBVfclj
	WVjbS95gRNbS9oPM+wVIAFAg8DzgsX5LLkCW+JOiSUFAKDLISVsqh17T5TfRYh/ZjYAdjh
	sUHcQbMOVgEMCdJ/I68QU/LjW3qb5NQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1728992625;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tSxRFG2WeHlM3rjTFdQ18MFPsSJeV2legAjv2tCYqEU=;
	b=x5XW9Ao4zQCTdNVzEXJN99H8S5cvEv7Cx24KeI/exDssGA8UUr26H48lRDSIIGZZCcsM/4
	oMsRsslycSSOKlDA==
Date: Tue, 15 Oct 2024 13:43:42 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zw5VcOQzbCUChikG@kasco.suse.de>
References: <Zv-9gAGM_X7QQShJ@suse.com>
 <878qv251x7.fsf@kaka.sjd.se>
 <20241008025402.GA2904@openwall.com>
 <878quzt99y.fsf@kaka.sjd.se>
 <20241008205659.GA7086@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kIF3Xyii5xttpqjt"
Content-Disposition: inline
In-Reply-To: <20241008205659.GA7086@openwall.com>
Subject: Re: [oss-security] CVE-2024-47191: Local root exploit in the PAM
 module pam_oath.so

--kIF3Xyii5xttpqjt
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Oct 2024 13:43:42 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2024-47191: Local root exploit in the PAM
 module pam_oath.so

Hi,

thanks for bringing up the potential problems with the patch we (SUSE)
suggested. The missing drop of the ancillary group list has indeed been
overlooked and will result in a lack of protection, since the
"unprivileged" process will likely still be a member of the root group.

I will adjust the patch to contain this and one or two other adjustments
and can then share it again here on the list.

Please find a few more comments below inline.

On Tue, Oct 08, 2024 at 10:56:59PM +0200, Solar Designer wrote:
> On Tue, Oct 08, 2024 at 08:10:17AM +0200, Simon Josefsson wrote:
> > I noticed that that there are Linux-PAM helpers to drop privileges:
> >=20
> > https://github.com/linux-pam/linux-pam/blob/master/libpam/pam_modutil_p=
riv.c#L52
>=20
> This currently switches fsuid/fsgid (so for the current thread only),
> but uses initgroups() and setgroups() libc functions (so affects all
> threads).

Regarding thread safety, the SUSE patch forks a new process to drop the
privileges, so it shouldn't be an issue here.

> In particular, I worry that the SUSE approach could be susceptible to
> hard link attacks (when the fs.protected_hardlinks sysctl is not set).
> Would this allow to overwrite someone else's file (the original issue)
> if the user can hard link that file?  I currently don't see why not, so
> it's probably a vulnerability.

Indeed the patch does not take care of hard link attacks. Our products
don't have any supported configuration without protected_hardlinks
enabled, so we didn't have this in mind.

The change to address this concern should be rather small, though, so I
will try to incorporate it in a new version of the patch.

> In general, switching to a user not only drops privileges for file
> access, but also potentially exposes the process as that user's.
> fsuid/fsgid switching is the safest in this respect (these were meant
> just for file access purposes), but with other IDs (depending on which)
> there may be extra exposure of the partially privileged log in process
> to the user via /proc, kill(), setpriority(), etc. ... but thankfully
> and hopefully not also via ptrace() on modern systems anymore.

On modern Linux there shouldn't be a problem with dropping UID/GID, as
the kernel will set the process's suid_dumpable attribute to the setting
found in sys.fs.suid_dumpable, which should be 0. When this happens no
ptrace() etc. will be possible on the end on the user/group that the
process drops privileges to.

It can be problematic when the unprivileged process subsequently
performs an execve() without closing sensitive file descriptors, like it
happened in open-vm-tools (CVE-2023-34059).

An explicit prctl(PR_SETDUMPABLE, 0) could be considered in the patch to
make this requirement explicit.

Dropping only the fsuid and fsgid on Linux would avoid any potential
ptrace() dangers. The system calls are marked deprecated, though,
and have unfortunate error handling. What makes me feel a bit uneasy
about this approach is that the programmer has to make sure that
the privilege drop context only ever deals with file system operations.
Things like e.g. obtaining SO_PEERCREDs from a UNIX domain socket will
still operate on the egid and euid, which will remain at 0.

For me it feels better to drop all privileges for good. For specific
purposes like in the case of pam-oath I believe it can make sense to
take that route, though.

Best Regards

Matthias

--kIF3Xyii5xttpqjt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmcOVXAACgkQFMQFyXGS
NVOTrQ/+O8ymKcGvVPsw8bJRGboIPxS23boM5AbUbBeCSfMoZ1SToVHnkWm1iBBH
1h/94f4ThvfLqZVBEPcQSyDPRLzJK0j4mblUDmlarcxCkHE94z6tUawGnU9MO4Bz
JXbUrv1FrJoIKUaf4L4kQ/7u9dcWXQI4RKRqCbcXkY71nqLztvQVMfGOjo82eoMu
Ftv3+ut/HJLIsD3fTbzkMN1mF4ssj3/nQpawbi6AmpEcyEzn23EHVUBoIXuDxMOT
0sqkZYyyK/CXFuClsbLXv3IjLjrXFzz7uX7AV7LX7PjHwnaoRgY4GGj7zJoSKyHl
OOcAaDiHPtYYJ3JRzDUZd/1bU4sfB/4xzgxavO+ajiKa1oY6M7McVk0f1Ut5wBGJ
CYCIoIklclG6m04DwsTE1was6lq3p9DeGl7gu8HRTJV9Fn3zQcuuL26hBWmPUFE0
rLlUKoFz9wEv+GJQRJbYEu02m/NV9vbJe5xANd6nVXcnvK0hYe36b4pET802f45V
Ajf+Xyzhzqsdns7I0hiPtWpz+Y8toaM57QYFbGq9zmF8x/njqNUk6f1paCyjioWl
obAYhS4aRP9XNyrrSi1OVp5Fm33uWlC6iRkIOV4zL6HLtytItXkliHoivCVJfkDc
dgf4D8pYz7JOJbqGaaWaB6BW2N3+4cmN/ThqrtEUPnl4ZPQbxag=
=zuFv
-----END PGP SIGNATURE-----

--kIF3Xyii5xttpqjt--
