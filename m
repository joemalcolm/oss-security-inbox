Received: (qmail 7448 invoked by uid 550); 25 Jan 2024 22:18:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1871 invoked from network); 25 Jan 2024 21:55:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.ch; s=s31663417;
	t=1706219848; x=1706824648; i=sjw@gmx.ch;
	bh=97aqxNqh5xQJUzR4sL8YOVhoJIcOp//bz7thoCiS+vc=;
	h=X-UI-Sender-Class:Date:To:References:From:Subject:In-Reply-To;
	b=EKpvagtAFIhWyCuO0R9t9USASI1TBVxdjqb37Lsknh8yQuBewmlIr4YQw872Z0xk
	 rb5mB2OhyNhbfo6nUThBDOiIOZDIzNaM9SdQwnv9fGjAStMckibmAvSWm4XFSBln/
	 w+DH0WEyNtzIVi47UqtgTfJinQmkvaZNeqsyZS9KYHR4WfjMgdzOFg3i+ZkNrWdfC
	 xdjgc1SQBLop6RR/chcokncVSJLR0I+QRyQR4oDGMujXmAlahE9flsZiGlro1RAKe
	 LGDercQO3VhFjtxY2WIpBP7mJpPJlB1LZm6YL1PlAg5Cfc+3fkA0RDvW4a+YphIQW
	 fyZrel3OhcQ3bfgPnA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Message-ID: <21849e2c-4ac9-48ea-a193-ad5dd59528c5@gmx.ch>
Date: Thu, 25 Jan 2024 22:57:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <ZbKsK90vOQePnHQV@openssl.org>
From: sjw@gmx.ch
Autocrypt: addr=sjw@gmx.ch; keydata=
 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
Content-Language: en-IE
In-Reply-To: <ZbKsK90vOQePnHQV@openssl.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------vVXELue0FF1tx5GvvwjxV1La"
X-Provags-ID: V03:K1:3pBmXl7ojrfW917Z4CdUDUXDzi6dK4n5NMrCykaQyG/IvbWD2p1
 9VRp205xhjmPOXOirOwSg3ZA2C885YPfIacLclSXtu4tvZLFEbXXrYaHNI+wI/9UzpymU5h
 8q2cGWS32ntBGkMN04DRHbgOdjOb/N6LjaFxGJR4lTVVBtbTvN40tChCkTi+XcywFqAinK2
 2fvbccy2WVKTgOKdoCKzw==
UI-OutboundReport: notjunk:1;M01:P0:I8buMIninpo=;i6x8F8NoiPWP087pWsG49QgL3Ld
 6Jc1nQopDaN0lJdyeS6CdPH+bf/qWEN8f4AnMGvpE/OFQvYyArwn+GsYgK/R3nkk2V1FtyIFn
 lCTdGIO2c3wu73TD2ojJwJr6Z7FEyZ5HV/SjkB4w7j8MA6Ly8wyCpUbDz4RLt02Z2AjKXuPG6
 uzMPROegQ+oHazUiJ4tzcSSXk7yr02L6/chodpX0kmzApSXSpDYIFmW1XgHKHfoPpWvaZI6To
 T5K0ET2mEzT+Ccmb7bSLbja0gI58MSPw/fifYAleKQfBgdga5yiSR4fRgML8ca4eQVWldYQQ9
 raCZ6s/XkX76cPDt8lCriO7RZ2+O/VBiyqxPyut8dJexbij6Y+7/us1vDkj9fmqiK50vIWPG1
 kxDzA3CgHndw01xfOFVV8QGSP2omnD3HCbUw5L6eqzubSUXefRFwlfRKbPvHjmxdTj6jGcGg1
 H3hPgE2Iw+tfM5xDEbX3qPGuzKawHvopJinhOKJvtZqRrFUofoDE2mbhdtiSuC0POgHN8ryyE
 o/UAQAKxHeZ1Ovi6JRTmcb5JkjLKv36n+fWLu2YnORDZltDkPK2X2U/HOZ/JcN0y6nvc4aGcB
 02gtfOi75u1Sbb/Y62CYY2PqRfi7I4kFIqsLLlQj5ubxjhV3/LD8aAhoXtQ1gI0Sda/FyDfBZ
 UCcwLdC68ZlEG8x7/SrFmKBmzxH1vHaiG2BCuiX15cIoGv6yKe9oBXSLIhKB3LHc1rifiVL/D
 JkuQtdsWt/vjN5w/PTfJlEFRB5ZZD6+SlzbtCR0X7nc2lge/i3R8bt8LsWFLKUwVH4He/BY4J
 cI4NejDLZI1ee3W/QAk3LyB8cB7Gp9lghy5AWvkAnqgx3lRvWNR/uZjZVwV02sEKnMDV+T976
 Y+YUACCR7qcgPU6p8xRVvLiXBWSe3VJ866e4bUqcZLNJ/4gKRoBM7uXBQw6UASbwz97T94jl5
 4Fv7Hw==
