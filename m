Received: (qmail 29700 invoked by uid 550); 2 Jun 2026 15:29:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11370 invoked from network); 2 Jun 2026 15:16:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780413394; x=1781018194; darn=lists.openwall.com;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JzbXH2SHPWTupolHlRJimmOTh4UWERd5Nc6bWvErK5c=;
        b=MXujfcXFtkT52IFPt0oUPAiGKr1mM+JzdNQiOVvqrG9lRTq0WnBM675myDDZxlSt/u
         ZPqwKVYQtYfOkwPO0fhXTn1XkG3Lgd7FRVnIzXZ6ycibRSoLfJpkkteJzSjmYCTkk7Mj
         ID/H7qyjUjhAt/nNMb4mMVw+XmuLWovrE3akWsgZ+hnJIQHFUKhAZfZlohVjXZBUBAqY
         ObnMNarvJS47qvKJKFWERGwNJ5v07HDGpo11cJGSMSo3uTsUlnbKzHwX2VV2CWmgQNKs
         UQI++f0/Q7B4w0J/LgK7FumXRRg2DbzPgq4N4UxAMZRJZ7UUrBbLFMLpHtYVg7KJCcah
         //GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780413394; x=1781018194;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JzbXH2SHPWTupolHlRJimmOTh4UWERd5Nc6bWvErK5c=;
        b=EDawU6uNdEEgkeipOWWWN3U6j7bd7Rb5c11HrOkRIaD13kCPLai3YCZ0SYMCmVt9jG
         P2PiulxemX+8CakDytJF8r+EVuzvmWbDmvaCRZdVvi6fBQwVDZRDhsCmX1CM3e+VwDga
         4tQszam/iAPUG2YwSR78AkbYDa9ZLxkFRaBE9elVWSfupg4WaKaAmzgH5aXXnPazzfj9
         vvez3CsGs5NLHreH/FH2ac3VhWxz/HjSvIX5JgJDNE0o417E137jRwGeJQOfwsb3oxFd
         PIrciE7P0gHxtNfsyOl12GNQ3v5IxB8A3Kat/qx6xHaqnWHd/0u4L/wlHZtIDPsfUxqd
         k8Mg==
X-Gm-Message-State: AOJu0Yw3yE4BpdRGlFyBgiGDhpej0pGnD8xAk4Tl2KslMzc8JCZ69YCv
	pbINe8B//YFlWbKB3D5SXMuEXJ2jULMiPim1wU1nywz4SrHwvSSeRcC+385Uug==
X-Gm-Gg: Acq92OH4QRNyKCsB4/UHb4Q5+NzoaXABCJTHG5naehEsiDlAkKgBQdHLDWCJaADYc3R
	BjUfQIP6NGpvoI/yoUqm6WMUVuWeL5G4Sdk42Vy79+2/sGdvXM1B3Tw7U2zE3Ax6Dm/bgKH1lhC
	DK51rx8K0XixwjcCcTx8queqBKZ2TH6GrSXUV1Q/85YdoIgxDLDBQQPwAyuBQl/3t9CHrBv9vVo
	C3Y8+FUggGnURzl9K1z93xBGisQQpe8R2FVFasAwHzsnC/DUtH5vYHyxPEu6mOjQrwvnDkkCASv
	T/HX9R2NvAlit5b0Vp40prJ7L32GgD8DmUU+V+zmZJ17+vRo36FLkv1/VkYjLyLkpJCxK4U5CYM
	w3SEUWDyFf3U2lVO1foOAmfYhBUE0QNqNfSmOKAzX/S1HJrUDeAeX9/l9KnxlTUDaXhBSOeTyBp
	RZLcizRfufAlcfiSNxbwcPpKTZV4J0NxgPmdO3nj2FB9UXY45o/5uIpbIU6jGxoKtAgPoF++y4g
	t8pvRJDjJbKge3upMnY
X-Received: by 2002:a17:902:e88c:b0:2bf:3074:34dc with SMTP id d9443c01a7336-2bf367c54demr187540385ad.14.1780413393459;
        Tue, 02 Jun 2026 08:16:33 -0700 (PDT)
