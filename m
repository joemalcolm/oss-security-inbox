Received: (qmail 21542 invoked by uid 550); 2 Jun 2026 15:33:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15967 invoked from network); 2 Jun 2026 15:17:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780413465; x=1781018265; darn=lists.openwall.com;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=jK9bL4c5LpPwezwm6BkGDElBG9UQLKzwz+BqSFY40DU=;
        b=lVY28xW+pQRcliAuVkeurfrdgnC5lnKDJ4k7/yx1bDLTC0En7xuTFtcqtHgqIqN1PF
         MonABL6eP6YDZ90VPtPmU1BeRqoei1RoBOHBisR/EVzPnuzQ9chdOMpZMozH+Y+SIPPI
         Yx+p3qZxHgh0Dn7r+QEWS3OrYEzg8SwSnsjr6dVkfWGsvjAl6EwJyUKV/QO2TxAj4Jvw
         CCJS0BB5TKRvm6ivDgyzTfU6BDwrtOW8Du7WikLg/5U+0/KYnnYhpvW7Ti3wb3VaKuZQ
         Oc8V7SQCuSk4r9l4g8NVK69flRzlRyS7Lv8jFvSza4Gqu1dwgyQooZb1yyqGfFBs9xUN
         GFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780413465; x=1781018265;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jK9bL4c5LpPwezwm6BkGDElBG9UQLKzwz+BqSFY40DU=;
        b=IeyYCrkvbzpA5wJj7gA63Xp2QKDoMppC7ezJ0H+eJnisbAcpRa5m2t2QwCBdvoXtQ4
         zyLMu68xdZcEgl0zGidi0FBrspN7QSFO8nieot2qeeFvZkuKDA7rlYhskuxe7euMnbVP
         9KVHqNyjJfTrOJ5x5oDCXO/dhoZaZ7ys4xU9Tsx/p5HXgkyNQp/aM6lRMqZYIV06o3fX
         2RpgaDBANTHZGQX165lloFB34AHtVCl9mKWaCi9RVhNzybIemSjyD95EXA4VY3Z8jvN8
         VSb3yN9a44W/0RoGfyRCeAaSKBY2pMK8SOsrm0rhVtwYBmkPJFYth6q5VCQpKLhxpZ6j
         USmQ==
X-Gm-Message-State: AOJu0YyG/FFIeUol4k+WKmoBWGlM2XxmU8R9KJk0+sEjEVSTqebVeX7m
	26DQjU6dItxUTAyn9QG1iZTeh0xDO8w31j4JnHMKMhGwhh7OcdPUtaWOn+PuYQ==
X-Gm-Gg: Acq92OGv8qGYyvu2y07LFZQkkFeK/Y5gKVpscIgvG3+SDGBvHAK0TJjODCwRhdueV9U
	xhDXyPQhqD1QAV3eeLEOl3FPyx+ndGrCy/0jsRyPOFuIalEUj2inVufT9uSMm/b4wOwLwkwJokH
	ghRuVYQu2Ug10rgP4yc6faFwpEDOtPAusmmImBRSx1fnKyaG+bZnhb1ih4HZfyMFde67F2g7Wyo
	wjSwTLp1zojrCATTwglPiZbqrMInx6qacnTH3YgR1wCuqm+r0tBLiio584svgTPLKwKGajMffjW
	sbdEWWPfmc8lTQy2cAx6drob8SzK1XzdV2O5m6+Z3Ta4CuOu1yLIHTs3hX7evbnLxXIe2XzYRKf
	C8vjbNPyCbOsDJlLrM8TYoHVSR9qbRYH02hRZREbmCHqF7OZl/ojLSepXtKq8bKwxXdK+6VgBNJ
	bikw4nFpIImvpevonCXFt2obUg4C828Ha8fm++z3Yf6TtA5gPtrYM3oexwkr1rY/VaYtSQJOdN+
	YzL0GcygXd5t6jZbRFD
X-Received: by 2002:a05:6a00:a20b:b0:82a:146d:36a3 with SMTP id d2e1a72fcca58-8426a96af64mr3564683b3a.21.1780413464211;
        Tue, 02 Jun 2026 08:17:44 -0700 (PDT)
