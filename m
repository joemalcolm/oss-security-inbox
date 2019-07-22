X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1987" "Monday" "22" "July" "2019" "22:33:15" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" "<20190722203315.GO1168@jumper.schlittermann.de>" "54" "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil "7" "2019072220:33:15" "[oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" (number mark "U       hs@schlitter Jul 22   54/1987  " thread-indent "\"Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead\"\n") "<8a0fc7f0-4648-2ed0-0c36-1da42fc1d267@redhat.com>" ("<20190722100013.GJ1168@jumper.schlittermann.de>" "<20190722112146.z4ey7777h5zci2zl@local>" "<8a0fc7f0-4648-2ed0-0c36-1da42fc1d267@redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security release ahead" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 2017 invoked by uid 550); 22 Jul 2019 21:00:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5967 invoked from network); 22 Jul 2019 20:33:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=3+VgNHNuZN0ee9CwCy0khQADzeL0tkROj811PeEbXt0=; b=fT1eLdmn/znuZrV90ycHfBQxiP
	TbOQXexfkGA4yqQOy9g4WXIwx/rlZu4L7Zddt9oyPdrEH4ceYiwMtejLdGdC9iLNcjaHHTZ7JPCk4
	hp48ZNbTcPpWA22nqPbtbglJICpoab6oIqcSumPmmfwzkCZsXg0ZjnSMslMGE4kvloLc=;
Date: Mon, 22 Jul 2019 22:33:15 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20190722203315.GO1168@jumper.schlittermann.de>
References: <20190722100013.GJ1168@jumper.schlittermann.de>
 <20190722112146.z4ey7777h5zci2zl@local>
 <8a0fc7f0-4648-2ed0-0c36-1da42fc1d267@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RNGrj7vazCqBHNw7"
Content-Disposition: inline
In-Reply-To: <8a0fc7f0-4648-2ed0-0c36-1da42fc1d267@redhat.com>
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
Subject: Re: [oss-security] CVE-2019-13917 OVE-20190718-0006: Exim: security
 release ahead

--RNGrj7vazCqBHNw7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Eric,

Eric Blake <eblake@redhat.com> (Mo 22 Jul 2019 15:28:33 CEST):
>
> Perhaps part of the confusion stems from:
>
> >> t0: Thu Jul 18 2019
> >>     - this notice to distros@vs.openwall.org and exim-maintainers@exim=
.org
> >>     - open limited access to our security Git repo. See below.
>
> This statement makes it sound like the fix can be downloaded by anyone
> that knows about the git repo containing the fix...

Yes, blame on me. I missed to redact that part of the message.

> Or even the choice of tense in this paragraph may help: it sounds like
> past tense ("is the officially released version") even though at the
> time of the email it is a future tense ("will become the officially
> released version").

Thank you for your hints. Even I hope, we won't have a "next time", next
time I'll try to improve the wording/grammer of the messages I send.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--RNGrj7vazCqBHNw7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl02HYoACgkQr0zGdqa2
wUJLngf8DJ7bYmvJRLlq8MlltyvUnikdv+2VvPacTi6jSGdMtuOqeo4v/4C1+spG
pohWQW1qMluc1dp7AObNKcQYN6bJ70g7wmGvihs3DrDEcrF3LQ3P+XrIC51od8MP
1g/nVudBqrppgvAKjh3ekwj8ZFHu0N0yPhT638nKgYYNZLTISyWGytQO9i2n8F0/
WxUsg8eS+9seDGBMd14+qxyCnA9Cczu4q80Vz2yacTg1zYodWyvMYCJG9bQteTq8
t9X/sKQc4znsMLOsVtsXIThpOFnEySSBogjl9nE9+ZjDFIsSicXuxHlAWqlqLx7k
RBlW5DR0Y588W/uwr51LxBRcsZXCkA==
=+r8j
-----END PGP SIGNATURE-----

--RNGrj7vazCqBHNw7--
