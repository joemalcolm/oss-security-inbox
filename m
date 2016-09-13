X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1750" "Tuesday" "13" "September" "2016" "18:55:08" "+0200" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20160913185508.1351b147@hboeck.de>" "50" "Re: [oss-security] Heapoverflow in giflib5.1.4" "^Cc:" nil nil "9" "2016091316:55:08" "[oss-security] Heapoverflow in giflib5.1.4" (number mark "        hanno@hboeck Sep 13   50/1750  " thread-indent "\"Re: [oss-security] Heapoverflow in giflib5.1.4\"\n") "<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>" ("<a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21648 invoked by uid 550); 13 Sep 2016 16:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21625 invoked from network); 13 Sep 2016 16:55:21 -0000
Message-ID: <20160913185508.1351b147@hboeck.de>
In-Reply-To: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
References: <a3d8ebfe-9b67-997e-aaeb-5afe207ac97a@724safe.com>
X-Mailer: Claws Mail 3.14.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-1894-1473785710-0001-2"
Cc: oss-security@lists.openwall.com
Date: Tue, 13 Sep 2016 18:55:08 +0200
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heapoverflow in giflib5.1.4
To: "vul@724safe" <vul@724safe.com>

--=_zucker.schokokeks.org-1894-1473785710-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, 13 Sep 2016 23:20:08 +0800
"vul@724safe" <vul@724safe.com> wrote:

> With Address Sanitizer there is aa heap overflow in giflib 5.1.4
> More details are available at:
> https://sourceforge.net/p/giflib/bugs/102/

Two notes:
* This is a bug *only* in the gif2rgb command line tool, not in giflib
  itself.
* I reported this before. The giflib maintainer claimed multiple times
  that he has fixed it, yet he hasn't. See:
https://sourceforge.net/p/giflib/bugs/79/

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

--=_zucker.schokokeks.org-1894-1473785710-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX2C9sAAoJEKWIAHK7tR5C2DkQAItfyzkDJGcmlYEj20t3+UpP
mXgTKyT05E0hBVcQJGICZkiHYFifOFfQ0Iky1pJJUyD8P6CoBM/Nw0AMiJ9A8DNG
yWD0BWGaX0rcKQ2+wz5MRhKQ66BmTHLxb3uXn9NPQg3KzWqgbqO57QGG3xJb/iiN
KWsUBIUG7jjbFoVuoyfE4tQuuotV3Q9mjkBm/uCHjJlH/IIvBuYZER65MXdvAX/s
LkKtsXHgjzNTR8W7zKAcSN4iW1vkyA4k5v+zz05fwq2YINrujd4QWEt/piGdbOVn
MvWI76DAmu7txrxgMItG5/un534aXPwMmSkNZagnRTnXu/IXR+ArIwiqI5poa5KB
7EwxstHiH/RnUxVC2LLzBsZZkH+2cjP2WciSPVGBwBpXaiV9MzUIb21xyTZTOUrl
ORqD0jPwAEnba/QhKolGeGsz/z/8ebR9dNLIRcgYYL9xA3/QK6+q705mdFmPjN5P
TzYOt50fXahni/NYSOe2elkaaNSLvyjnFCkpTG971jE4Uy9Bl7OJIJlJEUIjhiKK
zLdPVIfciroYkL1BoVpA6dEPYcf5psYHh8HTIdYuu+RZhhZOU//xqdFVyIFBnhCV
SK2L4r35yzPlVEPAv4UBYxC2e0CX9+X+ozNBk5qYlHLsL8FNjk/AL36vYosUhimB
f6o8LIAi30da1lA9Ga2u
=01Qx
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-1894-1473785710-0001-2--
