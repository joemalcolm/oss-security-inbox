X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4446" "Tuesday" "31" "January" "2017" "14:19:58" "-0500" "Leo Famulari" "leo@famulari.name" "<20170131191958.GC16979@jasmine>" "93" "Re: [oss-security] CVE Request: ffmpeg remote exploitaion results code execution" nil nil nil "1" "2017013119:19:58" "[oss-security] CVE Request: ffmpeg remote exploitaion results code execution" (number mark "U       leo@famulari Jan 31   93/4446  " thread-indent "\"Re: [oss-security] CVE Request: ffmpeg remote exploitaion results code execution\"\n") "<835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>" ("<835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20130 invoked by uid 550); 31 Jan 2017 19:28:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28432 invoked from network); 31 Jan 2017 19:20:10 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=famulari.name; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=eAMY/8m2vgAZLkSzWpIGxRzOWjY=; b=xjMDug
	zu5ahtJngq7IlMJo1ghl+dHD57sYViJe5Wrfm284nr4Y4keEuM9T7qckOvj5plcN
	+jgg2DhsHySO2MiCcyGphQQ7lp+RUJ/40BH0bdIcpKdlH/tc9+WW2+FBiVWMmjIG
	uhIHgyzqI7P6H3KuxbZvvgo6/PYDOl0UWrygE=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=smtpout; bh=eAMY/8m2vgAZLk
	SzWpIGxRzOWjY=; b=CT3PqkpxoGjKpUM57QNwCw+AvuoBQtdfYeM9DT//VKBoKt
	EGbPQK3T1i9l6WDeYRtkhY221rH/RaoEmGgmi9uH62W6ppB4Fc/+AUSpZnotB2D4
	/0OIJ1BTXBRtrhHlt8WRTGxNUyz1IzbsvwPxOfK3kgqyeXlRbzz9iwWkc93uM=
X-ME-Sender: <xms:XuOQWFZcmF945-w7fWsCUwR5_6zxy3Q6q6odkuCkGEq-jPwX0rJBSA>
X-Sasl-enc: Ccg/GROsn547ydahB1R8VFTh5FWzPmkK4j51WvkcxTmO 1485890398
Date: Tue, 31 Jan 2017 14:19:58 -0500
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Cc: =?utf-8?B?0K3QvNC40LvRjCDQm9C10YDQvdC10YA=?= <neex.emil@gmail.com>
Message-ID: <20170131191958.GC16979@jasmine>
References: <835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8NvZYKFJsRX2Djef"
Content-Disposition: inline
In-Reply-To: <835F27A3-C4DD-4E9F-B6ED-8D271C083B42@seclab.cs.msu.su>
User-Agent: Mutt/1.7.2 (2016-11-26)
Subject: Re: [oss-security] CVE Request: ffmpeg remote exploitaion results
 code execution

--8NvZYKFJsRX2Djef
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

In case anyone else is curious, here are the corresponding commits
reachable from the n3.2.2 release tag:

On Wed, Feb 01, 2017 at 12:40:54AM +0900, Paul Cher wrote:
> --[ 1 - libavformat/http.c  ]
>=20
> After executing of http_read_stream we read each http header, where we pa=
ss "Transfer-Encoding: chunked=E2=80=9D header, and we come into http_buf_r=
ead function [1]. Due to incorrect use of strtoll function and integer size=
s (chunk_size in int64_t)[2], it was possible to pass negative chunk_size i=
n chunk encoding, so after computing final size using FFMIN function later =
on it would be passed as argument to avio_read function. This results a hea=
p-overflow which we found out to be exploitable, because overflowed buffer =
is allocated right next to the AVIOContext structure[3]. Overflowing functi=
on pointer in this structure immediately results rip control and then code =
execution.
>=20
> * [1] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96=
acc6cbddd050a/libavformat/http.c#L1166 <https://github.com/FFmpeg/FFmpeg/bl=
ob/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/http.c#L1166>
> * [2] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96=
acc6cbddd050a/libavformat/http.c#L1259 <https://github.com/FFmpeg/FFmpeg/bl=
ob/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/http.c#L1259>
> * [3] - https://github.com/FFmpeg/FFmpeg/blob/51020adcecf4004c1586a708d96=
acc6cbddd050a/libavformat/aviobuf.c#L899 <https://github.com/FFmpeg/FFmpeg/=
blob/51020adcecf4004c1586a708d96acc6cbddd050a/libavformat/aviobuf.c#L899>
>=20
> This issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/2a05c8f81=
3de6f2278827734bf8102291e7484aa <https://github.com/FFmpeg/FFmpeg/commit/2a=
05c8f813de6f2278827734bf8102291e7484aa>

https://github.com/FFmpeg/FFmpeg/commit/0e0a413725e0221e1a9d0b7595e22bf57e2=
3a09c

> --[ 2 - libavformat/rtmppkt.c ]
>=20
> Issue is connected with buffer overflow on the heap in RTMP protocol. Aft=
er a bit of reverse engineering of RTMP protocol you can notice that it use=
s chunk (of max 0x80 bytes) to _transfer_ data, but chunks of more size cou=
ld be used to _store_ the data. Because size of packet is not check that it=
 is the same as it was in the same transmission you can first send packet w=
ith smaller size and then bigger size, and this results heap-overflow[1]. I=
f you can align chunks right you can achieve white-what-where condition and=
 that results and RCE.
>=20
> * [1] - https://github.com/FFmpeg/FFmpeg/blob/d903b4e3ad4a81b3dd79f12c2f3=
b9cb16e511173/libavformat/rtmppkt.c#L268 <https://github.com/FFmpeg/FFmpeg/=
blob/d903b4e3ad4a81b3dd79f12c2f3b9cb16e511173/libavformat/rtmppkt.c#L268>
>=20
> The issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/7d57ca4d9a=
75562fa32e40766211de150f8b3ee7 <https://github.com/FFmpeg/FFmpeg/commit/7d5=
7ca4d9a75562fa32e40766211de150f8b3ee7>

https://github.com/FFmpeg/FFmpeg/commit/32b95471a86ae383c0f76361d954aec511f=
7043a

> --[ 3 - ffserver.c ]
>=20
> This issue is completely like the first one and it results heap overflow.
>=20
> This issue was fixed in https://github.com/FFmpeg/FFmpeg/commit/a5d25faa3=
f4b18dac737fdb35d0dd68eb0dc2156 <https://github.com/FFmpeg/FFmpeg/commit/a5=
d25faa3f4b18dac737fdb35d0dd68eb0dc2156>

https://github.com/FFmpeg/FFmpeg/commit/c12ee64e80af2517005231388fdf4ea78f1=
6bb0e

--8NvZYKFJsRX2Djef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEsFFZSPHn08G5gDigJkb6MLrKfwgFAliQ414ACgkQJkb6MLrK
fwim/g/8Dzzu7pUq3+qdgduz8mt2HkvBU9YOrqdnUHX2pZa+OQzSYkoJyowv+pE2
zop2/d48WCE8gKupURwVSW625h1k4TarZzVBk8VSxdLYmB/GpJpWEHTI18JVvER4
/+FpVAFUtXnrCphYuTvwbmBNrbJsPW+hcrOYeZXRjyJpGBc+fjLo5WNtC+4jQ0sT
Q+dG20FuWbkg3Pqhke7azjp3DV2I626vOS1k4RG3sQsBEdx/Kye1LQ/bmpQfzjmJ
1iFWLLXiB/bvN/nSJxBene0+vM0BRBNrTtiKnzLsKpXvIrK904yUyWkldseaSDvH
0kDQuzDmga2ncOc2ja4gk9LVMHIQa+6Rn5IF74i7MoSipspW4Hqj1SMwiNiJ5/Nt
QKS4+ddsv70engpIdb3uDScAXZlz8a4Jff+m+DuHKam4N3+VUlP+yGCupHoPm4q1
95nyOrFccGWuJlYVPCqB9kvzCo9d75eO6UGGd/r6fX32yAcgEst/scLUWWvuIEGG
9g3U6ocJ9YiaLDcz3WqrJDKqo8PAi6w+sz7E6m7PCAnemV5+nTj4rpLyXx+njJvu
DB9Qddx2jhxuuDFxL2S3Iq4GrXPEXdktf3kLd063Pxm9iZDCrEOThrGrewVBNVBH
CIyp/qNXyIYiimUBWFXSzp1ehylI4Sp+3RkNvN71CIdu9O/rT44=
=246l
-----END PGP SIGNATURE-----

--8NvZYKFJsRX2Djef--
