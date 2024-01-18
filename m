Received: (qmail 9348 invoked by uid 550); 18 Jan 2024 09:22:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17811 invoked from network); 18 Jan 2024 08:39:10 -0000
Authentication-Results: postout.lrz.de (amavisd-new); dkim=pass (2048-bit key)
	reason="pass (just generated, assumed good)" header.d=tum.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tum.de; h=
	content-type:content-type:subject:subject:from:from
	:content-language:user-agent:mime-version:date:date:message-id
	:received:received; s=tu-postout21; t=1705567251; bh=7+oM2T/GkX2
	wWgEbzAlF9EuHt3EepLg5sIfWfqPQ3io=; b=HYzyLNyj4GKLDHqAIlngI84+HJw
	2iXHzL93ZHwppuv3AALW4QDhYaw2y7IEsbBRZZDvb9wJyW+bmnY/XzxhRDuJZpg2
	ySerlU9Zsso/t7WtVlc5CV6uCgUvnCG/XTuAqgvhJPYyYICAzmZl6IZjLoJrHgw2
	roupzmxFH9PU14oylIMR2oRYCDTthUOEo79E7iFWmCgdwdviagYuJP87zQigrK7S
	0j3FbzXVKhA1dBrI5gVCxbSX/AG07KTK4WoAG7UqqeABkN4OnrsFxLfox/o42Ypg
	R6KiQAZ7ZHozICPVN+EkpVmuZ44n71stSXRLOHwsVH85uim64SDYJAzLljg==
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs52.srv.lrz.de
Message-ID: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>
Date: Thu, 18 Jan 2024 09:40:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Valentin Metz <valentin.metz@tum.de>
Autocrypt: addr=valentin.metz@tum.de; keydata=
 xjMEZD1YdRYJKwYBBAHaRw8BAQdAgtTa4xRjsWaO/2LjIFgbPiouQrSXnj0FDBExp/ILT2LN
 JFZhbGVudGluIE1ldHogPHZhbGVudGluLm1ldHpAdHVtLmRlPsKPBBMWCAA3FiEEHcwKZgXc
 WOyfhremHhzFmj4Kwv8FAmQ9WHUFCQWjmoACGwMECwkIBwUVCAkKCwUWAgMBAAAKCRAeHMWa
 PgrC/7cPAQCA6VNili0shEhwfS8h8dz9vCLLv/QxQE4nKgKCumMx1QD/ftOo93ChW3/2n9pm
 8/mmi/8Tb9xofV4meLhy7PH6dA/OOARkPVh1EgorBgEEAZdVAQUBAQdALhMckxG4YmUi9Bmm
 omR07smV6idVr+jhO2Eqxt/jJzsDAQgHwn4EGBYIACYWIQQdzApmBdxY7J+Gt6YeHMWaPgrC
 /wUCZD1YdQUJBaOagAIbDAAKCRAeHMWaPgrC/135AQDA2WKh5aHD0KFeQub1Gb3m7mn+wsx6
 EagvaDjX7DssZQD+P7s0cDsFFPfVf9GPRRVwNPMQBp9hSggE6db3fkEVTwQ=
To: oss-security@lists.openwall.com
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------7ry4uUgHAkXmt4MBDVQ2TaZF"
Subject: [oss-security] GNU coreutils v9.4; v9.3; v9.2 split heap buffer overflow
 vulnerability

--------------7ry4uUgHAkXmt4MBDVQ2TaZF
Content-Type: multipart/mixed; boundary="------------SYLxmqIAUnTaluw398fz8bAy";
 protected-headers="v1"
From: Valentin Metz <valentin.metz@tum.de>
To: oss-security@lists.openwall.com
Message-ID: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>
Subject: GNU coreutils v9.4; v9.3; v9.2 split heap buffer overflow
 vulnerability

--------------SYLxmqIAUnTaluw398fz8bAy
Content-Type: multipart/mixed; boundary="------------FUv5xntCrImw0qSJjTL8UWT4"

