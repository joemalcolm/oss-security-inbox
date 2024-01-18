Received: (qmail 19494 invoked by uid 550); 18 Jan 2024 09:48:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19458 invoked from network); 18 Jan 2024 09:48:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1705571414; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fQlET6bowe/kiirfylUccIo3mFBkL/112k2K1npRRLU=;
	b=glwiIfPvHZfwy13IpV4SCFtIN3MmxRyBU08omd98xUHUYdg427FdWJccCLePiZFAztNVtv
	6l+aher3Yg3dwj2G24sa5RbIaxPIX4SedZWl/y06fZXn6sc6JxQIRCR2tNAOw9CdNj2LDe
	WklnnAQduPR4rFdBstN3mIvHiqhkl14=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1705571414;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fQlET6bowe/kiirfylUccIo3mFBkL/112k2K1npRRLU=;
	b=yK9Or203C9WycMKmBJFZ1okaZ4QjnkCPmqo1iUkpcbw3kzxkOH2HUTICH98t4aqzDHLesQ
	9+a5bk0Ebq7SNbAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1705571414; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fQlET6bowe/kiirfylUccIo3mFBkL/112k2K1npRRLU=;
	b=glwiIfPvHZfwy13IpV4SCFtIN3MmxRyBU08omd98xUHUYdg427FdWJccCLePiZFAztNVtv
	6l+aher3Yg3dwj2G24sa5RbIaxPIX4SedZWl/y06fZXn6sc6JxQIRCR2tNAOw9CdNj2LDe
	WklnnAQduPR4rFdBstN3mIvHiqhkl14=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1705571414;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=fQlET6bowe/kiirfylUccIo3mFBkL/112k2K1npRRLU=;
	b=yK9Or203C9WycMKmBJFZ1okaZ4QjnkCPmqo1iUkpcbw3kzxkOH2HUTICH98t4aqzDHLesQ
	9+a5bk0Ebq7SNbAQ==
Date: Thu, 18 Jan 2024 10:50:11 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Zaj0VHQHW8wCHMa9@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iF7Y14nw2iSaVqxL"
Content-Disposition: inline
Authentication-Results: smtp-out2.suse.de;
	none
Subject: [oss-security] pam: pam_namespace misses O_DIRECTORY flag in `protect_dir()`
 (CVE-2024-22365)

--iF7Y14nw2iSaVqxL
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jan 2024 10:50:11 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: pam: pam_namespace misses O_DIRECTORY flag in `protect_dir()`
 (CVE-2024-22365)

Hello list,

this is report about a local denial of service vulnerability in the
`pam_namespace.so` PAM module. This module is part of the core PAM
modules that are found in the linux-pam project [1].

This report was previously shared with the linux-distros mailing list
and is now published here after linux-pam upstream released a new
version 1.6.0 [2] containing the bugfix on 2024-01-17.

Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The pam_namespace module allows to setup "polyinstantiated directories"
when setting up a user's session during login. The typical example is
setting up a private /tmp and/or /var/tmp for every user.

To achieve this a separate mount namespace is setup during login and a
bind mount is performed in configured locations. Different methods are
offered for this like a fixed per-user directory that is bind mounted
(i.e. per-user contents are persistent and shared between sessions) or
an ephemeral temporary directory (contents are lost after a session is
closed).

The Vulnerability
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The PAM module explicitly supports bind mounting of polyinstantiated
directories in user controlled locations, like beneath the user's home
directory. Operating with root privileges in user controlled directories
comes with a lot of dangers. To avoid them the function `protect_dir()`
implements a special algorithm to protect the target path of a bind
mount.

The function follows the target path for the bind mount starting from
the file system root. Each path component that is under non-root control
is protected from user manipulation, by bind mounting the path upon
itself.

While this approach feels unusual, it should be effective to prevent any
shenanigans on the side of the unprivileged user for whom the directory
is mounted.

There is one bit missing though: The algorithm is not passing the
`O_DIRECTORY` flag to `openat()` and is thus subject to special files like
FIFOs being placed in user controlled directories. This can easily be
reproduced e.g. using this configuration entry in the `namespace.conf`
configuration file:

    $HOME/tmp /var/tmp/tmp-inst/ user:create root

