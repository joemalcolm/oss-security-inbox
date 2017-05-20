X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2475" "Saturday" "20" "May" "2017" "13:54:36" "-0400" "Leo Famulari" "leo@famulari.name" "<20170520175436.GA30962@jasmine>" "58" "Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" "^Date:" nil nil "5" "2017052017:54:36" "[oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder" (number mark "        leo@famulari May 20   58/2475  " thread-indent "\"Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of uninitialized memory in RLE decoder\"\n") "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>" ("<20170520072632.z5nbivrdwmqm3soe@eldamar.local>" "<20170520152406.2339.3B884775@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22442 invoked by uid 550); 20 May 2017 18:06:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15440 invoked from network); 20 May 2017 17:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=7e6y78AGe6CFfheSQTlaEh4QE6fXg9LPpurA+z
	dvcys=; b=eFkL35oRf4QUkEyumeZ+stvv39xLTh+JeRoPe8iJjqX+J1x7skQuN0
	oKLGKRJM39tERaEnGfYi02Np54iluTtVW7j6TAb8D1rXNMQtGfEhL8S5GB8gKmYj
	X3eE/MyLc7ecIfZGivYYJkoHxluMyC9MPZVMmh58iCe0eWehDAJTo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7e6y78AGe6CFfheSQT
	laEh4QE6fXg9LPpurA+zdvcys=; b=R3rbBv+MCQOhAW0ljbhVyOMDtx8maLbi1w
	bYkwjUuGFSaY3FfuNJB+EXXQQKwFxXY0B+n2XRdMKECcXQ6K+ofICDZlIRD9/haK
	8OIc+mK7nWxWjX4GEPD2XP4NywfqCr15OC4YHolCNd4ZTy9yXq04P/VT2a+p3b5R
	HLc69yM+a3KH5rMwPEynVW+poAQn9bpBcqeXamKFakJCy4NCA8dYKXxBkHwRtUeX
	jT+L1ov2BTiJbcNcmtJc/atxOSJiDoZbF2eiNGVRa8RO+P8G53cFLy9lFoPtwyF0
	JUdPdi1YmHqGnoowZXEksqFK6QDj/TwcRnW7smMC6twkpE2K9Oxg==
X-ME-Sender: <xms:3oIgWUbmdxhjFdy9NR1Ot0LENG_eFX7dpY5pVZZghYEqWgaIH2uZVg>
X-Sasl-enc: BYS8u9sdTL1X7XYi78HedMuaOO9hf58LTHTJkhufBQmQ 1495302877
Message-ID: <20170520175436.GA30962@jasmine>
References: <20170520072632.z5nbivrdwmqm3soe@eldamar.local>
 <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline
In-Reply-To: <20170520152406.2339.3B884775@matica.foolinux.mooo.com>
User-Agent: Mutt/1.8.2 (2017-04-18)
Date: Sat, 20 May 2017 13:54:36 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: ImageMagick: CVE-2017-9098: use of
 uninitialized memory in RLE decoder
To: oss-security@lists.openwall.com

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 20, 2017 at 08:26:36AM -0700, Ian Zimmerman wrote:
> On 2017-05-20 09:26, Salvatore Bonaccorso wrote:
>=20
> > Chris Evans discovered that ImageMagick uses unitialized memory in the
> > RLE decoder, allowing an attacker to leak sensitive information from
> > process memory space. There is missing initialization in the
> > ReadRLEImage function.
> >=20
> > Original article at:
> >=20
> > https://scarybeastsecurity.blogspot.com/2017/05/bleed-continues-18-byte=
-file-14k-bounty.html
>=20
> It was good to see the discussion of how GraphicsMagick was affected, or
> not.  I would love to see that in all *Magick weakness reports.

Chris Evans' report (copied in the email you replied to) says this:

GraphicsMagick vs. ImageMagick, again. Well, well, look at this :)
GraphicsMagick fixed this issue in March 2016, for the v1.3.24 release, tuc=
ked
away in a changeset titled "Fix SourceForge bug #371 "out-of-bounds read in
coders/rle.c:633:39" (see the second memset()). This is another case where =
tons
of vulnerabilities are being found and fixed in both GraphicsMagick and
ImageMagick with little co-ordination. This seems like a waste of effort an=
d a
risk of 0-day (or is it 1-day?) exposure. It goes both ways: the RLE memory
corruption I referenced in my previous blog post was only fixed in
GraphicsMagick in March 2016, having been previously fixed in ImageMagick in
Dec 2014.

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAlkggtcACgkQJkb6MLrK
fwgiMg//ds24CRVz7gI2V/uZHza73VQN2wUux6kQrPY5ncLIDFSvc1BulvgbH8gU
tnATzd00BvE3KYlJklLPlranlXvZPdKfHEXZXMrSrDRLwNvZWb3vnnsxpJryM5f9
MLd6qxb3bFnwv0j45ZFmr0T+AInbHs/HeGnXraaBzfPcUp2gXs77LSAuZ3DS1vZ2
T4dckv/dQPV/FWViiO6mRRjaZ8Kr+8kgQO2suOsOEBrRO1c9mZVTdBGPA7mioGF/
eyHsHiz0CfyCCEu2AJ+R0lakm8OFQfpO2puAdqcWB9a71q/2mRbg4/pSPQwNgOq9
L4u5U58WDTMdx0CbkDFeWarzx+KmNTLSc+CT8RPmA2z9aOGbRS91rMoE3FHrRpwR
cxg3kAtKrsVeAWFHusvr8vBN55uDP+ubZZeOX8vJXH7XSnBZLxoP/JDO29/weoe6
H6kSKeMiDvkyhtOlbAJgeaIplqirEAXKz8axrqY0HnVwZvqVHq+Im3R/D7lA0m5p
DSu/vyRf7LB8oeNz+LfJLQzB/lBS1sqKeToXQYAk7CuRUxCZOTd3w8w7kaQaqVYS
EYgrQXhlqukAGIrA22qBUZ7PEVPNLQhiL3Z/qHSnjzflYjQzL9Plh17zA7Mnv9/N
9BmNUHg+3CAkaks1OGvSTSEXQVm+DW7mxwif8WEXpFKe/28Q4oI=
=Tf5d
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
