Received: (qmail 28433 invoked by uid 550); 1 Oct 2023 20:14:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28401 invoked from network); 1 Oct 2023 20:14:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=SHrxVH79M+qSJJcLMiw1IEZ7rMSeiwZNHqSelz/LlIM=; b=zF9r6528u6DJuE5hWDQC+iAIvz
	B3v/hN5fKvtggiCDcL61s9fuJ53swiGj7Fi6ab8XXFgA6N7iXD0iScjPD4iekPvUQJ5uGGgNR3kB1
	SRo7xRUKs4epRQmxPIO8JlpPbk3SRl7VmPVz0Bv1Tjl0tRTcnIRb+NaFBc523AyUT73Mx4QwpFYFn
	ovO2lUsGr/uKIt8VcyM2mH+olxJY1qRKuze3tTPucrdXV/MqwjKCsSGKcSjxmitgTOtnY+AmfWU7x
	P6RhK7R0hwUOZGtAT2LUEIsgktYGtv6nq3bxhlKTz7CyGmVJq4RyxFi3KNCEFLYxDgu5XZ5e/qWWx
	Xv0QY+xA==;
Date: Sun, 1 Oct 2023 22:14:46 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZRnTNhtSBmN7GFfL@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+Xv665M9YpU2ZmS4"
Content-Disposition: inline
In-Reply-To: <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Signal: +49.172.7909055
X-Phone: +49.172.7909055
X-SMS: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
Subject: Re: [oss-security] Exim4 MTA CVEs assigned from ZDI

--+Xv665M9YpU2ZmS4
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@nodmarc.schlittermann.de> (So 01 Okt 2023 18:49:06 =
CEST):
> Schedule
> --------
> Currently we're in contact with the major distros and aim to release
> those fixes that are available as soon as possible. (Aiming Monday, Oct
> 2nd.) The below mentioned commits are currently available in a
> protected repo to a restricted set of users only.

We plan=C2=B9 to go public with the available fixes (addressing a subset of
the issues) on Monday, Oct 2nd, 12:00 UTC.

By this time we'll provide access the available fixes (based on the
current master), and to an exim-4.96.1 security release.

=C2=B9) In case none of the major distributions runs asks us for a delay.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--+Xv665M9YpU2ZmS4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUZ0zUACgkQr0zGdqa2
wUIQzgf/dLU0d8UM5JdoiLgI9SQRM8+lA3CrlwWSc8hT7uhm50o6pOjarucOfrnr
0lG6tc7zwU3j6sF8f330JVrx+zfKI/QycjlU8Mm71cCrbmKBMwP/rsPD2KR8Uw/P
x1frg5RLus92407AChGuPI8iFr5I0hn5Y9a/xhyqZxn9a5s3TMkudpx0wAU8iEug
n+UrB6q1kPDfEBuasU+DwAQhg6ERPg3TQw/eO4uJUqDmwasl+qPUtgdpSxIMn+HD
SLBepkyn5Voc9huhLnHj11dCx0RC+s3htfMawcEaj1YM/DFqFgNjMHEkeyGhFZmu
wGXOI+w4cmHjA4gBbLz/pfCTp51EJA==
=3LXm
-----END PGP SIGNATURE-----

--+Xv665M9YpU2ZmS4--
