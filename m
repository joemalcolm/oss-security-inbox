Received: (qmail 19522 invoked by uid 550); 17 Feb 2026 17:06:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11564 invoked from network); 17 Feb 2026 16:37:12 -0000
From: Sam James <sam@gentoo.org>
To: oss-security@lists.openwall.com
In-Reply-To: <05b52c22-8676-47aa-965d-c2e8194e451d@gmail.com>
Organization: Gentoo
References: <05b52c22-8676-47aa-965d-c2e8194e451d@gmail.com>
User-Agent: mu4e 1.12.15; emacs 31.0.50
Date: Tue, 17 Feb 2026 16:36:58 +0000
Message-ID: <878qcr4991.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"
Subject: Re: [oss-security] CVE-2026-25506: MUNGE 0.5-0.5.17 buffer overflow
 allowing key leakage

--=-=-=
Content-Type: text/plain

Chris Dunlap <chris.m.dunlap@gmail.com> writes:

> A buffer overflow vulnerability in MUNGE allows a local attacker to
> leak cryptographic key material from the munged daemon process
> memory. With the leaked key material, the attacker could forge
> arbitrary MUNGE credentials to impersonate any user to services that
> rely on MUNGE for authentication.

Thanks for posting this to oss-security.

> [...]
>
> There is no indication this vulnerability is being exploited in the
> wild. The vulnerability was discovered during a security audit and
> responsibly disclosed.
>
> [...]

I see there's a writeup published now as well:
https://blog.lexfo.fr/munge-heap-buffer-overflow.html

> Reported by Titouan Lazard (LEXFO).

sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEBBAEWCgCpFiEEJaa7iN2bdkxrVUHCc4QJ9SDfkZAFAmmUmSobFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXQyNUE2QkI4OEREOUI3NjRDNkI1NTQx
QzI3Mzg0MDlGNTIwREY5MTkwDxxzYW1AZ2VudG9vLm9yZwAKCRBzhAn1IN+RkPBE
AQCUYzRX/cKSxGy2S6yGVU/G9tbZlVdjsktEieoY21TpjgEAx95pd3E0Iaj9R4Iq
zAfiTItJI+0RAskBQuiS4F5y5Ao=
=dBN9
-----END PGP SIGNATURE-----
--=-=-=--
