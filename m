X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1789" "Saturday" "10" "April" "2021" "13:58:40" "-0400" "Leo Famulari" "leo@famulari.name" nil "47" "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "4" nil nil (number mark "U       leo@famulari Apr 10   47/1789  " thread-indent "\"Re: [oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3842 invoked by uid 550); 10 Apr 2021 18:01:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3310 invoked from network); 10 Apr 2021 17:58:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=mesmtp; bh=xFHn85ZzJRpAna1s8UPRU/Pn
	Thz3RJ3R7mqkoSruDzU=; b=lOV/doQbXETvUDYnxhAqvUeEXG1ELzXNFp+puueF
	dLoW4XJIWQA3lX2Q5bt0w8UZWd2L7As3fdCvQz6hSc/v70hDNnErTHYG1c7oQ9qT
	w5xCGLbBNkUPT2VXPXIzM6QlNTpKEX+ilzni/UNIMfzluC3ZBOXdOnUKjwaj1Ho/
	8ko=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xFHn85
	ZzJRpAna1s8UPRU/PnThz3RJ3R7mqkoSruDzU=; b=l95BZH2HlrRGCpVZpZkwgQ
	lXzw0BQISZsKsFgpMjVjGOv24NVELUofiCJDC3nG9hiI1p9PNk2CeqkIXls7godl
	/fDMPQSePcK6U4cCj1ouvlDXaJT7UaiIKplFHRc0NMr5wOW1vvO0Z+YHFfNG1yy6
	eHXTmTaDd0ed+/kmRnb928cOFZUf8KU4xEWmbEIFB5J31vGXQPV1Y2OJOl+JNTIs
	8+VWZdSS9LwNv2cGiO80k3YmUInPm+Z98S2HqET+M3GoAarMX66pejMD2eIpQJQe
	Es2Ui2Ds0PpT+5f7On0ASF0+E2o6ZeB126nw8ErmrC4NY3DWaj99Sc05Ny+1IWLw
	==
X-ME-Sender: <xms:UedxYFNmaN5cYPsyGftUo_vIzh7xXEM0N8Q71DAlwx6MdB5R0rT5mg>
    <xme:UedxYH8_3BQTiTZbvFY0hsbRxnBTKLWCu37cxVw4_IF8ZT4_R6erREs55KQqyw70w
    j8-xapPmjN5jtxlqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudekfedguddvtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtd
    erredttddvnecuhfhrohhmpefnvghoucfhrghmuhhlrghrihcuoehlvghosehfrghmuhhl
    rghrihdrnhgrmhgvqeenucggtffrrghtthgvrhhnpedukeevgeetkeeltefgiedtjefgje
    ekffduteehvdfhueekudelieekjeefheffteenucfkphepuddttddruddurdduieelrddu
    udeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheplh
    gvohesfhgrmhhulhgrrhhirdhnrghmvg
X-ME-Proxy: <xmx:UedxYER7R2VZXI9Il7fYvSXLCCTqCYpJMZopir5lpZRdbLa0eRUYFQ>
    <xmx:UedxYBsAwjfS2zphfp7rPo0uWRB9uIxNAbKxD-5t52FpWsRMkzB_3Q>
    <xmx:UedxYNcR2sgq_ckbZtiEIf0dpXz2TUTop_mxZK7sGlKNx8x9K0v5ag>
    <xmx:UudxYHooUmaZTkNLlhmcry-9fOD6AOfzhjZWbhaoBAiNGe7yIiN-lQ>
Date: Sat, 10 Apr 2021 13:58:40 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <YHHnUFzvU0prUY/j@jasmine.lan>
References: <YFPFrYcJK1e+qedn@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9Qdp6wawXKlMHJDf"
Content-Disposition: inline
In-Reply-To: <YFPFrYcJK1e+qedn@jasmine.lan>
Subject: Re: [oss-security] Risk of local privilege escalation in GNU Guix

--9Qdp6wawXKlMHJDf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 18, 2021 at 05:27:09PM -0400, Leo Famulari wrote:
> # Vulnerability
>=20
> The attack consists in having an unprivileged user spawn a build process,=
 for=20
> instance with `guix build`, that makes its build directory world-writable=
.  The=20
> user then creates a hardlink to a root-owned file such as `/etc/shadow` i=
n that
> build directory.  If the user passed the `--keep-failed` option and the b=
uild
> eventually fails, the daemon changes ownership of the whole build tree,
> including the hardlink, to the user.  At that point, the user has write a=
ccess
> to the target file.

This is CVE-2021-27851.

We are very grateful for the invaluable assistance of CERT/CC in getting
this assigned.

--9Qdp6wawXKlMHJDf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAmBx508ACgkQJkb6MLrK
fwh2+Q/+Po+zL1PaVprFE/UuIiBUPbhWqS3eaOIDmZy0avEggQ4lddE+KyFXzLDc
4Yd6Dp8/nJwM9Gjk7wYiM6KzZPw9aHPYs1YZD9hRuW8bvSRsF89Mw54kwrALbs/v
0twbn7cDwK1mHlMdLZ2N6VocmFZSRnIXRwqnF7OasWU4U3BGDbn8CghDx5wo6zhL
dH0IzyRPstYlCQP/Mq6nDJ7KNCKSbnzAai6+r4HB55FYI1pju+0KnQbncqbCggaU
qPewH8gf1EkmE5BJbZRJHw9ADTpF6IF7qkkMsg7p7kHCMTKCg9UXgknfu7ieQX1X
WMRoYYSTNndQA5c42pR6tITYpqVxs7IAPeJPJP90er54EUak1IgZWLJJxyoIbyIL
nKaFZROGp0W5QQdIfaULVuUswSQeCVB+vUMjmyS1C1gkG2Uesu/ZyCOuB0deiZph
20g4VbkexlJkFqe/gHbZDgNjY9IYMbosJNxgUOCvltPUcjhpb2KZnjYPfVXcxwdC
rwxIRy4D8S+YhF6BpHiUrjNHJGyNFgBcb89A139LXFU2SxJdR0hHL5idZREATyBK
0TJGrG+NK58WkVE+M4FdoTkSUNYlUIaejUsQZ9nC8qsgQJDBd4BIPJQW0olKsvVb
NLYA9G0tvQgNqHu6OAd9QqnzZXZahB0REvxxZu5dtO7vVXfYlRA=
=cKam
-----END PGP SIGNATURE-----

--9Qdp6wawXKlMHJDf--
