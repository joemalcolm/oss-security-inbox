Received: (qmail 32401 invoked by uid 550); 14 May 2025 11:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32377 invoked from network); 14 May 2025 11:45:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747223107; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zrIWPM7kBhkbSNjLJHWRLAOUpOAXSN24blthzTeZuOo=;
	b=QjQaMpTA8w6IUNDSQ+l1+MsAoSmemAB1BXKX2WMERncZoLwddOC2SGl3vPhCVWu6syXsY3
	2xnQipItjZzf9NQZa5xVOPAyNdXgKRFUUs1/laHqNtES2O1cOBUzITZbHbADsS8Ax1YUz7
	8B5F9Z80zYVq8/NeNS3DKFBy/Z5DgNo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747223107;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zrIWPM7kBhkbSNjLJHWRLAOUpOAXSN24blthzTeZuOo=;
	b=OqzqQ6r6Yb+C7S6gx9BgxQ4+3xY/q1IH1whCyRYaXGbTG/a2x72A8UHWiM9FqsHQf8T2Dz
	tQeyvg/QGrZlSNAg==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=we6k5OZW;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=azCxMxcb
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1747223106; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zrIWPM7kBhkbSNjLJHWRLAOUpOAXSN24blthzTeZuOo=;
	b=we6k5OZWj0vqYFjTt6FlFgDe2KBxu352WDw/MANAQF0hgNnaJIGw840x7fa9+SG34NM+wm
	XFClad7673zrQbjKxc10rKyItvyWcHVxJjRLCAj3IoYMR7TTfsnsK7BPDUSyvluSM5IfH7
	/amvJlYB/2hizyPZi/OXWoc0RMgmrRo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1747223106;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=zrIWPM7kBhkbSNjLJHWRLAOUpOAXSN24blthzTeZuOo=;
	b=azCxMxcbFPHJyvvcPm362ohOIoyabri7JT5W8ZbDl2FKvjioJ8xMBZd54Cjbhcs6kmIXu+
	7GcEp0ReG88nMiAA==
Date: Wed, 14 May 2025 13:45:05 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: oss-security@lists.openwall.com
Message-ID: <aCSCQU_BOMIHm28K@kasco.suse.de>
References: <aCISrQTbLQjaxBZS@kasco.suse.de>
 <20250513182106.414b569f@plasteblaster>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="HgUa4S7Xp5IQ827n"
Content-Disposition: inline
In-Reply-To: <20250513182106.414b569f@plasteblaster>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

--HgUa4S7Xp5IQ827n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 14 May 2025 13:45:05 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: "Dr. Thomas Orgis" <thomas.orgis@uni-hamburg.de>
Cc: oss-security@lists.openwall.com
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen
 (mostly affecting release 5.0.0 and setuid-root installations)

Hello Thomas,

On Tue, May 13, 2025 at 06:21:06PM +0200, Dr. Thomas Orgis wrote:
> Are you sure the safe default wins? I also read configure.ac as such,
> at a first glance =E2=80=A6 but running plain configure results in
>=20
> $ grep PTYMODE config.h
>  * define PTYMODE if you do not like the default of 0622, which allows=20
> /* #undef PTYMODE */
>=20
> on a Debian 12 machine with perhaps a specific setup because of
> multiuser access =E2=80=94 exactly the situation where the world-writable=
 ptys
> are of most concern.  Configure messages:
>=20
> configure: checking for ptyranges...
> configure: checking default tty permissions/group...
> checking for write... /usr/bin/write
> checking for xterm... no
> - ptys are world accessable

we did not dive this deeply into the configure script logic, we simply
assumed it always applies the default without further checks. It seems
to work out on openSUSE Tumblweed in the build service context at least.

As we stated in the report, explicitly passing the mode, and likely also
the group is the recommended way to avoid any uncertainties in this
area.

Cheers

Matthias

--HgUa4S7Xp5IQ827n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmgkgkEACgkQFMQFyXGS
NVNUkA//ZcZlrNZ5LY1PH4zFbMUOiKmmQVHikUmchKkMdnCrDNG7RLVmAh0SLd19
xEOViRHXBdmxOElGRw5yE5JxbWhnZr5ECTjYZ7qr5wqk7saMZgxQmDDwfT59r0Ic
+Z+iSeL7/XgiL3RtVyqPcn0/mrSpSYsEWcldpnFh6ccYy2KhF1pAgh3yBv7VRj7F
dHrUdz32Qq2ATXFK/VkjosFOen5DF2iYQP6DWtPBWftPK8Ezf7FIYPS5mfy8YGCB
6JFx/nG4+eCuZFsZtEJb5SSTL7qgf3Nd90xuoCRsBfvdLQj1Dm4I0VHxxeOmjrDE
Dp4Cp3Aqt9qzM2Li7UcQYXsP/gc5VMUU6cAc5j7jn3mo/PZCdOthQ+stEyl/TnSE
wpsMbmNUK5Uoz4mWSrl1GejDoEbZSYY+Ye5eibfnlZg1w9yoquLE3LcLQRec3Lp3
UoHE7vgpJFy0UykhQ+7gLmmzNCulFdHB9faQs/hsiiYZ0hSmHZUYqKGgMIG4QDw/
/47D3ZNZ94TMZeavuaCndBLEIFrVKHdZEbgMt5b+GCivGIOh/ThzfHnh4/o9v4Ji
APhlB7r4XNUZ3AXVne7/hVAbXUMhUuD3TFjfjfXjWqJYLor1tJ41U0dkwduaAqmz
bKLeykLdOHwoml7THfc6OLMlcUvzhM5KljGeaXHzDhNJoEzODgE=
=DiIe
-----END PGP SIGNATURE-----

--HgUa4S7Xp5IQ827n--
