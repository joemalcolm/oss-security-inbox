Received: (qmail 5707 invoked by uid 550); 29 Oct 2025 17:55:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13706 invoked from network); 29 Oct 2025 17:45:25 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 4DC634E40D4
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1761759915; cv=none; b=Hq+UA4/sZx/3hauvXzotkFJ/iVrHdo0RznNLLkRGPbC7EaPdsDGGp37gRSCkiOEWPW++yoWWzpzyheba6B6KicEPmLFXKn4gQwyb9dvd1/s4ktR1WzpSWhuNfAbLvkRfbC0/4/LeGdw+bzJkcjGusMc4dRYn89c/BtdkWQ6hTAw=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1761759915;
	c=relaxed/relaxed; bh=8rhdkCwC2cu7lIni60PxhWz7F4AzsXlKSZ+vepusDro=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=pNA7ra0jNk+CTDSZH/r1+JKrSACIt4gcQch5NnWPx3VbKSiv99dREAaSAGqTxJgL74fsPvcmU5Xi/iJQ0uFD8Wx1CfuuMOBt0ui0p7oWSMvaKyvzmHw7zsVHNBnWHJs8R3l2fHk6tIUcnVQGxuC4lh+g5cJcLIrPzxXdpPnfQ+s=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 4DC634E40D4
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1761759915; bh=8rhdkCwC2cu7lIni60PxhWz7F4AzsXlKSZ+vepusDro=;
	h=Date:To:Cc:From:Subject;
	b=Te24HOQiScfLAl2dmHTUk9m4C1qWnE0Y2i7JXB5TA+kqODUWxo70Qpg4tfLvpvg1X
	 Fhgz90rpw69rM6E6g2zqCmBQ24/TGJ7ELj5bV0lMbvFk6S2muWnTuT2pQGbgH0w/Qe
	 yXnD7wpPlMJdFNAHT9t2c/LyljP7VFyRnHiaDkGc=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org 340572E601A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1761759915;
	bh=8rhdkCwC2cu7lIni60PxhWz7F4AzsXlKSZ+vepusDro=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=Em/aMjPRAs64vJBdm2RwO9zfV/LVA2mAPHHlfzAmGy38ck7wb5rhP6ky7pFcEOIZ0
	 Lm7XbuX8/xqIXNPkBM98lPFWAPiR2xOvMHXO3b0/NH4Rs004YNCkLlB68iZhoKH/Sv
	 itD3i3KW/uQkAJCgJd9mss4VsigRXLsksOdnOQOM=
Message-ID: <36f5d22a-8717-4be3-94b3-c658e4615fb1@isc.org>
Date: Wed, 29 Oct 2025 18:45:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: pl
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: Wlodek Wencel <wlodek@isc.org>
Autocrypt: addr=wlodek@isc.org; keydata=
 xjMEaMBUWBYJKwYBBAHaRw8BAQdAypoBiVCYM7o0s0dEoS4b/rBQW7jjhtbHkQiljQ7zuRTN
 Hldsb2RlayBXZW5jZWwgPHdsb2Rla0Bpc2Mub3JnPsKJBBMWCAAxFiEEspSmYTBO8oAaYk1M
 L1jKGrzLJXIFAmjAVFgCGwMECwkIBwUVCAkKCwUWAgMBAAAKCRAvWMoavMslcpNxAP48IIZf
 UkJ3FB/GN99h18SF5i9aS0/dlkjICHDhEZQA9QEA0aPvm51k4xLyKs3jfubVJUC7skotlNia
 xlLBCIeL8wbOOARowFRZEgorBgEEAZdVAQUBAQdAM5xbVWWaafg6EBW2gTzyKAnXk90eNUGu
 J+EKwI/ylGADAQgHwngEGBYIACAWIQSylKZhME7ygBpiTUwvWMoavMslcgUCaMBUWQIbDAAK
 CRAvWMoavMslcg9XAP9A1KGG18VVtWITD9m284+UiDcF7Joz352QqLIbbUWzkgD/Y67Aol0+
 g+TlI8HfIEDguRUN22WBIUzKn2jlXHex3wk=
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------MhAviaMEdPi2Cc077ENYBnAL"
Subject: [oss-security] ISC has disclosed one vulnerability in Kea (CVE-2025-11232)