Subject: Re: [oss-security] OpenSSL Security Advisory

--------------vVXELue0FF1tx5GvvwjxV1La
Content-Type: multipart/mixed; boundary="------------N1n3Si2orP8mu7Qo8rJElquQ";
 protected-headers="v1"
From: sjw@gmx.ch
To: oss-security@lists.openwall.com
Message-ID: <21849e2c-4ac9-48ea-a193-ad5dd59528c5@gmx.ch>
Subject: Re: [oss-security] OpenSSL Security Advisory
References: <ZbKsK90vOQePnHQV@openssl.org>
In-Reply-To: <ZbKsK90vOQePnHQV@openssl.org>

--------------N1n3Si2orP8mu7Qo8rJElquQ
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SSBhc3N1bWUgdGhlIG1pc3NpbmcgY29tbWl0cyBhcmUgY29tbWl0IA0KNzc1
YWNmZGJkMGM2YWY5YWM4NTVmMzQ5NjljZGFiMGMwYzkwODQ0YSAoZm9yIDMu
MiksIGNvbW1pdCANCmQxMzVlZWFiOGE1ZGJmNzJiM2RhNTI0MGJhYjlkZGI3
Njc4ZGJkMmMgKGZvciAzLjEpIGFuZCBjb21taXQgDQowOWRmNDM5NWI1MDcx
MjE3Yjc2ZGM3ZDNkMmU2MzBlYjhjNWE3OWMyIChmb3IgMy4wKSwgYWNjb3Jk
aW5nIHRvIHRoZWlyIA0KY29tbWl0IG1lc3NhZ2VzLg0KDQoNCg0KPiBEdWUg
dG8gdGhlIGxvdyBzZXZlcml0eSBvZiB0aGlzIGlzc3VlIHdlIGFyZSBub3Qg
aXNzdWluZyBuZXcgcmVsZWFzZXMgb2YNCj4gT3BlblNTTCBhdCB0aGlzIHRp
bWUuIFRoZSBmaXggd2lsbCBiZSBpbmNsdWRlZCBpbiB0aGUgbmV4dCByZWxl
YXNlcyB3aGVuIHRoZXkNCj4gYmVjb21lIGF2YWlsYWJsZS4gVGhlIGZpeCBp
cyBhbHNvIGF2YWlsYWJsZSBpbiBjb21taXQgeCAoZm9yIDMuMiksDQo+IGNv
bW1pdCB4IChmb3IgMy4xKSBhbmQgY29tbWl0IHggKGZvciAzLjApIGluIHRo
ZSBPcGVuU1NMIGdpdA0KPiByZXBvc2l0b3J5Lg0K

--------------N1n3Si2orP8mu7Qo8rJElquQ--

--------------vVXELue0FF1tx5GvvwjxV1La
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEf0BaT/qj9Rv+/e4vzoKyyG3Ou58FAmWy2UEFAwAAAAAACgkQzoKyyG3Ou598
+Q/8Db7mYpvJd195sA1uJPeFlplaWAz7jaX6o3ycxUPTsiI8pzeZRl9BWIWkmuJmePo/wf8RhVxC
ZcS3dkAK6mq8a0YmhLE9VkUA7xFUy97eQO/ynPiFkvIibXqSO4j7Fg4tH7J0lNQqM6+04HNXcCVx
RdOOxuo2VDRXW+MoIvzy7v7cb0hHQ7irPp8Dh8ParmjjSrce1KouAvO9Xn9I2/aGUmLaQq2OUjKq
QoR546N22z7FrGOyoQa1LgFt341SyumYSB5sQlxRkMSNexrnsc/nkTsYPLISl7wqRsMBmO8aT2WK
5k+WeUoGAIk5FHoY/a2BPkBNxrX9O1WY+isIxkO5Wuur9Df37F21M+n7e2Thj6xSKhDIf3/HuhDM
YRVgbvve9M5HMcvcOOHiwwhi3vwL87rnizBmeVeq2gHlM9pM0OiZJdsDOQbgEOuylUjGgIvHE6Iq
9XoJ6OcK5+pJ520OeI7NsAL8OrEjaOEIntwZu6pI6+EAkkgDQOtf7lOGwB1QDS1NRlJYQ5u+pl2v
OKOl8KNRI4CM2bpZSjztPx9XDuWsHEjUyc1H7WIIg8BU27U6Pi10jaOr8jRw4O4SF3FOwBkagffJ
p1WJ526xQDc1uki1sNXVB6BumCeAOSJzTXLc5Pj0jryK/xZEOEl0IrhWP+dyzngzSwR6/ZYUpOWy
gQE=
=fMv8
-----END PGP SIGNATURE-----

--------------vVXELue0FF1tx5GvvwjxV1La--
