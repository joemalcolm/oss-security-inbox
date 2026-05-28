Received: (qmail 25925 invoked by uid 550); 28 May 2026 20:56:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13469 invoked from network); 28 May 2026 17:00:58 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779987648; x=1780592448; darn=lists.openwall.com;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kYTEt/bb7PX9JNRR/GAK959728fsmo32TpQVprbAKyk=;
        b=H40ZyZlW53l8YB7MAazsIvWuX/ZpgBEemEu2Z9T+7Cs/dMyebr0W2i/L2mQ/t0ITGD
         Bx/RK6876VM8Ha9BRZO+ylZS0qiDX38km3VvY0B/IklppB5QbRWO31T1NIk4tP6pY38s
         95Ox2AUhnuqVyNwQwRvMCMY1mLmHhNBPxY28WmCZp+X0/YoQe/KA2uhIyDuTBGwSjsQE
         AKqzDOvHKyTBw5nmX8XP/u0mnvO8FzSb86uPJnvT9c1S4NQTpuRzDV2CQdeO/Kkb4soM
         q6mgU82aV7V8sfjP3lHfz1CYSuiGbx4a41isxf1QZl/ZxEzuJ+WC0ng3Rc/7TNfyGCth
         FFJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779987648; x=1780592448;
        h=autocrypt:subject:to:content-language:from:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYTEt/bb7PX9JNRR/GAK959728fsmo32TpQVprbAKyk=;
        b=LQDjDGhnJIPE+CW6zWpPDok9znzLN5yglhfK08bNA7xwdaXLLxBbF6KDoLt7IvvsuE
         L0QIiiZCKrl8WoBRsexoFpTeN0ZrleolhIO8zORbsd1H1rjRRQYZhdAKX+4NnjtWLPUq
         PYE1gfhEdrNMZesLvsppFIZ7A0JL6nms2qKn+NV8i0/Y/ZCMfV9NQHPsgfE4zHbegtKB
         MK/P9GuzfHadyUenMXU7WaJTtoU1tR/IzDOv+YLaJ2R5BXDnGj0gyz1vcPlLhUsxXyi3
         vUpjfM40ljAGmTxFfpJvHf+hPLQSgBsCX3aPi+nUr5cnp8P+quDn3lXlF/rfnPWEmm3q
         o0tA==
X-Gm-Message-State: AOJu0YyVxMCK/SgtcV2B1lNaOUtgIqtSS9gKvjQufSgYVlgGBsf2Mll8
	Ru/uO3GuiakEN9aIeeIaPimBm7BP2empr3wCDsk9VcnF9NCRz6UImsJ47+y3Ow==
X-Gm-Gg: Acq92OElHXGK7m9RldjS9dxF5XA+dFNGQDtq3mTEW8ysw9wCRvDr8rKNMoOFTV0RYHn
	WIMpDRV4J/ywYYnPBP40EG+GoUEGApmGllYXROXVeHH73HqH6BQWlJpjz6ZqHVGeRiF+GFzMonm
	AH5rh11ynMFyaPwOq+fpL+5VbTj2ssLv9xDdav/4hK3gJ6z8quYeO1vRdfnO60rzBtAovx0DCXw
	bvNO+F+3IAUaMHRxVoSQhrU1vI0SbZzC6D+X+NeaOUnxBGnpTG2tham+JXFPEauqW/uYNrLhLEi
	oLPgLBM3EpMxvORlBVnKqX3tWHTB5Wrr4NtOqG6v3fSrVz2x+2AA9QUhLNFTMM1E5fRG+lBcHPA
	3EbbqsnEBz6si5mc+Ase9nk0dJDIvDzd3G2MwwqX+XMfpZTL0MB2CZUAYUl+TD5OyaSJ459AFN+
	pl0F+bYjIP4VCfc5foy+4FvrhvXGi+Vdkf7jbjAVtgZgqJKDIby3zXOzZYEw==
