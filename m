X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2372" "Saturday" "10" "February" "2018" "19:11:21" "+0100" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" "<20180210181121.y757bod5yjdefrj4@jumper.schlittermann.de>" "69" "[oss-security] Exim 4.90.1 released. (Was: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow)" "^Date:" nil nil "2" "2018021018:11:21" "[oss-security] Exim 4.90.1 released. (Was: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow)" (number mark "        hs@nodmarc.s Feb 10   69/2372  " thread-indent "\"[oss-security] Exim 4.90.1 released. (Was: CVE-2018-6789 Exim 4.90 and earlier: buffer overflow)\"\n") "<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>" ("<20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30089 invoked by uid 550); 10 Feb 2018 18:11:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30067 invoked from network); 10 Feb 2018 18:11:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=ojJ5xjunBPY7RvuJPCKbaQdGXiSnO88p6mHEXAm0RdM=; b=fNJ2VPhwydp2eLPYHqfBwSQg/s
	tTU2KjncguZ0/ZP3YSgFWCS817/KyCZ/5FuuMK8BDKF/g4Sk7ek/k2BxCc6lbK6TbDHL5/DCRJHDx
	skL2C/cgfTfkvgMtQ1Wn47ldu/8e4oCMsx117Yxn8eW1hdOMMp9BLiz6uVWPK3xThX5Y=;
Message-ID: <20180210181121.y757bod5yjdefrj4@jumper.schlittermann.de>
References: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gu4yrwca5pzoeeab"
Content-Disposition: inline
In-Reply-To: <20180207103943.wwijjdmnlzpp46lm@jumper.schlittermann.de>
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
Date: Sat, 10 Feb 2018 19:11:21 +0100
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Exim 4.90.1 released. (Was: CVE-2018-6789 Exim 4.90 and earlier:
 buffer overflow)
To: oss-security@lists.openwall.com

--gu4yrwca5pzoeeab
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

We released Exim 4.90.1 just now.
---------------------------------

This is mainly a security release to fix CVE-2018-6789, a buffer
overflow in base64d(). Please update your systems to 4.90.1.  The
reporter of the bug claims to have a working exploit.  See
http://exim.org/static/doc/security/CVE-2018-6789.txt for the timeline.

This release contains some other important bug fixes since 4.90, but no
additional features. Please see the ChangeLog
ftp://ftp.exim.org/pub/exim/exim4/ChangeLog

The Distros should have built packages already.

The sources can be obtained directly from the Git repos

    git://git.exim.org/exim.git     tag: exim-4_90_1
    git://git.exim.org/exim.git     tag: exim-4_90_1

The tag is signed with my GPG key=C2=B9.

Alternativly you may fetch the tarballs from the mirrors listed
on=20
    https://www.exim.org/mirmon/ftp_mirrors.html

or directly from

      ftp://ftp.exim.org/pub/exim/exim4/
    https://ftp.exim.org/pub/exim/exim4/

The tarballs are signed with my GPG key=C2=B9. Next to the tarballs you will
find a sha512sum.txt, in case you are happy with simple integrity check
only.

=C2=B9) If you get a "key expired" message, please refresh my key from
the public keyservers.

Thank you for using Exim.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--gu4yrwca5pzoeeab
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlp/NcgACgkQr0zGdqa2
wUIS0gf9EFoyNNKC4nvsnSDL8ZUxgMCHJTeUnac1pm742IiILi/rdXX1jOMG/HgJ
FpO22nOdaWsFPqBENVx/orgQl/uxv7BuO60YTEZQKPFcuaDhyYUv1sRQ5SC5meY0
o7fKMEWE67hBtNoc5unZUo3EM7D8wV/qIPCmJItVG3EvMCeMK/vR9tSpnkDXo+89
KUTKqz2sOcxloTQY/xSM3UCC4wCeD60uvlTKdALSDlWeQdTvxPq6XrHTI1wp/VOw
DjVM6NWrET8NcWiJcQVdsaUHphGYOcrMAKb4biC3uDKj1TKKV7Joq8l7qynz0C1x
TkzopeB82MVsjCC0bUGAU++WXYiYnw==
=x9gA
-----END PGP SIGNATURE-----

--gu4yrwca5pzoeeab--
