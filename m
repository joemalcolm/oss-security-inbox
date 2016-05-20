X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3498" "Friday" "20" "May" "2016" "14:54:45" "+0200" "Sven Kieske" "s.kieske@mittwald.de" "<573F0915.2060200@mittwald.de>" "107" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016052012:54:45" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        s.kieske@mit May 20  107/3498  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13858 invoked by uid 550); 20 May 2016 12:55:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13840 invoked from network); 20 May 2016 12:55:00 -0000
X-Virus-Scanned: Debian amavisd-new at ac01.mittwald.de
X-Authenticated-mymxserver.com: Yes
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
Message-ID: <573F0915.2060200@mittwald.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="nvpJjhNg1bRnHjSejAKl0l2L2mnVnWiSS"
X-Originating-IP: [192.168.8.112]
X-KSE-AntiSpam-Interceptor-Info: white sender email list
X-KSE-Antivirus-Interceptor-Info: scan successful
X-KSE-Antivirus-Info: Clean
Date: Fri, 20 May 2016 14:54:45 +0200
From: Sven Kieske <s.kieske@mittwald.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: <oss-security@lists.openwall.com>

--nvpJjhNg1bRnHjSejAKl0l2L2mnVnWiSS
Content-Type: multipart/mixed; boundary="oOoE8fxlT5WEMIBd0q7DIAulsFLMmIBI4"
From: Sven Kieske <s.kieske@mittwald.de>
To: oss-security@lists.openwall.com
Message-ID: <573F0915.2060200@mittwald.de>
X-Authenticated-mymxserver.com: Yes
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>
 <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com>
 <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>
In-Reply-To: <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>

--oOoE8fxlT5WEMIBd0q7DIAulsFLMmIBI4
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 19/05/16 19:07, Bob Friesenhahn wrote:
>=20
> As an example Ubuntu 14.04.4 LTS (which is supposed to be getting
> security updates) has not provided ImageMagick or GraphicsMagick
> package updates in 3 years.

Hi,

as you can see here:

http://packages.ubuntu.com/trusty/graphicsmagick

GM in Ubuntu resides in the "universe" repository

When you read up about "universe" here:

https://help.ubuntu.com/community/Repositories/Ubuntu

you will see that:

"Universe - Community maintained software, i.e. not officially supported
software."

which means all software from universe is _not_ officially supported
by canonical and thus receives only timely updates, if a community
member picks up the necessary work.

Too also quote from https://wiki.ubuntu.com/LTS

"The LTS designation applies only to specific subsets of the Ubuntu
archive."

See also this (german) article about packages which do not
get security updates in Ubuntu "LTS" releases, because they are
only community maintained:

http://www.heise.de/ct/artikel/Ubuntu-LTS-Langzeitpflege-gibt-es-nur-fuer-d=
as-Wichtigste-3179960.html

There is also a command line tool to find out about unsupported
packages:

ubuntu-support-status --show-unsupported


HTH

--=20
Mit freundlichen Gr=FC=DFen / Regards

Sven Kieske

Systemadministrator
Mittwald CM Service GmbH & Co. KG
K=F6nigsberger Stra=DFe 6
32339 Espelkamp
T: +495772 293100
F: +495772 293333
https://www.mittwald.de
Gesch=E4ftsf=FChrer: Robert Meyer
St.Nr.: 331/5721/1033, USt-IdNr.: DE814773217, HRA 6640, AG Bad Oeynhausen
Komplement=E4rin: Robert Meyer Verwaltungs GmbH, HRB 13260, AG Bad Oeynhaus=
en


--oOoE8fxlT5WEMIBd0q7DIAulsFLMmIBI4--

--nvpJjhNg1bRnHjSejAKl0l2L2mnVnWiSS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJXPwkWAAoJEMby9TMDAbQRgDAP/2DG6FFu5v58uKOKPkNAz0CM
rlunSU5/G04SPhVYTzFrfSL8H6dYB9RskQYlY1OnXfqgB3OCHGcP+SFr3zM7gya+
KUdFAPODwx6AtU2V75SbuHxI4SI0cN9jjhk4a2d+i13j7uoJVDmzma4aTbIjkvpg
QZXOpXFaapoLWdW+xq+pDs71sMmKgNOmuMMz4Ur+/wD5fBmdQ21LHl27KUgqXnbf
/us3ZGU7TfMx7EJe9rTwcdtUNMpkudQUYwUDxzI6gl4URrFCnxKnn8qtJLx+40Wy
3gvG8tO8LSVkSTFZW8lkCvQ89TU6O/uEQtywiFUrmYndUAJOlcoeRNw4iYkOEyoS
uG0T6Fkg3GmfX0xhCffcjVLJTlGA//ogPr+jGWtbb2Tr8jWPqTr9AE/lZkb6LIFl
lYvu3PvK6BmWQn6jnnt1fY3Qy40XeylTkh2AW3KMI2I/aCq690q92KHQ3VtvURj4
FN74pw6gTJYYW7MRBjf5/J/CxgYvMpFEPiSL4EuKq5/jg0wbeFK46yAdlfbRNJE/
PnLFlTmLPxvXPOA+USMnpvSC9oG++r0cfoeXe9OAfjwftdl9bh/2TAS2Z6VdJGca
ozEp1kogRCpcyseYVKj6hlbf5KTUYJ3zU6jGTq2e0RI+pJHQaKSIUx4npsASrMLv
Ctum63PaHGKWIrJVMJSv
=8E5A
-----END PGP SIGNATURE-----

--nvpJjhNg1bRnHjSejAKl0l2L2mnVnWiSS--