X-Received: by 2002:a05:7300:818d:b0:2ef:1d11:18b0 with SMTP id 5a478bee46e88-304dd431cecmr1004612eec.17.1779987648058;
        Thu, 28 May 2026 10:00:48 -0700 (PDT)
Message-ID: <a8a9d885-ae9a-40e1-940f-05329c8e9755@gmail.com>
Date: Thu, 28 May 2026 10:00:45 -0700
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
 boundary="------------x34Rsr0qiaihkA0B7ayLRgFa"
Subject: [oss-security] [OSSA-2026-016] OpenStack Neutron: Tagging policy bypass allows
 project readers to mutate tags (CVE-2026-pending)

--------------x34Rsr0qiaihkA0B7ayLRgFa
Content-Type: multipart/mixed; boundary="------------y019rwDLH0oxmyrPo4Na1eDa";
 protected-headers="v1"; hp="clear"
Message-ID: <a8a9d885-ae9a-40e1-940f-05329c8e9755@gmail.com>
Date: Thu, 28 May 2026 10:00:45 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Content-Language: en-US
To: oss-security@lists.openwall.com
Subject: [OSSA-2026-016] OpenStack Neutron: Tagging policy bypass allows
 project readers to mutate tags (CVE-2026-pending)
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K

--------------y019rwDLH0oxmyrPo4Na1eDa
Content-Type: multipart/mixed; boundary="------------nMcxij0mskYkcaLou8zzIIid"

--------------nMcxij0mskYkcaLou8zzIIid
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KT1NTQS0yMDI2LTAxNjogTmV1dHJvbiB0YWdnaW5n
IHBvbGljeSBieXBhc3MgYWxsb3dzIHByb2plY3QgcmVhZGVycyB0byANCm11dGF0ZSB0YWdzDQo9
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09DQoNCjpEYXRlOiBNYXkgMjgsIDIwMjYNCjpDVkU6IENW
RS0yMDI2LXBlbmRpbmcNCg0KDQpBZmZlY3RzDQp+fn5+fn5+DQotIE5ldXRyb246ID49MjYuMC4w
IDwyNi4wLjQsID49MjcuMC4wIDwyNy4wLjMsID49MjguMC4wIDwyOC4wLjENCg0KDQpEZXNjcmlw
dGlvbg0Kfn5+fn5+fn5+fn4NClRpbSBTaGVwaGFyZCBmcm9tIHJvaWFpLmNhIHJlcG9ydGVkIGEg
cG9saWN5IGVuZm9yY2VtZW50IGJ5cGFzcyBpbiANCk5ldXRyb24ncyB0YWdnaW5nIGNvbnRyb2xs
ZXIuIFRoZSBjb250cm9sbGVyIGVuZm9yY2VzIHBsdXJhbCBwb2xpY3kgDQphY3Rpb24gbmFtZXMg
b24gc2luZ2xlLXRhZyB3cml0ZSBvcGVyYXRpb25zIHdoaWxlIHRoZSBkZWZpbmVkIHBvbGljeSAN
CnJ1bGVzIHVzZSBzaW5ndWxhciBuYW1lcy4gVGhlIG1pc21hdGNoZWQgbmFtZXMgZXZhbHVhdGUg
YXMgYWxsb3dlZCB1bmRlciANCmRlZmF1bHQgcG9saWN5LCBwZXJtaXR0aW5nIGEgcHJvamVjdCBy
ZWFkZXIgdG8gY3JlYXRlIGFuZCB1cGRhdGUgdGFncyBvbiANCnNhbWUtcHJvamVjdCByZXNvdXJj
ZXMuIERlcGxveW1lbnRzIHJ1bm5pbmcgTmV1dHJvbiAyNi4wLjAgb3IgbGF0ZXIgYXJlIA0KYWZm
ZWN0ZWQuDQoNCg0KDQpQYXRjaGVzDQp+fn5+fn5+DQotIGh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYu
b3JnLzk4OTM3NiAoMjAyNS4xL2Vwb3h5KQ0KLSBodHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy85
ODkzNzUgKDIwMjUuMi9mbGFtaW5nbykNCi0gaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvOTg5
Mzc0ICgyMDI2LjEvZ2F6cGFjaG8pDQotIGh0dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnLzk4OTA5
OSAoMjAyNi4yL2hpYmlzY3VzKQ0KDQoNCkNyZWRpdHMNCn5+fn5+fn4NCi0gVGltIFNoZXBoYXJk
IGZyb20gcm9pYWkuY2EgKENWRS0yMDI2LXBlbmRpbmcpDQoNCg0KUmVmZXJlbmNlcw0Kfn5+fn5+
fn5+fg0KLSBodHRwczovL2xhdW5jaHBhZC5uZXQvYnVncy8yMTUwMTMyDQotIGh0dHA6Ly9jdmUu
bWl0cmUub3JnL2NnaS1iaW4vY3ZlbmFtZS5jZ2k/bmFtZT1DVkUtMjAyNi1wZW5kaW5nDQoNCg0K
Tm90ZXMNCn5+fn5+DQotIENWRSBhc3NpZ25tZW50IGlzIHBlbmRpbmcgKE1JVFJFIENBTi0yMDI2
LTIwMzA2MTEpLg0KDQoNCi0tDQpHb3V0aGFtIFBhY2hhIFJhdmkgKGdvdXRoYW1yKQ0KT3BlblN0
YWNrIFZ1bG5lcmFiaWxpdHkgTWFuYWdlbWVudCBUZWFtDQpodHRwczovL3NlY3VyaXR5Lm9wZW5z
dGFjay5vcmcvdm10Lmh0bWwNCg==

