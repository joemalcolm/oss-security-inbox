Received: (qmail 24146 invoked by uid 550); 27 May 2026 16:29:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1226 invoked from network); 27 May 2026 16:25:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779899126; x=1780503926; darn=lists.openwall.com;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=6wefHPZmqmktNvEa36oiteWlSSrJvTDZSg0H3AxUZNI=;
        b=M0OQYeXdputoSErjS9IY1ZRBWiVv5HIdr1qKknUnFE2BHGL647Yv7Y0OfixzRg94+G
         Ds1hzEQe98rR11SmBbqhG1SlOTcf3iLFeQavBdwgMYX5YZjA52T1VUQGEzuVvG1i/wCC
         9sBUZpo278HX+avI4Tg+wC5uT1ShbuKXpZjyPnTDLKNcqPeRhArXywqD90XRvMgdBXEu
         UQcvqRs8YW2Mr3Lm2Kta2QEx6ibRnTDJ0/hm6hlnWOEn/dEbeGVYZwMv7ljAWcjaXMsX
         EDuTEXiu4E3pLclFLwV3FDTcF9n3ZHMOSD2YGK+R6dO/12B7H9aVColH5XzsAkmFmv+/
         +96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779899126; x=1780503926;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6wefHPZmqmktNvEa36oiteWlSSrJvTDZSg0H3AxUZNI=;
        b=UwrbPf4r5v9G2cl81Ryr6WSxzSzsMXQDATFO5S9iFnZgv9iKNk2DRH6Oh1Qwf1Uxw5
         +BJc4oHyLfriNNVJ/HuAEnVXOxno1I6qa1eNzJ+Hqq3/G6GQ/aS9lLzcLqkY2zsO8z9I
         yHcaGylS5Cb0kYLsirl0L3yJBXZ4x4R1zfUZnZZjPPYGWDo0HBAvvbQ0BkZjpD7Bo+/W
         taiSKK2y1Er5v42SAhfF4XuEsUuAgKYulKrHp4vaD9SxzyZs4Bm8bwfPjvdLy5u1dxj1
         Ns63PiEcIXnVgb8cDlpCqxHG5I/jzMDJrRWK9fjhIW1z9sAnwe4vXB8siDsIzIecKaGN
         2FfA==
X-Gm-Message-State: AOJu0YyKMLpZwu3mji46/w6mAyH+Ut11WBlU9tYMUidJCnvXaqDhiCHC
	rDtkLtEBxZj6iv/EBZQehTxPipOTzh8ix+RUaFDI2e3gwTTnG8l/Ch79Es+2eA==
X-Gm-Gg: Acq92OHSChT+OB3cvIosISFY2+ur5SKNSII99uGzi9KIS527qANcbSaCxWMmLvU3SMc
	0xYqoZm1uSn8MLoNXUcgKfzrd+8QOrgQV4jSBG8ERl4L323YGD+SpuJUXddHwh6j0ZSAJgQ3mdJ
	UADNjZf4AwvSgyg9jEGRbs9SDnif440MHSSk442WrcmyC2Gnri89kE+P3xy87cZnxQiK8OF8HUB
	zdUUDbcrpyIAC5EWArCYnO951bj7Ceg23D2ZkH3OMVNavUFBapIER8eSCBYgT4XDZu/IYNGkU1f
	3yhcCGQxfsxxmIv/XyfUqAw+1OAYTgkKdLqXqMv7OSCtbERiEMkcB9711QnLc8i/ROXJ0bOh2gp
	Ohm5zxyJ06Sg7QapflNv4NKMYf0tu4vdrROgJPtKB/phw/7qt25yGPUyLcorB12NkC12loU9AZL
	JIt8VG0yYBMiBx3MC/AGm6Zbo8byn6kd6N1aMK6gQxhyvTh+s=
X-Received: by 2002:a05:7300:430c:b0:2c0:df3b:ec1e with SMTP id 5a478bee46e88-30430e3eaf9mr11330038eec.11.1779899125712;
        Wed, 27 May 2026 09:25:25 -0700 (PDT)
Message-ID: <3645ad17-5a0d-436f-a905-112773f4a8e1@gmail.com>
Date: Wed, 27 May 2026 09:25:23 -0700
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
 boundary="------------gMbxwKZZOOs6FOSyCN80nxFl"
Subject: [oss-security] [OSSA-2026-014] OpenStack Swift: Swift proxy-server denial of service
 via truncated s3api chunked upload (CVE-2026-49017)

--------------gMbxwKZZOOs6FOSyCN80nxFl
Content-Type: multipart/mixed; boundary="------------lDEWuQOkVx49kCXIknaqm41c";
 protected-headers="v1"; hp="clear"
Message-ID: <3645ad17-5a0d-436f-a905-112773f4a8e1@gmail.com>
Date: Wed, 27 May 2026 09:25:23 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Subject: [OSSA-2026-014] OpenStack Swift: Swift proxy-server denial of service
 via truncated s3api chunked upload (CVE-2026-49017)
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K

--------------lDEWuQOkVx49kCXIknaqm41c
Content-Type: multipart/mixed; boundary="------------0VxgVYgJvObUhgjFFpD3PniG"

