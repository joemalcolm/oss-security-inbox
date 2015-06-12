X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1685" "Friday" "12" "June" "2015" "15:52:53" "+0000" "mancha" "mancha1@zoho.com" "<20150612155253.GB6534@zoho.com>" "51" "Re: [oss-security] OpenSSL Sec Adv 20150611" nil nil nil "6" "2015061215:52:53" "[oss-security] OpenSSL Sec Adv 20150611" (number mark "        mancha1@zoho Jun 12   51/1685  " thread-indent "\"Re: [oss-security] OpenSSL Sec Adv 20150611\"\n") "<20150612013733.GB26535@zoho.com>" ("<20150611171113.GA26244@zoho.com>" "<20150612013733.GB26535@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3532 invoked by uid 550); 12 Jun 2015 15:53:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3512 invoked from network); 12 Jun 2015 15:53:14 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=Y19dNzqMduUmvehfxpFlfJq2kfTf0knFsbAEc9eg7eo1BvdcKO5JMYuNgPdYL0lASYP6ThJwfQif
    mV58G9t3UtGciSL8LQCcU0zT8ulR+j+1wO43272jifl6HzUKN/o/  
Message-ID: <20150612155253.GB6534@zoho.com>
References: <20150611171113.GA26244@zoho.com>
 <20150612013733.GB26535@zoho.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A6N2fC+uXW/VQSAv"
Content-Disposition: inline
In-Reply-To: <20150612013733.GB26535@zoho.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Date: Fri, 12 Jun 2015 15:52:53 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Sec Adv 20150611
To: oss-security@lists.openwall.com

--A6N2fC+uXW/VQSAv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2015 at 01:37:33AM +0000, mancha wrote:
> On Thu, Jun 11, 2015 at 05:11:13PM +0000, mancha wrote:
> > FYI, today OpenSSL released new versions (1.0.2b, 1.0.1n, 1.0.0s, and
> > 0.9.8zg) to address several security issues [1].
> >=20
> > --mancha
> >=20
> > [1] http://openssl.org/news/secadv_20150611.txt
>=20
> Heads up to vendors pushing upgrades; there might be some ABI breakage:
> http://marc.info/?l=3Dopenssl-dev&m=3D143407129721271&w=3D2.
>=20
>=20

Vendors et al.

By way of update, OpenSSL released versions 1.0.1o and 1.0.2c to address
the ABI breakage.

https://twitter.com/mancha140/status/609386942489178112

--mancha

--A6N2fC+uXW/VQSAv
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJVewBVAAoJEB4VYy8JqhaDBkoP/0sNuOJZKtC1zTkNUEL/+QhT
vXk+aYsAe8vSFvuCKrqvFlhHFJgXGwSZ2DUV/AGl6HKZCCg3vcMWtaG0mgJXLnZG
OnfbtmkFJ2FXGFa/s+9IWfxshGIOolxbSeMzuQVYfIwfX8/+5FUSQjDoOsEeUGBi
BLkI927CfTxUnp9VX69JQhBd6jO6ApXTnXJopjrVSW1y9k+YxBFi/4WvnXoFBhjw
1N+44NOFRy5TSoMrV6QxXa4yKuNqx79xh5cERskY7DV8Ua9xjx4sfU5nOv/9UP3G
U+d2qaiU2wem5mTvRUrWInmJbUC71HooKqGtqOj1+uXXPxGrL8wSR2hBPg4cTMRO
+UDwugmsKVcy+HzYp/hWFABmRu8lx5UzzzhW1s2Z4Afja3JiQoAq6FNv79lECrjw
YqtITXXvZHlzOeCwp8G4NOZjZ4rOSkK1vxe29eNggErVDh0gADgc8VwhzB7glrnt
VxteUIdN0NOGl6V8M3cN5k4CF+bxN9ENtzjctUgEMpMGaLXPWfBB+CgNZA+1XBFh
GFZ/VFEyS4WpdqH4AAvg5om8TRRqzX1Qr1yssviYpyIl07Rq4J6ZurBb9MhPX+N/
oMmNotha/k55jKKU17mzOTMMP0kNA20/aiKB8w9ZWEen02erQ0/VT9weEnnau1HA
F9WVTb0zH7HYFTRfbf07
=cgFt
-----END PGP SIGNATURE-----

--A6N2fC+uXW/VQSAv--

