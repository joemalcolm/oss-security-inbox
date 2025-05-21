Received: (qmail 18025 invoked by uid 550); 21 May 2025 12:47:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15379 invoked from network); 21 May 2025 12:26:42 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 91C053AB38D
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.2.31
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1747830391; cv=none; b=oaXNEvCF7MrsXL6ICEmloOHRcO2DQpCd6cMV5wjlg0SbVBl2aNKyff+hKyIBLvG8wnQWQ70w1sSKf1D+5T6RDaR1J/04Rkj8u0kTOFCslXVyWpk39m0WzfEF2pNxOjcWHuCObNB+BNUcBtB8Eaxa79NMLWzTQ1wbMG8QzVfW63s=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1747830391;
	c=relaxed/relaxed; bh=eqG3c4HmSGmbx1t3YKYBss0ONxVwSYZBF3qeOlX3A34=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=GV3ukGFQPyPxl+jB4pe3Z+fS+tT1hSPosLHClX4YIyf39zaE3aaHYjdyHFegVbvdTKNfO4fPql25f/A+rzvEqq+k5I3X4qdqFGnrUInzbjl4CNgGKWoNFQgP12b8z4RLBkRDqZdgc53Oax96vu3yGsZ6XgbEhSFSoaqRIKljynU=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 91C053AB38D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1747830391; bh=eqG3c4HmSGmbx1t3YKYBss0ONxVwSYZBF3qeOlX3A34=;
	h=Date:To:Cc:From:Subject;
	b=Mgu/vX3L/c5T3BEZwFfAozYNnehQcMNyyL94WD55QFEhMNP6SRUsdL8mPzZm62el7
	 50QcokLj/2JdrKC8GgiyBQyciqglPtn06siBg5vto1tp+6Mz728MBEt/w9qTn73x15
	 2cxMSgEsxp9nwZ2mjPVVYpxe+xUEgQwka3R+nbSI=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org 60E00986F78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1747830391;
	bh=eqG3c4HmSGmbx1t3YKYBss0ONxVwSYZBF3qeOlX3A34=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=VWPbBjId9YWWRvPZ3gYCP92QmiSQ77FijPZjRXPmGN+XhmzwU1PmGu1sPZULM+s+i
	 hdG3/2ekH6Q79xVwN4hqhavTNXNXwLE7mxRYcj5u95sS0AjwmRKSGUjTCht+YgJB5p
	 3cjtjDah8vZ9HDLlLdPz1gCeu9KIx7AKHI+vbPZE=
Message-ID: <d4d74ff9-e45d-42e6-9c4f-bf8addd0eaf5@isc.org>
Date: Wed, 21 May 2025 14:26:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
From: =?UTF-8?B?Tmlja2kgS8WZw63FvmVr?= <nicki@isc.org>
Autocrypt: addr=nicki@isc.org; keydata=
 xjMEYkmdZxYJKwYBBAHaRw8BAQdA2qzyxWjU1ywwbtOMEQ0b+R/n4tLJZ7L6gPUYhn3r7G3N
 H05pY2tpIEvFmcOtxb5layA8bmlja2lAaXNjLm9yZz7CmQQTFgoAQRYhBB6evExax6zNPacp
 KAFiO5tlKiCnBQJmL4xkAhsDBQkHHNo/BQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJ
 EAFiO5tlKiCnSfEA/jJV+XzZMXNIkrvbMugi/yQvLtZr5J0FHSQWHH+0Vq1LAQDsnAj7eax+
 NGk/cc9rgIODpX7TI5m77qVzedgXg122DM44BGJJnWcSCisGAQQBl1UBBQEBB0Ao1FVFuEhj
 EM1uGJCEQT7QNo28RhXNgk5SAWc+61lhTgMBCAfCfgQYFggAJgIbDBYhBB6evExax6zNPacp
 KAFiO5tlKiCnBQJlpBDLBQkHHNpkAAoJEAFiO5tlKiCn0EcBAOXRTTXsuR3kM/ZD7GuEpvAI
 O/tVgMRftTGYnJThrpsVAQCnNwj5JfxDfvxDVPDvlM5yy21yZmSJ+lUEvDGuQ7kmAQ==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------W6KgMjoCWCfbnA4BpatO4u95"
Subject: [oss-security] CVE-2025-40775: BIND 9: DNS message with invalid TSIG causes an assertion failure

--------------W6KgMjoCWCfbnA4BpatO4u95
Content-Type: multipart/mixed; boundary="------------aGKIgVipPxN0fmuX3761jHbz";
 protected-headers="v1"
From: =?UTF-8?B?Tmlja2kgS8WZw63FvmVr?= <nicki@isc.org>
To: oss-security@lists.openwall.com
Cc: security-officer@isc.org
Message-ID: <d4d74ff9-e45d-42e6-9c4f-bf8addd0eaf5@isc.org>
Subject: ISC has disclosed one vulnerability in BIND 9 (CVE-2025-40775)
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

