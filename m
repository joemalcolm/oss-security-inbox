X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1596" "Wednesday" "4" "September" "2019" "12:46:49" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" nil "45" nil "^Date:" nil nil "9" nil nil (number mark "        hs@schlitter Sep  4   45/1596  " thread-indent "\"Re: [oss-security] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges.\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-15846: Exim - local or remote attacker can execute programs with root privileges." nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11813 invoked by uid 550); 4 Sep 2019 11:19:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20382 invoked from network); 4 Sep 2019 10:47:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=Vt3CP6qIwbtBquQbcOO7bBsngwiKs/I7DG5xywa+Cyg=; b=AmV8jKLRqh1qpSYsbaxOqaNP4O
	fCUC9rfxmgXQchDts97Fb4poHYNi7tx0v9sTo5PP1/duOQR4Pd9sYg0mRI11tpxpSy0/dCHZMYI45
	UwIlX4BczI/pNsdLe6SLsGYH+hy9YUYnh3VqMDnQqQwoWjxBYJVe5wrsGEcmJVizEsf0=;
Message-ID: <20190904104649.GR3837@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com,
	Exim Users <exim-users@exim.org>,
	Exim Announce <exim-announce@exim.org>
References: <20190904092248.GQ3837@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bFUYW7mPOLJ+Jd2A"
Content-Disposition: inline
In-Reply-To: <20190904092248.GQ3837@jumper.schlittermann.de>
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
Date: Wed, 4 Sep 2019 12:46:49 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-15846: Exim - local or remote attacker
 can execute programs with root privileges.
To: oss-security@lists.openwall.com, Exim Users <exim-users@exim.org>,
	Exim Announce <exim-announce@exim.org>

--bFUYW7mPOLJ+Jd2A
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Heiko Schlittermann <hs@nodmarc.schlittermann.de> (Mi 04 Sep 2019 11:22:48 =
CEST):
> *** Note: EMBARGO is still in effect!       ***
> *** Distros must not publish any detail yet ***

As I saw blocked accesses to our security repo:

If you're entitled to access our non-public security repository, please
update your "remote". The git URL is now:

    ssh://git@git.exim.org/exim-security
    ssh://git@git.exim.org/exim-packages-security

(We addedd the -security suffix.)

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--bFUYW7mPOLJ+Jd2A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl1vlhgACgkQr0zGdqa2
wULWOwf8C8LLYBWGCr6RxuK55Dj4vdKSfZEYW6Xbod1Yd3H5Yl8duKQfj2zMriYf
UKxURtjXvbFKz9ACpVG1BOMwNxHWCeoK78hAtBIEn2TQL1QdfQOQ5NBESRMpQEl1
FHuUcQbpHfzQHDfrP7kwVc2HeQ3+ziAV62QUQo5ixaV941S0zzRUhltdsEtpnUie
VKs6pXV3RLXBo3mviuSUWJAihq/sdx4wtWmPVQTHID9W2/A1TZss6OFa30arTTTW
c5tGGhNOg8Z2SeMxjZePcdzZ2ocvEaH30THyPi1CwgtyRJOHyMOC7442aMFaE/si
bZTmKURXjV+JzHuZnyqZybiIcJKnVQ==
=v+EJ
-----END PGP SIGNATURE-----

--bFUYW7mPOLJ+Jd2A--