Message-ID: <dde61392-c65b-4bfd-88d8-081ea5af5eea@gmail.com>
In-Reply-To: <a8a9d885-ae9a-40e1-940f-05329c8e9755@gmail.com>
Date: Tue, 2 Jun 2026 08:17:42 -0700
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
 boundary="------------sZXYwAoeILh0iINqNorJBAbj"
Subject: [oss-security] [OSSA-2026-016] OpenStack Neutron: Errata 1 - Tagging policy bypass
 allows project readers to mutate tags (CVE-2026-49299)

--------------sZXYwAoeILh0iINqNorJBAbj
Content-Type: multipart/mixed; boundary="------------OJ0MRFLxlJeTOfNnjDNeYQSp";
 protected-headers="v1"; hp="clear"
Message-ID: <dde61392-c65b-4bfd-88d8-081ea5af5eea@gmail.com>
Date: Tue, 2 Jun 2026 08:17:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Subject: [OSSA-2026-016] OpenStack Neutron: Errata 1 - Tagging policy bypass
 allows project readers to mutate tags (CVE-2026-49299)
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K

--------------OJ0MRFLxlJeTOfNnjDNeYQSp
Content-Type: multipart/mixed; boundary="------------kav0v7v2QYoYtiUgG2rPpkIT"

--------------kav0v7v2QYoYtiUgG2rPpkIT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KT1NTQS0yMDI2LTAxNjogTmV1dHJvbiB0YWdnaW5n
IHBvbGljeSBieXBhc3MgYWxsb3dzIHByb2plY3QgcmVhZGVycyB0byANCm11dGF0ZSB0YWdzDQo9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09DQoNCjpEYXRlOiBNYXkgMjgsIDIwMjYNCjpDVkU6IENW
RS0yMDI2LTQ5Mjk5DQoNCg0KQWZmZWN0cw0Kfn5+fn5+fg0KLSBOZXV0cm9uOiA+PTI2LjAuMCA8
MjYuMC40LCA+PTI3LjAuMCA8MjcuMC4zLCA+PTI4LjAuMCA8MjguMC4xDQoNCg0KRGVzY3JpcHRp
b24NCn5+fn5+fn5+fn5+DQpUaW0gU2hlcGhhcmQgZnJvbSByb2lhaS5jYSByZXBvcnRlZCBhIHBv
bGljeSBlbmZvcmNlbWVudCBieXBhc3MgaW4gDQpOZXV0cm9uJ3MgdGFnZ2luZyBjb250cm9sbGVy
LiBUaGUgY29udHJvbGxlciBlbmZvcmNlcyBwbHVyYWwgcG9saWN5IA0KYWN0aW9uIG5hbWVzIG9u
IHNpbmdsZS10YWcgd3JpdGUgb3BlcmF0aW9ucyB3aGlsZSB0aGUgZGVmaW5lZCBwb2xpY3kgDQpy
dWxlcyB1c2Ugc2luZ3VsYXIgbmFtZXMuIFRoZSBtaXNtYXRjaGVkIG5hbWVzIGV2YWx1YXRlIGFz
IGFsbG93ZWQgdW5kZXIgDQpkZWZhdWx0IHBvbGljeSwgcGVybWl0dGluZyBhIHByb2plY3QgcmVh
ZGVyIHRvIGNyZWF0ZSBhbmQgdXBkYXRlIHRhZ3Mgb24gDQpzYW1lLXByb2plY3QgcmVzb3VyY2Vz
LiBEZXBsb3ltZW50cyBydW5uaW5nIE5ldXRyb24gMjYuMC4wIG9yIGxhdGVyIGFyZSANCmFmZmVj
dGVkLg0KDQoNCg0KRXJyYXRhDQp+fn5+fn4NCldoZW4gdGhlIG9yaWdpbmFsIGFkdmlzb3J5IHdh
cyBwdWJsaXNoZWQgYSBDVkUgbnVtYmVyIHdhcyBub3QgYXNzaWduZWQuIA0KQ1ZFLTIwMjYtNDky
OTkgd2FzIGFzc2lnbmVkIG9uIDIwMjYtMDUtMjguDQoNCg0KUGF0Y2hlcw0Kfn5+fn5+fg0KLSBo
dHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy85ODkzNzYgKDIwMjUuMS9lcG94eSkNCi0gaHR0cHM6
Ly9yZXZpZXcub3BlbmRldi5vcmcvOTg5Mzc1ICgyMDI1LjIvZmxhbWluZ28pDQotIGh0dHBzOi8v
cmV2aWV3Lm9wZW5kZXYub3JnLzk4OTM3NCAoMjAyNi4xL2dhenBhY2hvKQ0KLSBodHRwczovL3Jl
dmlldy5vcGVuZGV2Lm9yZy85ODkwOTkgKDIwMjYuMi9oaWJpc2N1cykNCg0KDQpDcmVkaXRzDQp+
fn5+fn5+DQotIFRpbSBTaGVwaGFyZCBmcm9tIHJvaWFpLmNhIChDVkUtMjAyNi00OTI5OSkNCg0K
DQpSZWZlcmVuY2VzDQp+fn5+fn5+fn5+DQotIGh0dHBzOi8vbGF1bmNocGFkLm5ldC9idWdzLzIx
NTAxMzINCi0gaHR0cDovL2N2ZS5taXRyZS5vcmcvY2dpLWJpbi9jdmVuYW1lLmNnaT9uYW1lPUNW
RS0yMDI2LTQ5Mjk5DQoNCg0KT1NTQSBIaXN0b3J5DQp+fn5+fn5+fn5+fn4NCi0gMjAyNi0wNS0y
OCAtIEVycmF0YSAxDQotIDIwMjYtMDUtMjggLSBPcmlnaW5hbCBWZXJzaW9uDQoNCg0KLS0NCkdv
dXRoYW0gUGFjaGEgUmF2aSAoZ291dGhhbXIpDQpPcGVuU3RhY2sgVnVsbmVyYWJpbGl0eSBNYW5h
Z2VtZW50IFRlYW0NCmh0dHBzOi8vc2VjdXJpdHkub3BlbnN0YWNrLm9yZy92bXQuaHRtbA0K