--------------0VxgVYgJvObUhgjFFpD3PniG
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCk9TU0EtMjAyNi0wMTQ6IFN3aWZ0IHByb3h5
LXNlcnZlciBkZW5pYWwgb2Ygc2VydmljZSB2aWEgdHJ1bmNhdGVkIHMzYXBpIA0KY2h1bmtlZCB1
cGxvYWQNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQoNCjpEYXRlOiBNYXkgMjcsIDIw
MjYNCjpDVkU6IENWRS0yMDI2LTQ5MDE3DQoNCg0KQWZmZWN0cw0Kfn5+fn5+fg0KLSBTd2lmdDog
Pj0yLjM2LjAgPDIuMzYuMiwgPj0yLjM3LjAgPDIuMzcuMg0KDQoNCkRlc2NyaXB0aW9uDQp+fn5+
fn5+fn5+fg0KQWxpc3RhaXIgQ29sZXMgZnJvbSBOVklESUEgcmVwb3J0ZWQgYSBkZW5pYWwgb2Yg
c2VydmljZSB2dWxuZXJhYmlsaXR5IGluIA0KU3dpZnQncyBzM2FwaSBtaWRkbGV3YXJlLiBBbiBh
dXRoZW50aWNhdGVkIHVzZXIgY2FuIHNlbmQgYSB0cnVuY2F0ZWQgDQphd3MtY2h1bmtlZCBQVVQg
cmVxdWVzdCB0aGF0IGNhdXNlcyBhIHByb3h5LXNlcnZlciB3b3JrZXIgdG8gZW50ZXIgYW4gDQpp
bmZpbml0ZSBsb29wLCBjb25zdW1pbmcgQ1BVIGFuZCBtZW1vcnkgdW50aWwgdGhlIHByb2Nlc3Mg
YmVjb21lcyANCnBlcm1hbmVudGx5IHVucmVzcG9uc2l2ZS4gRGVwbG95bWVudHMgcnVubmluZyBT
d2lmdCAyLjM2LjAgb3IgbGF0ZXIgd2l0aCANCnRoZSBzM2FwaSBtaWRkbGV3YXJlIGVuYWJsZWQg
YXJlIGFmZmVjdGVkLg0KDQoNCg0KUGF0Y2hlcw0Kfn5+fn5+fg0KLSBodHRwczovL3Jldmlldy5v
cGVuZGV2Lm9yZy85OTAyNjIgKDIwMjUuMi9mbGFtaW5nbykNCi0gaHR0cHM6Ly9yZXZpZXcub3Bl
bmRldi5vcmcvOTkwMjYxICgyMDI2LjEvZ2F6cGFjaG8pDQotIGh0dHBzOi8vcmV2aWV3Lm9wZW5k
ZXYub3JnLzk4Nzk1NyAoMjAyNi4yL2hpYmlzY3VzKQ0KDQoNCkNyZWRpdHMNCn5+fn5+fn4NCi0g
QWxpc3RhaXIgQ29sZXMgZnJvbSBOVklESUEgKENWRS0yMDI2LTQ5MDE3KQ0KDQoNClJlZmVyZW5j
ZXMNCn5+fn5+fn5+fn4NCi0gaHR0cHM6Ly9sYXVuY2hwYWQubmV0L2J1Z3MvMjE1MjIwNQ0KLSBo
dHRwOi8vY3ZlLm1pdHJlLm9yZy9jZ2ktYmluL2N2ZW5hbWUuY2dpP25hbWU9Q1ZFLTIwMjYtNDkw
MTcNCg0KDQoNCi0tIA0KR291dGhhbSBQYWNoYSBSYXZpIChnb3V0aGFtcikNCk9wZW5TdGFjayBW
dWxuZXJhYmlsaXR5IE1hbmFnZW1lbnQgVGVhbQ0KaHR0cHM6Ly9zZWN1cml0eS5vcGVuc3RhY2su
b3JnL3ZtdC5odG1sDQo=

--------------0VxgVYgJvObUhgjFFpD3PniG
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

--------------0VxgVYgJvObUhgjFFpD3PniG--

--------------lDEWuQOkVx49kCXIknaqm41c--

--------------gMbxwKZZOOs6FOSyCN80nxFl
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmoXGvMFAwAAAAAACgkQBjja07gsOYgT
ug/5AbcOFEkNRyRelixcj7JSRe0BDyet2cE1fBU/OIY+vQ7u52se1pDnQhk4TGz7/tqAahC8r8mX
KB/tYGQq7elZe4tW1cbFDwqWfvFm99PsCf45BEcdAUFl9bSZYlrqa/lwUWAmZTkX+XJMBfkaOEMH
y71cZ2Fs6/i/IbSeh6rBHTOt/lzy1OtM1TyWWIaonIgGLf8kb69byI07V+EWi7iKf9ID93qQXD6u
wyDy/sSXRsGjTTv8Le3BrQmvr4ElE8eBhhzvMycuWUlYIXZsKphUO+QIaNWiWArNACqf+96VI2xs
2fzfjN7nZVGF/UIr1i2umKdHnm4xETjEPi+it+p6QLvnU9TGQCjVxqqnGWXaM7EwrQM4Jvyr9b3l
eTLhseVxqBAf3v2vYIbYxEDCde0+3ngzHDiChmDibkkV/n8FMz2h/GSupkk2v8Vf/lrFhBrRQo5R
e7Lxh6ohgRKDwjfZiQoZ5F8ynwjb8IW4ugoTWX8yhUFfr4jI3L+oMHwhgBL62VZjdKPHKqmqsDDI
XfTU3EvYzt2WZsJkhQxQ74b83immViyCyJMEGH1mho9PkESA3/cuvlggkMkoYCuzHHsG3BJVpX7z
5Y8IGxzmbgE9k+Fz3Y5EE5DH77I0TjpYa2bdtDSn8fqHyFv7mTFM1vmtONb+gkHOP558kAboUcsU
UtY=
=/7qx
-----END PGP SIGNATURE-----

--------------gMbxwKZZOOs6FOSyCN80nxFl--
