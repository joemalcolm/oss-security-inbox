Received: (qmail 12059 invoked by uid 550); 16 May 2025 18:54:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14225 invoked from network); 16 May 2025 18:07:29 -0000
Message-ID: <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
Date: Fri, 16 May 2025 14:07:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20250516163157.BA80D8564D@mail.netbsd.org>
Content-Language: en-US
From: Eli Schwartz <eschwartz@gentoo.org>
Autocrypt: addr=eschwartz@gentoo.org; keydata=
 xjMEZmeRNBYJKwYBBAHaRw8BAQdAYNZ7pUDWhx1i2f3p6L2ZLu4FcY18UoeGC04Gq/khqwfN
 I0VsaSBTY2h3YXJ0eiA8ZXNjaHdhcnR6QGdlbnRvby5vcmc+wpYEExYKAD4WIQTvUdMIsc4j
 CIi+DYTqQj6ToWND8QUCZoRL+gIbAwUJBKKGAAULCQgHAwUVCgkICwUWAgMBAAIeBQIXgAAK
 CRDqQj6ToWND8aB5AP9r4kB691nNtNwKkdRiOdl7/k6WYzokvHvDamXxRJ0I+gEAjZqR5V8y
 mfR3fy2Z+r2Joeqdt3CIv5IwPs64spBvigLOOARmZ5E0EgorBgEEAZdVAQUBAQdATT46Z06b
 1X9xjXFCYFxmq/Tj3tSEKZInDWTpoHQp4l8DAQgHwn4EGBYKACYWIQTvUdMIsc4jCIi+DYTq
 Qj6ToWND8QUCZmeRNAIbDAUJBKKGAAAKCRDqQj6ToWND8a2RAP40KPfbfoiZAJW5boFmFJ3G
 TUBDJRh9CWHyaPqq2PN+0wD/R07oLzfnJUN209mzi9TuTuHjeZybysyqXSw4MAxkMAY=
In-Reply-To: <20250516163157.BA80D8564D@mail.netbsd.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------E2igHp2mqRcs1dtjV3V1YFC0"
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
 affecting release 5.0.0 and setuid-root installations)

--------------E2igHp2mqRcs1dtjV3V1YFC0
Content-Type: multipart/mixed; boundary="------------TANegKDsOt8Mn00HJnWuhjym";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
 affecting release 5.0.0 and setuid-root installations)
References: <20250516163157.BA80D8564D@mail.netbsd.org>
In-Reply-To: <20250516163157.BA80D8564D@mail.netbsd.org>

--------------TANegKDsOt8Mn00HJnWuhjym
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/16/25 12:31 PM, Taylor R Campbell wrote:
> It is not nonsensical, and it is not the inconsequential pedantry you
> are suggesting.  Please consider avoiding sarcastic disparagement when
> publicly discussing the factual matters of security reports.
>=20
> The report says that `NetBSD 10.1' is affected.  This is not quite
> right, _and it matters_ even if you set aside the fact that NetBSD
> 10.1 itself (which does ship tmux!) does not ship screen, because:


NetBSD 10.1 (and earlier) is affected (if you use its package manager to
install screen).


Arch Linux is affected (if you use its package manager to install screen).

Debian 12.10 (but this is not quite right!!!1!11!!!oneoneeleven. The
same packages are available on e.g. Debian 13, 11, etc) is affected (if
you use its package manager to install screen).

Ubuntu 24.04.10 (but this is not quite right!!!1!11!!!oneoneeleven. The
same packages are available on e.g. Ubuntu 22.04, 24.10, 25.04, 25.10)
is affected (if you use its package manager to install screen).

Gentoo (but this is not quite right!!!1!11!!!oneoneeleven. The same
packages are available on e.g. macOS Prefix) is affected (if you use its
package manager to install screen).


> (a) the same pkgsrc packages are available on, e.g., NetBSD 9.x (which
>     is not EOL); and
>=20
> (b) pkgsrc is used on platforms other than NetBSD, including macOS,
>     SmartOS, and various Linux distributions (e.g., for unprivileged
>     use on HPC clusters where it is more flexible and up-to-date than
>     the Linux distribution's package manager).
>=20
> That is why it would be more accurate for the report to say
> `pkgsrc-2025Q1', not `NetBSD 10.1'.


I strongly dispute this. It should instead list both, as both are
affected. (Again, b is the same distinction as "Gentoo, but also
portage-20250508, are both affected".)


But the list of affected distributions wasn't complete, and likely
wasn't intended to be. Nor was its list of distribution *versions*. It
didn't list affected versions for Adelie, Alpine, CRUX, Exherbo, Guix,
Homebrew, Mageia, Mandriva, Solus, Void Linux...


I'll reiterate that claiming NetBSD is "not affected" because "the base
installation doesn't preinstall it" is nonsensical, and highly
reminiscent of, erm, a different BSD that uses similar logic to conclude
that "the base installation" does not need useless bloat such as TrustedBSD.


I encourage you to relax and stop feeling like the honor of NetBSD is at
stake if you fail to prove that "NetBSD 10.1" was exempt from the same
issue all other distributors had.

It's no embarrassment for an operating system to have the builtin
capability to install software, you can just *not* treat it like an
unwanted and uninvited guest tracking mud all over the kitchen that
needs to be disavowed.


--=20
Eli Schwartz

--------------TANegKDsOt8Mn00HJnWuhjym--

--------------E2igHp2mqRcs1dtjV3V1YFC0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaCd+1AUDAAAAAAAKCRCEp9ErcA0vV6J0
AP441+TJFXsyC417XLR0TODWIg7R9IYnDt2nAK2aQUPL2QEApB6TVceNs5nk4FNqG9qWEXVSmP2X
zkXv8YtC9WH5gwc=
=CT9c
-----END PGP SIGNATURE-----

--------------E2igHp2mqRcs1dtjV3V1YFC0--
