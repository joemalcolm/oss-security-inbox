Received: (qmail 8162 invoked by uid 550); 16 May 2025 16:02:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11425 invoked from network); 16 May 2025 15:34:43 -0000
Message-ID: <c72f7000-a909-478d-a487-bf4d5b244223@gentoo.org>
Date: Fri, 16 May 2025 11:34:29 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <aCISrQTbLQjaxBZS@kasco.suse.de> <aCdTYYH_N9dXOYf8@netmeister.org>
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
In-Reply-To: <aCdTYYH_N9dXOYf8@netmeister.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------l3R57gAN3GrSZ4salk1ppecH"
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
 affecting release 5.0.0 and setuid-root installations)

--------------l3R57gAN3GrSZ4salk1ppecH
Content-Type: multipart/mixed; boundary="------------0iyriSxRzfksUgkjQyGeqnwN";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <c72f7000-a909-478d-a487-bf4d5b244223@gentoo.org>
Subject: Re: [oss-security] screen: Multiple Security Issues in Screen (mostly
 affecting release 5.0.0 and setuid-root installations)
References: <aCISrQTbLQjaxBZS@kasco.suse.de> <aCdTYYH_N9dXOYf8@netmeister.org>
In-Reply-To: <aCdTYYH_N9dXOYf8@netmeister.org>

--------------0iyriSxRzfksUgkjQyGeqnwN
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/16/25 11:01 AM, Jan Schaumann wrote:
> Matthias Gerstner <mgerstner@suse.de> wrote:
>> we were surprised to find a local root exploit in
>> the Screen 5.0.0 major version update affecting distributions that ship
>> it as setuid-root (Arch Linux and NetBSD).
>=20
> I think it's useful to clarify here that NetBSD does
> _not_ ship with GNU screen(1) at all.  NetBSD's
> third-party package manager pkgsrc[1] includes
> screen(1), allowing users to install additional
> software on top of the base OS.
>=20
> That package as included in _pkgsrc_ was installed
> setuid[2], but a NetBSD base installation does not
> include that package.  (NetBSD happens to include
> tmux(1) _in the base OS_, but not screen(1).)
>=20
> This distinction between a base OS and add-on software
> that is optionally available for users to choose tends
> to cause confusion for some people, so I figured
> it's worth noting.


This is a nonsensical claim, but if I accept it as stated then I will
counter-assert that zero (0) Linux distros are vulnerable as they don't
preinstall screen in the base OS.

The definition of "the NetBSD base installation" is "nobody uses it".
People use computing devices in order to run software on it. You cannot
consider your OS in a bubble and go "well ackshually it's perfectly
secure unless you use the builtin software to install official software,
but we don't support that as a secure option".

Yes, this applies to other BSDs too. You know who I'm talking about. :P


--=20
Eli Schwartz

--------------0iyriSxRzfksUgkjQyGeqnwN--

--------------l3R57gAN3GrSZ4salk1ppecH
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaCdbBQUDAAAAAAAKCRCEp9ErcA0vV+1A
AQDg3Da5rr/QTMnYP4KAq7FIvJTm6zsg4NhgkEXrTYUupQEAp6kFBOVM7X1XJugb906TheeytsaA
kY9hSi5/kJTUAgU=
=lZpy
-----END PGP SIGNATURE-----

--------------l3R57gAN3GrSZ4salk1ppecH--
