X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1681" "Wednesday" "27" "September" "2017" "13:20:15" "+0300" "Efraim Flashner" "efraim@flashner.co.il" "<20170927102015.GH26375@macbook42.flashner.co.il>" "44" "Re: [oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)" nil nil nil "9" "2017092710:20:15" "[oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)" (number mark "U       efraim@flash Sep 27   44/1681  " thread-indent "\"Re: [oss-security] binutils: heap-based buffer overflow in _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)\"\n") "<146142.067478166-sendEmail@localhost>" ("<146142.067478166-sendEmail@localhost>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3101 invoked by uid 550); 27 Sep 2017 10:23:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32744 invoked from network); 27 Sep 2017 10:20:30 -0000
Date: Wed, 27 Sep 2017 13:20:15 +0300
From: Efraim Flashner <efraim@flashner.co.il>
To: oss-security@lists.openwall.com
Message-ID: <20170927102015.GH26375@macbook42.flashner.co.il>
References: <146142.067478166-sendEmail@localhost>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dwWFXG4JqVa0wfCP"
Content-Disposition: inline
In-Reply-To: <146142.067478166-sendEmail@localhost>
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: Re: [oss-security] binutils: heap-based buffer overflow in
 _bfd_x86_elf_get_synthetic_symtab (elfxx-x86.c)

--dwWFXG4JqVa0wfCP
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 26, 2017 at 07:03:41AM +0000, Agostino Sarubbo wrote:
>=20
> Affected version:
> 2.29.51.20170921 and maybe past releases
>=20

As best as I can see, it looks like the bug was introduced after the
2.28 series was frozen/split-off, and there is no part of the patch that
applies to the 2.28.1 release.

I have not, however, tried the reproducer.

--=20
Efraim Flashner   <efraim@flashner.co.il>   =D7=90=D7=A4=D7=A8=D7=99=D7=9D =
=D7=A4=D7=9C=D7=A9=D7=A0=D7=A8
GPG key =3D A28B F40C 3E55 1372 662D  14F7 41AA E7DC CA3D 8351
Confidentiality cannot be guaranteed on emails sent or received unencrypted

--dwWFXG4JqVa0wfCP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEoov0DD5VE3JmLRT3Qarn3Mo9g1EFAlnLe1MACgkQQarn3Mo9
g1HGyg//bKY8XPUkuhSF64WrMnLrZqLxlCz+ry7BGF1hLW1VFNTymrOChfIwBtj2
ZlZiR+9JhZJlVTBfWVo4MZrKvEcvE9CQrE4/aOU66fHgv5pGb8Tl1N15tp2VeGPD
QyJYTWSKw17hByeKlC92XCoz7Ywc0Jt9NgAY9T18VWUTVq6nnhSSldY/rl/4kDMa
9eRyeXcjWg9HTa35aLrfHmbj4/GSqx2zT0GxlFUV3ynFWbvAciVinxwVAODokgLQ
uKzc0qhLfFYcD9xbc2TMqMxEzPqoBiFfwccR6FYJ2qJFYVdmjjdrQ3G3B3jmyEpL
/YxbS1QqGYDTSzvymp667+7/2lEgB1KNwLojXtG8LouVNjMsI3EWvNekUXHc+lKE
RYRHwFrOvAL5Lo/iV30Gk2269rNz491YSuYMqxL75/UCUZxnl8BvXJrXv2Id4BMd
cd/cJ8Wa6D73ZxT5tkLpvwiPEmy1tMqfHrfIvxBbsvhFJZ0OJARxhXLb4eiZy+S3
l2ZbQHBeWOZeFmG5rs1Fs8PSvjU1sL+P+eicE2w5uVB1fhyqEUEGFwnJiz3KqAJK
J9v7U244JYsz7mDZ/F254DGlt+49HRZeNIZUkwcFNNiZnkkG4nsGfeowacXhpkl4
fe5Z1Tiq4SWotyDtC3By1oZfWv8AmQwWKjMc91iEyGEKns0yPnk=
=OnJj
-----END PGP SIGNATURE-----

--dwWFXG4JqVa0wfCP--