--------------MhAviaMEdPi2Cc077ENYBnAL
Content-Type: multipart/mixed; boundary="------------CcBtsRTaJmplGaWPiyvWVY5B";
 protected-headers="v1"
From: Wlodek Wencel <wlodek@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <36f5d22a-8717-4be3-94b3-c658e4615fb1@isc.org>
Subject: ISC has disclosed one vulnerability in Kea (CVE-2025-11232)
Autocrypt-Gossip: addr=security-officer@isc.org; keydata=
 xsBNBEsnyOQBCAC+WKYHcaDGD9a2ztwdccmhnzo0YJ9SOPVIonqGxCa6o8TwfipyH9Wh5uFq
 c6Ne+I0+vWohQtBIeodQHgGGlbjdxMp3QxohvqCmZcoObH7kjI1lpKQ6TMvRvo79pq5WRIuE
 +Jbm6Rt9Hz3w9APrYzISzeCuHFK7vlZfaLdoI0SxzEuzMmyOvQpa6dgSKQF6G2Nsbz1RYujZ
 6fE6GXtc+I9q44yJS4llYpUqYpPh5CsfbDx8HwMWPj9eYOwjf3/vniFeG9tHIB8E+p7UBTG7
 bTVRlEgmyC1Ry0OPO3UPKjL/Dja8IeeJamT0dlsRCD/O/WTyxQg9EceCgUvOz65puKkrABEB
 AAHNL0lTQyBTZWN1cml0eSBPZmZpY2VyIDxzZWN1cml0eS1vZmZpY2VyQGlzYy5vcmc+wsCI
 BBMBAgAbBQJLJ8jkAhsDBgsJCAcKAgQVCggCAh4BAheAACEJEL2X3GOe6MR7FiEEempHtfnh
 IzrSVStcvZfcY57oxHuBlggAji5JpfsfBTbLBoI7vurk79nPOnoz46L7PsbTQYWkAIxINKNf
 yRtmgghbsVdv1RL/1cvCoO2OWsY4tt3Nxn/4Qywkz8elPv3pgfxj2AymwflJmrmAHJ6C5Poq
 COoXbDzI1fv+vQAzemx9VK/2Xn3kKglY1sMEeoamoyLnlKoosJA4nyegOnjH4lU1wnUB0r9B
 VKT6ASEuqu+hg3IbwH8LYsvV8FALywWRf8zWYqWQzzcacmU9YKuKDr1WVH6t6WmkS5nkbfjP
 3dz020Kp0frMvPN6PaqbAtv91gli+EQQwOWC+VJbDrJolO64R+6oeieuA5NeBvcufwDtckQK
 5KBass7ATQRLJ8jkAQgApSytjgDEXzse8ESqEJci3WjymXNWghPmRj+nafjxT6g0aXm/io2I
 LhJBki+wD4Vx7DwGEBhs0VM6wr80pU7KIuQs6pCeS4GURLPO8xyXSBK5fW331XZImkIq6QJr
 6ORNyMmdRE4Mmflan0YsBZe63Em8mdO3ijFycAq6fpm3W/I5CzaUj3NcJOLwB0MpOID8Szro
 I9UJFwwVRLqX0Cs3nuBQ/QpGPw3Q585A93NKGcatJ20zQPYSLamZRyCS9Ih41TkdF3aIylYY
 7UvzJ8ZC+nt3ONZsbuL/ZFOdn4pHdrY4ya1dQ25ZAXcB+iFLRNFMBwBHsiA4vPLLamtP1cq0
 JwARAQABwsB2BBgBAgAJBQJLJ8jkAhsMACEJEL2X3GOe6MR7FiEEempHtfnhIzrSVStcvZfc
 Y57oxHs3tQgAuAPimXUYtPIAcRuISrr6S9Hx38J1Zqy0d/XNJkEfbRPolHDns6hEd89n5/2Z
 uZzE2XGrswlzJhV8ClpRrn4g611aigshB5GMgZ591PZLEYoKPHhv19/ht1EvZNHOxX1miKzm
 NiHRllEInNBDTrv/eFQBWpXiOAQUL5wyGOoa+BZteKl4LLBe2MHBK3qFFPgMoWHOdrZQ7LFP
 Q1Gl/75+zg+NhSM6VM4FMqGfe1LT1/pvT+WDdk3nqtIlZHMcZk/cLjWAgmW9VtN4b3APLsL0
 ZDQ23UP/3ZmtoF3VD6F3wSU+JC6NfyleRopjx3Z9Ide9hNUSi4CrayefE1UyelFdaw==

