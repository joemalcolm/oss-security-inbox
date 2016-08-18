X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1501" "Thursday" "18" "August" "2016" "17:37:20" "+0100" "Andrew Gallagher" "andrewg@andrewg.com" "<39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>" "41" "Re: [oss-security] Re: Libgcrypt and GnuPG 1.4 RNG output prediction" "^Date:" nil nil "8" "2016081816:37:20" "[oss-security] Re: Libgcrypt and GnuPG 1.4 RNG output prediction" (number mark "        andrewg@andr Aug 18   41/1501  " thread-indent "\"Re: [oss-security] Re: Libgcrypt and GnuPG 1.4 RNG output prediction\"\n") "<87pop7utyu.fsf@wheatstone.g10code.de>" ("<20160817165819.GA24935@openwall.com>" "<87pop7utyu.fsf@wheatstone.g10code.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26540 invoked by uid 550); 18 Aug 2016 16:40:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26100 invoked from network); 18 Aug 2016 16:37:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=andrewg.com;
	s=andrewg-com; t=1471538255;
	bh=xvPmqrDmtS/Cf/bOhNSFpNfGQQm4Z/qTkkll3fSjaiM=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=XX1FB1OBHZQ9+Byf+dt2LBBJMEYwv9md9sd+LjkYOYFPBLPwXiizE4BnAFlUW6D/h
	 cBuEfPYRPPviS9yqP25XqXGQx67KQgAgUWZOAvcHAaQv60xsYzc27V9zFH4dx4nNo9
	 LBlcXPLTwY5R+gWRu5+aZheqKiQt6n5+KB07zCe2DWorHBg5pZcx1n4zN8bLi91Rgk
	 pzx4r1CvPBZOQ+qdjJeq9E/BuqvtAbQS+Rl7YgSF/h0mnrKKKk3pEzWjhbVW3+h3hh
	 YNs9V3ZIWd3nUquJ1F2VyGIuMRVAB5GzuvINuOxO5eyy2J16pBDoJS4aOmq3oo065p
	 l0MNQJpgqMJKg==
References: <20160817165819.GA24935@openwall.com>
 <87pop7utyu.fsf@wheatstone.g10code.de>
X-Enigmail-Draft-Status: N1110
Message-ID: <39a367af-c84d-01cb-36eb-6732edfbdac2@andrewg.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <87pop7utyu.fsf@wheatstone.g10code.de>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="MwnCLuPCfpRAWdWrGaHMtM3D7SqrFaBvs"
Date: Thu, 18 Aug 2016 17:37:20 +0100
From: Andrew Gallagher <andrewg@andrewg.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Libgcrypt and GnuPG 1.4 RNG output prediction
To: oss-security@lists.openwall.com

--MwnCLuPCfpRAWdWrGaHMtM3D7SqrFaBvs
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On 17/08/16 19:32, Werner Koch wrote:
>

Well this is an interesting glitch.

Werner used PGP/MIME, but something appears to have deleted the first
mime-boundary, rendering the message unparseable. If you view the
source you can see the plaintext, but MIME mail clients (including the
openwall mailing list archive) can't.

A



--MwnCLuPCfpRAWdWrGaHMtM3D7SqrFaBvs
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXteRKAAoJEFwexATVkGYpb4AP/Rt1C/gQGdNAS2hopKPDxOyB
eMCHYbsKyAjZF3Jqd0SEIhqX+NFjEax0Z7aD08mVArraeu7SffITSdQ8FeSHMrDe
kvYzRHmmtjhhsC71cRdtiTQEGNPG1PzxtFCXTSJf+cB7mdF0JTLrdy7v52t2c6vy
gIm4hnMlzaUWoiCy1rfw0E/VNnJ5AMqz2vqySTfu967X5gmln3iTDWXnKuq1+rCi
TijkElxN821b/Virr2m9ILDzy2OB6d51qfMBodmZUqzE9UpLRYhyo8yw5nogrtqy
LuVMAgqIZy5Fm5kXMUyr8ZEIJl+TJ10/q13oZiVs1f8p4ccaIaylEZkT3ZStDwhs
l/Rq51PjqedBu1ySUEcvIL61HAWWTPfzR5kMfYp+GZujvtcxAztFLq61dPHpWsx4
H98k2EnYLoPMqHPWVeRdCxL/770GvmonhjbVAPTelU5VAwMAhksNxXEUTHZIwEkZ
7diUj7+l+i/HUoergtvozZ2rpCMzf+DaW6zSll6R1GXYkL8nYjGAiiYwE+aCamax
Ne3gOn6aPFhAnPuTFNzFiGScGCCEw/qSS/ey+QGdDs0QLiNoX9GjvceHGiz4CPRV
tPT7yg/EeQhWyxZ6EdAIXNrWPKpiAa41xIZIsYGBiE1MQXyo8tuKQjz/gRimSqaG
MQuqE2xRlUiFtr9uVeBW
=c3dF
-----END PGP SIGNATURE-----

--MwnCLuPCfpRAWdWrGaHMtM3D7SqrFaBvs--
