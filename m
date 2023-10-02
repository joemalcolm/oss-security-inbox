Received: (qmail 15697 invoked by uid 550); 2 Oct 2023 09:22:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15676 invoked from network); 2 Oct 2023 09:22:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Cc:
	Content-Description:Content-ID:Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=EKj5euBWAvm/ZVRx9DijNvIqFAXLcdsYXer371fWBSI=; b=BXHP1m6dAyj+qQaCir4D5vFMzj
	d7h36iItzRddfzu5KKZZ5dEKR0/jRr27KYfbhCpalcy8Y9v9ZyQDTjLZHzxzarznMyoRjYrdLayL3
	172D1JIX09pb6joYNS7CForoA/sW2hAEPLnmhBqd0xDAJ5Gxm+YLtYWOd0VtLrWLV71PwTb6UX36w
	JakgUGLj/REHktkE+3Kg2w6vvCIQmtqxMTZwBOhpposoo5iZP2BpTHj12hnOtgHZdQrghuvT7x90p
	KEPATx2jKQM4BcNTRS46pyTtrJjw3mAEgRjVx2qYy+oAxFtuSzTTjDETq82/EIgSK9lhVTI3C6p9w
	QvVVI+DQ==;
Date: Mon, 2 Oct 2023 11:21:55 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <ZRqLs+ZoggKAcxBx@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com
References: <7b2e3fb3afc05aa39864e62b0c87a631b746f5c7.camel@runout.at>
 <ZRb180+B34Wmg1IM@jumper.schlittermann.de>
 <ZRmjAky/SBs4aCIw@jumper.schlittermann.de>
 <ZRnTNhtSBmN7GFfL@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yqlEinXgFEx6ILCW"
Content-Disposition: inline
In-Reply-To: <ZRnTNhtSBmN7GFfL@jumper.schlittermann.de>
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

--yqlEinXgFEx6ILCW
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

We go public with the available fixes (addressing a subset of
the issues) on Monday, Oct 2nd, 12:00 UTC.

The distribution points will be:

- git://git.exim.org
  branches:
  - spa-auth-fixes (based on the current master)
  - exim-4.96+security (based on exim-4.96)=20
  - exim-4.96.1+fixes (based on exim-4.96.1 with the fixes from exim-4.96+f=
ixes)
  tags:
  - exim-4.96.1

- tarballs for exim-4.96.1: https://ftp.exim.org/pub/exim/exim4/

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--yqlEinXgFEx6ILCW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmUai7IACgkQr0zGdqa2
wUJGCAf6AqCCsZm8O6GdE5BdL46vRUQVRqJtF1GzfUJizpeVUXVts8QzeZLRTNt4
9nTVOBh4HS9v8z6+Qv8QsmkPnMBUnjONHnV0ymwn3+QS5LAIHfqs5h605KuCstTk
v+5pNMCuJKwEj200pwBFsSncur+cDcU5p87Bi+GBagxXPGlYYjpEqzSW5xyyWO/h
4ZBrhZa8igpqJFAa9P69/yb/RSUEoSL6LY4q7FKB13db6/3u/IkpHAKcMRN0hSB9
vtAvNpC/L+AAKrIQcjC3PvzyDfKcF3RFLs6RapyqG2SyOQFlJMOYCZakYsBz3tSA
TqEopfPB51X3oU8vadYCXgmNANBD7g==
=bmQc
-----END PGP SIGNATURE-----

--yqlEinXgFEx6ILCW--
