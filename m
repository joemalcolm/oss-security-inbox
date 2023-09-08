Received: (qmail 25692 invoked by uid 550); 8 Sep 2023 22:17:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20298 invoked from network); 8 Sep 2023 22:12:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=s31663417; t=1694211153; x=1694815953; i=alexander.bluhm@gmx.net;
 bh=ss/aO3SSEtqV3swt2CLAPanGdAv610SeGIjLcQbFTao=;
 h=X-UI-Sender-Class:Date:From:To:Subject:References:In-Reply-To;
 b=iqADgE0lUIJ8wF3mEaPoAI1KVuaS8jjVL+OTYT4sHxeBrSbTywyg/PTTfIAaBo3BuCxVWj7
 H8TLH0EYU9Ntxa7j1pwf/96tHsHpyCNw2tia1dC3SzcAjfHKBTAF460vooRegEmILxb40rLwD
 KLff5tIJP14yBBzsrxP19QjpAyGG03RBWB9YVNDXbz24hlASj7TGADkaD/+g0iZTlGUuKTwSn
 v1hJk3cZVG2SMhlCG/iPScGQox7OH1k3VTVe9EHSFQRSge4RX2fFs3p8VzWrtLOQCsc9PHUb0
 D0OdFSVSHFXc/vXbX24c/65wOfwyWqWKndWocf8zOXgdBQ6jTawQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Date: Sat, 9 Sep 2023 00:12:31 +0200
From: Alexander Bluhm <alexander.bluhm@gmx.net>
To: oss-security@lists.openwall.com
Message-ID: <ZPucT1zmygLfWnPR@t430s.bluhm.invalid>
References: <50dfd9cf-a4c8-9b4c-6419-91f68ca45e88@di.uniroma1.it>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7vUU5rA4wxdDHTUN"
Content-Disposition: inline
In-Reply-To: <50dfd9cf-a4c8-9b4c-6419-91f68ca45e88@di.uniroma1.it>
User-Agent: Mutt/2.2.11 (2023-08-18)
X-Provags-ID: V03:K1:O6Q/cLIyQ5W5Y5EgoP2G9RgGsSxp/7H5TQYJobCrT4Rc9xCplCt
 ORxFHDY8lHeuhvXjiFL0LNOT985P+BlcsuHm6idDZBDqM/fmlQufSoNeh4jCcViW+Q+BBfE
 xgNsURrFbvrOQvt3XREoX0DX32lZppMT0b2sRiKssVQwYXT4vSWlCklfZfby7H8OmUNxcBr
 rWJuv7A3bsJ70Bv8MqwKw==
UI-OutboundReport: notjunk:1;M01:P0:5enFMDIh6ws=;4DaFXi8HN7x/QCJT0RKkcublusj
 zC+FhCHEInVM7UPrE4Lsn8//Pfv5geX7y4MXJj2Sm0dpw/OnzUhniFEFvxR6yekPaUO3ePcJL
 iUV8KdFDWaogprqXGabj6UvYYPj3DIUzeozOBNhzk+TXhR/e0eikoeGdUHmlS/pkbh8V12e9s
 YY8gaGmrRwWgEeNgWOb/kiqTQsHM37ThWY+pWBF9GuDDmNHfPpEDIWNEDfdd9ZSGNEOEK0F3R
 s49VoOc14+WvDsAOf2uGpILFVwMgDkTjdVlx2F5i9IixTCAwAJxvotv02A7jyWFj2vWxhAzYe
 uqI2VBGUz95TwzAEu8cc9rdvwrypd2Z9/xXGyLnqX/zTVNE1ih2Hm9iCpElyefXB76/51bLUI
 v4+Z5cpMskFN1FeTj8I2eHmk/ywZZ9feC+z8rDBmleszzKKdLzLJsR4+pe7J749ofRB0q+Ton
 d7s7+TDPWFf8mfxsABkGvPZ++3m9jWqeD5KLnsvR+mZPpaEpzs/fxlbcNR4MRwXet2vE8bfXZ
 0tFUTlS0JDUXpV7UjFlX67j7pHDTviUfK0b216vBjT2WAZQ2P6tK42ZBlhtfjcLoVQj2qLalm
 KkkS++crUXb1gIvnMEpQ8zcvjea+Iw6pq/00cqXYpus2yx3+PjgNwPCgvNYj8g6atAGIqm9nq
 ckXNQJafQK4lxPGVikuCeBHJ9VD1CbFBqAACfr1oxA9vPC5hOs5yiqvhMn5yTxVWSL45dAPzd
 k9icz+1B+L7uAVLmeEXPYPQMj3qfVDEJCp1BOfP/itbYFFjdVj6xq2l88r4Zmkd6d1YOZRbX5
 bceuKa8EdfgAL0icmGUPD+s2ZOCMYJHzmBYJZHazrEvDLb937+KwU1b+X8ir3PC+OjZlQld7e
 zpnwLJZuKnUdQC3A3xv74REqdCfPaeFkDJYwRGC1rMRh1HBtNowNIylNQHuWWizR8FS7TKhYp
 2Cr1XiCz3kpJMQUC4mcHp+jFuDA=
