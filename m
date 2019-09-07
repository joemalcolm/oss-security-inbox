X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1699" "Saturday" "7" "September" "2019" "08:23:33" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "51" nil "^Cc:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep  7   51/1699  " thread-indent "\"Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29763 invoked by uid 550); 7 Sep 2019 06:23:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29740 invoked from network); 7 Sep 2019 06:23:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=RIFXBkl9EnnszzSnIFwrAyRqzkBAaBs1mzFr/LCFZ7Y=; b=AnILsimJNVJ+6/kO0BBgYPSYIl
	CIC9RAeBA0uDZWeBzyVRRHYghSpPOhAdzJGl36XwJhulNCWZur/HQDBfZjasgDApkIvbbXPhLqguo
	vq/m27gBUsv2QHmNe1X/uUCp/PAAJJle4msPMLsTedMG3zB6c6z1TrDnCMBPUVwY2Xm8=;
Message-ID: <20190907062333.GY25997@jumper.schlittermann.de>
Mail-Followup-To: exim-users@exim.org, oss-security@lists.openwall.com
References: <20190904092248.GQ3837@jumper.schlittermann.de>
 <20190906102039.GZ3837@jumper.schlittermann.de>
 <20190906104430.GA3837@jumper.schlittermann.de>
 <20190906111406.GB3837@jumper.schlittermann.de>
 <005d01d564e3$cbf48090$63dd81b0$@sebbe.eu>
 <20190907005255.GA22947@spodhuis.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+1tcKVLXPU0QafK6"
Content-Disposition: inline
In-Reply-To: <20190907005255.GA22947@spodhuis.org>
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
Cc: oss-security@lists.openwall.com
Date: Sat, 7 Sep 2019 08:23:33 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Sv: [exim] CVE-2019-15846: Exim - local or remote
 attacker can execute programs with root privileges
To: exim-users@exim.org

--+1tcKVLXPU0QafK6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Phil Pennock <pdp@exim.org> (Sa 07 Sep 2019 02:52:56 CEST):
> The connect ACL won't protect you against STARTTLS usage, which is far
> more common for email than TLS-on-connect.
>
> I myself use the HELO ACL.

This doesn't seem to be sufficient, you can start "submitting" a message to
a remote Exim with the following sequence

    connect
        <-- 250
    EHLO =E2=80=A6
        <-- 250
    STARTTLS
        <-- 220
    MAIL
        <-- 250

The client is free to skip the 2nd EHLO/HELO. Tested with OpenSSL
s_client -servername 'foobar\' -starttls smtp -connect =E2=80=A6

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--+1tcKVLXPU0QafK6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1zTOQACgkQr0zGdqa2
wUIHxQf+Jdk8JsfQZp4RPoT73+Q6iHafZb7YweSXKkowbS2YKL8tJ2bF7USjh2E1
eEm8sqktDS3wnEDwgPEe0aIQS/+Bb74EZNiNkTMgoczR+xe/9NHl5g1c4vMAsSgQ
C0M44gi2azDgMTVpORiiVpv7Ik6uaFKxWingxXhm0PyCFB1qlvfzHpKGJ3O1a2OY
+/E0tz28zHPxDuE4svqhW1oFEQ35pajv5k1P1mIVSeStkQZGvA9dLMmeeODTA8aP
A7alxflLK3Pm+TbU8BcvXP9zpAM3nuEx0+cPakNWup+/ePMqFSWbnHoH789dawpZ
iZltfNfsImEAjcs994afbZ6kQHnGsQ==
=JRbS
-----END PGP SIGNATURE-----

--+1tcKVLXPU0QafK6--
