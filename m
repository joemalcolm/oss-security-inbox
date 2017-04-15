X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1598" "Saturday" "15" "April" "2017" "11:19:35" "-0400" "Leo Famulari" "leo@famulari.name" "<20170415151935.GA9162@jasmine>" "43" "Re: [oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" "^Date:" nil nil "4" "2017041515:19:35" "[oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)" (number mark "        leo@famulari Apr 15   43/1598  " thread-indent "\"Re: [oss-security] Re: libsamplerate: global buffer overflow in calc_output_single (src_sinc.c)\"\n") "<2348591.dvo7L7yzgS@arcadia>" ("<513133.504052774-sendEmail@localhost>" "<20170414192740.28134.332C76E5@matica.foolinux.mooo.com>" "<2348591.dvo7L7yzgS@arcadia>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5520 invoked by uid 550); 15 Apr 2017 15:33:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29907 invoked from network); 15 Apr 2017 15:19:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=8BUF2WuzUYkRmBirDdZtaeAXTDA62eo1tz5L73
	lnobU=; b=p2mdBy2QymkblwUESlc/rrSmtF7jFH9lafn/J+d/38A2yzBxN+dZxE
	FilMtmFp/GN30FrhliN+cSUc/QF3bO07Q11OXKOnMaLxE7AIhbkWMS10WnscOgFF
	kqD3QCyHDnuZ0GuvildMTqOET3LiXwljwPEVZPgy5yAiqrM+eLESQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=8BUF2WuzUYkRmBirDd
	ZtaeAXTDA62eo1tz5L73lnobU=; b=JR0cVa53fVWsqQV6u73O2EeIg8veZ7OtYM
	/nQWifS1jPtr1eDMRJg0+IG6hwsFLfMNXMzsK9LaLme21HDCfhA3Tp3j3Wdpilxf
	uR+JXdLL8LUNFl/YBgqTjM3XLJMRTl5zPMFo1xVamxWkrfc1TRnEkAJD6iFxTEE/
	Ww0xUL3QtMwtzrTxzVQH1eBD4VtxSd2JDMBsz+hxzwVW5n4/GN5xGf+NNAzwi2sR
	PRq9NafjbNCRMNsol7FMjV5B7bWWJSp6kwbkstV9IJEN131s0YlKCq+fY6ZAb1/v
	XTEuuaflZnYKoMft8AG4PuwVUM9y7J2NMJrJ4OgdTmC5uIKWWZYg==
X-ME-Sender: <xms:CzryWA1Z8Ppr3z-K4FvyYmGKAYr-dxyIsantBF3HiCYUAedQW1MYYQ>
X-Sasl-enc: Pf2B/9bCNdFotDl9572t1xpmqX+2C77i4UkmTxbsUMdK 1492269579
Message-ID: <20170415151935.GA9162@jasmine>
References: <513133.504052774-sendEmail@localhost>
 <20170414192740.28134.332C76E5@matica.foolinux.mooo.com>
 <2348591.dvo7L7yzgS@arcadia>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
In-Reply-To: <2348591.dvo7L7yzgS@arcadia>
User-Agent: Mutt/1.8.1 (2017-04-11)
Date: Sat, 15 Apr 2017 11:19:35 -0400
From: Leo Famulari <leo@famulari.name>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: libsamplerate: global buffer overflow in
 calc_output_single (src_sinc.c)
To: oss-security@lists.openwall.com

--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 15, 2017 at 01:08:15PM +0200, Agostino Sarubbo wrote:
> On Friday 14 April 2017 12:29:16 Ian Zimmerman wrote:
> > Should this be 0.1.8 and 0.1.9 instead?
>=20
> Hi,
>=20
> I dind't understand at all what you would to change.
>=20
> The affected version is 1.0.8
> The fixed version is 1.0.9

For some reason, the most recent two release versions are 0.1.8 and
0.1.9, but the commit announcing the new version says "1.0.9":

https://github.com/erikd/libsamplerate/commit/f6730d03c3e7660bb6ecad8816f1b=
09c5825142a

--BXVAT5kNtrzKuDFl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAljyOgQACgkQJkb6MLrK
fwiM7g/+LLJjuXf2P/xcPn/L9CqWPe+TPl/oDxX1ec1mPkgA0cCtjzhtgnrEqCsQ
uW0gLBqTxAo4itJ8rQsocmjHRVY4uBGbSZDYjtEWKUAaLbOpPmUqBy9Ors8k9W4Q
Xd63AgAI9oNxy1cSbwM2BTLb82qXlMS8dNbRsLIoMp5AVDGhfKCIJSnpfrhfGARN
0gCnhBeAylSgA8/Dk96k4jaROfn48I5+07EatVDikKRkyW2xhKKrGdrTryeBKOtB
zHs63LtHXHQPD/kXlc/q/eYR5kWQu9WsUkJaNQca90PXeJQniYUfiPdUjoXhitqE
CXAnUmSK4/iGdz3MIsIhf/v6S0Y5TzfaqRM/ZK7wtv07LrYfw1zs1PMklV1vjJXV
wijivM5E8U0Og9FFPvD6STv8YISlFpm3x0NjwFUagh1MDsrJFHgSxYQuLsVlI01B
pnmnx73YZI5yhqHriTklSA+CHmsWae8zlEr7+ELPUhkVJ8s3XXmWF2HMkQ0AI8zD
m6ku+2vHfiJcRzqHotV72fpJz3J9lOlbMb3kAO9J9Qji45Wr+frnsOM39RyddZhH
77JaZAU/I3goH6EBKlmo/GHan2429TWfjNTFtZID5f7Ztchx3UmQ1Wm5U9oIdFYG
rgqtyqfIxJqJD6UHYJJ5/xGCei9tQWMfwoPQwPGMDx8jR3VT958=
=Jq5D
-----END PGP SIGNATURE-----

--BXVAT5kNtrzKuDFl--