Subject: Re: [oss-security] CVE-2023-4809: FreeBSD pf bypass when using IPv6

--7vUU5rA4wxdDHTUN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 08, 2023 at 07:48:21PM +0200, Enrico Bassetti wrote:
> A FreeBSD with `pf` as firewall for IPv6 traffic and `scrub` enabled to=20
> reassemble IPv6 fragments is vulnerable to an attack that uses a crafted=
=20
> packet posing as IPv6 "atomic" fragment to bypass the rules.

I would like to mention that OpenBSD pf is not affected by the bug.
As I am the original author of IPv6 fragment reassembly, I have
just added a regression test to show that our pf drops such packets.

https://cvsweb.openbsd.org/src/regress/sys/netinet6/frag6/frag6_doubleatomi=
c.py

This behavior seems to be present since 2013 when I added support
for atomic fragments to pf.  The relevant code is in OpenBSD
pf_walk_header6() in pf.c.  There a bunch of sanity checks are done
for the IPv6 header chain resulting in packet drops.  This function
does not exist in FreeBSD.

https://github.com/openbsd/src/blame/cc53a24ce58eb2212822060db742650de2787e=
e4/sys/net/pf.c#L7076

bluhm

--7vUU5rA4wxdDHTUN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEHju+pGwg6gAv/N5NxfSDrd7oY4AFAmT7nE8ACgkQxfSDrd7o
Y4B2mA/9ECl/9TckBfx6WJjM4S0QfBIrLL2NH43Kv5Qza0JxhT9VviOiLE7+TU+a
mZEM0SsZpYLAHZods6C7QOsJHkseCUWpUXyg+VeRvlDKa38IAHR8T7zm4lgZ/SH7
15T73yTP0hR/zTpwY178ODiY4WPQtMEOOSmxrEQTfmYeMUM9kHfVwtxwuT+Wsccs
XgaTC3jVcbPcGddhvzESO4Nu1CvHiFkQ0h0ZBUq4S1DdEIRIdnKrgYCAaBOWZ+sz
5G9uNWMxug7rAYOGJaNX9LAsSaNwD5lyFos4o5WxydX5ZAxKtuKeFU3ePH5x6SLv
FM2Il0hQmwvkx76PDcnUXmeXLxqNqzHfc+uhRCUQVJwYfB4+Ts+5IokWtbcJWggw
9GcTbW2rTVorSzQ91PJhTTG1v3CW1zH1bMNOZykyoUgoKKRIFj6JHUSWBTa5i4Dc
xjCQabsOXiu6icCvslppdosqlE2cf+x+uXHKjS/weBfGN+H2BL41pnst+YlJFoOm
FRL7l20IcoRYSLZTjDL93Wm7opl0MJEcyRSzhjkSTW10d8HwV/1exNDugr6DGza7
ijs1u1N2HiZJhLDKxnSe4kOKMFdjb4z9Mtgo57QsMFTfZV9SDLgw06wdcu/+aLJD
dlppRgqbpvDb9lixnB1ps1qruL3EQiIdAZLpxfR+1bPDe4VhK7U=
=M8f8
-----END PGP SIGNATURE-----

--7vUU5rA4wxdDHTUN--
