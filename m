X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1820" "Thursday" "21" "January" "2016" "18:43:16" "+0000" "Andrew Gallagher" "andrewg@andrewg.com" "<56A126C4.7090905@andrewg.com>" "47" "[oss-security] Re: Prime example of a can of worms" "^Date:" nil nil "1" "2016012118:43:16" "[oss-security] Re: Prime example of a can of worms" (number mark "        andrewg@andr Jan 21   47/1820  " thread-indent "\"[oss-security] Re: Prime example of a can of worms\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22466 invoked by uid 550); 22 Jan 2016 02:57:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26472 invoked from network); 21 Jan 2016 18:43:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=andrewg.com;
	s=andrewg-com; t=1453401802;
	bh=0U/w2ZcNkUX71nSjz51cBOQGqcHsr5YKZIt0O54rcnI=;
	h=To:From:Subject:Date:From;
	b=VcO/sFva/i4owD66y6bUYjsyQkjD3XHy0Ht4l4LzMMQYLExt/jMRmEnfqprYUrKd3
	 uDmy+/b+2W7KUMxotRlXGG56pvKfmlQ1nD3yg/4pSb2be77xZ/HpVgK318sm+8RkE8
	 EogpOQNux5TbwnuEbnDQZjibylkWrGFh3RybbcKB7DSvcgfdfcfs928YTkMpDNxpNK
	 Jk2RS6R2kb/Z3De50VeZdEFoo5v9QvE+PCbjlzMV5G0B8vtRbS355iprhqhKL0u4sO
	 w31V5Z78fLFS5JYwBF2kRyV1YuYYQbVj3jRqzAg1Qmb7bdJ1/ao1eY/YX1F/Iusn+J
	 unzNAPRffdeiw==
X-Enigmail-Draft-Status: N1110
Message-ID: <56A126C4.7090905@andrewg.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="kUnw9XILrhw3gIAwlMcu6OOcW8MbL4deH"
Date: Thu, 21 Jan 2016 18:43:16 +0000
From: Andrew Gallagher <andrewg@andrewg.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Prime example of a can of worms
To: oss-security@lists.openwall.com

--kUnw9XILrhw3gIAwlMcu6OOcW8MbL4deH
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, 21 Jan 2016 10:15:55 -0500 Steve Grubb wrote:
>=20
> Hallway discussions mentioned that ECC is dead due to trust issues
> and fuzzy IP issues which slowed vendor uptake. There was a mention
> of RSA officially being allowed to go to 16k key sizes.

Was there any mention of the relative ease of quantum attacks against
ECC compared to classically-equivalent RSA? [1] That was suggested on
a couple of discussion groups as a possible motivation for the newly
rekindled RSA love.

[1] http://arxiv.org/abs/quant-ph/0301141

--=20
Andrew Gallagher
Senior Systems Engineer, Ward Solutions Ltd.
2054 Castle Drive, Citywest, Dublin 24
+353 87 1200174


--kUnw9XILrhw3gIAwlMcu6OOcW8MbL4deH
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJWoSbEAAoJEFwexATVkGYp4T8P/2/u9mmP1yfjaPsFRVW7QAfb
AYYcSbk7V4fBRpA/6aRJA5EB2++GQl6u1TUjLTg6GmiHE8oyAwJdRqC2sEtDjG8Y
cP0APa7Q4bbCY+OLcuu4+glBO9OC7gWlyUOimFNAsvNnS8D28i6FmqvxDbZf5Gqd
svFOBL2NiTT7Z92wYgR6A6EOfaHxSBOH57Xdoz8Uf5otfFlPsiLx/H3MpTm73buo
jxFXEZhs48jK9IhQKR5HVfDLueuhwfrZRJb7m+/4GEdELVpevFT3Tv7D+DEnJoAr
scgFqsbwnO8WtWOePNmlBqHEfgm7Spq53B7GhwjafZFgNk/NGuMCtE25CEbEb8X7
5KLOEE3nguMHFpek+W8FYZrEctcwt7VMnuT8lrHVJyKjLIYtJNOsNqvzZ4NOFXbl
gUDCWRndFVEJrB4O/70jdIJwp1PoxAKD5jTxwlosLegbIvQgIqM78hfjRVVAdc4g
+8girTS/pDtWle7vkhZE2xh2OhjdFrc25GxBP0ZGt6PlX/haEMPHGLyFvo+UL5WG
zgyMLB1V8nq7Si8e41xFrjbZ8KglM2VEJfRpl4Q1x8p6I8cHPyUympw4bw4Zutl7
d8xZ8Ipg+huBa3a8ZvcpAaXve5fVOJNdX3Nb9ZZJl8yZnMjHBP41QZdKTa78lQ1q
4AloEtI2WBiVn7DyJxcl
=W9Qm
-----END PGP SIGNATURE-----

--kUnw9XILrhw3gIAwlMcu6OOcW8MbL4deH--
