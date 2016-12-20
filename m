X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1543" "Tuesday" "20" "December" "2016" "23:59:35" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161220225935.GH19629@jumper.schlittermann.de>" "42" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122022:59:35" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 20   42/1543  " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161218175925.GE31981@jumper.schlittermann.de>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15869 invoked by uid 550); 21 Dec 2016 06:17:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1533 invoked from network); 20 Dec 2016 22:59:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=MO/2mEK7Dtz6YXriYYHwjPCooSCgXwj7tQgyTqGJhS8=; b=eB0r/xC8ikB0vCcYnUnndJC0zn
	iqRuEiO7YAoKcQ8lRxPPC0noWs1clkOXjG0q6NAba3QGTAqXDynnf8k+pfSOXIXpwR5vvHU2bVglh
	Sc8elP+OQ8VyXeSlOnOq4pZHueylNjgF+ViL1gni/EJZjYCm8R8fQMtdM0PoE5ZhucAk=;
Date: Tue, 20 Dec 2016 23:59:35 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161220225935.GH19629@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
 <20161218175925.GE31981@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ChQOR20MqfxkMJg9"
Content-Disposition: inline
In-Reply-To: <20161218175925.GE31981@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

--ChQOR20MqfxkMJg9
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@schlittermann.de> (So 18 Dez 2016 18:59:25 CET):
=E2=80=A6
> On Dec, 25th we will make the details and the above mentioned releases
> available to the public.

To be more precise: On Dec, 25th, at 10.00 UTC we'll push the changes to th=
e public
Git repository git://git.exim.org/exim.git and upload the tar balls into th=
e=20
FTP area ftp://ftp.exim.org/pub/exim/exim4

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--ChQOR20MqfxkMJg9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBCgAGBQJYWbfXAAoJEGoXY4qgRQz1YOsH/3SRP1Af49Aiuj+Y4exuqtEm
bLn7G3abxZs/6BaExl9eG6724Szag77YdUkLKdnrufRWSXUNiQ3BAQ6HvB2x4nC0
P2qo3EKEWh2wBHYWKqzUGsdthq5Y2Zia0eQRYRQYboki72Ur4Cmq2Oo52UTrjoL2
rT2t2T38MBQrGziRXOj5nBrKpZh1LoYnVrPzPLxnXyuTEVem1VmtdIX8ugGPBiyj
B1mLI7B7V++3XlFBoVnvVuRpZAxGPsXt4+P2nB6bcXtqcqL1oJXTrPNh4T1Qod9F
MEdSmZiRffe3as8NjJE0ZniyT7oOo+ymzQNd6KFiAN8MDyA1Bh7vf+EvgZz61hw=
=zlhi
-----END PGP SIGNATURE-----

--ChQOR20MqfxkMJg9--
