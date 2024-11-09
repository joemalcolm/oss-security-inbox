Received: (qmail 16151 invoked by uid 550); 10 Nov 2024 14:07:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32359 invoked from network); 9 Nov 2024 23:59:13 -0000
Message-ID: <21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
Date: Sat, 9 Nov 2024 18:59:01 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20241106041215.GA4432@openwall.com>
 <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
 <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
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
In-Reply-To: <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------lH08e5ZHtRrpnQT7YmIlfmIJ"
Subject: Re: [oss-security] shell wildcard expansion (un)safety

--------------lH08e5ZHtRrpnQT7YmIlfmIJ
Content-Type: multipart/mixed; boundary="------------0pSGw0Hj0eHz024Puw9Aq36a";
 protected-headers="v1"
From: Eli Schwartz <eschwartz@gentoo.org>
To: oss-security@lists.openwall.com
Message-ID: <21a818cc-d665-43a7-8ff0-c23769f6da04@gentoo.org>
Subject: Re: [oss-security] shell wildcard expansion (un)safety
References: <20241106041215.GA4432@openwall.com>
 <CAGUWgD_T4vUhBfkmjm+8ELcuiOD9dx1vSC4HnKG88Py7ip+zPw@mail.gmail.com>
 <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>
In-Reply-To: <CABEVAa0+EE0M3Q2wwpOSX0-VCw95xSjZV-1S4u7hSYY9K=YK7w@mail.gmail.com>

--------------0pSGw0Hj0eHz024Puw9Aq36a
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11/8/24 5:02 PM, Dominik Czarnota wrote:
> This is known since even earlier by the article/disclosure =E2=80=9Eunix =
wildcards
> gone wild=E2=80=9D:
> https://seclists.org/fulldisclosure/2014/Jun/136
>=20
> The original article link seems to not work but it can be seen e.g. here:
> https://github.com/Gandosha/gandosha.github.io/blob/master/DefenseCode_Un=
ix_WildCards_Gone_Wild.txt
>=20
> It shows that in some cases this can lead to code execution, e.g. with =
=E2=80=9Etar
> *=E2=80=9D


The earliest version of the Bash Pitfalls guide that includes a warning
about the topic, per the Wayback Machine:

https://web.archive.org/web/20090426020027/https://mywiki.wooledge.org/Bash=
Pitfalls#Filenames_with_leading_dashes


Overall, wildcards are just a classic "here is a programming language
footgun, we cannot fix it because the language is backwards compatible
to the 90s and earlier" which amounts to:

people love bash because it's "simple" and "easy" and "anyone can write
a bash script without knowing what they are doing".

Of course, the problem is that people who don't know what they are doing
can then write software (sometimes running as root, other times simply
as any permission context with access to sensitive info), which is quite
dangerous -- people who don't know what they are doing often write
security vulnerabilities in many languages, but it's particularly easy
to do so in a language that by definition lacks rigorous parsing, makes
it challenging to have error conditions be fatal, and is for the most
part designed to take any erroneous code you throw at it and do its best
to execute as much of that code as it can, even if lots of it doesn't
really parse correctly.

... wait a minute, are we talking about PHP after all?


--=20
Eli Schwartz

--------------0pSGw0Hj0eHz024Puw9Aq36a--

--------------lH08e5ZHtRrpnQT7YmIlfmIJ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQTnFNnmK0TPZHnXm3qEp9ErcA0vVwUCZy/3RQUDAAAAAAAKCRCEp9ErcA0vV9PS
AP0bN5oVo7aQjWOrcsBiKIUI/1gubCgD5ryxTCrrMDis/AEAqAx8gLLDqRvqXhDi9kdgfyWGJSAx
CsbNW7TvdvvE7As=
=wmKF
-----END PGP SIGNATURE-----

--------------lH08e5ZHtRrpnQT7YmIlfmIJ--