--------------CcBtsRTaJmplGaWPiyvWVY5B
Content-Type: multipart/mixed; boundary="------------Ylm7G0kqn15DopWdEdZUw8sR"

--------------Ylm7G0kqn15DopWdEdZUw8sR
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjkgT2N0b2JlciAyMDI1IHdlIChJbnRlcm5ldCBTeXN0ZW1zIENvbnNvcnRpdW0pIGRpc2Ns
b3NlZCBvbmUgDQp2dWxuZXJhYmlsaXR5IGFmZmVjdGluZyBvdXIgS2VhIHNvZnR3YXJlOg0KDQot
IENWRS0yMDI1LTExMjMyOsKgIMKgIMKgIMKgSW52YWxpZCBjaGFyYWN0ZXJzIGNhdXNlIGFzc2Vy
dCANCmh0dHBzOi8va2IuaXNjLm9yZy9kb2NzL2N2ZS0yMDI1LTExMjMyDQoNCk5ldyB2ZXJzaW9u
cyBvZiBLZWEgMy4wLjIgYW5kIDMuMS4zIGFyZSBhdmFpbGFibGUgZnJvbSANCmh0dHBzOi8vd3d3
LmlzYy5vcmcvZG93bmxvYWRzDQoNCldpdGggdGhlIHB1YmxpYyBhbm5vdW5jZW1lbnQgb2YgdGhl
c2UgdnVsbmVyYWJpbGl0aWVzLCB0aGUgZW1iYXJnbyANCnBlcmlvZCBpcyBlbmRlZCBhbmQgYW55
IHVwZGF0ZWQgc29mdHdhcmUgcGFja2FnZXMgdGhhdCBoYXZlIGJlZW4gDQpwcmVwYXJlZCBtYXkg
YmUgcmVsZWFzZWQuDQoNCg0KV8WCb2RlayBXZW5jZWwNCg0K

--------------Ylm7G0kqn15DopWdEdZUw8sR
Content-Type: application/pgp-keys; name="OpenPGP_0x2F58CA1ABCCB2572.asc"
Content-Disposition: attachment; filename="OpenPGP_0x2F58CA1ABCCB2572.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEaMBUWBYJKwYBBAHaRw8BAQdAypoBiVCYM7o0s0dEoS4b/rBQW7jjhtbHkQil=0A=
jQ7zuRTNHldsb2RlayBXZW5jZWwgPHdsb2Rla0Bpc2Mub3JnPsKJBBMWCAAxFiEE=0A=
spSmYTBO8oAaYk1ML1jKGrzLJXIFAmjAVFgCGwMECwkIBwUVCAkKCwUWAgMBAAAK=0A=
CRAvWMoavMslcpNxAP48IIZfUkJ3FB/GN99h18SF5i9aS0/dlkjICHDhEZQA9QEA=0A=
0aPvm51k4xLyKs3jfubVJUC7skotlNiaxlLBCIeL8wbOOARowFRZEgorBgEEAZdV=0A=
AQUBAQdAM5xbVWWaafg6EBW2gTzyKAnXk90eNUGuJ+EKwI/ylGADAQgHwngEGBYI=0A=
ACAWIQSylKZhME7ygBpiTUwvWMoavMslcgUCaMBUWQIbDAAKCRAvWMoavMslcg9X=0A=
AP9A1KGG18VVtWITD9m284+UiDcF7Joz352QqLIbbUWzkgD/Y67Aol0+g+TlI8Hf=0A=
IEDguRUN22WBIUzKn2jlXHex3wk=3D=0A=
=3DFvog=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------Ylm7G0kqn15DopWdEdZUw8sR--

--------------CcBtsRTaJmplGaWPiyvWVY5B--

--------------MhAviaMEdPi2Cc077ENYBnAL
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQSylKZhME7ygBpiTUwvWMoavMslcgUCaQJSpgUDAAAAAAAKCRAvWMoavMslcrqI
AP9FRAcs7pCRwk0GLtIM27ttNzNAG2qXNkPVHgG2SG0u5AD+IUMSLeJVL3RWehWTYvzQv5/SUPgL
2hPcfJ/nx7u+9g0=
=qULq
-----END PGP SIGNATURE-----

--------------MhAviaMEdPi2Cc077ENYBnAL--
