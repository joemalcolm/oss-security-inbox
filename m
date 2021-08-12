X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1206" "Thursday" "12" "August" "2021" "20:35:28" "+0000" "John Helmert III" "jchelmert3@posteo.net" nil "29" "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil "8" nil nil (number mark "U       jchelmert3@p Aug 12   29/1206  " thread-indent "\"Re: [oss-security] Polipo: denial-of-service using range\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Polipo: denial-of-service using range" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32445 invoked by uid 550); 13 Aug 2021 08:28:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32202 invoked from network); 12 Aug 2021 20:37:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1628800644; bh=WLEA5Jetrsx+jdl/swvnVAGzEDZhUCdYuvzM5hrovvw=;
	h=Date:From:To:Subject:From;
	b=UGUTV3QjLGl8l2pDeJb4gi4jIAL7iuMnwzWaSgIi5Ng9Bo/qJaPJ+mwv+J1yyoodC
	 qS12Lf4X5MaWGisjevP/dMQ5fmbVXCYjvfNPyKXHr/xx4uTV7GuHtS/ttnB5iXOnG8
	 LIUMk+dCXlhVCQ6dQ2p38zmVpXjIGIgWFvcKD9kygsXO6yTbv28skDgpZoQwTnhhlO
	 rjxN0seLw+MzblbFwT0bkXjw4S2nGwjCg0Z5dUbsgq7nuCUvUkwFtZC3GafGO0N/sG
	 whID7ccIXIGtDjMMarwAZwekCbRzaKbrDdT5njgfNTNDHVgFg87VkGi8OsVTLmpiXO
	 p30u9wKSQfVxg==
Date: Thu, 12 Aug 2021 20:35:28 +0000
From: John Helmert III <jchelmert3@posteo.net>
To: oss-security@lists.openwall.com
Message-ID: <YRWF6v8z5rgdewsM@sol.nexus.lan>
References: <20201118171206.443be0215d1b142b5ce7584e@gmail.com>
 <CAH8yC8nDTF9-aBtuKG+81rEYmf4QigMfwB3EEw8hwYiGHP+AeQ@mail.gmail.com>
 <20210728150151.3eadaae2@gmail.com>
 <YQbnc3DxV6iEaA3B@sol.nexus.lan>
 <20210803153701.12f8cac5@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hUkMw1K/EzwktMur"
Content-Disposition: inline
In-Reply-To: <20210803153701.12f8cac5@gmail.com>
Subject: Re: [oss-security] Polipo: denial-of-service using range

--hUkMw1K/EzwktMur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I'm only able to reproduce such a heap overflow when specifying a Range
header with a valid range, e.g. "2-3" whereas the original Perl script
tested an invalid range of "3-2".

--hUkMw1K/EzwktMur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmEVhgwACgkQXP0dAeB+
Izhl7g/8DI6Ct6+qEapmXIZgAmCjNw+kNQrl3HEXOxLHBMw90Jq8RXxpNcpFh51i
DN9P5KsSBrXpDd4gNYEWgTXmp2p7q9H0B1oWb3bEHokCjUcG/s5BE52Bidfob1jX
2UTw6L6KEPbLt0dnBtdfxBgEAHe2PW5aQQaDzHU3l6Mzow+DCShEvxAiXnZMS+jD
wqE4c+IXX4RkgOEXRlT9j0V3TRetbMY2H56B7KnF/rApKUTrsmJhR1JjQ4tzmycj
/3HSklMsc/Y/MYGKcC1r1xojOzOP8UOSolEkxK+qhffwPcjtLQAy84zrHZPmeTFb
eUn0AR9V4o8KxxpJtStjtv8n0CCPIguiaZ7i7JlshN2kdd8JjFUUuqLZaRPjbvwQ
Yv7XDxrqQwtm0UhKhS5jr3dQ1BLRrIjIL6LzqqhIZjtXymbHOfDUs1J4kzRjDlSH
saKOmqa8bmonXpGcLU89pvfmkNnLwT17vq29xeM/gv418Gu1s8Aw33fRCi8lT48a
K+MlgQ33z/alu9EgaB21QWbAiSK7681ZFfOkyJ7VIr57OH4LwI6cDcd7VWUqIrjw
kD3/syjraAhTh+lgjRxXnIZZNUAtxzFSWcArRq9Jfp4pu+E84PIu45laAvG3ESkH
xIu97HDyDaEsYHHp7zA9BkP4iwhyEiDV96K06u3hy/MUjkF5m6Q=
=zBjz
-----END PGP SIGNATURE-----

--hUkMw1K/EzwktMur--