--------------aGKIgVipPxN0fmuX3761jHbz
Content-Type: multipart/mixed; boundary="------------sIJJkwKlHXxdc6MnhkB0vdAV"

--------------sIJJkwKlHXxdc6MnhkB0vdAV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMjEgTWF5IDIwMjUgd2UgKEludGVybmV0IFN5c3RlbXMgQ29uc29ydGl1bSkgZGlzY2xvc2Vk
IG9uZSB2dWxuZXJhYmlsaXR5IGFmZmVjdGluZyBvdXIgQklORCA5IHNvZnR3YXJlOg0KDQotIENW
RS0yMDI1LTQwNzc1OiAgICAgICBETlMgbWVzc2FnZSB3aXRoIGludmFsaWQgVFNJRyBjYXVzZXMg
YW4gYXNzZXJ0aW9uIGZhaWx1cmUgaHR0cHM6Ly9rYi5pc2Mub3JnL2RvY3MvY3ZlLTIwMjUtNDA3
NzUNCg0KTmV3IHZlcnNpb25zIG9mIEJJTkQgOSBhcmUgYXZhaWxhYmxlIGZyb20gaHR0cHM6Ly93
d3cuaXNjLm9yZy9kb3dubG9hZHMNCg0KT3BlcmF0b3JzIGFuZCBwYWNrYWdlIG1haW50YWluZXJz
IHdobyBwcmVmZXIgdG8gYXBwbHkgcGF0Y2hlcyBzZWxlY3RpdmVseSBjYW4gZmluZCBpbmRpdmlk
dWFsIHZ1bG5lcmFiaWxpdHktc3BlY2lmaWMgcGF0Y2hlcyBpbiB0aGUgInBhdGNoZXMiIHN1YmRp
cmVjdG9yeSBvZiBlYWNoIHB1Ymxpc2hlZCByZWxlYXNlIGRpcmVjdG9yeToNCg0KLSBodHRwczov
L2Rvd25sb2Fkcy5pc2Mub3JnL2lzYy9iaW5kOS85LjIwLjkvcGF0Y2hlcy8NCi0gaHR0cHM6Ly9k
b3dubG9hZHMuaXNjLm9yZy9pc2MvYmluZDkvOS4yMS44L3BhdGNoZXMvDQoNCldpdGggdGhlIHB1
YmxpYyBhbm5vdW5jZW1lbnQgb2YgdGhlc2UgdnVsbmVyYWJpbGl0aWVzLCB0aGUgZW1iYXJnbyBw
ZXJpb2QgaXMgZW5kZWQgYW5kIGFueSB1cGRhdGVkIHNvZnR3YXJlIHBhY2thZ2VzIHRoYXQgaGF2
ZSBiZWVuIHByZXBhcmVkIG1heSBiZSByZWxlYXNlZC4NCg0KLS0gDQpOaWNraSBLxZnDrcW+ZWsg
KHRoZXkvdGhlbSkNCg0K

