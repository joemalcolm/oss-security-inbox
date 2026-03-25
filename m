Received: (qmail 30226 invoked by uid 550); 25 Mar 2026 15:16:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18008 invoked from network); 25 Mar 2026 13:08:41 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 8856B4E42A1
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.90
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1774444110; cv=none; b=IgY0EHsBTQsnj+lCx7P5kgS6LgVswobL0Dx/kHjAdf0YfONSoyJn7sl+ShPQ9rDCYSlnCpt2TxclhP7f31baAH3/o4y+4F2DiT/sIoPYXdPdNubS0V80061FmloEjUyD6qVbvRJYh8FLGVyf59tBjnBhpLaW3TloOouGCaZCZsw=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1774444110;
	c=relaxed/relaxed; bh=cLWeMy+6Poblyjr5hU1g52RBzbP7HDMrcGXRA19zW7I=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=pNKdN2zANci0XToVKQmH6jqb0d9ORQzGvzx6PvdA+5/ObHjMuaFxQM03g8Efau2FyW2qvXu9nwyqItpF4OaIlAjulL9QckePbF2BHEMxU7POEXEp0e0CQNZwzSXlB0YItwieRe6bLHOtiZDJ1V1txJSoThpY6YoaqAPeFoBCLw0=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 8856B4E42A1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1774444110; bh=cLWeMy+6Poblyjr5hU1g52RBzbP7HDMrcGXRA19zW7I=;
	h=Date:To:Cc:From:Subject;
	b=S2VIVp8fwT0qryC4DYR1GosA3aT6ftAirbbuHS14wSoORybo7qN67thJU7PUsPdkZ
	 aGJ4JqD/q3C3GNv9+hLs6IQqYS2QMURLdSYx38cXe3icmTQMMnbToauoifeGSVWrmR
	 pNhW4vptG34crz2q43RTB+sMQBpunn6kavb3QCUw=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra10.isc.org 6EF162E6030A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1774444110;
	bh=cLWeMy+6Poblyjr5hU1g52RBzbP7HDMrcGXRA19zW7I=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=KBjp8q4LI5FmKL6ytjtPpa6jIKCYXy9IQme88OfI/3tbD5Z0ooF/OEXpXNi4adc0k
	 uPpzK5BlMI0Rnaa/dRTOCPHT1gWCFOA0hqYoOeJSxvNHoRTeoVjKnrXYjVmVlZJgyE
	 zVkMABwSJDwT7Wt4UI3Ch5PxxBv6aADgoj6CRsxE=
Message-ID: <6a5a03fc-d6be-42a8-a9d8-48287000a990@isc.org>
Date: Wed, 25 Mar 2026 14:07:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: =?UTF-8?B?Tmlja2kgS8WZw63FvmVr?= <nicki@isc.org>
Autocrypt: addr=nicki@isc.org; keydata=
 xjMEYkmdZxYJKwYBBAHaRw8BAQdA2qzyxWjU1ywwbtOMEQ0b+R/n4tLJZ7L6gPUYhn3r7G3N
 H05pY2tpIEvFmcOtxb5layA8bmlja2lAaXNjLm9yZz7CnAQTFgoARAIbAwULCQgHAgIiAgYV
 CgkICwIEFgIDAQIeBwIXgAIZARYhBB6evExax6zNPacpKAFiO5tlKiCnBQJpQAZJBQkI+JHi
 AAoJEAFiO5tlKiCnEa0BALap95NP6/tcLmgmwsuTzSPgsWokgfV/afgaM264fQbaAQCG6Ej1
 Xq7B8XoZYNS38HH9bI0NeNDGY1fUtsb3ti2tAs44BGJJnWcSCisGAQQBl1UBBQEBB0Ao1FVF
 uEhjEM1uGJCEQT7QNo28RhXNgk5SAWc+61lhTgMBCAfCfgQYFggAJgIbDBYhBB6evExax6zN
 PacpKAFiO5tlKiCnBQJpQAZfBQkI+JH4AAoJEAFiO5tlKiCnCvwBAPG5R7dLGFaW+uOWAilp
 DF4ge1ScTflJfBZnGs33IAkAAQCfpgPCjc+JfzOYjLHp/CB1gN9UIDvfgCtwLVJXewSODA==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------XRA1e7meV7ec4yRTLLhLpM3s"
