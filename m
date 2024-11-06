Received: (qmail 19911 invoked by uid 550); 6 Nov 2024 16:14:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32582 invoked from network); 6 Nov 2024 04:42:18 -0000
Message-ID: <4312e59a-2392-4405-8251-19ece737ff93@gentoo.org>
Date: Tue, 5 Nov 2024 23:42:07 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20241106041215.GA4432@openwall.com>
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
In-Reply-To: <20241106041215.GA4432@openwall.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------QDND0WXaKbjQl4xmyd70MpK9"
Subject: Re: [oss-security] shell wildcard expansion (un)safety

--------------QDND0WXaKbjQl4xmyd70MpK9
Content-Type: multipart/mixed; boundary="------------FKlkvP1C8Szn2OPB6FzEuAV0";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <4312e59a-2392-4405-8251-19ece737ff93@gentoo.org>
Subject: Re: [oss-security] shell wildcard expansion (un)safety
References: <20241106041215.GA4432@openwall.com>
In-Reply-To: <20241106041215.GA4432@openwall.com>

--------------FKlkvP1C8Szn2OPB6FzEuAV0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/5/24 11:12 PM, Solar Designer wrote:
> So there's no bug in the shells here, but bugs of this kind are common
> in shell usage (omitting the "--" argument where it's needed, usage of
> wildcard expansion where that is unnecessary, etc.)
>=20
> Can the shells do anything to mitigate this?  I think not without
> breaking compatibility.  The only not-too-unreasonable change I can
> think of is wildcard expansion prefixing filenames with "./", maybe only
> those that start with "-" and maybe not when used with builtin "echo".


Well, to be fair the shell already does exactly this if you do

grep text ./*


> Since this didn't feel too unreasonable, I actually tested many shells
> to see whether any possibly already do this (with "/bin/echo *") - but I
> found none that do, at least not by default.  I expect this would break
> e.g. explicit comparisons of expanded filenames for equality (to some
> expected filenames the script or another program checks for later) and
> uses of the filesystem as poor man's database (which scripts sometimes
> do).  Maybe an opt-in mode or a future shell that doesn't need to stay
> 100% compatible with prior shells could do this, but even then I worry
> that it would encourage practices that would remain unsafe elsewhere.
>=20
> I'll include some excerpts from the distros list discussion below:


No current shells are permitted to do it at all, if they are POSIX sh
compatible -- POSIX mandates a specific outcome:

https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#t=
ag_18_13_03

* cannot match the directory separator, it is not an option that
implementations are allowed to be flexible on, unless the shell
implements an opt-in mode such as bash's "globstar" that explicitly asks
for non-POSIX behavior. The issue then would become that no one would
remember or bother to set it, even if they wanted it. :)


--=20
Eli Schwartz

--------------FKlkvP1C8Szn2OPB6FzEuAV0--

--------------QDND0WXaKbjQl4xmyd70MpK9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZyrznwUDAAAAAAAKCRCEp9ErcA0vVxy6
AQC+Qiiryr5aIBBESGLA15vHRX3KB0ZtY67O/atDWB4ejAEA3qyiRSgEwia+E3+bTJd+kAdR2FCH
cAtj8Ta24349Mg8=
=6FRl
-----END PGP SIGNATURE-----

--------------QDND0WXaKbjQl4xmyd70MpK9--
