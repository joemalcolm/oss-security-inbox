X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2878" "Monday" "6" "July" "2015" "18:17:34" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150706181734.2b0288ca@pc1>" "75" "[oss-security] How serious is undefined behavior?" nil nil nil "7" "2015070616:17:34" "[oss-security] How serious is undefined behavior?" (number mark "        hanno@hboeck Jul  6   75/2878  " thread-indent "\"[oss-security] How serious is undefined behavior?\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21652 invoked by uid 550); 6 Jul 2015 16:16:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21614 invoked from network); 6 Jul 2015 16:16:39 -0000
Message-ID: <20150706181734.2b0288ca@pc1>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-726-1436199387-0001-2"
Date: Mon, 6 Jul 2015 18:17:34 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] How serious is undefined behavior?
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-726-1436199387-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

As most probably know clang and gcc have a feature called "undefined
behavior sanitizer" which checks for stuff that according to the C
standard is not defined.

When you run this on real world software you'll find a lot of things.
Most of it are signed integer overflows and invalid shift operations
(shift exponent larger than type bit size, negative value, negative
exponent).

=46rom a theoretic point of view the matter is clear: When something is
undefined the compiler is allowed to create any kind of optimization
that will cause all kinds of behavior and the programmer can't expect
anything reliable to happen.

However I wonder how practically relevant these issues are and also
how much focus should be given to them. Do people have good examples
where e.g. an invalid shift operation caused a real, severe security
issue?
Would people think it's a wise idea to put a lot of effort into testing
applications with ubsan enabled and reporting all the bugs that pop up?
(that would mean a lot of bugreports) Or would this be perceived as an
annoying "that's a theoretical C language nitpick issue and not a real
bug".

(Just to give you an idea: This affects the very basic libraries, e.g.
I recently reported a shiftleft issue in zlib [1] and openssl still
exposes several issues just by running the testsuite with ubsan)

Some practical notes: ubsan can be enabled with -fsanitize=3Dundefined
in CFLAGS and it's best to use a reasonably new version of it, e.g.
clang 3.6 or gcc 5.1, they have a couple of new checks.


[1]
https://github.com/madler/zlib/commit/8a979f6c7986574e37316148cd8ca440c3bc0=
8a3


--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-726-1436199387-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJVmqoeAAoJEKWIAHK7tR5CbZYP/jX/27c9d8KMjpbTzO9W4fib
95SZWAb2dCuRV4BqO8g4vFycjvdwjodh+ypQBPKZwWi7aoEegV0W9wA5EzfML38E
jhkqp55Vite1a7v+M7IQVU3BwVCrgRwzht4FIwrJY2T0UZU4bL1i8j+geDq6yYmf
R1yejFKT0c501hwTzV2TUaZmftlDgK/Ws3l7AzYLTl5D09yN0p9nq0/VLyHq6X88
Vp8EeSAsUDIRAzyDz70W3z2ECnz1+PsjtV00dp/V2Y5zI/s8jPIw5A0j+v3tR61V
PhguDAtzyl+6jCZ8B9AtVW7FgJKz/KmZvLAO17D684VDKlB+CWwjwiZGAd7AqIm5
yCS15y+4sE+X8oBYnzm+RUivainOjIn2x91Kdxjvkmod4OCj/D10kCpskr3fAMXk
tZP5fFkKbp3SqnZ7haATxNtjYHZ1hhmH0AKJt+lL1vWvAjTWjRIEyKumNIYiE4/I
H2DQJeZoQ5g0vRg7hZkRc8cxRxJnYneFXTq2FOmxcIiZk6leZUvtj79RRMweGcSm
WN7V9147TfT/Sp5EyLqsFCsE5WUJxVEs5B8bN+bcx2By50GGFdtG6MMZ7I2RkmfE
Ed4N/eAKFi5ejBT/0hJqdeL13MYTWNlGkE5AFGbD6x9jJdJPTZ5dYam3DrvtDPDx
jw7AYFR7oWFYunTZF/4s
=q2j6
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-726-1436199387-0001-2--