Subject: [oss-security] ISC has disclosed four vulnerabilities in BIND 9 (CVE-2026-1519,
 CVE-2026-3104, CVE-2026-3119, CVE-2026-3591)

--------------XRA1e7meV7ec4yRTLLhLpM3s
Content-Type: multipart/mixed; boundary="------------R06Jqp53SrOxZ0ihsfzA9uqx";
 protected-headers="v1"
Message-ID: <6a5a03fc-d6be-42a8-a9d8-48287000a990@isc.org>
Date: Wed, 25 Mar 2026 14:07:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: =?UTF-8?B?Tmlja2kgS8WZw63FvmVr?= <nicki@isc.org>
Subject: ISC has disclosed four vulnerabilities in BIND 9 (CVE-2026-1519,
 CVE-2026-3104, CVE-2026-3119, CVE-2026-3591)
Autocrypt: addr=nicki@isc.org; keydata=
 xjMEYkmdZxYJKwYBBAHaRw8BAQdA2qzyxWjU1ywwbtOMEQ0b+R/n4tLJZ7L6gPUYhn3r7G3N
 H05pY2tpIEvFmcOtxb5layA8bmlja2lAaXNjLm9yZz7CnAQTFgoARAIbAwULCQgHAgIiAgYV
 CgkICwIEFgIDAQIeBwIXgAIZARYhBB6evExax6zNPacpKAFiO5tlKiCnBQJpQAZJBQkI+JHi
 AAoJEAFiO5tlKiCnEa0BALap95NP6/tcLmgmwsuTzSPgsWokgfV/afgaM264fQbaAQCG6Ej1
 Xq7B8XoZYNS38HH9bI0NeNDGY1fUtsb3ti2tAs44BGJJnWcSCisGAQQBl1UBBQEBB0Ao1FVF
 uEhjEM1uGJCEQT7QNo28RhXNgk5SAWc+61lhTgMBCAfCfgQYFggAJgIbDBYhBB6evExax6zN
 PacpKAFiO5tlKiCnBQJpQAZfBQkI+JH4AAoJEAFiO5tlKiCnCvwBAPG5R7dLGFaW+uOWAilp
 DF4ge1ScTflJfBZnGs33IAkAAQCfpgPCjc+JfzOYjLHp/CB1gN9UIDvfgCtwLVJXewSODA==