--------------FUv5xntCrImw0qSJjTL8UWT4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SGksDQpJIGhhdmUgZGlzY292ZXJlZCBhIHZ1bG5lcmFiaWxpdHkgaW4gdGhl
IEdOVSBjb3JldXRpbHMgInNwbGl0IiBwcm9ncmFtLg0KU3BlY2lmaWNhbGx5
LCBpdCBjb25jZXJucyBhIGhlYXAgb3ZlcmZsb3cgd2l0aCB1c2VyLWNvbnRy
b2xsZWQgZGF0YSBvZiANCm11bHRpcGxlIGh1bmRyZWQgYnl0ZXMgaW4gbGVu
Z3RoLg0KSXQgd2FzIGludHJvZHVjZWQgaW4gNDBiZjE1OTFiYjQzNjJmYTkx
ZTUwMWJjZWM3YzIwMjljNWY2NWE0MyBvbiANCjIwMjMtMDMtMDQuIHwgDQpo
dHRwczovL2dpdGh1Yi5jb20vY29yZXV0aWxzL2NvcmV1dGlscy9jb21taXQv
NDBiZjE1OTFiYjQzNjJmYTkxZTUwMWJjZWM3YzIwMjljNWY2NWE0MyNkaWZm
LTMwYmMzMjhhYjNhZmEwYWI5ZjE3YzZlN2NmMTc1MmQ1NThhZTM3Y2Y0MjAw
ZTk1YmJiMDRjNDA1YzJiNTk1MThMODIxDQoNClJlbGV2YW50IGRpZmY6DQpA
QCAtODE2LDE1ICs4MjAsMTAgQEANCiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAv
KiBVcGRhdGUgaG9sZCBpZiBuZWVkZWQuwqAgKi8NCiDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBpZiAoKGVvYyAmJiBzcGxpdF9yZXN0KSB8fCAoIWVvYyAmJiBu
X2xlZnQpKQ0KIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB7DQotwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc2l6ZV90IG5fYnVmID0gZW9jID8gc3Bs
aXRfcmVzdCA6IG5fbGVmdDsNCivCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBpZHhfdCBuX2J1ZiA9IGVvYyA/IHNwbGl0X3Jlc3QgOiBuX2xlZnQ7DQog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoaG9sZF9zaXplIC0g
bl9ob2xkIDwgbl9idWYpDQotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHsNCi3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IChob2xkX3NpemUgPD0gU0laRV9NQVggLSBidWZzaXplKQ0KLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhvbGRfc2l6ZSArPSBi
dWZzaXplOw0KLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
ZWxzZQ0KLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHhhbGxvY19kaWUgKCk7DQotwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBob2xkID0geHJlYWxsb2MgKGhvbGQsIGhvbGRfc2l6ZSk7DQot
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH0NCivCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgaG9sZCA9IHhwYWxsb2MgKGhvbGQsICZo
b2xkX3NpemUsIG5fYnVmIC0gKGhvbGRfc2l6ZSAtIA0Kbl9ob2xkKSwNCivC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAtMSwgc2l6ZW9mICpob2xkKTsNCiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIG1lbWNweSAoaG9sZCArIG5faG9sZCwg
c29iLCBuX2J1Zik7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBu
X2hvbGQgKz0gbl9idWY7DQogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBuX2xlZnQgLT0gbl9idWY7DQoNClRoaXMgYWxsb3dlZCB0aGUgImhvbGQi
IGJ1ZmZlciB0byBvdmVyZmxvdyBpbiB0aGUgbWVtY3B5KCkgb2YgbGluZSA4
MjcgDQoocmlnaHQgYmVsb3cgdGhlIG1hcmtlZCBkaWZmKS4NCg0KVGhlIEdO
VSBjb3JldXRpbHMgbWFpbnRhaW5lcnMgaGF2ZSBiZWVuIGluZm9ybWVkLCBh
bmQgYSBmaXggd2FzIGRlcGxveWVkIA0KdG9kYXkgd2l0aCBjNGM1ZWQ4ZjRl
OWNkNTVhMTI5NjZkNGY1MjBlM2ExMzEwMTYzN2Q5LiB8IA0KaHR0cHM6Ly9n
aXRodWIuY29tL2NvcmV1dGlscy9jb3JldXRpbHMvY29tbWl0L2M0YzVlZDhm
NGU5Y2Q1NWExMjk2NmQ0ZjUyMGUzYTEzMTAxNjM3ZDkNCg0KQSBwcm9vZi1v
Zi1jb25jZXB0IGZpbGUgdG8gdHJpZ2dlciB0aGUgY3Jhc2ggaXMgYXZhaWxh
YmxlIHVuZGVyIA0KaHR0cHM6Ly9naXRodWIuY29tL1ZhbGVudGluLU1ldHov
d3JpdGV1cF9zcGxpdC9ibG9iL21haW4vc3BsaXRfbWUNCllvdSBjYW4gdXNl
IGl0IHRvIHRyaWdnZXIgYSBzZWdtZW50YXRpb24gZmF1bHQgKFNJR0FCUlQp
IGluIHNwbGl0LCB1c2luZyANCiJzcGxpdCAtQyAxMDI0IC4vc3BsaXRfbWUi
Lg0KQSBkZXRhaWxlZCB3cml0ZXVwIHdpbGwgZm9sbG93IG9uY2UgZGlzdHJv
IG1haW50YWluZXJzIGhhdmUgaGFkIHNvbWUgDQp0aW1lIHRvIGRpc3RyaWJ1
dGUgYSBmaXguDQpBIENWRS1JRCBpcyB5ZXQgdG8gYmUgYXNzaWduZWQuDQoN
CldpdGggZXhjZWxsZW50IHJlZ2FyZHMsDQpWYWxlbnRpbiBNZXR6DQoNCg==