--------------kav0v7v2QYoYtiUgG2rPpkIT
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

--------------kav0v7v2QYoYtiUgG2rPpkIT--

--------------OJ0MRFLxlJeTOfNnjDNeYQSp--

--------------sZXYwAoeILh0iINqNorJBAbj
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmoe9BYFAwAAAAAACgkQBjja07gsOYj5
1hAAq+V1lcUYwPJqY9uX6n4kWoWQeYLfNohgUsyaXEBGS8y7bAd2RpUtWnYwsPTJ5l56gOOFRvtN
pzyfJy7GgAtfQlB9JIIsV2zjhgNhmtPrkzi5AkIXWJCc2iSafomU5ZQ0IAarT1UZdEoZlWBpxiSs
Fue4rOKcba80AHxp9gz6bqzlmedY24R2C2BlpF/tzzzP9IRpNhUhC0Oc3LjJReJMkUlo3gW0xK7s
EZA4vVqNtzocemIowmATcHsa9Om6xmarihvEe0kYowqVAKXlczkAF8vSlrOLNehEgRhPxV63Xx2f
JoiHmSAVNmUGZBerJODEFyk7RQQNK2dehg03FDNhjtnyXgGVkhD3Sg2QbBRc6OxzD7TbuJgT6gfO
0oPe2c2AYwIXUxKtjTiJxrKmO0gPUMiqzf7Fs6eTOVZT8hEeJAHX8+s2GlvyHE9P/xuyl7IIzbR3
htSUOp3tZiIhXJXN3GmeZgm/VmD9qVHWEfBncegi59HQmwSI2vqWfSxgSRw08Y+NLUFyXDOmKNJX
qSStsvFWQDOVs/A1l1wDx0+ztpg0vUZf3J8lLfo2vZLQi3YuM3BPD0U2a8lZQaPErFaE8CF8wx5x
dleK7V2ji2D1P61Q3l1DYRA1D4QbS9SA4js4JorSHWRY6rJhFDnKij1fSNo83nMXekCCaGkUeTUd
0B4=
=NZgH
-----END PGP SIGNATURE-----

--------------sZXYwAoeILh0iINqNorJBAbj--
