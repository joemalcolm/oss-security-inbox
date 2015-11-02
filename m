X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2033" "Monday" "2" "November" "2015" "15:54:09" "+0100" "Hubert Kario" "hkario@redhat.com" "<1716167.7GDBmiimEq@pintsize.usersys.redhat.com>" "54" "[oss-security] tlsfuzzer - new tool" nil nil nil "11" "2015110214:54:09" "[oss-security] tlsfuzzer - new tool" (number mark "U       hkario@redha Nov  2   54/2033  " thread-indent "\"[oss-security] tlsfuzzer - new tool\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31859 invoked by uid 550); 2 Nov 2015 14:54:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31765 invoked from network); 2 Nov 2015 14:54:28 -0000
Message-ID: <1716167.7GDBmiimEq@pintsize.usersys.redhat.com>
User-Agent: KMail/4.14.9 (Linux/4.2.3-200.fc22.x86_64; KDE/4.14.11; x86_64; ; )
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart1833029.Kt8c2uOZVa"; micalg="pgp-sha512"; protocol="application/pgp-signature"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Mon, 02 Nov 2015 15:54:09 +0100
From: Hubert Kario <hkario@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] tlsfuzzer - new tool
To: oss-security@lists.openwall.com

--nextPart1833029.Kt8c2uOZVa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

I've been working on a tool aimed at reproducing, testing and (in the=20
future) automatically finding issues in TLS implementations.

The tool is fully open source (GPLv2), and I'm using it for testing=20
OpenSSL, NSS and GnuTLS. It has minimal requirements (just Python 2.6 or=20
3.2 or later).

You can find slides from my latest presentation at Ruxcon 11, showing=20
some reasons for creating this tool as well as showing some of the=20
features it has here:
https://github.com/tomato42/tlsfuzzer/blob/master/docs/ruxcon2015-kario-sli=
des.pdf

You can find the project itself here:
https://github.com/tomato42/tlsfuzzer

Please direct responses at my email address as I'm not subscribed to=20
list.
--=20
Regards,
Hubert Kario
Senior Quality Engineer, QE BaseOS Security team
Web: www.cz.redhat.com
Red Hat Czech s.r.o., Purky=C5=88ova 99/71, 612 45, Brno, Czech Republic=

--nextPart1833029.Kt8c2uOZVa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJWN3kRAAoJEJKo0bgB0vX1REYQAJSQxJ34Rg+aLGZq896eEu2J
cgNgrVBDjRtRl8SlyMF6fjYriW9CQs7SDIMUWR7gtGqnpaAUJf34QPw3k8y6Tlbe
6ggqGoWV1JTq8F8xYgFLV0yEYblmWVzzmVsEDj02nWYONBGVdqhJXaFgM9L8dGHz
CvFlKzZpz17bFkAfyY1fCMQL7RLU558LL5D9aCLDS/uUhfY9SAO61UHgNynAxDfl
JVxFYYP/rOoktb3RcPnjpSmnm4i+eKMWH3v9cYIGw2A0p7MP88aG8VB/BEdkwNdp
m14fJRAWyv9wjP06ZT/nRtm2A4X9qDyCZlU+xaceNV2KOF2TOOIUSrpjwz7wPgEE
qWOFl8hM/7SHu2RYYHiCfR+rhcvBrYUBkoBVclGagThxwLajtq2OzNI8INlhzjZx
1hhON73e+Ob5BhWYycRdOCUIikFtmI6TyATnFGN6rMXqZBPMBf9cztzjsNnoqmXV
QXNt2YuyjPsBtAEx7p8PITQCiSPLxiP2omL7RzLQ/Ggn5WU27sRjlp6cznWda+1x
T4BhwmZO+3hAuclW+kNNPaj+0QmOZCz2cSUyGUQefCRcBQg8/k7qLvwFwPAYrBFw
0gcZVoHU+psqpcBlsDnCrtgv8Co4sGmAzRPlIvSFNQG6Vc/iH9x89eYlgmvi+bLo
FprlihS4muXzcegq/EpT
=Ucsn
-----END PGP SIGNATURE-----

--nextPart1833029.Kt8c2uOZVa--