Message-ID: <4ca33132-24d8-417d-a77d-fd5398f08455@gmail.com>
Date: Tue, 2 Jun 2026 08:16:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fA10Am6D1Wt0c0LV2pTy7gzE"
Subject: [oss-security] [OSSA-2026-014] OpenStack Swift: Errata 1 - Proxy-server denial of
 service via truncated s3api chunked upload, (CVE-2026-49017)

--------------fA10Am6D1Wt0c0LV2pTy7gzE
Content-Type: multipart/mixed; boundary="------------Dzr41Xiw7BlkK2583ikx644l";
 protected-headers="v1"; hp="clear"
Message-ID: <4ca33132-24d8-417d-a77d-fd5398f08455@gmail.com>
Date: Tue, 2 Jun 2026 08:16:30 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Subject: [OSSA-2026-014] OpenStack Swift: Errata 1 - Proxy-server denial of
 service via truncated s3api chunked upload, (CVE-2026-49017)
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K

--------------Dzr41Xiw7BlkK2583ikx644l
Content-Type: multipart/mixed; boundary="------------aFDb491vz7yG2Kb8Usq17ErH"

--------------aFDb491vz7yG2Kb8Usq17ErH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCk9TU0EtMjAyNi0wMTQ6IFN3aWZ0IHByb3h5
LXNlcnZlciBkZW5pYWwgb2Ygc2VydmljZSB2aWEgdHJ1bmNhdGVkIHMzYXBpIA0KY2h1bmtlZCB1
cGxvYWQNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCjpEYXRlOiBNYXkgMjcsIDIw
MjYNCjpDVkU6IENWRS0yMDI2LTQ5MDE3DQoNCg0KQWZmZWN0cw0Kfn5+fn5+fg0KLSBTd2lmdDog
Pj0yLjM1LjEgPDIuMzUuMywgPj0yLjM2LjAgPDIuMzYuMiwgPj0yLjM3LjAgPDIuMzcuMg0KDQoN
CkRlc2NyaXB0aW9uDQp+fn5+fn5+fn5+fg0KQWxpc3RhaXIgQ29sZXMgZnJvbSBOVklESUEgcmVw
b3J0ZWQgYSBkZW5pYWwgb2Ygc2VydmljZSB2dWxuZXJhYmlsaXR5IGluIA0KU3dpZnQncyBzM2Fw
aSBtaWRkbGV3YXJlLiBBbiBhdXRoZW50aWNhdGVkIHVzZXIgY2FuIHNlbmQgYSB0cnVuY2F0ZWQg
DQphd3MtY2h1bmtlZCBQVVQgcmVxdWVzdCB0aGF0IGNhdXNlcyBhIHByb3h5LXNlcnZlciB3b3Jr
ZXIgdG8gZW50ZXIgYW4gDQppbmZpbml0ZSBsb29wLCBjb25zdW1pbmcgQ1BVIGFuZCBtZW1vcnkg
dW50aWwgdGhlIHByb2Nlc3MgYmVjb21lcyANCnBlcm1hbmVudGx5IHVucmVzcG9uc2l2ZS4gRGVw
bG95bWVudHMgcnVubmluZyBTd2lmdCAyLjM1LjEgb3IgbGF0ZXIgd2l0aCANCnRoZSBzM2FwaSBt
aWRkbGV3YXJlIGVuYWJsZWQgYXJlIGFmZmVjdGVkLg0KDQoNCg0KRXJyYXRhDQp+fn5+fn4NClRo
ZSBvcmlnaW5hbCBhZHZpc29yeSBsaXN0ZWQgdmVyc2lvbnMgMi4zNi4wIGFuZCBsYXRlciBhcyBh
ZmZlY3RlZC4gDQpTd2lmdCAyLjM1LjEgYW5kIDIuMzUuMiAoMjAyNS4xL2Vwb3h5KSBhcmUgYWxz
byBhZmZlY3RlZCBiZWNhdXNlIA0KYXdzLWNodW5rZWQgc3VwcG9ydCB3YXMgYmFja3BvcnRlZCB0
byB0aGUgMjAyNS4xIGJyYW5jaC4NCg0KDQoNClBhdGNoZXMNCn5+fn5+fn4NCi0gaHR0cHM6Ly9y
ZXZpZXcub3BlbmRldi5vcmcvOTkwMzU1ICgyMDI1LjEvZXBveHkpDQotIGh0dHBzOi8vcmV2aWV3
Lm9wZW5kZXYub3JnLzk5MDI2MiAoMjAyNS4yL2ZsYW1pbmdvKQ0KLSBodHRwczovL3Jldmlldy5v
cGVuZGV2Lm9yZy85OTAyNjEgKDIwMjYuMS9nYXpwYWNobykNCi0gaHR0cHM6Ly9yZXZpZXcub3Bl
bmRldi5vcmcvOTg3OTU3ICgyMDI2LjIvaGliaXNjdXMpDQoNCg0KQ3JlZGl0cw0Kfn5+fn5+fg0K
LSBBbGlzdGFpciBDb2xlcyBmcm9tIE5WSURJQSAoQ1ZFLTIwMjYtNDkwMTcpDQoNCg0KUmVmZXJl
bmNlcw0Kfn5+fn5+fn5+fg0KLSBodHRwczovL2xhdW5jaHBhZC5uZXQvYnVncy8yMTUyMjA1DQot
IGh0dHA6Ly9jdmUubWl0cmUub3JnL2NnaS1iaW4vY3ZlbmFtZS5jZ2k/bmFtZT1DVkUtMjAyNi00
OTAxNw0KDQoNCk9TU0EgSGlzdG9yeQ0Kfn5+fn5+fn5+fn5+DQotIDIwMjYtMDUtMjkgLSBFcnJh
dGEgMQ0KLSAyMDI2LTA1LTI3IC0gT3JpZ2luYWwgVmVyc2lvbg0KDQoNCi0tDQpHb3V0aGFtIFBh
Y2hhIFJhdmkgKGdvdXRoYW1yKQ0KT3BlblN0YWNrIFZ1bG5lcmFiaWxpdHkgTWFuYWdlbWVudCBU
ZWFtDQpodHRwczovL3NlY3VyaXR5Lm9wZW5zdGFjay5vcmcvdm10Lmh0bWwNCg==

