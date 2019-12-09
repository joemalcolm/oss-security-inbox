X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1770" "Monday" "9" "December" "2019" "15:58:02" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" nil "49" nil "^Date:" nil nil "12" nil nil (number mark "        hs@schlitter Dec  9   49/1770  " thread-indent "\"Re: [oss-security] Shell wildcards considered dangerous?\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Shell wildcards considered dangerous?" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26307 invoked by uid 550); 9 Dec 2019 15:14:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11360 invoked from network); 9 Dec 2019 14:58:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=trdNcaSyH8kBtT7sMbEdfEkswDot4pyhn3blz8B/IBs=; b=nMapfOoRfAJUD2CWeo9JEqtutQ
	uBL9h0j1Af6ynr62tc1/C7SWAw/Pwqb/CKdawbmL8YoaNtb7DFd3DO1eEklZOIDAq7+RhJlDojh2R
	FKtOjvzrT5vpQ2jCJf3h/gAjnjvl4J6gLpf3V3UkdemDecMjCWUMVSAfJps/azyIn5ZA=;
Message-ID: <20191209145802.GI2151@jumper.schlittermann.de>
References: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BOmey7/79ja+7F5w"
Content-Disposition: inline
In-Reply-To: <CAGUWgD-yn2kf3T69ri7ahcCfKm=kiMBnxeb84mnH-qqYWQNUdg@mail.gmail.com>
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
Date: Mon, 9 Dec 2019 15:58:02 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Shell wildcards considered dangerous?
To: oss-security@lists.openwall.com

--BOmey7/79ja+7F5w
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Georgi Guninski <gguninski@gmail.com> (Mo 09 Dez 2019 14:23:16 CET):
> =3D=3D=3D=3D
> $rm -rf /tmp/1 ;mkdir /tmp/1 ; cd /tmp/1 ; tar cf a.tar /etc/issue
> $ : >  --to-command=3D"yes .tar"
>
> #end creating, starts PoC
> tar xf *.tar

That's not a technical fault. It's a fault on the human side.

If you call the above command in a typical Bourne shell, you should be
prepared to handle the trouble. Smart admins don't do that.

If an application calls the above command via system(), you should
file a bug against that application. Smart programmers know how to
avoid the shell for such invocations (or avoid such invocations in the
first place.)


    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--BOmey7/79ja+7F5w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl3uYPkACgkQr0zGdqa2
wUIgLwf/Z5Jaby/w4jtaEWm9SVaH1/RR2sRHRhupgWgo6GmqSYWQLkD4DZMcWvLi
/xsfQS5N6kvVqFv+JIUY6uvl3o50aqMy3LoQGP7uyw1sH5MltejIRXkB+t2gAccl
S1HylFHSFd2CYdJXoOuL89H1XOencUvyx/3zpK5la7V8LL73zeSxlV6vyQrqIYhd
gMHPWLU2sVqotWB3w/OJSrV07Jxrkvm57ZE31rkP2h6x7HUeF6uRguwTfZuiGY40
ROYnWQMM4494o2cdB4GJfLWiSa5Npx6BgzGId+sGNFOCdI4DslxY7Y9WaVGbAcTs
hfIbn7SJwmwrVOiF4H/uybbw0B18yg==
=qwMi
-----END PGP SIGNATURE-----

--BOmey7/79ja+7F5w--
