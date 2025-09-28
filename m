Received: (qmail 25779 invoked by uid 550); 28 Sep 2025 16:42:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30249 invoked from network); 28 Sep 2025 16:35:43 -0000
Message-ID: <e51c6925-1d49-47cf-8dc3-e0dcb01d5005@gentoo.org>
Date: Sun, 28 Sep 2025 12:35:28 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
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
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------JqsBctpke1pHlunuHtwl2ytu"
Subject: Re: [oss-security] How to do secure coding and create secure software

--------------JqsBctpke1pHlunuHtwl2ytu
Content-Type: multipart/mixed; boundary="------------AoP1Hxv6OVbJFTFDTUVaQ1cI";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <e51c6925-1d49-47cf-8dc3-e0dcb01d5005@gentoo.org>
Subject: Re: [oss-security] How to do secure coding and create secure software
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
 <20250927214013.GA9163@openwall.com>
 <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>
In-Reply-To: <CAFf+5ziVBQ-xk=VQdrbnhgzdu1gu==ZQSrhBGj7PEq6mcOVVAw@mail.gmail.com>

--------------AoP1Hxv6OVbJFTFDTUVaQ1cI
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 9/27/25 11:35 PM, Amit wrote:

> Let's assume that there are 2 (or more) different software and all the
> functions in all the software are secure and these software are interacti=
ng
> with each other. Then how can they be hacked? Can someone give an example.
>=20
> I don't agree with theoretical assumptions.
>=20
> Someone also mentioned that secure functions having limits on arguments c=
an
> result in DoS. In my opinion, DoS is better than getting hacked.
>=20
> But still, the main point is that can someone give an example of how a
> software made up of all secure functions be hacked? I request for an
> example (not theoretical statements).
>=20
> Or, some example that happened in the past in the real world? I will
> analyze that.


Theoretical assumption: people who think they know how to write secure
functions never discover they were wrong and their functions were buggy
and insecure.

:) :)


--=20
Eli Schwartz

--------------AoP1Hxv6OVbJFTFDTUVaQ1cI--

--------------JqsBctpke1pHlunuHtwl2ytu
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaNlj0QUDAAAAAAAKCRCEp9ErcA0vVzoL
AQDvtTJSteku/L8VO6ad6O4Ck2pMs9QDJj4INzWx5rSrnwEAjYShQszup/2rxK5d7ckwe4ocfoys
mewUGs7Flit17wA=
=C2si
-----END PGP SIGNATURE-----

--------------JqsBctpke1pHlunuHtwl2ytu--
