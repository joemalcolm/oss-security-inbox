X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1529" "Thursday" "22" "December" "2016" "12:28:45" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161222112845.GF5082@jumper.schlittermann.de>" "40" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122211:28:45" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 22   40/1529  " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>" "<20161221232409.GN19629@jumper.schlittermann.de>" "<20161222005733.GB81339@wopr>" "<20161222104035.GE5082@jumper.schlittermann.de>" "<CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23684 invoked by uid 550); 22 Dec 2016 11:29:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17731 invoked from network); 22 Dec 2016 11:28:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=9+LzWVfdurHDAS298nY2jaJaK6osFvW6KpSiRMwwJ5c=; b=BzkKVbbw8+2m1fiaktC+T0hQIp
	2Ah1w1vJqYQX8Qv9zgIbdZxeAyuasvQdlc6qq3cSErTcXrpXxEb+o3eWFq94USx3v7GQQ/e1kAlS3
	X6nFB+x7AAe90FM+UKPQ0vBUNLA3ONoHJK6TL0zuM7G7dYIaOixpXVoA6BhUgWGbcB/A=;
Date: Thu, 22 Dec 2016 12:28:45 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161222112845.GF5082@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
 <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de>
 <20161221205952.GA81339@wopr>
 <20161221232409.GN19629@jumper.schlittermann.de>
 <20161222005733.GB81339@wopr>
 <20161222104035.GE5082@jumper.schlittermann.de>
 <CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TeJTyD9hb8KJN2Jy"
Content-Disposition: inline
In-Reply-To: <CAH8yC8ne0XPZ5x_Nuazcpjcyc4xKg_fwDydBmMXYDjeADsPYvA@mail.gmail.com>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

--TeJTyD9hb8KJN2Jy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Jeffrey Walton <noloader@gmail.com> (Do 22 Dez 2016 12:06:41 CET):
=E2=80=A6
> The bad guys already knew about the problem, or the motivated ones
> found it after the partial disclosure.

Partial disclousure? I think, there was no disclosure at all, beside
requesting a CVE and talking about a possible leak of private
information. Is this enough to call it "partial disclousure"?

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--TeJTyD9hb8KJN2Jy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYW7jtAAoJEGoXY4qgRQz102UIAJLzq5E+M05OGGDIkyLQKa97
VMBGjD1QqFJyKyEJNM1yZSh8rb03eC55j0GgFR5cT5A+w90HcaMTyqQt48O8KspE
vkKWx5UuAVWbdSkWd4dlV1CxRn9xZFjFvsLWiQyVmPN3l4DG/uHjjUYI0MG2LKuY
PbLwKrP4gBhxB1CPbv2+FJGjN5ld5ofZueQKKXOdLDwRrD/QXtzVzNeXd+3wbBTX
yprkZ8iDvXz1/TDq59Kw31XjNkNb093/jsN7pGs36zx7Qlzv5gikqtn1iGb4iPmw
A937iLzFR/l0lWLTPygCoQMhEoRl5fOHxYCqRWPeXr9DORJVK3gjsuBrmf8Gw3Y=
=tY/X
-----END PGP SIGNATURE-----

--TeJTyD9hb8KJN2Jy--
