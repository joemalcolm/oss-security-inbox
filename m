X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2848" "Thursday" "22" "December" "2016" "00:24:09" "+0100" "Heiko Schlittermann" "hs@schlittermann.de" "<20161221232409.GN19629@jumper.schlittermann.de>" "71" "Re: [oss-security] CVE-2016-9963 Exim private information leak" nil nil nil "12" "2016122123:24:09" "[oss-security] CVE-2016-9963 Exim private information leak" (number mark "U       hs@schlitter Dec 22   71/2848  " thread-indent "\"Re: [oss-security] CVE-2016-9963 Exim private information leak\"\n") "<20161221205952.GA81339@wopr>" ("<20161215233645.GJ29010@jumper.schlittermann.de>" "<8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>" "<20161218175925.GE31981@jumper.schlittermann.de>" "<20161220225935.GH19629@jumper.schlittermann.de>" "<20161221205952.GA81339@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22136 invoked by uid 550); 22 Dec 2016 00:39:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8180 invoked from network); 21 Dec 2016 23:24:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-To;
	bh=dFPG0W1rghi8diey4YKLEAwP6HJCINCDvFW/F5Qqvwo=; b=M+kVjg0JFdYwtvf9FKl2IipJmW
	SBnyBAfQNcRSl/6mzNBycsYYvk5ABFUR8mxz+QHBgKOlLQ5L33JNX/ZAi1RbS2VUBIUndd0M4bqnR
	AT6yotE3jyyAURqKjtINQh0ghsY7cSC/dZKkjTUJ6vij8CUQXkO0Kedt7H4rYzwUKe0s=;
Date: Thu, 22 Dec 2016 00:24:09 +0100
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20161221232409.GN19629@jumper.schlittermann.de>
References: <20161215233645.GJ29010@jumper.schlittermann.de>
 <8c7f77c36aa246b9ad31e46f6e733414@imshyb02.MITRE.ORG>
 <20161218175925.GE31981@jumper.schlittermann.de>
 <20161220225935.GH19629@jumper.schlittermann.de>
 <20161221205952.GA81339@wopr>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FxavXfDenm+F7xE/"
Content-Disposition: inline
In-Reply-To: <20161221205952.GA81339@wopr>
Organization: schlittermann -- internet & unix support
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: [oss-security] CVE-2016-9963 Exim private information leak

--FxavXfDenm+F7xE/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Kurt H Maier <khm@sciops.net> (Mi 21 Dez 2016 21:59:52 CET):
=E2=80=A6
> > To be more precise: On Dec, 25th, at 10.00 UTC we'll push the changes t=
o the public
> > Git repository git://git.exim.org/exim.git and upload the tar balls int=
o the=20
> > FTP area ftp://ftp.exim.org/pub/exim/exim4
>=20
> Just so we're absolutely clear:
>=20
> You are releasing the fix for a currently-undisclosed security
> vulnerability on the day most of the Western world's IT staff is on
> holiday?

Yes. We're addicted to high quality software. And we can't celebrate
any holiday while knowing that there are systems outside, that may leak
private information.

We're very sorry for the unfortunate timeing. We got the vulnerability
report on Dec 15th, and requested the CVE on 16th. On 18th the patch was
ready and passed our tests. We added 7 days to give the distros a chance
to prepare their packages and this made up the 25th.

And yes, we know, it is holiday in many countries, maybe in all
countries of some of all that many worlds.

The decision wasn't an easy one. Delaying some days more would probably
hit New Year celebration or =D0=94=D0=B5=D0=B4 =D0=9C=D0=BE=D1=80=D0=BE=D0=
=B7. Delaying it even more?

As many users will use their distro's packages, the impact of the update
should be very minimal. Probaly they will not even notice it. And if you
build your own Exim packages, the effort to rebuild it (4.87.1 is almost
the same as 4.87, which you should have running already) is minimal.

In case the distros are ready already, we could release on 23rd, but I
need feedbeck from the distros and ack from the other developers.

I know, it is Christmas Holiday, for me, my kids, and my family too.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--=20
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -
 ! key id 7CBF764A and 972EAC9F are revoked since 2015-01 ------------ -

--FxavXfDenm+F7xE/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEbBAEBCgAGBQJYWw8YAAoJEGoXY4qgRQz1aOQH8wVmbzQKahtXAfNqIDE2+My0
ctMTJ4q/rTz3/H8sjUnJF/X7nBB8A/ovN4MOBD5IxeGnJxlLesTel3n4gnCtazbr
VcceMUjVz5YAobS5HgsSz6rd0iEICuT+Qe1GYjM0jJCeRF46KbJUmjx4/ZfsBwwE
ANZmCgsTVEynvXoY1bVHxK2LFpgJvnXaTPBZAI9Z0fzkmafDZACBHUsKWb4jqYTT
v7RBmSl02H/SvsAbF1hxTRsu3J3UPtisOxSKwvO1WnUSbtYER8Fi/GO+AUNW7NjF
C5uSlUJ3f68z6CM6IzPlywNu0uL20bYKC+l7X49ennK1uiOb5YhbgPu5LB+qzg==
=sfmj
-----END PGP SIGNATURE-----

--FxavXfDenm+F7xE/--
