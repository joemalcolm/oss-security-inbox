X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["978" "Tuesday" "4" "June" "2019" "12:43:11" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" "<20190604104311.xt2gunr7g2zqgnew@jumper.schlittermann.de>" "31" "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil "6" "2019060410:43:11" "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" (number mark "U       hs@schlitter Jun  4   31/978   " thread-indent "\"Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") "<20190604102246.GA15069@espresso.pseudorandom.co.uk>" ("<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>" "<20190604102246.GA15069@espresso.pseudorandom.co.uk>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3767 invoked by uid 550); 4 Jun 2019 11:01:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18168 invoked from network); 4 Jun 2019 10:43:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=uSyBU8IKuRMjHdWTKjhi/fNBdu+bQ9eNjjlW0ij/SWs=; b=T75OEhpcUMPql2uWw4GxN5m1Q8
	ebbWwiPojBx+B9uu5aGI4iw7shZmFgQ9LpC4c5OJQGqboILRyap1iy5pDq7hfWzDTCRKfnopDiX3B
	QMhNZFyfPwFpmuOBBO93Y8KdXuaRBZYQz2NztZmqmVGWtLR4N54CNYaujY3v0HdGcYNY=;
Date: Tue, 4 Jun 2019 12:43:11 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20190604104311.xt2gunr7g2zqgnew@jumper.schlittermann.de>
References: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
 <20190604102246.GA15069@espresso.pseudorandom.co.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="25o3pwcyx57b6k5m"
Content-Disposition: inline
In-Reply-To: <20190604102246.GA15069@espresso.pseudorandom.co.uk>
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
User-Agent: NeoMutt/20170113 (1.7.2)
Subject: Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible
 remote exploit

--25o3pwcyx57b6k5m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Simon McVittie <smcv@debian.org> (Di 04 Jun 2019 12:22:46 CEST):
> On Mon, 03 Jun 2019 at 22:19:23 +0200, Heiko Schlittermann wrote:
> > t0    is expected to be 2019-06-04, 10:00 UTC
> > t0+7d is expected to be 2019-06-04, 10:00 UTC
>
> Was t0+7d meant to be 2019-06-11?

Yes. Definitly.
--
Heiko

--25o3pwcyx57b6k5m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlz2Sz4ACgkQr0zGdqa2
wUKt/QgA28mUdW8WQRDGFsU63QInG4wEkst9g4cC1m+Kly7/zas1kajgKqP+00ZY
XadWpt/P/O8nXm7YwxhcxujcYkF2N0KC8fed7RMJtcHRET14Yk0JOfHcsNaEGiUG
bQRBeI4nvWCbqIYoo3HViJlRN1GwQajMc4Bt7KRWomCLfG30p+6zOcNa3hwqKa9L
/f1cNqvREk3xchuh6gkm9jZDjpPkoBoVbRVPdpEOToN+H12u4ffY9SMqPuRFU6BW
P3BmFt9U/1hKiDigUeRjkaPhK2MqOYzcppKVsyd3fnuTDWX7z5lb2kDOrmiS1Mot
dMO/WgQRxeK32kApLry0LGvNC/QDoQ==
=rSlj
-----END PGP SIGNATURE-----

--25o3pwcyx57b6k5m--
