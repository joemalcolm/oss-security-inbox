Received: (qmail 24334 invoked by uid 550); 5 Oct 2023 08:17:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24313 invoked from network); 5 Oct 2023 08:17:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=4I5fpC5joVkWCJRMBt28Ub57/gWo5hpx+7a4NrH/6uY=; b=LwzHlIkHkJwcG7XxY241bCL1fv
	tAfJJG0SQuEO5AU9Ns9rrKqUdyjTnd2NBL67TL6QgFQBT2sIkKKEU6v5vijOy0E7V0nOkMhVJAJRr
	AXDWDcOK+/RJNogBhzSLtoqbR00M8VkF6Pn+k2pPrviWiqs9BzjLVNtJTH9suBgNIRsBHtl+1EP5f
	bgoiXiYYMytxYYSdTo3El1puZ8XGqJwG50spADon2BWrVc6KbqkQG7IcAGw0QJM7wC+0jWW1mQrXV
	2Xp+JDVL3XPdzqC7a7TupnVEp8hrU+r9mlO1qgPDw8X8VId5yt9W1cPddQLvmPutaGyNvCVdekW4b
	mJ2u8aag==;
Date: Thu, 5 Oct 2023 10:17:41 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZR5xJZc32fhGOE+/@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <20230929165914.GA31245@openwall.com>
 <SJ0PR01MB7413CB07EDE457153C8C5C3CD1C0A@SJ0PR01MB7413.prod.exchangelabs.com>
 <ZR27jCirFcyI7smg@eldamar.lan>
 <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Fg3v0fsm7ThrgSUp"
Content-Disposition: inline
In-Reply-To: <SJ0PR01MB74130DAEAADAB8F76876E418D1CBA@SJ0PR01MB7413.prod.exchangelabs.com>
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

--Fg3v0fsm7ThrgSUp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi ZDI,

zdi@trendmicro.com <zdi@trendmicro.com> (Mi 04 Okt 2023 23:01:37 CEST):
> We have received a notification from the developers that these issues hav=
e been patched. We will be happy to update our advisories once they do so.

https://exim.org/static/doc/security/CVE-2023-zdi.txt

As publicly advertised, we patched only *a subset* of the issues.  And
those patches are available to the public.  Unfortunately there is no
confirmation from your side, whether those fixes really fix the issues.

One of the open issues is related to libspf2, which is Exim a user of,
but not responsible for.

 ZDI-23-1472 | ZDI-CAN-17578 | CVE-2023-42118 | Exim Bug 3032

And about exactly *this libspf2* issue Salvatore asked you for information.

(As I did on Oct 1st already, along with the request for additional informa=
tion on one of
the other unfixed issues (DNSDB)). I didn't receive any response yet.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--Fg3v0fsm7ThrgSUp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUecSUACgkQr0zGdqa2
wUKVcggA2HlStICK/4BG5u2EPdwRy+7uZecohpZ6Tiw5yFn8lwFZN5/8On04rsmO
PhDApwEs4+tl10pflp3BYTWvMUj7s4hhuuctoVZ6nujym1CUulG8Eup00JVQrpvF
xMIsDwPW1BjcOkXWZgELKMlAJUMVJH7a30YWI4GzmHTbQB7DbXXepVb2Pst/JAGg
7vt73JbkO/MCuAyccdIGFao0N37WVw7aOoWG4a6yeoBYERCmVbpDtk8T+eOW4AvU
mVbfHiwr7cSUFR6DYbYiXF35Ty2+TeYTBpc3jjokJSoxvWNPMaWN5mSmoxKdVnxj
Pm/SDoyWzGlwJ5dsFewxylWN7aimZA==
=IVKa
-----END PGP SIGNATURE-----

--Fg3v0fsm7ThrgSUp--
