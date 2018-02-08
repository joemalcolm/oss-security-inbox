X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1600" "Thursday" "8" "February" "2018" "18:02:22" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20180208170222.bq63nttdhpj72zxi@jumper.schlittermann.de>" "44" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" "^Date:" nil nil "2" "2018020817:02:22" "[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow" (number mark "        hs@schlitter Feb  8   44/1600  " thread-indent "\"[oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow\"\n") "<20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>" ("<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>" "<20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21948 invoked by uid 550); 8 Feb 2018 17:03:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20275 invoked from network); 8 Feb 2018 17:02:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=Jttay8bG+XlJbB9ABOIhXH/EZSvJ6NsACRdQ6r0Al9k=; b=AqJpYYcvUOZAOxORASGHkaVJSV
	CYiOTIWZZpb3OUKE8GpPQ/r9y0VTxc8S69cZtDNd6U91qYYc+0IijXluB5NxC1e3v1rJv18EE57pL
	4oMJbJzD3W+XSSzQUAvaaX/6hap6zIuqcUg1oVwwMJeCHHWdnFzHRUJJElpgR8MM452k=;
Message-ID: <20180208170222.bq63nttdhpj72zxi@jumper.schlittermann.de>
References: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
 <20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdglfohrdxo3bzjf"
Content-Disposition: inline
In-Reply-To: <20180208165700.i7j2n7avv6bebqo2@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: NeoMutt/20170113 (1.7.2)
Date: Thu, 8 Feb 2018 18:02:22 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow
To: oss-security@lists.openwall.com

--xdglfohrdxo3bzjf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@schlittermann.de> (Do 08 Feb 2018 17:57:00 CET):
=E2=80=A6
> > * t0:     Distros will get access to our "security" non-public git repo
> >           (based on the SSH keys known to us)
> > * t0 +7d: Patch will be published on the official public git repo
> >=20
> > t0 will be around 2018-02-08.
>=20
> t0 is now. Distro maintainers please use the following repo URLs:

We'll push the patch to our public Git repo on

    Thu 15. Feb 16:59:37 UTC 2018

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--xdglfohrdxo3bzjf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlp8gp0ACgkQr0zGdqa2
wUKk+ggAmMCD7Qth2bo/Bx64IIwK/CY/tZma1Sd7SNSo6K+RhJPswEkNI67pqNL3
RUttXrPtnLzLBdtZ0R+1QMI5vWvICDr+pIW/TlNz0jDBakwlZuiqh9/dJ+/2QQfl
ZOJSqKSEI7ezCU8B+TNw089cqgJGIbmpm0jPPlr31WcOla/m/mC+OXvUk8+nJMWL
Ibg2FBk/1TI5Nmj2/OyPOReyOQ3HvANLVbi67AhQRNF53SawWX1dQ9neLkIQGL2U
94cCLTKXSr4/1zwnRAIFxjpxDey2n03PBsH7Qs7J6/iuEmLkKCrh4o4MPrS3xtHx
qCPcnHhjGShbqU1ZZIfYMKPSTx4NzQ==
=iruJ
-----END PGP SIGNATURE-----

--xdglfohrdxo3bzjf--
