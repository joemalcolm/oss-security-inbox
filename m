X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1567" "Sunday" "16" "August" "2015" "18:48:49" "+0000" "mancha" "mancha1@zoho.com" "<20150816184849.GA32213@zoho.com>" "44" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015081618:48:49" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        mancha1@zoho Aug 16   44/1567  " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14330 invoked by uid 550); 16 Aug 2015 18:49:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 14288 invoked from network); 16 Aug 2015 18:49:12 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; 
  s=zapps768; d=zoho.com; 
  h=date:from:to:cc:subject:message-id:references:mime-version:content-type:in-reply-to; 
  b=HVF4MQQncwu+90N+yOXbJstqx2NcoWJA+hpOnlnvA02MPom/rEhdBlbRJzX6hX2ltZ3BQH38k1mg
    qNVU2F/YhigWyg+SOS1L2T+reouci7fyx8BdTZemii6TiTwCfXjn  
Message-ID: <20150816184849.GA32213@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline
In-Reply-To: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
X-PGP-Key: http://hkps.pool.sks-keyservers.net/pks/lookup?op=vindex&search=0x25168eb24f0b22ac
X-PGP-FP: 56B7 100E F4D5 811C 8FEF  ADD1 2516 8EB2 4F0B 22AC
X-Zoho-Virus-Status: 1
Cc: gustavo.grieco@gmail.com
Date: Sun, 16 Aug 2015 18:48:49 +0000
From: mancha <mancha1@zoho.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: oss-security@lists.openwall.com

--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> been found triggered by function jasper_image_stop_load.  Despite this
> library is used by many programs (
> http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> providing support, so there is no fix so far.

If you email me your crasher I can look into a fix.

>=20
> This vulnerability was found by QuickFuzz.
>=20
> Regards, Gustavo.

--mancha (https://twitter.com/mancha140)

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJV0NsRAAoJEB4VYy8JqhaDrrIP/2TLILR8+IRjNPMxpB3BH99S
OuUhrTKa4BuVjTHO1KdE9t2y0F3PweEQPRFhL+ZB8BGIxgZMv0i/gLuqOTt64SlI
Hqi1F/vt2NBPP3ckgvN2jGm9O2eC44FZe2Qj9Pqhwb62fPDISKk99TkMsnHXwXbb
go3yaueq1BYO+Uc0SZBGcI/VAvdZIAdlAxcAhulypFRDuSUqukrn5p2cRL/CkyKP
gY57DyevFedc8bHLL1c+8/HiNT4RBaZaDMgTzDplUGvisX3PpbQCnA4HXoIdz6my
cDSMtTEhJpbkuB22qCH0AexpHU6AisQ9iiWbRiWJgVABhr3vIj4YUDs1Q8Wh5cea
4u29xQYGrFApB6WmsNb+HMxnKk1wECdm79O4fLrZ6LJFRyILqUsjTmcsjEODD+vq
2zeQ4V7YbRRCSfo+zokaQBYP2n4e4JajaNhT1sXv4i5YjlCFGSxZviB/qelfi196
XAslrKnokH6JUvuovbraAGGqBZvpgvuoFrUqRon0neemYNaA0tEDCAWvnY06QiEn
CydxABWNPO8eh6L4KXBPYMQbcXLYbVWu/pEj3thdX+T5V+4JXFy0uyQ1f0BH2jIm
L80w2ieQgoJL0bWWD12nF3xy0KcASpJ2p2BpLOFc3YiXE8q+xzhNNSpxOk8QEQuF
unXTTUF6QIIDeUc1kv78
=bxNc
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--

