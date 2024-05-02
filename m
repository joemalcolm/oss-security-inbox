Received: (qmail 25972 invoked by uid 550); 2 May 2024 14:09:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20245 invoked from network); 2 May 2024 13:48:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sambull.org; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1714657714; x=1714744114; bh=GLlNqyHdNB5vWIwlrZWJo82KrCZgavv2
	XhMV2ldWjBs=; b=lLINVUBxoB1gE6dNIXoCBh/23Q9ZqzxV+rXoraYvgTfNNTSE
	ujmwkA2HmzN7RQj3OzL+wdvJ/TIAIDM2ecb+juI2WKHmnWkXFIMl3J37U48jKXrD
	ujPHLzmoQ7E/vMBjcdQY37T2JV0/VsoWB+/LhmXmpIIOQKr14+SkQHSufzD7sIrI
	tC5KSLH2YB96KC8eBGuzzocTmFqXRY2cVkweL+q2x8sH52ZucxpVDpRgV+NLCtOE
	bBqcwVkkAfzO3503O8v/JkFBysMJ5MHr4GPpGbsjATtft5qxSSKJBnED0MdDZvZv
	n3yQSp+5nZPOQlSKIeTKnhB15+L7t9EYSKLVNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1714657714; x=1714744114; bh=GLlNqyHdNB5vWIwlrZWJo82KrCZgavv2XhM
	V2ldWjBs=; b=erXXkcbb/fkr0hsggJZmB0Q6fQiGU4MOq6AN9nwCzHKhfS7kvV4
	9l918cLlFa6TutbCpZKTxa72JihiqRcTTzwWy1I2QrlfooG6dooq5ebRkC14262Z
	+vr7SfbfFNBW2VPQJQZrTE99V2DwOQwhN8unY8PZ92fhatt/RBXqJSWM+eAnVCJy
	kNGi+RI3O6ESopyK98ktlTh3dG9wKDqDDSoSPiZVAzmTCXxW+UfUMeh4yX1lITiu
	Kwwl+cX5ucgdj3Zj3bK/i5JkHVSLkiFWrEPeDot5CLlTD3nrL1wRR3wivr10YNam
	F/z+gkFtnWjRJXWcuxEO7+n3AeD8ukCDtwA==
X-ME-Sender: <xms:sZkzZud53JxYfpYluu4ayfLXteoh8UWt39tM7DIZIpNEur0sZiyenA>
    <xme:sZkzZoONT9p3j1Bj2iVv5RYMKNsPnJP-hSv2nNfkFvy9sDhH8_gSa1qvBtcFu9NCn
    aqPrXCbISrKeg>
X-ME-Received: <xmr:sZkzZvhKJ3MKemd_hsiC7QGXbQ-ZROM07kjF7QJyguy9E5cgq_fjYCwaTn96gklT6H3xqoNQlMIsWCbm840dTvlC>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddukedgjedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkuffhvffftggfggesghdtreertd
    erjeenucfhrhhomhepufgrmhcuuehulhhluceolehmudellehisehsrghmsghulhhlrdho
    rhhgqeenucggtffrrghtthgvrhhnpeeftdeludevgeeikeeiueekieefffelvdehudffgf
    eggfeluefgteelffdtleegheenucffohhmrghinhepghhithhhuhgsrdgtohhmpdgptgho
    nhhtvghnthdrrhgvrggupdgptghonhhtvghnthdrrghtnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheplehmudellehisehsrghmsghulhhlrdho
    rhhg
X-ME-Proxy: <xmx:sZkzZr8nmcY3GN39sHPtSOQ_4x07dJIDMLI3Csl4ggji5_Wj2WIUOA>
    <xmx:sZkzZqtKQ6v2CZrJoOAEbugUxnHa8g2A826ANaRtxTI4ECucJhSOhA>
    <xmx:sZkzZiEJRwG3NaOXRevu_CtxQzFwbBkUTxZXMJku_UvwCvaonY46cg>
    <xmx:sZkzZpMafNhRJVixpFMNQe2Eh7zI9-RsLoiN-KptJsSPQsUdHmiZEQ>
    <xmx:spkzZj7ijpsV5xako8KUhAzhgz9V2XDMkwtHqkkFmEs3p4tZValENP9B>
Feedback-ID: ie6294588:Fastmail
Message-ID: <4a05754d4e8f49b8f1ce5dcacb91c2c44a8e1252.camel@sambull.org>
From: Sam Bull <9m199i@sambull.org>
To: oss-security@lists.openwall.com
Date: Thu, 02 May 2024 14:48:19 +0100
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature";
	boundary="=-c99SIr8BiZ5NDGs3tXuw"
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-30251: DoS in aiohttp

--=-c99SIr8BiZ5NDGs3tXuw
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Aiohttp is an HTTP client and server-side web framework in Python. This iss=
ue only affects
users of the server-side web framework. We've not seen any evidence of this=
 being
exploited in the wild yet, and fixes were already included in the 3.9.4 and=
 3.9.5
releases.

https://github.com/aio-libs/aiohttp/security/advisories/GHSA-5m98-qgg9-wh84

### Summary
An attacker can send a specially crafted POST (multipart/form-data) request=
. When the
aiohttp server processes it, the server will enter an infinite loop and be =
unable to
process any further requests.

### Impact
An attacker can stop the application from serving requests after sending a =
single request.

-------

For anyone needing to patch older versions of aiohttp, the minimum diff nee=
ded to resolve
the issue is (located in `_read_chunk_from_length()`):

   diff --git a/aiohttp/multipart.py b/aiohttp/multipart.py
   index 227be605c..71fc2654a 100644
   --- a/aiohttp/multipart.py
   +++ b/aiohttp/multipart.py
   @@ -338,6 +338,8 @@ class BodyPartReader:
            assert self._length is not None, "Content-Length required for c=
hunked read"
            chunk_size =3D min(size, self._length - self._read_bytes)
            chunk =3D await self._content.read(chunk_size)
   +        if self._content.at_eof():
   +            self._at_eof =3D True
            return chunk
=20=20=20=20
        async def _read_chunk_from_stream(self, size: int) -> bytes:

This does however introduce some very minor issues with handling form data.=
 So, if
possible, it would be recommended to also backport the changes in:
https://github.com/aio-libs/aiohttp/commit/cebe526b9c34dc3a3da9140409db6301=
4bc4cf19
https://github.com/aio-libs/aiohttp/commit/7eecdff163ccf029fbb1ddc9de4169d4=
aaeb6597
https://github.com/aio-libs/aiohttp/commit/f21c6f2ca512a026ce7f0f6c6311f62d=
6a638866

--=-c99SIr8BiZ5NDGs3tXuw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQS7LDpjuw7VQ6ct5tdf6SjNlibOKwUCZjOZowAKCRBf6SjNlibO
K4P+AKDIimVAc4kdyfd/cLcHg+f5dNAAnwCfbkyGLTyPZtxI0p1uocWpUqNnqYM=
=xQTM
-----END PGP SIGNATURE-----

--=-c99SIr8BiZ5NDGs3tXuw--

