X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1063" "Sunday" "18" "July" "2021" "21:56:25" "+0000" "John Helmert III" "jchelmert3@posteo.net" nil "27" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "7" nil nil (number mark "U       jchelmert3@p Jul 18   27/1063  " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19953 invoked by uid 550); 18 Jul 2021 21:58:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19500 invoked from network); 18 Jul 2021 21:56:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1626645386; bh=G8OHIib75YHvo0tXymKPTWe2G1hwmVxtIcwDlTGd/C8=;
	h=Date:From:To:Subject:From;
	b=R0EU8BXrqZ8ps7S/FCxREFd1fmoKmjk3GU5vsB7/pBfZERbjEpjBEPigA0MtD6cUR
	 1+VKfjq7M4k+NWjLPjl6m0NEjJkiHK0xYag4nAaWrPS0ugK54XLOtmW7//merjnaml
	 6vlO5v93B7mLgigHrUoaQioYRWhYfhJkwmdaxsmj2xWbHrbPZueikXy53iYpFExyEs
	 T/zRvhErEySCoACClYFRpx21tMGpMIg1IkEm5Xm3u1arSgA6ZxkIS9BIX2htyaefEc
	 QDmcUO6kU2HkubK/rKL2BEqnr3vE58eFJBQtzckxt+y/NonXDYdeNjxqdYUr0qOBTk
	 EyRTTbPqMUiiA==
Date: Sun, 18 Jul 2021 21:56:25 +0000
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <YPSjib58rtqFI6fv@sol.nexus.lan>
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v5QcBRtJ5EpckmWl"
Content-Disposition: inline
In-Reply-To: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
Subject: Re: [oss-security] Polipo: denial-of-service using range

--v5QcBRtJ5EpckmWl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This was assigned CVE-2020-36420.

--v5QcBRtJ5EpckmWl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmD0o4gACgkQXP0dAeB+
IziFkQ//efTtRS18I6e+nu4wcKxpBpJESRAYBOg7iiEqVHqkTRTB4xnH1HQMdb35
KbtcmklhYs6hIXUW7uVYcy+m0gvJu1VkaJNBO7YvwJgfKwDTgjgiA6O6Eh7X/AJH
Ev0J63PFKfZTA/rl9Q9no25LIGP8bJmEDghTG/b+Ud3pFAtEA7HtMNTK3MxnGLNP
hJLucwSjRIZnfwmrbMGiJsmAVViU7w1mN2mwmvNr+Bs2FQr+4hdqBtFqI/WP5ciI
RTamH9ScrBYMDU25+e/925xJVuAvxAA98LtruoaWf7t5TbiBOz8pmOfvksF0JUf0
pDrSS3PuZVFkxtSml+qVoFkrrpQndEeTsHSNwkJ5aLy2SPHmnouRIH3Z0lyaOsAZ
rDlkjuKnADGSNaLpWqlcC6trlnPm6hOxW0XHEgdt2FF+6AxZK5DSqlKJVdoZntGp
p+5z3Z4BBG4bjZGVB/pv0RXqDxkeJzO7fgHj1eHJ8Saphdo0fVY6C0eU9pb/3QOE
2LmCKLdfuS/EoJHx/wl6b8+TESqXNrTPfCRbXqQ7F1ujmVsp6sssmElUZdL5mBrh
xAfSgY6Ijs3gvrvsR9onLWQg0qiciDiBN0wr5HlPbM9uSseLs9k7cevYoylyflBc
aLG+0PH1b2VmQ0383dUEXOI/OSkQtCTknI73DO+6QCgnNvQXYww=
=t0/z
-----END PGP SIGNATURE-----

--v5QcBRtJ5EpckmWl--
