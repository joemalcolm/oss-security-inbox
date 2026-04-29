Received: (qmail 9505 invoked by uid 550); 29 Apr 2026 23:01:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3520 invoked from network); 29 Apr 2026 22:39:58 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <afJorKIje4O6dXbH@netmeister.org>
Organization: Gentoo
References: <afJorKIje4O6dXbH@netmeister.org>
User-Agent: mu4e 1.14.1; emacs 31.0.50
Date: Wed, 29 Apr 2026 23:39:44 +0100
Message-ID: <871pfxpf0v.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Jan Schaumann <jschauma@netmeister.org> writes:

> Hi,
>
> This is currently making the rounds and looks pretty
> severe:
>
> https://copy.fail/
>
> A local privilege escalation vulnerability with a
> working PoC python script exploiting a logic flaw in
> the kernel crypto API (AF_ALG) affecting most Linux
> distributions.
>
> More detailed write-up:
> https://xint.io/blog/copy-fail-linux-distributions
>
> [...]

> Affected and fixed versions
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 6.18.22 with commit
> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
>
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 6.19.12 with commit
> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
>
> Issue introduced in 4.14 with commit
> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> 7.0 with commit
> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5

To say it explicitly, all the kernels in-between before 6.18 aren't
fixed.

>
> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
>
> ----
>
> PoC:
> https://github.com/theori-io/copy-fail-CVE-2026-31431/blob/main/copy_fail=
_exp.py
>
>
> Mitigation:
>
> # echo "install algif_aead /bin/false" > /etc/modprobe.d/disable-algif.co=
nf
> # rmmod algif_aead=20

Brad Spengler has been pointing out that this won't work on a few common
enterprise kernels where CONFIG_CRYPTO_USER_API_AEAD=3Dy (rather than m).

>
>
> -Jan

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmnyiLAbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkCCF
AP4i6sOBoyBJbmCowgOof3+yhYjM0C71Ixw4+x1Y7oR6cwEAr2EvWRw46xhCgWPf
ipDudJnCQJEtB91o7BfDhp7cEQs=
=D2c3
-----END PGP SIGNATURE-----
--=-=-=--
