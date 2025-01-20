Received: (qmail 19625 invoked by uid 550); 21 Jan 2025 00:49:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29892 invoked from network); 20 Jan 2025 23:47:40 -0000
Message-ID: <9ce624fb-1a7c-4ccb-8816-7aadbb754e50@gentoo.org>
Date: Mon, 20 Jan 2025 18:47:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Christian Brabandt <cb@256bit.org>
References: <Z47IfZiDnNqGAmCt@256bit.org>
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
In-Reply-To: <Z47IfZiDnNqGAmCt@256bit.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------Y2M70qUHBpl4VyScIfRJuorG"
Subject: Re: [oss-security] Subject: [vim-security] segmentation fault in
 win_line() in Vim < 9.1.1043

--------------Y2M70qUHBpl4VyScIfRJuorG
Content-Type: multipart/mixed; boundary="------------BH3KGcWhDoe1H7zUAnLLrsYK";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com, Christian Brabandt <cb@256bit.org>
Message-ID: <9ce624fb-1a7c-4ccb-8816-7aadbb754e50@gentoo.org>
Subject: Re: [oss-security] Subject: [vim-security] segmentation fault in
 win_line() in Vim < 9.1.1043
References: <Z47IfZiDnNqGAmCt@256bit.org>
In-Reply-To: <Z47IfZiDnNqGAmCt@256bit.org>

--------------BH3KGcWhDoe1H7zUAnLLrsYK
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 1/20/25 5:04 PM, Christian Brabandt wrote:
> segmentation fault in win_line() in Vim < 9.1.1043
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> Date: 20.01.2025
> Severity: Medium
> CVE: CVE-2025-24014
> CWE: Out-of-bounds Write (CWE-787)
>=20
> In silent Ex mode (-s -e), Vim typically doesn't show a screen and just
> operates silently in batch mode. However, it is still possible to
> trigger the function that handles the scrolling of a gui version of Vim
> by feeding some binary characters to Vim. The function that handles the
> scrolling however may be triggering a redraw, which will access the
> ScreenLines pointer, even so this variable hasn't been allocated
> (since there is no screen).
>=20
> In Patch 9.1.1043 Vim will therefore skip the redraw attempt, by testing
> whether the ScreenLines pointer is NULL.
>=20
> Impact is medium since the user must intentionally and explicitly feed
> some binary data to Vim in ex mode.
>=20
> The Vim project would like to thank github user @fizz-is-on-the-way
> for reporting this issue.
>=20
> The issue has been fixed as of Vim patch v9.1.1003
>=20
> References:
> https://github.com/vim/vim/commit/9d1bed5eccdbb46a26b8a484f5e9163c40e63919
> https://github.com/vim/vim/security/advisories/GHSA-j3g9-wg22-v955


It seems strange to me to say that it is a vulnerability, for a vim
option that accepts a full-blown script to also crash when fuzzed.

It's not an attack vector to crash /bin/bash when fed a malformed
script, so why is there anything to comment on with regard to vim either?

How is this "medium" impact?

--=20
Eli Schwartz

--------------BH3KGcWhDoe1H7zUAnLLrsYK--

--------------Y2M70qUHBpl4VyScIfRJuorG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZ47gjwUDAAAAAAAKCRCEp9ErcA0vVyQk
AP9oPs8pF50l74vf21xxA4wBomlYwCaZEkBL4+oeAgm6ZAD/YdPkM3tgt3yNoKirOGYeVS1yARCb
gu+L5qTDZvKLSAI=
=ZWn1
-----END PGP SIGNATURE-----

--------------Y2M70qUHBpl4VyScIfRJuorG--
