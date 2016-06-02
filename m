X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2174" "Thursday" "2" "June" "2016" "10:33:28" "+0000" "Holger Levsen" "holger@layer-acht.org" "<20160602103328.GA6618@layer-acht.org>" "57" "[oss-security] CVE request: mat doesn't remove metadata in embedded images in PDFs" nil nil nil "6" "2016060210:33:28" "[oss-security] CVE request: mat doesn't remove metadata in embedded images in PDFs" (number mark "U       holger@layer Jun  2   57/2174  " thread-indent "\"[oss-security] CVE request: mat doesn't remove metadata in embedded images in PDFs\"\n") "<20160602085653.GB19035@layer-acht.org>" ("<20160602085653.GB19035@layer-acht.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27754 invoked by uid 550); 2 Jun 2016 11:30:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25655 invoked from network); 2 Jun 2016 10:33:52 -0000
X-Virus-Scanned: Debian amavisd-new at alpha.holgerlevsen.de
Date: Thu, 2 Jun 2016 10:33:28 +0000
From: Holger Levsen <holger@layer-acht.org>
To: oss-security@lists.openwall.com
Message-ID: <20160602103328.GA6618@layer-acht.org>
References: <20160602085653.GB19035@layer-acht.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
In-Reply-To: <20160602085653.GB19035@layer-acht.org>
Subject: [oss-security] CVE request: mat doesn't remove metadata in embedded images in PDFs

--wac7ysb48OaltWcw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

https://digitalcourage.de/blog/2016/using-tails-be-careful-embedded-metadata
explains how mat fails to do what it's supposed to do, namely removing
embedded meta data. The bug is that it doesnt remove metadata from images
embedded in PDFs (while it does remove metadata from PDFs and from
images=E2=80=A6)

So basically the core feature of mat is partly broken :/ So I think this
warrants a CVE as IMHO this ain't just a missing feature and folks on
the #debian-security IRC channel agreed.

This issue is being tracked by it's developers as
https://labs.riseup.net/code/issues/11067 and in Debian as
https://bugs.debian.org/826101 and affects all versions of mat and is
not fixed anywhere yet.

Could a CVE please be assigned to this issue?
=20
Also I wonder if similar bugs happen with other recursive formats, like an
OpenDocument text embedding an image or embedding a pdf embedding an
image or a zip file containing a zip file containing a .odt file
containing an pdf containing an image=E2=80=A6


--=20
thanks,
	Holger (not subscribed to the list, please cc: me on replies.)

--wac7ysb48OaltWcw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIVAwUBV1ALcwkauFYGmqocAQo22w/+LoV7YDedqQe+AL2cZPaa36rePtMLbkHU
/7OYYQ/M1R0jK8eeXkgEx3OWhCZ6NeNWS9PIR0ttXmgHeDII7d7xHxHsgwr02Uew
SAnR20c6sbaZwIIJY1MBlAogBAGRQ6wLZMIEY1oVa0LjIfNy3EJ2i3fr1ba1he2a
TLmYchXXFnPDv+IaYA3yzd5pG9fOrTJnDiRqbxZHKqaHzgHPfORvIbpDqlAVen4L
uv0CMh8tu+XYAgz1epZdexpyr+/J8pTWbrsYre9HtloC/RTVEAfj3CN4MxQChvdD
ceMwNDoUJIe6sU5uWwpH1ZVVIQmgRKlA0rdinz9hn2vTiZ2ONOJ9E0MSm9/4s4mt
r7x229GDZLzGGK0LJD4w8bSBQIgCIacj3s7LX7QV/piZP2FTzDb/KPknuVKq9XRK
RV/tcIYYm/pp/WrU7uEfkftYN4DS+LpOiwk3C6ernvtHFoJVs/hugiaVYND0hRHB
sS3ue0Csa+/cImERxN7fCrEwpNqAwjyLxJWCJGwroDOta7VvlEM5hRNWd7dgz9dJ
QRrnPXv1+YvTlU70TgBN/spUxFw4nJoMaoPwAwMtCLGMA7FhudCpjXdMKHRMxVlq
wDCQMKoPhK+LPFN7Sl5vAaE9xuGb8kDtvUFIoyjgSSqtk6vNe+qyOLUbdb63kUpU
crlpebv+xsM=
=Xuwa
-----END PGP SIGNATURE-----

--wac7ysb48OaltWcw--