--------------aFDb491vz7yG2Kb8Usq17ErH
Content-Type: application/pgp-keys; name="OpenPGP_0x0638DAD3B82C3988.asc"
Content-Disposition: attachment; filename="OpenPGP_0x0638DAD3B82C3988.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----=0A=
=0A=
xsFNBGm7HhsBEAC4jWG7snWqax8fazd7QVADjLRxhNKOAyVrBqBffI5CuSuafwtq=0A=
V1s3x8C7GzNjklTuCXcX7iZAU7g5y0fZtT6lp1l3l1xUtKPcBF0DCd5JH/HP/MH8=0A=
eBByL3sNRR3RHovAVpUhxT0RGcltm5wbnwE37dcrIRbVl66xbcyaUnHokUhdShSb=0A=
SptiPPOkncn/i10uGAIHN884Bt/zZkUpak9PMTFNXThDYU+79csw6roxH/AV6mtD=0A=
xDG6wKf8VcFg538a8deJsPUNONrdOYwjH4xAYao5yrktALQC2zEbHLmNZnFRHJ6z=0A=
Gs7zOGN6kLV6ueqfzkkWjPGXkcCeIL4mX3K9mRaW0L6QwKh0n2grWs264dD5bV/r=0A=
PIxhRDHNfp5rMBRPb3rStEqDkqZ8MMuCETZQUwQYa9vccj7diXOa+YvWehaE4Ito=0A=
Nd6+PD9I6mB0VwVDpdxmwgEqR+wG30OTaPSfyq4GQ3z/A783Wyx9vuSI4R2iRSSg=0A=
HuyiaFnRZMIOu5ib0dTuY+/MBmMxSpcU+tre+DedXmCNksLfD9HsHyJMx/OGTWYQ=0A=
dYmavnRtBN+dzwku9SrisCMfAOuDvTvri4csxTRfomNYhUWODGqWum/sV253lh5q=0A=
5J/H6xHVhANTQ3vVU1EYGBJszPxx+aTlFye9oo1/06Lv+U3nYdNDMzaYNwARAQAB=0A=
zStHb3V0aGFtIFBhY2hhIFJhdmkgPGdvdXRoYW1wcmF2aUBnbWFpbC5jb20+wsGz=0A=
BBMBCABdFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmm7HhsbFIAAAAAABAAObWFu=0A=
dTIsMi41KzEuMTIsMCwzAhsDBQkDwmcABQsJCAcCAiICBhUKCQgLAgQWAgMBAh4H=0A=
AheAAAoJEAY42tO4LDmIhTwQAKt30GA/0UnV9uvioUeyBJp1GnGN1lcXNQYIFOB+=0A=
TbjMthdYScRTHY28l/gKSuvTtV+DuTvrOS0UPZ7HC72SijE3AJOQGE1YMTToxdxi=0A=
OCv++R/3Sth4zogHPVlJPn4mIry/8OX7cchxnwuPGtdrH2H31IxSIeW2FWSSGd7K=0A=
rY/IncJOQeN4wOXpEi+gbNGGrnyEJj3J0pz+8Fx2MugdMGP7zmLMN8UEIY7XBGx6=0A=
U96ri35iCMsosdiuUylUXTDufJf+VvA66gGNy063KM8mzkdJHTVzdcJjFTS4FemF=0A=
97dBu2FR8sgsiiaFiNVs1KfHKcs2J2M+rVQQokpYARq7ayDLPPhVHV4bXk1kuS4p=0A=
l6EeSGz0Xp6LXD6YuwcG87vUDD6IJDQY2YqRedYkaOF0hvwuIihDMwWBtuRLNdgl=0A=
MNGFnf++euaQBqfQT9W6mQqFGQ+hkLsTPo/nYjfVIcYRdGZEY+iydM3HaVr8UbB8=0A=
vrnSGUFfW31PGJ/SVV3nJtWoygToacNzwUUwT3Y8VWFcfypC9hI856BDlvOlb7X0=0A=
JBagdmgJqCWMAkKPPQNsS5xRcHTxnd8b63UrC4Vi4M423ThAByjERzYoGPmb/mJF=0A=
tcZrGwTArUfwNKFEvDLt7gcZNIvuPWeTVWHgr4Suko3EkRTIL2w6TppylLJTi1jI=0A=
yNMtzsFNBGm7HhsBEACw4nqhta7zFWEt/UpPEYkenWpbT2nVDtuKn1uELMCV+Sy8=0A=
Jdcec9VKQm6q4y9xqkLuMT5y1x213dpPJVHegks8TJaFf3yaA+++QtqHP2biEaqk=0A=
6HSpa5DIoGt95Uc58FVKiNQZ3w8bbna3Vrzy920WcBydKY6U2wemJf9hSdM4l15l=0A=
ezk3HOnJaxKt+hTuaISUlEhZDQ3UtwdlKAWjcYkzkObVhZugZS8tWCpWsRq4eHcy=0A=
hpxihTZFyKhGkKSu2W2Q+AgFr7TRvdW2/oIjaPSy7DeqH88STz3Nvzg9ztnqzQ5j=0A=
DKWamnlrjbxllI77c9+fvp2lkt/9hQtQ0SP6amEoYxfckJ0Q2AVTb4ixk8/Xv77g=0A=
fIDJQ4HoTyPF2CXVpV2V8RPFKhwwZcdcna7eyw+zTXrl6Grjj6P0olrBCzvwvFex=0A=
3c2rqhWzZKZnIqH4QHDV4GPGO1BPsnHRe0j+ZhZ03EVS+IxOlaExiF/wIm7S7VgH=0A=
ZjTBs3V9L+szy2gO73ms+yh7n1PrXw+nI38f3xqGyZCfCX5kNwAoB0+izqOD9Cy/=0A=
syviXgwbtbmu35NIbmOk9yMPvHVO6o6JQlq9moNaXEn7N4abFWHKP4lvLe6Yn3av=0A=
y8+byR8bZplYQbBTrEtjGanO9nNannlyFnEDvUoQQ3PozyyztzerC5z6uPSSIQAR=0A=
AQABwsGYBBgBCABCFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmm7HhsbFIAAAAAA=0A=
BAAObWFudTIsMi41KzEuMTIsMCwzAhsMBQkDwmcAAAoJEAY42tO4LDmIXqkP+gPE=0A=
jSFIH4HYoEsBE2wBiJlS5bBMsmElFCYyRM1S4az/RS3FX8r2a+J58UuUeANs4wiZ=0A=
/4iGlBvdYn7rwB1Yb2/LIO5Pcsc9UvWKv2fEbpIbc7GMvb8+egFfkn7pHSbOqHxV=0A=
7Z+JRoXToxcIqmlZi43mz7hVdR0ei8WMBR5nKVE6Ixt47QHilQ5kLMCqVmNojFz/=0A=
H6t5uhjs3X6oalsB5/AoeL0jH62Dd1NWq1vBaqKYBLHyNNATkl97VdAUgaFE28Q4=0A=
Nx+as9AGY5sr6yBoHD+QjZwnNydR6uRCY7qD+mqQv9KbHhBLd7HqyjXY7tG7pPnP=0A=
4XeNkiUUDwIv2sYUSEhN89R5kk1YDKQ14N2/43l7JGCvnll64iomqqmejykliW+T=0A=
6HhpKYNTH9ldYpjGmcYo4y093DnEA8nCXwpa3HO17ZQ7nxlg00Y3Oo4WpSGwAlpI=0A=
81y4shJtQGwrnHaqqfH4/obXwb3SOLsFCPF9fZxtXmlO1VOA5JaM8y6DIqBewPNA=0A=
WNzZu3qeBJd716WXp1ivUjvFRLcCMU6GxOMTv7dz1GP3d/xG9/Lb/mBK78Lu6fPc=0A=
nV7MQp38mYdfj9T1t0pu/GTDpG0AYRl124U8onEwl3KJzst8AO8G0kKyWdXR0cRe=0A=
+qGYa3LmV2soXmdh0GFZ5KFjVYvdtAgTRIrQIz/K=0A=
=3Drf4K=0A=
-----END PGP PUBLIC KEY BLOCK-----=0A=

