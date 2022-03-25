X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1870" "Friday" "25" "March" "2022" "08:59:35" "-0500" "John Helmert III" "ajak@gentoo.org" nil "50" "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" "^Date:" nil nil "3" nil nil (number mark "        ajak@gentoo. Mar 25   50/1870  " thread-indent "\"Re: [oss-security] zlib memory corruption on deflate (i.e. compress)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] zlib memory corruption on deflate (i.e. compress)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3426 invoked by uid 550); 25 Mar 2022 14:10:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27701 invoked from network); 25 Mar 2022 13:59:49 -0000
Message-ID: <Yj3KxwDw01GIKHwD@gentoo.org>
References: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bF6smwJBIC1z6584"
Content-Disposition: inline
In-Reply-To: <20220324034949.GA25415@thinkstation.cmpxchg8b.net>
Date: Fri, 25 Mar 2022 08:59:35 -0500
From: John Helmert III <ajak@gentoo.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] zlib memory corruption on deflate (i.e. compress)
To: oss-security@lists.openwall.com

--bF6smwJBIC1z6584
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 23, 2022 at 08:49:49PM -0700, Tavis Ormandy wrote:
> Greetings list, I was recently trying to track down a reproducible crash
> in a compressor. Believe it or not, it really was a bug in
> zlib-1.2.11 when compressing (not decompressing!) certain inputs.
>=20
> I reported it upstream, but it turns out the issue has been public since
> 2018, but the patch never made it into a release. As far as I know,
> nobody ever assigned it a CVE.

CVE-2018-25032 appears to have been assigned for it now.

> https://github.com/madler/zlib/commit/5c44459c3b28a9bd3283aaceab7c615f802=
0c531
>=20
> As far as I can tell, no distros have picked this up.
>=20
> Tavis.
>=20
>=20
> --=20
>  _o)            $ lynx lock.cmpxchg8b.com
>  /\\  _o)  _o)  $ finger taviso@sdf.org
> _\_V _( ) _( )  @taviso

--bF6smwJBIC1z6584
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElFuPenBj6NvNLoABXP0dAeB+IzgFAmI9ysMACgkQXP0dAeB+
IzgYlBAAkSz28eWvLibjqsr/uilaBEhmU4p9YmDq5rrvjOqFVnIplPhV382ganm0
PUa2BxXXAfMfcf8zEi5z9dm5z9fMZYy2ITEoRfM8tovSE972cYfc2Hb3cS7baqhZ
Avba6NsiqrxOAOWAFKtaVlx+fZoQnNCEBK7xwnV8Rq3Bsu90lQcbJiLnib8GF+aX
QJm4dhrq0dBlNwOIE5wp/7KvNGI18DSy4sBUVR7ybZtZmgDSwHRRa47cowueVNIn
RJgMWGVFp+JPDV/AW+laj1KvZ8duTr/QwriTv5DyBxyHFc87Nj4hWOQl8Md5MY3c
90GNfjtSVVdyTRyaTyLftYLraaPm2cB7kEMLBIWfAzt3LsS60bFfCHmjrt0Fm+zU
yh0CnIakNm10a1Rp8uDgjxa52SFO1O5qN4DGYuuTvUPJp2PWDK7Rz/Qn/CBRSCTu
w7tA6pnrMRLXKPrU4/vJQkrsabUSxEn31sxGpkPvTxkmn5AonYT0DxARtbG45voI
tZaeycvxfsSroGVPxHIE9MMJ3396/SKFMySJsnCA/ZcLT+uxx2hP3XjTGibSCTUO
zHHxJmtx52FMFymrusQ7GROz/n75bZJni+cNY5qzXHEEGlnuWqHioD00cRtZRslb
hv2CePosJeWt5N1jOCAmo9O8+l91CCTsAzUKuCd/pOzgrpTkjEE=
=NoFg
-----END PGP SIGNATURE-----

--bF6smwJBIC1z6584--
