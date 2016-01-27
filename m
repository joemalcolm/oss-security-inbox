X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2030" "Wednesday" "27" "January" "2016" "22:03:26" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160127220326.5a8828a2@pc1>" "57" "[oss-security] Heap buffer overflow in fgetwln function of libbsd" "^Date:" nil nil "1" "2016012721:03:26" "[oss-security] Heap buffer overflow in fgetwln function of libbsd" (number mark "        hanno@hboeck Jan 27   57/2030  " thread-indent "\"[oss-security] Heap buffer overflow in fgetwln function of libbsd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13753 invoked by uid 550); 27 Jan 2016 21:02:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13735 invoked from network); 27 Jan 2016 21:02:56 -0000
Message-ID: <20160127220326.5a8828a2@pc1>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.29; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-32357-1453928564-0001-2"
Date: Wed, 27 Jan 2016 22:03:26 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Heap buffer overflow in fgetwln function of libbsd
To: oss-security@lists.openwall.com, cve-assign@mitre.org

--=_zucker.schokokeks.org-32357-1453928564-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

https://blog.fuzzing-project.org/36-Heap-buffer-overflow-in-fgetwln-functio=
n-of-libbsd.html

libbsd is a library to provide common functions from BSD systems on
Linux.

libbsd 0.8.1 and earlier contains a buffer overflow in the function
fgetwln(). An if checks if it is necessary to reallocate memory in the
target buffer. However this check is off by one, therefore an out of
bounds write happens.

Upstream has released version 0.8.2 to fix this.

I have checked where this function gets used. I didn't find any code
using it, so I assume the impact is limited.

This bug was found with the help of Address Sanitizer.

https://bugs.freedesktop.org/show_bug.cgi?id=3D93881
http://cgit.freedesktop.org/libbsd/commit/?id=3Dc8f0723d2b4520bdd6b9eb7c3e7=
976de726d7ff7

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-32357-1453928564-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWqTCeAAoJEKWIAHK7tR5CGO0P/3v2Kzwvil2HDgL8c5HD1zGP
EAF5KjatxFkVUBWwwn2gH0msg8SVruBtwDiv+lph9cccW9d4AiDisXQFcVjCbbrP
Y4Xqx/BLcZHLuirHlTWgTd42v59YCBhR3lKeMHbeL/9bNugT2KOjWY31owDZeD0q
+RfBWIOQ8zALYQAbk5Ett+zJAnoz1ewcwfE3vVR56ZaNzyDjrSBjLR7R9MJmXpit
SulHr04YqRU6ZSfZZ+7cAtIol3phLoRyYnB5LuLFLEnpH6GwmSUkPMTNQNNhWHpr
FrzuzFN7t0YTkbyx91ZUldk9euZmJLQm9rbdNnCEGnby1IFDEvOgtS0iXVca90Wv
Pt0/PLJtQ3Lrnew/R45lZaWsaI0KjeZgUnPxtQNRXUJOdT8I6UONq9+ovP1D5z4n
CxUyJaEaVqBWhXBU5I98bkGUDQTEeEiFOe5sJq7+ih8tlWF9pNIM2H+df1lyXk4i
D9KSzb06Z4drajyCl7iIT7Y22qiK2TbsQEv71vpWfHbxPSzmZLveqGFE1OyUFR9P
5eckRqhWBX/snDvEmNmjlY+zdqqlVQaqydP4PNFwBQ8U7Ae3Ss+O9Y/eCmvqXLfi
yJujIlIFiRJgGcaCItolRUzWS3NgT4rEQfyR3Noksx0ZOC70rbixDPjGj2Vsz9R+
397Tsd2WnQ3oEODRGl+F
=l7o1
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-32357-1453928564-0001-2--