Autocrypt-Gossip: addr=security-officer@isc.org; keydata=
 xsBNBEsnyOQBCAC+WKYHcaDGD9a2ztwdccmhnzo0YJ9SOPVIonqGxCa6o8TwfipyH9Wh5uFq
 c6Ne+I0+vWohQtBIeodQHgGGlbjdxMp3QxohvqCmZcoObH7kjI1lpKQ6TMvRvo79pq5WRIuE
 +Jbm6Rt9Hz3w9APrYzISzeCuHFK7vlZfaLdoI0SxzEuzMmyOvQpa6dgSKQF6G2Nsbz1RYujZ
 6fE6GXtc+I9q44yJS4llYpUqYpPh5CsfbDx8HwMWPj9eYOwjf3/vniFeG9tHIB8E+p7UBTG7
 bTVRlEgmyC1Ry0OPO3UPKjL/Dja8IeeJamT0dlsRCD/O/WTyxQg9EceCgUvOz65puKkrABEB
 AAHNL0lTQyBTZWN1cml0eSBPZmZpY2VyIDxzZWN1cml0eS1vZmZpY2VyQGlzYy5vcmc+wsBx
 BBMBAgAbBQJLJ8jkAhsDBgsJCAcKAgQVCggCAh4BAheAAAoJEL2X3GOe6MR7gZYIAI4uSaX7
 HwU2ywaCO77q5O/Zzzp6M+Oi+z7G00GFpACMSDSjX8kbZoIIW7FXb9US/9XLwqDtjlrGOLbd
 zcZ/+EMsJM/HpT796YH8Y9gMpsH5SZq5gByeguT6KgjqF2w8yNX7/r0AM3psfVSv9l595CoJ
 WNbDBHqGpqMi55SqKLCQOJ8noDp4x+JVNcJ1AdK/QVSk+gEhLqrvoYNyG8B/C2LL1fBQC8sF
 kX/M1mKlkM83GnJlPWCrig69VlR+relppEuZ5G34z93c9NtCqdH6zLzzej2qmwLb/dYJYvhE
 EMDlgvlSWw6yaJTuuEfuqHonrgOTXgb3Ln8A7XJECuSgWrLOwE0ESyfI5AEIAKUsrY4AxF87
 HvBEqhCXIt1o8plzVoIT5kY/p2n48U+oNGl5v4qNiC4SQZIvsA+Fcew8BhAYbNFTOsK/NKVO
 yiLkLOqQnkuBlESzzvMcl0gSuX1t99V2SJpCKukCa+jkTcjJnURODJn5Wp9GLAWXutxJvJnT
 t4oxcnAKun6Zt1vyOQs2lI9zXCTi8AdDKTiA/Es66CPVCRcMFUS6l9ArN57gUP0KRj8N0OfO
 QPdzShnGrSdtM0D2Ei2pmUcgkvSIeNU5HRd2iMpWGO1L8yfGQvp7dzjWbG7i/2RTnZ+KR3a2
 OMmtXUNuWQF3AfohS0TRTAcAR7IgOLzyy2prT9XKtCcAEQEAAcLAXwQYAQIACQUCSyfI5AIb
 DAAKCRC9l9xjnujEeze1CAC4A+KZdRi08gBxG4hKuvpL0fHfwnVmrLR39c0mQR9tE+iUcOez
 qER3z2fn/Zm5nMTZcauzCXMmFXwKWlGufiDrXVqKCyEHkYyBnn3U9ksRigo8eG/X3+G3US9k
 0c7FfWaIrOY2IdGWUQic0ENOu/94VAFaleI4BBQvnDIY6hr4Fm14qXgssF7YwcEreoUU+Ayh
 Yc52tlDssU9DUaX/vn7OD42FIzpUzgUyoZ97UtPX+m9P5YN2Teeq0iVkcxxmT9wuNYCCZb1W
 03hvcA8uwvRkNDbdQ//dma2gXdUPoXfBJT4kLo1/KV5GimPHdn0h172E1RKLgKtrJ58TVTJ6
 UV1r

--------------R06Jqp53SrOxZ0ihsfzA9uqx
Content-Type: multipart/mixed; boundary="------------K4fVxhrUcUYSmDZIkSEcYd60"

