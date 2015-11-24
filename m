X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1647" "Tuesday" "24" "November" "2015" "13:00:38" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20151124130038.00866a2c@pc1>" "48" "Re: [oss-security] Heap Overflow in PCRE" "^Cc:" nil nil "11" "2015112412:00:38" "[oss-security] Heap Overflow in PCRE" (number mark "        hanno@hboeck Nov 24   48/1647  " thread-indent "\"Re: [oss-security] Heap Overflow in PCRE\"\n") "<20151124125709.0448ee5c@fabiankeil.de>" ("<20151124113343.4382bed3@pc1>" "<20151124125709.0448ee5c@fabiankeil.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 5209 invoked by uid 550); 24 Nov 2015 12:00:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5183 invoked from network); 24 Nov 2015 12:00:43 -0000
Message-ID: <20151124130038.00866a2c@pc1>
In-Reply-To: <20151124125709.0448ee5c@fabiankeil.de>
References: <20151124113343.4382bed3@pc1>
	<20151124125709.0448ee5c@fabiankeil.de>
X-Mailer: Claws Mail 3.13.0 (GTK+ 2.24.28; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512; protocol="application/pgp-signature"; boundary="=_zucker.schokokeks.org-12068-1448366431-0001-2"
Cc: oss-security@lists.openwall.com
Date: Tue, 24 Nov 2015 13:00:38 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap Overflow in PCRE
To: Fabian Keil <freebsd-listen@fabiankeil.de>

--=_zucker.schokokeks.org-12068-1448366431-0001-2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, 24 Nov 2015 12:57:09 +0100
Fabian Keil <freebsd-listen@fabiankeil.de> wrote:

> The last sentence seems overly broad to me as many (most?)
> applications use trusted PCRE patterns (that get parsed and executed)
> to parse untrusted input.
>=20
> For this use case the issues above don't seem to require immediate
> action.

True.
I changed the wording to better reflect that.

--=20
Hanno B=C3=B6ck
http://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: BBB51E42

--=_zucker.schokokeks.org-12068-1448366431-0001-2
Content-Type: application/pgp-signature
Content-Transfer-Encoding: 7bit
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJWVFFmAAoJEKWIAHK7tR5C3Q4P/0EPSA8B/swhONgnjJ/MU6sh
M6Np/hiIIR0zRnMCwnzp0PdzqhbmzcFsKZIZC824iNB+60eBVrj+xCbM76jcSEZw
k4IryLV1Ht0Y11QGqayJEB4cTDMXwXg29V4R1LJ8GNL4TXns0ghdMD9wsVSuYy/B
pxtRwX5V1GZ0siIirFU4XFWtQ7BKUO7sse/C4pKoyy+uTzVK8HlDoUqAIqBqXSFZ
EQ8E96aMjqG5PLVGBjmgqI+KNMgG39dPTNUo3FOZXw4j/6mWAYDS30t4AIZ/6Dvu
Xkd0RpiUlrTh5+nrAX8QEemx/s+zwFF2xwQ2FWE41rI8tgXD7phI2d1y6NLG3zgG
IRdIp+w0oCC11QiA8gfa3DTirtdBrcPKZOBapr0Mgvlx9WvTUAYotJXsdfwmaAmm
hYzp7IzHiBifmxfpV2RzZqFDOSPz7RKpTw9hBUOfmg7NjqSsBypFvA2qJow+AC0p
ChO5VD6eE3ZFwh0PREm0iBPh5gKDU/h9HvqEu+2CeRrj6ZKHxRmzoarQf5nsEIpt
m4RqDcJBwBJOxa5l3ArGT9vwQsq/UyYw23CsVKR0qk6jxwXeLXx1FazuW2AY4OFb
QdtXseyPcGSzaRHQQLAe4ksx1TVdgpio6zp61b5SMX7W7eBSgIQbun1U4JPb+TS5
XmfDrA7/z6UXgvLnbLJo
=DjN8
-----END PGP SIGNATURE-----

--=_zucker.schokokeks.org-12068-1448366431-0001-2--
