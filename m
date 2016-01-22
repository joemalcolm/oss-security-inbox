X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2126" "Friday" "22" "January" "2016" "11:57:42" "-0500" "Steve Grubb" "sgrubb@redhat.com" "<41532875.k1hQz0ZxHK@x2>" "61" "Re: [oss-security] Re: Prime example of a can of worms" "^Cc:" nil nil "1" "2016012216:57:42" "[oss-security] Re: Prime example of a can of worms" (number mark "        sgrubb@redha Jan 22   61/2126  " thread-indent "\"Re: [oss-security] Re: Prime example of a can of worms\"\n") "<56A126C4.7090905@andrewg.com>" ("<56A126C4.7090905@andrewg.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21937 invoked by uid 550); 22 Jan 2016 16:57:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21912 invoked from network); 22 Jan 2016 16:57:55 -0000
Message-ID: <41532875.k1hQz0ZxHK@x2>
Organization: Red Hat
User-Agent: KMail/4.14.10 (Linux/4.2.3-203.fc22.x86_64; KDE/4.14.14; x86_64; ; )
In-Reply-To: <56A126C4.7090905@andrewg.com>
References: <56A126C4.7090905@andrewg.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1546160.sjnFM40Lh6"; micalg="pgp-sha1"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: Andrew Gallagher <andrewg@andrewg.com>
Date: Fri, 22 Jan 2016 11:57:42 -0500
From: Steve Grubb <sgrubb@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Prime example of a can of worms
To: oss-security@lists.openwall.com

--nextPart1546160.sjnFM40Lh6
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="us-ascii"

On Thursday, January 21, 2016 06:43:16 PM Andrew Gallagher wrote:
> On Thu, 21 Jan 2016 10:15:55 -0500 Steve Grubb wrote:
> > Hallway discussions mentioned that ECC is dead due to trust issues
> > and fuzzy IP issues which slowed vendor uptake. There was a mention
> > of RSA officially being allowed to go to 16k key sizes.
>=20
> Was there any mention of the relative ease of quantum attacks against
> ECC compared to classically-equivalent RSA?=20

Yes. At one time ECC looked good because it offered comparable strength wit=
h=20
fewer operations so it was faster in the age of slower CPUs. Now, the threa=
t=20
has changed and people are looking over the not too distant future at how b=
est=20
to provide some resistance in the face of a very different landscape. Thing=
s=20
that are computationally expensive start looking better. The slide on page =
9=20
kind of shows the concern. The leftover part of rectangle X not covered by=
=20
rectangle Z means spilled secrets.

To my mind, one of the things that we as an open source community need to=20
think hard about is how we are going to protect data in the Quantum computi=
ng=20
age. If many of the new QR algorithms get patented, where does that leave u=
s?=20
Its kinda like ECC all over again except this time the consequences are muc=
h=20
more dire because there may not be any IP unencumbered algorithm to jump to=
. I=20
certainly hope that won't be the case.

-Steve


> [1] That was suggested on a couple of discussion groups as a possible
> motivation for the newly rekindled RSA love.
>=20
> [1] http://arxiv.org/abs/quant-ph/0301141

--nextPart1546160.sjnFM40Lh6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEABECAAYFAlaiX4YACgkQCfgKaXAKiuZYNQCguGueIWhlrsRPEpspIR5dsbgL
x8gAn2ih2CW5kAiQ4O3iTuDvGmiUrxC9
=sXQY
-----END PGP SIGNATURE-----

--nextPart1546160.sjnFM40Lh6--