--------------K4fVxhrUcUYSmDZIkSEcYd60
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjUgTWFyY2ggMjAyNiwgSW50ZXJuZXQgU3lzdGVtcyBDb25zb3J0aXVtIGRpc2Nsb3NlZCBm
b3VyIHZ1bG5lcmFiaWxpdGllcyBhZmZlY3Rpbmcgb3VyIEJJTkQgOSBzb2Z0d2FyZToNCg0KLSBD
VkUtMjAyNi0xNTE5OiAgICAgICAgRXhjZXNzaXZlIE5TRUMzIGl0ZXJhdGlvbnMgY2F1c2UgaGln
aCBDUFUgbG9hZCBkdXJpbmcgaW5zZWN1cmUgZGVsZWdhdGlvbiB2YWxpZGF0aW9uIGh0dHBzOi8v
a2IuaXNjLm9yZy9kb2NzL2N2ZS0yMDI2LTE1MTkNCi0gQ1ZFLTIwMjYtMzEwNDogICAgICAgIE1l
bW9yeSBsZWFrIGluIGNvZGUgcHJlcGFyaW5nIEROU1NFQyBwcm9vZnMgb2Ygbm9uLWV4aXN0ZW5j
ZSBodHRwczovL2tiLmlzYy5vcmcvZG9jcy9jdmUtMjAyNi0zMTA0DQotIENWRS0yMDI2LTMxMTk6
ICAgICAgICBBdXRoZW50aWNhdGVkIHF1ZXJ5IGNvbnRhaW5pbmcgYSBUS0VZIHJlY29yZCBtYXkg
Y2F1c2UgbmFtZWQgdG8gdGVybWluYXRlIHVuZXhwZWN0ZWRseSBodHRwczovL2tiLmlzYy5vcmcv
ZG9jcy9jdmUtMjAyNi0zMTE5DQotIENWRS0yMDI2LTM1OTE6ICAgICAgICBBIHN0YWNrIHVzZS1h
ZnRlci1yZXR1cm4gZmxhdyBpbiBTSUcoMCkgaGFuZGxpbmcgY29kZSBtYXkgZW5hYmxlIEFDTCBi
eXBhc3MgaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3MvY3ZlLTIwMjYtMzU5MQ0KDQpOZXcgdmVyc2lv
bnMgb2YgQklORCA5IGFyZSBhdmFpbGFibGU6DQoNCi0gaHR0cHM6Ly9kb3dubG9hZHMuaXNjLm9y
Zy9pc2MvYmluZDkvOS4xOC40Ny8NCi0gaHR0cHM6Ly9kb3dubG9hZHMuaXNjLm9yZy9pc2MvYmlu
ZDkvOS4yMC4yMS8NCi0gaHR0cHM6Ly9kb3dubG9hZHMuaXNjLm9yZy9pc2MvYmluZDkvOS4yMS4y
MC8NCg0KRm9yIG1vcmUgaW5mb3JtYXRpb24gYW5kIG90aGVyIHJlbGVhc2UgZm9ybWF0cywgY29u
c3VsdCB0aGUgSVNDIHNvZnR3YXJlIGRvd25sb2FkIHBhZ2U6IGh0dHBzOi8vd3d3LmlzYy5vcmcv
ZG93bmxvYWQvDQoNCldpdGggdGhlIHB1YmxpYyBhbm5vdW5jZW1lbnQgb2YgdGhlc2UgdnVsbmVy
YWJpbGl0aWVzLCB0aGUgZW1iYXJnbyBwZXJpb2QgaXMgZW5kZWQgYW5kIGFueSB1cGRhdGVkIHNv
ZnR3YXJlIHBhY2thZ2VzIHRoYXQgaGF2ZSBiZWVuIHByZXBhcmVkIG1heSBiZSByZWxlYXNlZC4N
Cg0KLS0gDQpOaWNraSBLxZnDrcW+ZWsgKHRoZXkvdGhlbSkNCg0K

