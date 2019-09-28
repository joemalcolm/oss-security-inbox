X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1515" "Saturday" "28" "September" "2019" "12:32:19" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" nil "44" nil "^Date:" nil nil "9" nil nil (number mark "        hs@schlitter Sep 28   44/1515  " thread-indent "\"Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32677 invoked by uid 550); 28 Sep 2019 11:24:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23994 invoked from network); 28 Sep 2019 10:32:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=LMCzMhyIwd7oMciwQuwHbs510FVPGOmCcAI38pStskk=; b=r0F4VjqnWvE9Lzig+MiIKuklOB
	z3fT4ZXQiQ9NyvySLIdaEUJw2cCGPuwRDSzxtyM/I6NkdfGAlWa1/aSTEoda6AEYjfLuHG6s1UHd7
	N8HbwmxFsNW66aT245CJof6uoaXSD/SglxZk6ZAeEo4CMoPCT4yjF0VCNdDEyUfzRhu4=;
Message-ID: <20190928103219.GJ16334@jumper.schlittermann.de>
References: <20190928003428.GI16334@jumper.schlittermann.de>
 <5C33B233-181D-45E1-8982-7ED07AD858B1@stablepoint.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JVVqWhpkAs5raV7A"
Content-Disposition: inline
In-Reply-To: <5C33B233-181D-45E1-8982-7ED07AD858B1@stablepoint.com>
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Sat, 28 Sep 2019 12:32:19 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer
 overflow
To: oss-security@lists.openwall.com

--JVVqWhpkAs5raV7A
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dominic Taylor <dom@stablepoint.com> (Sa 28 Sep 2019 02:56:11 CEST):
> Hi Heiko,
> Good find, but why no embargo?

The issue was reported publicly via our bugtracker. No point in having
an embargo.

> Presumably because privs are dropped so this is maybe not as bad as previ=
ous?

Yes, the privs are dropped in the reported case, but there may be other way=
s to call the
vulnerable function.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--JVVqWhpkAs5raV7A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl2PNqoACgkQr0zGdqa2
wUJG/QgArT+MDtNtwPGhKR+XpFrDT7PiTUam0PhtGGPbJIFAbn7ZHhmKpIWkYwxD
DzoQ14LUwhS7Srv+OkFdUXWcx9Il+IUZZr0CK3MVazbOP3CkA4lm+b4Zofy0ixXB
2Rdgx/Q89sgCS7IOjfxPTDpRhmmms75zs9KuBfsqCG+b0AKi3OQc8tOmnMXDFS3O
+2xDonO820wxLPIpjOgc70yBU/qa0ZpOLW6ImgoqXZb8HFWb/bXB9VNTPPmogQkN
1GN9Yls2NdO5wYJ6sRBch9FD35p30DaHNpob8TKJwJ6AipCH2MjDgyv1BKrhze+W
9xmM0Y5f7WmUIEwTH1XhUYuPmBFK/w==
=5wIJ
-----END PGP SIGNATURE-----

--JVVqWhpkAs5raV7A--
