Received: (qmail 5531 invoked by uid 550); 18 May 2025 12:21:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28537 invoked from network); 18 May 2025 03:22:57 -0000
Message-ID: <8a148a38-469b-45ca-8ed3-6900ba8b5d17@gentoo.org>
Date: Sat, 17 May 2025 23:22:43 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: jcb62281@gmail.com, oss-security@lists.openwall.com
References: <20250516163157.BA80D8564D@mail.netbsd.org>
 <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
 <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
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
In-Reply-To: <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dSqypT2SCqOvbyQBWDnB1JlS"
Subject: Re: [oss-security] describing affected systems

--------------dSqypT2SCqOvbyQBWDnB1JlS
Content-Type: multipart/mixed; boundary="------------iyOEZ2yk0bmVqyacsIGBEXQ0";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: jcb62281@gmail.com, oss-security@lists.openwall.com
Message-ID: <8a148a38-469b-45ca-8ed3-6900ba8b5d17@gentoo.org>
Subject: Re: [oss-security] describing affected systems
References: <20250516163157.BA80D8564D@mail.netbsd.org>
 <35a41210-9cd1-4845-bc6d-fdbff2d0c407@gentoo.org>
 <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>
In-Reply-To: <8ea7f8f5-7645-4d5d-af38-d0b434636e40@gmail.com>

--------------iyOEZ2yk0bmVqyacsIGBEXQ0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 5/16/25 10:52 PM, Jacob Bachmeyer wrote:
> Am I mistaken that portage is unique to Gentoo, while pkgsrc is also
> used for applications on systems other than its native NetBSD?


Portage is also used by "Prefix", as I mentioned above, to run on any
Linux system (e.g. for unprivileged use on HPC clusters where it is more
flexible and up-to-date than the Linux distribution's package manager).

Also on macOS and Solaris.

And probably could be verified for use on other Unixes if there was
sufficient interest. HP-UX, AIX, Interix, WinNT (!!!), FreeBSD, OpenBSD,
NetBSD all used to be supported, even if dead for ~10 years due to
interested stakeholders retiring.


--=20
Eli Schwartz

--------------iyOEZ2yk0bmVqyacsIGBEXQ0--

--------------dSqypT2SCqOvbyQBWDnB1JlS
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCaClSgwUDAAAAAAAKCRCEp9ErcA0vV+3D
AP9GmuBl0zmCw93XauOR3HMNEJ2kzfMAmrI5Yoh6CWLWeQEAgmYzAHm5qOxZeiefgYO25/Puq8wH
e5oaHu15wFFe5gI=
=gPZ5
-----END PGP SIGNATURE-----

--------------dSqypT2SCqOvbyQBWDnB1JlS--