--------------aFDb491vz7yG2Kb8Usq17ErH--

--------------Dzr41Xiw7BlkK2583ikx644l--

--------------fA10Am6D1Wt0c0LV2pTy7gzE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmoe884FAwAAAAAACgkQBjja07gsOYi8
BQ/+JaoI634RZLi0PZRimS/7lj4IZFgOG4I/pv/Xg3nOXeL9jq7J0DLO95SEbWkKWgax/p31+EBD
a3Ur0+AdfqAhmw0KmFn3kWSxr7VUhEKY33ZTbt6pUYQHRbQrW6oKR7xRKac06tUpHxDYKoiK+hY6
Ph8LOSY75VXhpLLIeBllAT/4Bjqqjwe8rjhPNUFC6l6QiHSPcs0HEYXiIwHnjNGnmldR08wUj2L7
ZKZyc7SrPeFscrCzi95eI4WpM7+hUibs8Vp0m6GynZDS94EKLnG9HQ/5JT1h+IWstFc+gN4xNwlk
76mbWK+WhVgzKMWQrmLwlnouTCYs39uiOBr5CmhGP+3Okwm7y10qrChAzL8aMAa7QYkreAcXn4S0
lqfz6vc8IHv8uTObgi9mjBPthBrLGxfD69WC2AwwcuMEaBt0fgb+krYBZDSHKvySadDIAHsa6Gdd
WSoUCSyQu44o5Lwg7PY6CSoRybk8JPerVVnlqBzt27+jrZhXVJSQ0VsGsvm3vHJEMTg9LfqV+lIm
+QeMT0RHo1HBuosAGerxX/uIQRlF/RTTtIi4e6ft8PNkjmIRsnRUfhexq9OPZJHnbc0VlYvpYe6L
26rZNMQJ6WZ0QYtaualJ+kACE9A29lxkcHXv65jICyOj9Wwtejhbw9ow5nb1BrM2NTipPsBXUG+P
LHI=
=gsgg
-----END PGP SIGNATURE-----

--------------fA10Am6D1Wt0c0LV2pTy7gzE--
