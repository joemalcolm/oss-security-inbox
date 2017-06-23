X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1409" "Friday" "23" "June" "2017" "12:26:26" "-0400" "Leo Famulari" "leo@famulari.name" "<20170623162626.GA3446@jasmine.lan>" "39" "Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2" nil nil nil "6" "2017062316:26:26" "[oss-security] CVE-2017-9772: OCaml release 4.04.2" (number mark "U       leo@famulari Jun 23   39/1409  " thread-indent "\"Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2\"\n") "<20170623162447.GA12500@jasmine.lan>" ("<21771A83-D685-4776-9CE7-883775F05977@inria.fr>" "<6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>" "<20170623162447.GA12500@jasmine.lan>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23615 invoked by uid 550); 23 Jun 2017 21:51:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11331 invoked from network); 23 Jun 2017 16:26:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=p0y20pqWGYB67cChk2WJp/ibE6Wyxw4pJng+3/
	pfMhU=; b=tum+0+sHGWDQst2OIBErvTyK5BG0DvDms6JgjQbhPqSF8XvJfJv+TS
	MkAD/QhDVeZ4h6n+dCg1tpCcm92tubSNeN2A7Iyv/R1eLbrnoDa0eeepS6fl/4XF
	MFgd1nVXuHkbPYiSKkAUCO3x64+ToW0aaOlRr/7c2ycTsSP4+wJvQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=p0y20pqWGYB67cChk2
	WJp/ibE6Wyxw4pJng+3/pfMhU=; b=FlLxrvnB7zSnVrfE6EqMcLtiSPZNDjYMhW
	rxJk21zQA0Wx6kCGK5u1Jl9kCTbaTxNIi7BQZsvzZ11e30iFZmgo0dIB/kZtQ70s
	8/QbuG5dX0dmgPSiz43OecKo3/dA32RI7Brup0jncc7jGVDjZlHolDrLkVyKjJ/G
	SVWDBWZbj89mYll/yUTKmnbL6k9IYhWJOGoJXYMsLe7t/xxfCdFTU5PXgWTjQYJC
	oNXMiEfHUPClT4vG5n98GIUXS2XVzIS/vr0xj7Oj93Zf6ftNlbZCXcY1mZVRi9de
	FVyiwIRf4vIx7i20pDxlIGD1aRKwfiAUegfydZhqH0YkcDIaAR1A==
X-ME-Sender: <xms:NUFNWeoDKt1t1tlsmdo0v1G5oH9jNW4hrrXf5UHnXR8iuXqESK-MYw>
X-Sasl-enc: srTMnwbo1q4057Na0hOjzxQ0l4SWoqGKXipxLAq+Vo7U 1498235189
Date: Fri, 23 Jun 2017 12:26:26 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <20170623162626.GA3446@jasmine.lan>
References: <21771A83-D685-4776-9CE7-883775F05977@inria.fr>
 <6D989FE0-69C8-4AE0-B897-B440B8F92C69@recoil.org>
 <20170623162447.GA12500@jasmine.lan>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="W/nzBZO5zC0uMSeA"
Content-Disposition: inline
In-Reply-To: <20170623162447.GA12500@jasmine.lan>
User-Agent: Mutt/1.8.3 (2017-05-23)
Subject: Re: [oss-security] CVE-2017-9772: OCaml release 4.04.2

--W/nzBZO5zC0uMSeA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 23, 2017 at 12:24:47PM -0400, Leo Famulari wrote:
> Hi Anil,
>=20
> Can you tell us where to get OCaml 4.04.2? It's not available here:
>=20
> https://ocaml.org/releases/

Sorry for the noise, I see that it's available on GitHub:

https://github.com/ocaml/ocaml/releases

Is that the new canonical source of OCaml releases?

--W/nzBZO5zC0uMSeA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAllNQTIACgkQJkb6MLrK
fwj6BBAApEVwD9/S1qAZw+ltPH2rFjWV1tRNz1gsW85hG+Vr6Mv+UbXByYAHropL
mbulnO21FHcJT9TIXSBHRs5YITQNLvkDyJ+MeHPiLDtq13jJfhQM6nrbkY+Lt9dG
/RmvQXrRM9LgagbMkpZUTnweEFySwplZn9ut+63pcezhSaIZ6DSmFKufUuwfg5rt
0UQXRmncg0iFaY+TkvavlDc5G+NxG0CEvLgNYDadkuZbp1yRay5JHbeD6cEq6yJM
e5xXYk/HxiacEyDa9Rg74TlqCngcGSzUqH211UlFA9aiGiFv0wPV0MIKgEFDzPXA
NQEWLTbJRIPlBJv12jNOi/ZVpge3vnUD7NFsa+tBHnAWpMuYVvCQoGwQO7LDVSV9
pccmCQ+W/A8pwTkV/akhae0o2CTEAKUE2UA1bhez1tlBBzRt6lQC3mpPy9MiHlEV
Vx13t1cJsHTkyq1ZYCJ8JYtsLlcMH+JY2KPHoyXlbs9CMs0lu6HQDjqXzc2l54AC
gfiYC8GZVvHYUl7PrT6HVzpz0zkgjR+1Dg7/BbYlZ1UQEVF6AAbvV1ud8FKsm4Z9
8buORKm9SKtu/wgSvtwFByGFhxdeLwM3gMaOH8Ve+bTNA6v/F9rRD2zQ5Qd5OhFV
7LEawt5NB/m+sgt4hOxUbQYyW3urLdyAI+Bd5p3M1dZP+mBSfIA=
=gmXU
-----END PGP SIGNATURE-----

--W/nzBZO5zC0uMSeA--
