X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1772" "Monday" "31" "August" "2015" "14:29:42" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20150831142942.74f0a4b7@pc1>" "49" "Re: [oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar" nil nil nil "8" "2015083112:29:42" "[oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar" (number mark "        hanno@hboeck Aug 31   49/1772  " thread-indent "\"Re: [oss-security] Out of bounds read using malformed tar archive in GNU Tar and BSD Tar\"\n") "<CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>" ("<CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1744 invoked by uid 550); 31 Aug 2015 12:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1724 invoked from network); 31 Aug 2015 12:29:42 -0000
Message-ID: <20150831142942.74f0a4b7@pc1>
In-Reply-To: <CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>
References: <CACn5sdQBUYfLa8JPTFXyQpooCRdWMQ2HRegp0B57wE5r3i5xKQ@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-26245-1441024171-0001-2"
Date: Mon, 31 Aug 2015 14:29:42 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Out of bounds read using malformed tar archive
 in GNU Tar and BSD Tar
To: oss-security@lists.openwall.com

--=_zucker.schokokeks.org-26245-1441024171-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, 31 Aug 2015 08:20:11 -0300
Gustavo Grieco <gustavo.grieco@gmail.com> wrote:

> Fortunately the last revisions of GNU Tar and libarchive fixed these
> issues. Do we have CVE for these issues?

The bsdtar issue looks like this one:
https://github.com/libarchive/libarchive/issues/515

I have reported ~20 such issues in libarchive in the past months.
Unfortunately there are still some open issues, I was hoping to create
an advisory once everything is done, but it has taken much longer than
expected.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-26245-1441024171-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJV5Ei2AAoJEKWIAHK7tR5CoKUQAKwcmg85L3L4EDyQ3YbOmElI
7FV3u3HgS5BpOeMPL/3oc6KKTna60XO/1gYXda7tk3DOXltxgoMMLm8L/3tKmhld
tPl9YHee9mkbq7t8mqQEI3rAWWE6/4oTNkG54x+k8hnp8H47FndHRHi05lUJVaOF
lQIm1Cr29NOsiO+70G7laZUVTCyI4Wv4uFb1vy4Uo9/vj4VppU0myakb3sHAsqsO
vl6B4f351QYfF6vd4S/7Pm4fRBjViXWGw2pf1x6mUkIagDOOxN0Lt59T9HvHeVz9
kXF5+f8FeKrYRpkcFbh5ERSkaGY1IQRrNWbTaovAzE87HgC/ojqwFrhIQ63q267c
Y1GxwN/ZodsstgBcwlKQ96yBSIqf5U22mI2DeQ/R2UBm1la1uVq8Y7bYSG+UXaLH
sbQPCIsWyO1TUGgK5iJpixjb4rRedVGa6LyOVoo+i/Kje3Z1ie7iXzgY8SrclnqZ
w9qlrgoSvkKVHU9SnDtH5Hz1VNEs+X0c1wg/4h83jdPuLbH1UdsmsvnBYa34dD95
MKt5/twtwFvFQEDK0kfGKrnKluxcHtd3d3GTsusXtAbsQ5mEjbFqRiKUZ5Or0VJL
gsbf6tqod7do7TX++UMjYzoFtS+KxFZ9Yn/H1n5EfTJtKX1U2/jDaHuwl/P8/5py
li6/G8rwfJBVi+l1crKX
=sptb
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-26245-1441024171-0001-2--
