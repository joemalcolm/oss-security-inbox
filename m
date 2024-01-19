Received: (qmail 3431 invoked by uid 550); 19 Jan 2024 08:44:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32357 invoked from network); 19 Jan 2024 08:42:06 -0000
Authentication-Results: postout.lrz.de (amavisd-new); dkim=pass (2048-bit key)
	reason="pass (just generated, assumed good)" header.d=tum.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tum.de; h=
	content-type:content-type:in-reply-to:references:from:from
	:content-language:subject:subject:user-agent:mime-version:date
	:date:message-id:received:received; s=tu-postout21; t=
	1705653830; bh=76tJvKhvRyKmpAniiaAiErpL6Jy1TopHs1O1MGfHYMY=; b=P
	LPZPzVzXzl0t+pcPe/5OEGYg8N0Oc3CUxBDnZiuwUKgPoUgoygPaA4M5rQzPPf91
	ul1msd5aADpU6ZOaqbkDIk3S1BSQQGOmhSEVJ/jWDLHMoxMR/76A9iMkmGwqEDO7
	rZ8HzwRnx2RFiuORm5kobaWCwLLmIVLs+0V9Io8zaKFEfeTKJ5BI4mb7kt+oIcib
	cztFmmnULKXy0gFNDXPdj10FcUj/3xJwY7ld70ZxpV5Rd53wDX00FkY75DAQN1Ug
	9hRQfy0nXGnMLaEW5fHDzzXNxF6ER4NW8f/VRg2D1Xb1HWnD1vNLEEx2TmisHMTW
	4qOz4BdNmSgH14zw1ROMw==
X-Virus-Scanned: by amavisd-new at lrz.de in lxmhs52.srv.lrz.de
Message-ID: <5da04ee4-b78f-49d7-be54-bdf7779b769e@tum.de>
Date: Fri, 19 Jan 2024 09:43:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Valentin Metz <valentin.metz@tum.de>
To: oss-security@lists.openwall.com
References: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>
Autocrypt: addr=valentin.metz@tum.de; keydata=
 xjMEZD1YdRYJKwYBBAHaRw8BAQdAgtTa4xRjsWaO/2LjIFgbPiouQrSXnj0FDBExp/ILT2LN
 JFZhbGVudGluIE1ldHogPHZhbGVudGluLm1ldHpAdHVtLmRlPsKPBBMWCAA3FiEEHcwKZgXc
 WOyfhremHhzFmj4Kwv8FAmQ9WHUFCQWjmoACGwMECwkIBwUVCAkKCwUWAgMBAAAKCRAeHMWa
 PgrC/7cPAQCA6VNili0shEhwfS8h8dz9vCLLv/QxQE4nKgKCumMx1QD/ftOo93ChW3/2n9pm
 8/mmi/8Tb9xofV4meLhy7PH6dA/OOARkPVh1EgorBgEEAZdVAQUBAQdALhMckxG4YmUi9Bmm
 omR07smV6idVr+jhO2Eqxt/jJzsDAQgHwn4EGBYIACYWIQQdzApmBdxY7J+Gt6YeHMWaPgrC
 /wUCZD1YdQUJBaOagAIbDAAKCRAeHMWaPgrC/135AQDA2WKh5aHD0KFeQub1Gb3m7mn+wsx6
 EagvaDjX7DssZQD+P7s0cDsFFPfVf9GPRRVwNPMQBp9hSggE6db3fkEVTwQ=
In-Reply-To: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0rsC4ULdshFi9Sk8GGhqe5Yl"
Subject: [oss-security] Re: GNU coreutils v9.4; v9.3; v9.2 split heap buffer overflow
 vulnerability

--------------0rsC4ULdshFi9Sk8GGhqe5Yl
Content-Type: multipart/mixed; boundary="------------4ZLtXMlw0VZIZx0kqb60WzxK";
 protected-headers="v1"
From: Valentin Metz <valentin.metz@tum.de>
To: oss-security@lists.openwall.com
Message-ID: <5da04ee4-b78f-49d7-be54-bdf7779b769e@tum.de>
Subject: Re: GNU coreutils v9.4; v9.3; v9.2 split heap buffer overflow
 vulnerability
References: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>
In-Reply-To: <17a82e5c-0576-4678-b88b-48355247e1e9@tum.de>

--------------4ZLtXMlw0VZIZx0kqb60WzxK
Content-Type: multipart/mixed; boundary="------------7pL2NdhlMOn80AKMwfBD0jw1"

--------------7pL2NdhlMOn80AKMwfBD0jw1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

Q1ZFLTIwMjQtMDY4NCBoYXMgYmVlbiBhc3NpZ25lZCBmb3IgdHJhY2tpbmcu
DQpodHRwczovL2FjY2Vzcy5yZWRoYXQuY29tL3NlY3VyaXR5L2N2ZS9jdmUt
MjAyNC0wNjg0DQoNCg==

--------------7pL2NdhlMOn80AKMwfBD0jw1
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

--------------7pL2NdhlMOn80AKMwfBD0jw1--

--------------4ZLtXMlw0VZIZx0kqb60WzxK--

--------------0rsC4ULdshFi9Sk8GGhqe5Yl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQdzApmBdxY7J+Gt6YeHMWaPgrC/wUCZao2RQUDAAAAAAAKCRAeHMWaPgrC/+5r
AQCtmkGtQChSOz6fRhVSedqk0G2PR/SifJsVWh1OkJxOtwEAhiMNl9U6bUZ1kypuV32/1izeYgYU
1jRpH6iu8u3KOgU=
=TDaX
-----END PGP SIGNATURE-----

--------------0rsC4ULdshFi9Sk8GGhqe5Yl--
