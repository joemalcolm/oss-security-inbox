Received: (qmail 20208 invoked by uid 550); 20 Feb 2026 18:53:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32524 invoked from network); 20 Feb 2026 18:27:33 -0000
Message-ID: <c988f8c0-4cdb-41d8-bc0b-dbcd896c891c@gentoo.org>
Date: Fri, 20 Feb 2026 13:27:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <43B86407-F2E4-4081-BB14-1B2D26248767@uraeus.com>
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
In-Reply-To: <43B86407-F2E4-4081-BB14-1B2D26248767@uraeus.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0CDe0mwkV1H07wxOIqpg4TVI"
Subject: Re: [oss-security] OpenSC, ghostscript, cgif issues from the recent
 Anthropic disclosure

--------------0CDe0mwkV1H07wxOIqpg4TVI
Content-Type: multipart/mixed; boundary="------------V9M1CMbT6S6woxLPwepZpKpP";
 protected-headers="v1"
Message-ID: <c988f8c0-4cdb-41d8-bc0b-dbcd896c891c@gentoo.org>
Date: Fri, 20 Feb 2026 13:27:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [oss-security] OpenSC, ghostscript, cgif issues from the recent
 Anthropic disclosure
To: oss-security@lists.openwall.com
References: <43B86407-F2E4-4081-BB14-1B2D26248767@uraeus.com>
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
In-Reply-To: <43B86407-F2E4-4081-BB14-1B2D26248767@uraeus.com>

--------------V9M1CMbT6S6woxLPwepZpKpP
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 2/20/26 8:17 AM, Joe Malcolm wrote:
> Many will have seen the recent post from Anthropic (1) and=20
> associated reporting that says they found 500+ vulnerabilities and=20
> lists 3 of them.  These three issues don=E2=80=99t appear to have CVEs an=
d=20
> two don=E2=80=99t appear in releases. I don=E2=80=99t know if that indica=
tes the=20
> maintainers don't agree with the significance of these findings, but=20
> I wonder if the other 498+ vulnerabilities also lack CVEs.
>=20
> 1. For OpenSC, the commit appears to be:
>=20
> https://github.com/OpenSC/OpenSC/=20
> commit/9ab1daf21029dd18f8828d684ee6151d9238edab
>=20
> There are no disclosed security issues more recent than 2024 at=20
> https://github.com/OpenSC/OpenSC/security and the last release was=20
> OpenSC 0.26.1.
>=20

https://github.com/OpenSC/OpenSC/pull/3554


> The strcat is a magnet to any static analysis tools and CVEs. Lets
> get rid of that and replace it with the "safe" strlcat


I think this indicates they made the change solely because they were fed
up with "security report harassment" and hoped that by making a change
they saw as pointless, they could "defang" LLM tooling that reports "use
of xxx function *could* be buggy, you use the function, we shall report
it by assuming it is indeed buggy".

--=20
Eli Schwartz

--------------V9M1CMbT6S6woxLPwepZpKpP--

--------------0CDe0mwkV1H07wxOIqpg4TVI
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaZiniAUDAAAAAAAKCRCEp9ErcA0vV6QE
AP9CDIDEufrtOmLCRVu+7SiZ3QuXjhHBaiJg8hJvfW9VTQD9EFDP7aH1+JlTlczrF68hrnqIRX7a
zDmvYsBs27ZPaQ0=
=24K9
-----END PGP SIGNATURE-----

--------------0CDe0mwkV1H07wxOIqpg4TVI--
