X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2109" "Friday" "23" "October" "2015" "07:15:53" "+0100" "Tim Brown" "tmb@65535.com" "<13512806.1ZGcyoO27t@sarpedon>" "57" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102306:15:53" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        tmb@65535.co Oct 23   57/2109  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22212 invoked by uid 550); 23 Oct 2015 06:22:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22183 invoked from network); 23 Oct 2015 06:22:58 -0000
Message-ID: <13512806.1ZGcyoO27t@sarpedon>
User-Agent: KMail/4.14.2 (Linux/4.0.0-1-amd64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
References: <20151021153633.GA2430@boyd> <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart2989441.jR0En9pZW7"; micalg="pgp-sha256"; protocol="application/pgp-signature"
Date: Fri, 23 Oct 2015 07:15:53 +0100
From: Tim Brown <tmb@65535.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--nextPart2989441.jR0En9pZW7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Thursday 22 October 2015 22:40:29 Robert Watson wrote:
> Apologies if I'm naive but... since /tmp is world writable, how is this a
> vulnerability?

The permissions on /tmp having nothing at all to do with this, not sure why=
=20
you brought that up. With most archiving tools, there is an expectation tha=
t=20
unpacking will involve writing only to the current directory and below and/=
or=20
a user specified directory and below. This breaks that assumption because t=
he=20
unpacker may create a symlink to a location outside of the directory which=
=20
later may then be followed when further files are unpacked. Depending on th=
e=20
user permissions, this could lead to sensitive files being overwritten. Eve=
n if=20
the unpacker validates the path it is writing to is as described, the=20
validation fails to account for the potential presence of symbolic link fil=
es=20
that point elsewhere.

Tim
--=20
Tim Brown
<mailto:tmb@65535.com>=

--nextPart2989441.jR0En9pZW7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWKdCgAAoJEPJhpTVyySo7edYP/R7/MF7Txd10Lbn55u3XPmmP
Z2LBKSGksFv0o9IgaKhNJaoIb7dR27fJCwHByfomVRYvBsPoAliT1vn4KGv8LYBX
TnkHFbzHtXlIQv2hoACBzZXrzuAd+MsMridT6mB+v13O6qXFzwPukJeaBn58wlCE
yStZg0b7Y51V7V4DRrdXrZJ+WlxxdtpzZEkglOnkU8UMZr/BmSk36zKNCT4H6NF0
pC3yJgwwV3QsWPtOzgDwJ4Zf9E1oqfNRwqpyZhwjeu9mznhCxakD9/nYH2EQ41NV
4vHHYKaqEx2z1EdVSKgoPni84a+Aju+vSQdMPoafp8UGpY5K0LgQTPsiu3kpHrJL
EV29hUmoWG6S7eFrBTFYk5drAVlXcB9lqAXdrpxBQZmmGbQx6jcbJChLxIoYcyjN
cACd/X5irZaIZmitmWfxEpeqOHeWNDiaAmsQoFF9x/6aWAdzNjH4OB+moaawV9nY
MOFsRAZSumTp8UKXGSewT1rn7ARubjBPNNL+j18Jfbu1tyFAriU6kem0s3/pB8vU
fhTop+iZ+H+aAQYIyYqzwk0qISemyZfUr+xJPqYaHuGKTHsMFAONbq/AriPysLsF
+UCYayXXssZfURtE4OdHrj55qKeToW7g71c3H9X7P+/P20n86jDI0hliabF53xw0
NEqfAQhfQ+aLIljv1wQb
=U0WP
-----END PGP SIGNATURE-----

--nextPart2989441.jR0En9pZW7--