--------------sIJJkwKlHXxdc6MnhkB0vdAV
Content-Type: application/pgp-keys; name="OpenPGP_0x01623B9B652A20A7.asc"
Content-Disposition: attachment; filename="OpenPGP_0x01623B9B652A20A7.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xjMEYkmdZxYJKwYBBAHaRw8BAQdA2qzyxWjU1ywwbtOMEQ0b+R/n4tLJZ7L6gPUY=0A=
hn3r7G3NHFRvbSBLcml6ZWsgPHRrcml6ZWtAaXNjLm9yZz7ClgQTFggAPhYhBB6e=0A=
vExax6zNPacpKAFiO5tlKiCnBQJiSZ1nAhsDBQkDWO8ABQsJCAcCBhUKCQgLAgQW=0A=
AgMBAh4BAheAAAoJEAFiO5tlKiCnSc0A/iYqAgwuOpeULwFBJt+n0knA0FwqEkzZ=0A=
BCLVx0K9tKomAQCyMdzXAA3ZgEYuzynsfD9kOdTgtofaY6OOuL1HKqPIAcKWBBMW=0A=
CAA+AhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAFiEEHp68TFrHrM09pykoAWI7=0A=
m2UqIKcFAmWkEKYFCQcc2j8ACgkQAWI7m2UqIKd04wD+IarX1BdWCQBpBqSvjm2i=0A=
2NitWtspD5DLH0Ma1VrOz7UBAM9ckit4zvJs0TjLBP8v07E6zcaQGxQE4liuBQgh=0A=
HjIOzR9OaWNraSBLxZnDrcW+ZWsgPG5pY2tpQGlzYy5vcmc+wpkEExYKAEEWIQQe=0A=
nrxMWseszT2nKSgBYjubZSogpwUCZi+MZAIbAwUJBxzaPwULCQgHAgIiAgYVCgkI=0A=
CwIEFgIDAQIeBwIXgAAKCRABYjubZSogp0nxAP4yVfl82TFzSJK72zLoIv8kLy7W=0A=
a+SdBR0kFhx/tFatSwEA7JwI+3msfjRpP3HPa4CDg6V+0yOZu+6lc3nYF4NdtgzO=0A=
OARiSZ1nEgorBgEEAZdVAQUBAQdAKNRVRbhIYxDNbhiQhEE+0DaNvEYVzYJOUgFn=0A=
PutZYU4DAQgHwn4EGBYIACYWIQQenrxMWseszT2nKSgBYjubZSogpwUCYkmdZwIb=0A=
DAUJA1jvAAAKCRABYjubZSogpxNQAP4x5hrRQoaNNK2sKH9AxGwDKTxRLD3wK4+T=0A=
+bBFFpDCkAD/evAELiv0WNuT6Z2CKaL6Jdv24XLJ24ehetsSYPu74ALCfgQYFggA=0A=
JgIbDBYhBB6evExax6zNPacpKAFiO5tlKiCnBQJlpBDLBQkHHNpkAAoJEAFiO5tl=0A=
KiCn0EcBAOXRTTXsuR3kM/ZD7GuEpvAIO/tVgMRftTGYnJThrpsVAQCnNwj5JfxD=0A=
fvxDVPDvlM5yy21yZmSJ+lUEvDGuQ7kmAc4zBGJJncoWCSsGAQQB2kcPAQEHQNvh=0A=
Cw4OPzBpKDYlOScxhVpNA2s2BS7cV7fXlcsKGfTbwn4EGBYIACYWIQQenrxMWses=0A=
zT2nKSgBYjubZSogpwUCYkmdygIbIAUJA1jvAAAKCRABYjubZSogp+RBAP4yIVUE=0A=
6FHEgB0PdiZlv7Pjgs8dd+H4gP3wFv+d4lnzdAEAgYEb29NrCuZAVB7BwqJJlUEo=0A=
1ME65//sRnI9rvosgQnCeAQoFggAIBYhBB6evExax6zNPacpKAFiO5tlKiCnBQJi=0A=
sw3KAh0BAAoJEAFiO5tlKiCnjH4BAPY/ccVyCB9RQlDOWao1UqdwuPVsqKrCk5jg=0A=
kmbtpuhdAQCeRfcDehkAZFf/60rfVOov4EXq9vbZM5C8LAZpvw+iA87AzQRic64N=0A=
AQwAuqili0lUsIluNd8NcpQgoTJ0hoxJDaTOzFNI/7VfFR1lGgDMdJIaU//WAVYU=0A=
pV8rxm3ZXbm5pOTvtrpmBcjoy9V6QVyzse91BNoMs8AKu8EkPXGvX1N8t2bSCJc1=0A=
tJznANBMbxR/VW6wEx5mZUL8hC/hJ/dwlRTs21EoWHoznT3x0PqwOKb3Eo96ezcZ=0A=
wsnuqMtMjN0hTAqNi/6pUZB7IsHGTmQdUioqxzzQLLU6i4f2ocuRMaw13hhI44sX=0A=
qheoahBXACKZ6jHIq3P7Wc4M2oZy8o5uafI7OP5XfFLzQ2Ub2i8WxSzAtGyG+Qx6=0A=
mmnbBOb6NEDg7FwNYA55ABg9pmgVncqb/gYGALmRUnXD5sAf2H8G0WbYW7gCOGjG=0A=
9pbP57TL2kGOAQGCT5RC0AcDa8XSYZoeNbBCVHz9RqTN2tzUOLNFWlbSp2NJs5fR=0A=
rneYKjpULs01pMkg+pBQ3T2IghyOgJGQRdjsqFLT7yK6DLvAumbzmP3svru0D6OM=0A=
NDh9ABEBAAHCfgQYFggAJgIbIBYhBB6evExax6zNPacpKAFiO5tlKiCnBQJlpBDw=0A=
BQkG8snjAAoJEAFiO5tlKiCnSagBAORTa48Bp8QIvS04fAVJ8u/F26JEegD0Ed9d=0A=
vGhlIcpAAP9CVrAsrRtF3qnR1/kDVvB/obsycTjVcnxzMt2MqMUdBw=3D=3D=0A=
=3DjkMF=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------sIJJkwKlHXxdc6MnhkB0vdAV--

--------------aGKIgVipPxN0fmuX3761jHbz--

--------------W6KgMjoCWCfbnA4BpatO4u95
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQQenrxMWseszT2nKSgBYjubZSogpwUCaC3GbAAKCRABYjubZSog
p6cbAP909iBmKiW8HyMFPBycrLrfsjZZuvW6gADzdgu+dTceOwEA/WZrXc9fF/Uk
gKUkACpobTSdTnJKn4i/sWu2PoopngM=
=ElWz
-----END PGP SIGNATURE-----

--------------W6KgMjoCWCfbnA4BpatO4u95--
