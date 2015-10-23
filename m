X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Friday" "23" "October" "2015" "14:24:41" "+0200" "Yves-Alexis Perez" "corsac@debian.org" "<1445603081.14394.5.camel@debian.org>" "40" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102312:24:41" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        corsac@debia Oct 23   40/1390  " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "<13512806.1ZGcyoO27t@sarpedon>" "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28476 invoked by uid 550); 23 Oct 2015 12:24:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28455 invoked from network); 23 Oct 2015 12:24:57 -0000
Message-ID: <1445603081.14394.5.camel@debian.org>
In-Reply-To: <CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
References: <20151021153633.GA2430@boyd>
	 <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
	 <13512806.1ZGcyoO27t@sarpedon>
	 <CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-5AAELrUHIox7NeCY8jUa"
X-Mailer: Evolution 3.18.1-1 
Mime-Version: 1.0
Date: Fri, 23 Oct 2015 14:24:41 +0200
From: Yves-Alexis Perez <corsac@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

--=-5AAELrUHIox7NeCY8jUa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On ven., 2015-10-23 at 03:01 -0400, Robert Watson wrote:
> Remember that tar was created primarily for software distribution

Actually no, it was created to write archives to (magnetic) tapes.

>  and
> compressed tar files are most often used to this day for that purpose.
> Software distribution almost always involves writing files to many
> different directories at all levels of the filesystem. Symlinks between
> them are quite common as well.

Sure, you just don't want them to escape from CWD. There has been example of
this to bypass =E2=80=9Csafe updates=E2=80=9D procedures for example.

Regards,
--=20
Yves-Alexis


--=-5AAELrUHIox7NeCY8jUa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAABCAAGBQJWKicJAAoJEG3bU/KmdcClZ0MH/iEzuYUTBd6jxHhsDfuOxJD8
EToF+QUgjvN6jwABVULvsL4BrAXH7vQbUzvXtdNEswgdoiXazmJoa4i2+ZcimVnv
/mYPbl/fJ4qDCuBTK7A1vVn/1NfngYh1H/GfgP+B2NQLtlmA6Hdy6trqU114m6a7
Ft6/Qc725C1e/fUgJMR/Z/KoeswGE8hVXQRm/m1MB9BGUuifmHZUPpJfCz+2Y659
l0GQrPWrcKl+knbNxUTVraZANVvinEJofien4vPX4qZVUPnmmIgfQVXo7NWJJAEs
m3vr1X1xZ9WKXayMCk5dI6/3hv1bfikhKPtt8GSqEMDCxLFWPaBHzj5szScBamY=
=oM+p
-----END PGP SIGNATURE-----

--=-5AAELrUHIox7NeCY8jUa--
