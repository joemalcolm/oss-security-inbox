X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1070" "Tuesday" "4" "June" "2019" "16:07:30" "+0200" "Heiko Schlittermann" "hs@schlittermann.de" "<20190604140730.7yz733eajye2kfbs@jumper.schlittermann.de>" "34" "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil "6" "2019060414:07:30" "[oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" (number mark "U       hs@schlitter Jun  4   34/1070  " thread-indent "\"Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit\"\n") "<20190604132534.GA16994@openwall.com>" ("<20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>" "<20190604132534.GA16994@openwall.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10149: Exim 4.87 to 4.91: possible remote exploit" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7746 invoked by uid 550); 4 Jun 2019 14:23:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27759 invoked from network); 4 Jun 2019 14:07:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=FBsrCTrCMEUzBeDJEl6hoqulVMo+fXzrYz1qlqFRNu8=; b=gtJiQswknrTmlY/Ho3PAb1Y9OL
	r+WANa/tD/e3R9KB5mLtSSEcHRoz8O5H57RlGBlKGOndX+onxyJy+jUqCOc28qbzUFVRgdHBEj6pK
	3OdANPSebUyoajgd89dcAZQXhAM25gDq1X18CDv4ErpptKMIe9DaXcAH38rtbxjS/0W0=;
Date: Tue, 4 Jun 2019 16:07:30 +0200
From: Heiko Schlittermann <hs@schlittermann.de>
To: oss-security@lists.openwall.com
Message-ID: <20190604140730.7yz733eajye2kfbs@jumper.schlittermann.de>
References: <20190603201923.akdidsegyfzq3ykj@jumper.schlittermann.de>
 <20190604132534.GA16994@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7lfmscslmv5lwgpd"
Content-Disposition: inline
In-Reply-To: <20190604132534.GA16994@openwall.com>
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

--7lfmscslmv5lwgpd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Solar Designer <solar@openwall.com> (Di 04 Jun 2019 15:25:34 CEST):
> $ diff -urwx doc exim-4.91 exim-4.92 | diffstat -s
>  131 files changed, 6898 insertions(+), 4395 deletions(-)
> $ diff -urwx doc exim-4.91 exim-4.92 | wc
>   27635  114347  935620

I'll talk to the other devs about this.

If the distros give their OK, we're fine to release the patches to the
public sooner.

--
Heiko

--7lfmscslmv5lwgpd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAlz2eyIACgkQr0zGdqa2
wUKBtgf+LO0ztE6eYz+zN3EtPQ7Dm8w6vRq+8xSd8XYLlYsDb/hAm8JaQJfk0Zpr
HEi1xq4V+vwOcjR/LlVWpjStMhwa7ujQ1LZSIJ/2t9cjws06rl6SeEIp8+q86rYi
ENggGmAu+UadYIdlWj52sadErLJGT9ieO63O10Eo4Kmm9HKMtoRlKw7vzqeDFpuW
8fWL534NYLkm2XStL0aIb05stIloQ1HY3g8AQS5qhA2/UcndNksG/ieTK3uItv5q
ibSPrxxMon2RZtkbvrXLYvHmzj0ZbI/gRgW3boUOBUkeqZF14f+OwhAQ0oVVp1Xx
wNQuEBC2HurC+LJp/IHSYXuCRKjzzQ==
=c7c5
-----END PGP SIGNATURE-----

--7lfmscslmv5lwgpd--