--------------FUv5xntCrImw0qSJjTL8UWT4
Content-Type: application/pgp-keys; name="OpenPGP_0x1E1CC59A3E0AC2FF.asc"
Content-Disposition: attachment; filename="OpenPGP_0x1E1CC59A3E0AC2FF.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEZD1YdRYJKwYBBAHaRw8BAQdAgtTa4xRjsWaO/2LjIFgbPiouQrSXnj0FDBEx=0A=
p/ILT2LNJFZhbGVudGluIE1ldHogPHZhbGVudGluLm1ldHpAdHVtLmRlPsKPBBMW=0A=
CAA3FiEEHcwKZgXcWOyfhremHhzFmj4Kwv8FAmQ9WHUFCQWjmoACGwMECwkIBwUV=0A=
CAkKCwUWAgMBAAAKCRAeHMWaPgrC/7cPAQCA6VNili0shEhwfS8h8dz9vCLLv/Qx=0A=
QE4nKgKCumMx1QD/ftOo93ChW3/2n9pm8/mmi/8Tb9xofV4meLhy7PH6dA/OOARk=0A=
PVh1EgorBgEEAZdVAQUBAQdALhMckxG4YmUi9BmmomR07smV6idVr+jhO2Eqxt/j=0A=
JzsDAQgHwn4EGBYIACYWIQQdzApmBdxY7J+Gt6YeHMWaPgrC/wUCZD1YdQUJBaOa=0A=
gAIbDAAKCRAeHMWaPgrC/135AQDA2WKh5aHD0KFeQub1Gb3m7mn+wsx6EagvaDjX=0A=
7DssZQD+P7s0cDsFFPfVf9GPRRVwNPMQBp9hSggE6db3fkEVTwQ=3D=0A=
=3DWjNp=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------FUv5xntCrImw0qSJjTL8UWT4--

--------------SYLxmqIAUnTaluw398fz8bAy--

--------------7ry4uUgHAkXmt4MBDVQ2TaZF
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQdzApmBdxY7J+Gt6YeHMWaPgrC/wUCZajkEgUDAAAAAAAKCRAeHMWaPgrC/2Jq
AP9JSxFskC3UPAxwIFpihtcGRED9Xn0v7SWxQaS8pyMlXAEAgI97u1+66TpQlvUZezdd6ed4OfVv
I/ahPkBh34V/mQ0=
=mX3R
-----END PGP SIGNATURE-----

--------------7ry4uUgHAkXmt4MBDVQ2TaZF--