--------------K4fVxhrUcUYSmDZIkSEcYd60
Content-Type: application/pgp-keys; name="OpenPGP_0x01623B9B652A20A7.asc"
Content-Disposition: attachment; filename="OpenPGP_0x01623B9B652A20A7.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEYkmdZxYJKwYBBAHaRw8BAQdA2qzyxWjU1ywwbtOMEQ0b+R/n4tLJZ7L6gPUY=0A=
hn3r7G3NH05pY2tpIEvFmcOtxb5layA8bmlja2lAaXNjLm9yZz7CnAQTFgoARAIb=0A=
AwULCQgHAgIiAgYVCgkICwIEFgIDAQIeBwIXgAIZARYhBB6evExax6zNPacpKAFi=0A=
O5tlKiCnBQJpQAZJBQkI+JHiAAoJEAFiO5tlKiCnEa0BALap95NP6/tcLmgmwsuT=0A=
zSPgsWokgfV/afgaM264fQbaAQCG6Ej1Xq7B8XoZYNS38HH9bI0NeNDGY1fUtsb3=0A=
ti2tAsKZBBMWCgBBFiEEHp68TFrHrM09pykoAWI7m2UqIKcFAmYvjGQCGwMFCQcc=0A=
2j8FCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQAWI7m2UqIKdJ8QD+MlX5=0A=
fNkxc0iSu9sy6CL/JC8u1mvknQUdJBYcf7RWrUsBAOycCPt5rH40aT9xz2uAg4Ol=0A=
ftMjmbvupXN52BeDXbYMzRxUb20gS3JpemVrIDx0a3JpemVrQGlzYy5vcmc+wpYE=0A=
ExYIAD4CGwMFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQQenrxMWseszT2nKSgB=0A=
YjubZSogpwUCaUAGTwUJCPiR4gAKCRABYjubZSogpwdIAQDSQM02AdszEw+lOpm+=0A=
SDCwdk1sxrnmSAZP2C8dtsR1fwEA6+rWIj0vcN4DQ3Dx6agZ5XazpetX5KAKAqIu=0A=
59pm5ALClgQTFggAPgIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBB6evExa=0A=
x6zNPacpKAFiO5tlKiCnBQJlpBCmBQkHHNo/AAoJEAFiO5tlKiCndOMA/iGq19QX=0A=
VgkAaQakr45totjYrVrbKQ+Qyx9DGtVazs+1AQDPXJIreM7ybNE4ywT/L9OxOs3G=0A=
kBsUBOJYrgUIIR4yDsKWBBMWCAA+FiEEHp68TFrHrM09pykoAWI7m2UqIKcFAmJJ=0A=
nWcCGwMFCQNY7wAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AACgkQAWI7m2UqIKdJ=0A=
zQD+JioCDC46l5QvAUEm36fSScDQXCoSTNkEItXHQr20qiYBALIx3NcADdmARi7P=0A=
Kex8P2Q51OC2h9pjo464vUcqo8gBzsDNBGJzrg0BDAC6qKWLSVSwiW413w1ylCCh=0A=
MnSGjEkNpM7MU0j/tV8VHWUaAMx0khpT/9YBVhSlXyvGbdldubmk5O+2umYFyOjL=0A=
1XpBXLOx73UE2gyzwAq7wSQ9ca9fU3y3ZtIIlzW0nOcA0ExvFH9VbrATHmZlQvyE=0A=
L+En93CVFOzbUShYejOdPfHQ+rA4pvcSj3p7NxnCye6oy0yM3SFMCo2L/qlRkHsi=0A=
wcZOZB1SKirHPNAstTqLh/ahy5ExrDXeGEjjixeqF6hqEFcAIpnqMcirc/tZzgza=0A=
hnLyjm5p8js4/ld8UvNDZRvaLxbFLMC0bIb5DHqaadsE5vo0QODsXA1gDnkAGD2m=0A=
aBWdypv+BgYAuZFSdcPmwB/YfwbRZthbuAI4aMb2ls/ntMvaQY4BAYJPlELQBwNr=0A=
xdJhmh41sEJUfP1GpM3a3NQ4s0VaVtKnY0mzl9Gud5gqOlQuzTWkySD6kFDdPYiC=0A=
HI6AkZBF2OyoUtPvIroMu8C6ZvOY/ey+u7QPo4w0OH0AEQEAAcJ+BBgWCAAmAhsg=0A=
FiEEHp68TFrHrM09pykoAWI7m2UqIKcFAmlABoMFCQjOgXYACgkQAWI7m2UqIKdR=0A=
fAEA6U7EZHHl2H6oKS5s4Xqyw8fr/JmwHy9tmze2yFYjwHkBALER7PcTqd0sR3ZH=0A=
Wc5v2u78X586oSB6betShuPLibgBwn4EGBYIACYCGyAWIQQenrxMWseszT2nKSgB=0A=
YjubZSogpwUCZaQQ8AUJBvLJ4wAKCRABYjubZSogp0moAQDkU2uPAafECL0tOHwF=0A=
SfLvxduiRHoA9BHfXbxoZSHKQAD/QlawLK0bRd6p0df5A1bwf6G7MnE41XJ8czLd=0A=
jKjFHQfOMwRiSZ3KFgkrBgEEAdpHDwEBB0Db4QsODj8waSg2JTknMYVaTQNrNgUu=0A=
3Fe315XLChn028J4BCgWCAAgFiEEHp68TFrHrM09pykoAWI7m2UqIKcFAmKzDcoC=0A=
HQEACgkQAWI7m2UqIKeMfgEA9j9xxXIIH1FCUM5ZqjVSp3C49WyoqsKTmOCSZu2m=0A=
6F0BAJ5F9wN6GQBkV//rSt9U6i/gRer29tkzkLwsBmm/D6IDwn4EGBYIACYWIQQe=0A=
nrxMWseszT2nKSgBYjubZSogpwUCYkmdygIbIAUJA1jvAAAKCRABYjubZSogp+RB=0A=
AP4yIVUE6FHEgB0PdiZlv7Pjgs8dd+H4gP3wFv+d4lnzdAEAgYEb29NrCuZAVB7B=0A=
wqJJlUEo1ME65//sRnI9rvosgQnOOARiSZ1nEgorBgEEAZdVAQUBAQdAKNRVRbhI=0A=
YxDNbhiQhEE+0DaNvEYVzYJOUgFnPutZYU4DAQgHwn4EGBYIACYCGwwWIQQenrxM=0A=
WseszT2nKSgBYjubZSogpwUCaUAGXwUJCPiR+AAKCRABYjubZSogpwr8AQDxuUe3=0A=
SxhWlvrjlgIpaQxeIHtUnE35SXwWZxrN9yAJAAEAn6YDwo3PiX8zmIyx6fwgdYDf=0A=
VCA734ArcC1SV3sEjgzCfgQYFggAJgIbDBYhBB6evExax6zNPacpKAFiO5tlKiCn=0A=
BQJlpBDLBQkHHNpkAAoJEAFiO5tlKiCn0EcBAOXRTTXsuR3kM/ZD7GuEpvAIO/tV=0A=
gMRftTGYnJThrpsVAQCnNwj5JfxDfvxDVPDvlM5yy21yZmSJ+lUEvDGuQ7kmAcJ+=0A=
BBgWCAAmFiEEHp68TFrHrM09pykoAWI7m2UqIKcFAmJJnWcCGwwFCQNY7wAACgkQ=0A=
AWI7m2UqIKcTUAD+MeYa0UKGjTStrCh/QMRsAyk8USw98CuPk/mwRRaQwpAA/3rw=0A=
BC4r9Fjbk+mdgimi+iXb9uFyyduHoXrbEmD7u+AC=0A=
=3Dk89a=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------K4fVxhrUcUYSmDZIkSEcYd60--

--------------R06Jqp53SrOxZ0ihsfzA9uqx--

--------------XRA1e7meV7ec4yRTLLhLpM3s
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQQenrxMWseszT2nKSgBYjubZSogpwUCacPeJwAKCRABYjubZSog
p1n4AQCHiReMDkg2ididW+Ta2lCNudlRCK6szBZlzrsqj2BbnQD/SMpnkHnHgQQL
wNUfU9CIn4dk81TOCVzHa8RKWXNC4AY=
=Srsj
-----END PGP SIGNATURE-----

--------------XRA1e7meV7ec4yRTLLhLpM3s--