An unprivileged user (that is not yet in a corresponding mount namespace
with ~/tmp mounted as a polyinstantiated dir) can now place a FIFO
there:

    nobody$ mkfifo $HOME/tmp

A subsequent attempt to login as this user with `pam_namespace`
configured will cause the `openat()` in `protect_dir()` to block,
causing a local denial of service.

The Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The bugfix [3] I suggested fixes the issue by passing the `O_DIRECTORY`
open flag to cause the open to fail if the path does not refer to a
directory. With this some existing explicit checks of the file type can
be dropped now.

Even with this patch applied the unprivileged user can still prevent the
polyinstantiated directory from being mounted by placing a FIFO in the
mount location. I don't believe that `pam_namespace` gives (or should
give) any guarantees in this regard, so I don't consider it a problem.

Timeline
=3D=3D=3D=3D=3D=3D=3D=3D

2023-12-27: I reported the finding to the linux-pam maintainers,
            offering coordinated disclosure and a suggested patch.
2023-12-27: An upstream maintainer quickly responded, stating that the
            linux-pam project does not treat security issues specially
	    for their purposes, but suggested setting up a short embargo
	    anyway to allow other downstream consumers to prepare.
2023-12-29: Since upstream intended to make a new version release in
	    January anyway we agreed to share the issue with the distros
	    mailing list some time before that release.
2024-01-05: I requested a CVE to track this issue from Mitre.
2024-01-09: Mitre assigned CVE-2024-22365.
2024-01-09: Upstream communicated to me the planned release date of
            2024-01-17 which will contain the bugfix.
2024-01-09: I shared the issue with the linux-distro mailing list.
2024-01-17: linux-pam upstream released version 1.6.0 containing the
            bugfix as planned.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://github.com/linux-pam/linux-pam
[2]: https://github.com/linux-pam/linux-pam/releases/tag/v1.6.0
[3]: https://github.com/linux-pam/linux-pam/commit/031bb5a5d0d950253b68138b=
498dc93be69a64cb

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

--iF7Y14nw2iSaVqxL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmWo9FQACgkQFMQFyXGS
NVOelxAApzPar9MQCFLtFGxQUR5FsU77PAuafsYVGAvO1ZbjgbnjmOS0c9tquANL
yqYxUIcWflor8m/++Q5xhxgB1MZ4WmDDd3knOs9OIugYDmhnbHfxQ65GEJi9Sqgt
LkxQj02L6XXDl/GXvr7bJaB/msFHVbBwrZNQ15CoCCm0bixV1uGn+2pY9UDnAUEo
IZJPn8ojd+A+r12N37Hq3EJJYpHLr6QEEKGeMvGX3hvY94rWkGPX+umx+XNT8S3t
m2iOG/oIhZqxEDxzs4BRWkY5/ZmfGBiOrz56ReEeXmDb96kwiHK/M8C+WGcQ1Sed
p85m2KTTwwwxaOLgpmjtbUP9hq2YHcFikd1dZap6rZl44MOS8vx/Pn6mWJyBbaGF
uSD6RMuWWONskq53YdRgf4Z0xVrn+h/ATEDI896fRfMad/5csjYbbe6gMQJ4eAqt
YHxOTLT+R+uhMUtpvjZzJH1/43dby1LeEjqkbHvFtvOQKKA0nSO2A4r5KBuUau3B
NEsG1/SGfYQ5tzSTdZIVspSKgiLxXEq0y+niEDNiZ29fasOBjZI3G5s6SaL9xeMm
MWrbmY+rJoe5kB/XFOza4WvzMmLjqmPfTnOL9MNzksCFS/wTOAKKSjVuG1cd1QgD
LVtVexSHbo5o4UBmMyUc3OBAIYdFxc80TfZvxaDffDnDnGNgGpc=
=/QfW
-----END PGP SIGNATURE-----

--iF7Y14nw2iSaVqxL--