--------------nMcxij0mskYkcaLou8zzIIid
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

--------------nMcxij0mskYkcaLou8zzIIid--

--------------y019rwDLH0oxmyrPo4Na1eDa--

--------------x34Rsr0qiaihkA0B7ayLRgFa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmoYdL0FAwAAAAAACgkQBjja07gsOYiA
qRAAkRT+PMUjGNjbC0MqO/dSadMAZ/7BoV7KXGvPg8LSL42Ds7Fm1YM8h6CBpF3X++eH9sYN9Smj
NxCn5SJMqvTRxPRftu5ypm+nBQ0Hw6/SekBdGx43O8DVJHYt7ggf7eNC1UBq+oHXLqHk3gHiEW3v
TC4zxX/Kyiv1m2FT+KFfc9FwwMBUZNwiyzW4MHPcV6P8KaY255wtOoPk/3wPs9/rw5yI5+chTtZs
/hA0dv0fjEl2CE3mX/NEk+WVrKkjzO+GXyQkEGQpNBMuJN015Mp286P+YtXO7upj2GpQuD5w1YYH
cAd/XPJi+Xo6bHvJ80TbinFYoJwsDJ4quLFanbZU5L5ppldi76aGsUSYX++SQXijaUfHBWbnFMCK
mhbNGA/x9fUMOGpSohmG0/4Fp7MDJookeg9ui/So2mWLidE/l0YEdM+k2Dap7LFpzQA+hSkwf0kO
33mvJCIb21A6IB+tX2iPoKKuW6CtcG87OM4TAzfcu0+NBRsJs1LGPIoJUMljtCitBYkAJiE+2oo2
hsASlNtjoC+4Bs5OmUjHCpnijlj/ego5CgH2xRpcsaIZTEfTVYaAyk7u2FzVfsojKOO5HaKv3S5D
bGoScgzqP0CkaRdrbCpOQMNeFUzdyZ6pEcD0oQ0WtX2Vg7Vxp4JJbe9FnwJyLjmEu7dN8D8cEUta
Cdo=
=jXMe
-----END PGP SIGNATURE-----

--------------x34Rsr0qiaihkA0B7ayLRgFa--
