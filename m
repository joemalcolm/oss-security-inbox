Received: (qmail 21605 invoked by uid 550); 14 Apr 2026 16:56:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11287 invoked from network); 14 Apr 2026 16:51:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776185509; x=1776790309; darn=lists.openwall.com;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EQYwyp706OdKwQJORWkZomwij18B2wCYpeJnMBPrX50=;
        b=kI2D/K4rUe5VLR9himOX8OUelJhnjty9ghl+qlt+PvS8ogMV+9vo30AgcylNCD2WwN
         sdVMPkKNeqyz8yKN2J9aWp1yl6OrdEsgem/XHg/YGHanDoAkfpuAwyc+kiaTbhfdwFh+
         hWJGa90P9lBQJu1sjpindwCA0+dIYwbWZpDFiHx7F2NrKO5HxPAk9TtrEKJ4NwNIilDr
         OGe+y4mQUJ9St81hm5CZH+d3Zs3B5hBt6dJzcHa2FVfCJhtq8TdeC9JICUHhWm3Juojw
         5yLWosWigeTgCUIm4S9ODju3MmAWeUUaB6QQdDrUARXbTCEnb7o5g8BJ1CvsPQRfnRZy
         1ANQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776185509; x=1776790309;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQYwyp706OdKwQJORWkZomwij18B2wCYpeJnMBPrX50=;
        b=PGTBnKFhAYL9eJUiB3yntzpU/+G/6shOFJ0B+HUMW7wrfZ71ToOOcdLE3C0rw9KCVu
         MmeH4yi6jyMO9yoKKiOOFqcil9e2vBsV3vkGATo7a6KQEmsN0HyG3h11q5dj2O+z/F+h
         0gHzmlw15Y/jdywJf83xSYlusWayS40odftTds1A2WXFsvSz00ZPxX1awvyuoZAgRAH0
         H4F8bCVMnT0//sIQwnjWZwSFB9KIubSinWfgdFl20ev/mbv6NEX6BrjddAGpIyQRWs+k
         Y9fGSafk9YAfcKy6PrNE6Mg8909OzGmQHOBpCWCFtjlCK+ixAPHk72iHTT1R0lwJp+/Y
         OKFA==
X-Gm-Message-State: AOJu0YxpfRu1DHe7/XqEu9CMuA7Rgk9ZJdWtG8SqHIg/AiVpR5HZWpZX
	ZV7Rr3d1gx9dZpjxZL/A7AsgSLSrbgzWubLuaHYvLzDMa/RSJmTDxdVHYV2Exlg5
X-Gm-Gg: AeBDietKmvNeACEDthZl68M3sZGUm3aDnjmQxNB3mpB9Y2OafZDbJHiWFIL2en0rLhZ
	Yjj+g5FSn0p7zfiuoN2rhpuFntso1pcU5ZIqVTs0/h1uybRlVnyIWIaO9XeyQRkGZaiD9A2/48C
	LM9XYMopzFy5sNbN3YUYxEdyicJ9L+rOTpofRBqBReh7PmAe9YZFlGdJ+s4p+tiRON1JjDGr6yM
	LPpLZnY4HWRlgdvWR6rB4TZm71PBZJlzb3XLS09E0UxciaEs0MIuxMFzq8SdTRr5ezdrG29rJyJ
	XJBWkpPVDlKMV6ZybHuVCBQVA+oyjdd+1Xk9Xw2JjsjZCydu8hg/eePTSGirtBkwE4/OGZR4Fge
	AwXyHFi49dy+JOCmoCjXgkKGhB8+y1HQBodJVWnIu1EJX8Ve3Hx+Iqh/IercQw0hg3OGvnNolwd
	iZmtUrUO4vYwLlbNw2PbkNKDWTo8NMS5OLXaH0gcikz9xC9EPUmX1N0+/RXYmgdu9eMcM9Mc2gv
	QXu1wTxrw==
X-Received: by 2002:a17:90b:2b4e:b0:35b:e4d4:8290 with SMTP id 98e67ed59e1d1-35e3543bb82mr20612807a91.9.1776185508354;
        Tue, 14 Apr 2026 09:51:48 -0700 (PDT)
Message-ID: <ec8e84d0-47a9-4664-a891-8aeb5a33fc02@gmail.com>
Date: Tue, 14 Apr 2026 09:51:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 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
 VYvdtAgTRIrQIz/K
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------gEGRDH3Uwl0MOyI5c8t505uX"
Subject: [oss-security] [OSSA-2026-007] OpenStack Keystone: LDAP identity backend does not
 convert enabled attribute to boolean (CVE PENDING)

--------------gEGRDH3Uwl0MOyI5c8t505uX
Content-Type: multipart/mixed; boundary="------------u6ykEg0YFAcHqf8sLifd16R2";
 protected-headers="v1"
Message-ID: <ec8e84d0-47a9-4664-a891-8aeb5a33fc02@gmail.com>
Date: Tue, 14 Apr 2026 09:51:46 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Subject: [OSSA-2026-007] OpenStack Keystone: LDAP identity backend does not
 convert enabled attribute to boolean (CVE PENDING)
Autocrypt: addr=gouthampravi@gmail.com; keydata=
 xsFNBGm7HhsBEAC4jWG7snWqax8fazd7QVADjLRxhNKOAyVrBqBffI5CuSuafwtqV1s3x8C7
 GzNjklTuCXcX7iZAU7g5y0fZtT6lp1l3l1xUtKPcBF0DCd5JH/HP/MH8eBByL3sNRR3RHovA
 VpUhxT0RGcltm5wbnwE37dcrIRbVl66xbcyaUnHokUhdShSbSptiPPOkncn/i10uGAIHN884
 Bt/zZkUpak9PMTFNXThDYU+79csw6roxH/AV6mtDxDG6wKf8VcFg538a8deJsPUNONrdOYwj
 H4xAYao5yrktALQC2zEbHLmNZnFRHJ6zGs7zOGN6kLV6ueqfzkkWjPGXkcCeIL4mX3K9mRaW
 0L6QwKh0n2grWs264dD5bV/rPIxhRDHNfp5rMBRPb3rStEqDkqZ8MMuCETZQUwQYa9vccj7d
 iXOa+YvWehaE4ItoNd6+PD9I6mB0VwVDpdxmwgEqR+wG30OTaPSfyq4GQ3z/A783Wyx9vuSI
 4R2iRSSgHuyiaFnRZMIOu5ib0dTuY+/MBmMxSpcU+tre+DedXmCNksLfD9HsHyJMx/OGTWYQ
 dYmavnRtBN+dzwku9SrisCMfAOuDvTvri4csxTRfomNYhUWODGqWum/sV253lh5q5J/H6xHV
 hANTQ3vVU1EYGBJszPxx+aTlFye9oo1/06Lv+U3nYdNDMzaYNwARAQABzStHb3V0aGFtIFBh
 Y2hhIFJhdmkgPGdvdXRoYW1wcmF2aUBnbWFpbC5jb20+wsGzBBMBCABdFiEEwo5Vl+U+phfa
 PpN5Bjja07gsOYgFAmm7HhsbFIAAAAAABAAObWFudTIsMi41KzEuMTIsMCwzAhsDBQkDwmcA
 BQsJCAcCAiICBhUKCQgLAgQWAgMBAh4HAheAAAoJEAY42tO4LDmIhTwQAKt30GA/0UnV9uvi
 oUeyBJp1GnGN1lcXNQYIFOB+TbjMthdYScRTHY28l/gKSuvTtV+DuTvrOS0UPZ7HC72SijE3
 AJOQGE1YMTToxdxiOCv++R/3Sth4zogHPVlJPn4mIry/8OX7cchxnwuPGtdrH2H31IxSIeW2
 FWSSGd7KrY/IncJOQeN4wOXpEi+gbNGGrnyEJj3J0pz+8Fx2MugdMGP7zmLMN8UEIY7XBGx6
 U96ri35iCMsosdiuUylUXTDufJf+VvA66gGNy063KM8mzkdJHTVzdcJjFTS4FemF97dBu2FR
 8sgsiiaFiNVs1KfHKcs2J2M+rVQQokpYARq7ayDLPPhVHV4bXk1kuS4pl6EeSGz0Xp6LXD6Y
 uwcG87vUDD6IJDQY2YqRedYkaOF0hvwuIihDMwWBtuRLNdglMNGFnf++euaQBqfQT9W6mQqF
 GQ+hkLsTPo/nYjfVIcYRdGZEY+iydM3HaVr8UbB8vrnSGUFfW31PGJ/SVV3nJtWoygToacNz
 wUUwT3Y8VWFcfypC9hI856BDlvOlb7X0JBagdmgJqCWMAkKPPQNsS5xRcHTxnd8b63UrC4Vi
 4M423ThAByjERzYoGPmb/mJFtcZrGwTArUfwNKFEvDLt7gcZNIvuPWeTVWHgr4Suko3EkRTI
 L2w6TppylLJTi1jIyNMtzsFNBGm7HhsBEACw4nqhta7zFWEt/UpPEYkenWpbT2nVDtuKn1uE
 LMCV+Sy8Jdcec9VKQm6q4y9xqkLuMT5y1x213dpPJVHegks8TJaFf3yaA+++QtqHP2biEaqk
 6HSpa5DIoGt95Uc58FVKiNQZ3w8bbna3Vrzy920WcBydKY6U2wemJf9hSdM4l15lezk3HOnJ
 axKt+hTuaISUlEhZDQ3UtwdlKAWjcYkzkObVhZugZS8tWCpWsRq4eHcyhpxihTZFyKhGkKSu
 2W2Q+AgFr7TRvdW2/oIjaPSy7DeqH88STz3Nvzg9ztnqzQ5jDKWamnlrjbxllI77c9+fvp2l
 kt/9hQtQ0SP6amEoYxfckJ0Q2AVTb4ixk8/Xv77gfIDJQ4HoTyPF2CXVpV2V8RPFKhwwZcdc
 na7eyw+zTXrl6Grjj6P0olrBCzvwvFex3c2rqhWzZKZnIqH4QHDV4GPGO1BPsnHRe0j+ZhZ0
 3EVS+IxOlaExiF/wIm7S7VgHZjTBs3V9L+szy2gO73ms+yh7n1PrXw+nI38f3xqGyZCfCX5k
 NwAoB0+izqOD9Cy/syviXgwbtbmu35NIbmOk9yMPvHVO6o6JQlq9moNaXEn7N4abFWHKP4lv
 Le6Yn3avy8+byR8bZplYQbBTrEtjGanO9nNannlyFnEDvUoQQ3PozyyztzerC5z6uPSSIQAR
 AQABwsGYBBgBCABCFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmm7HhsbFIAAAAAABAAObWFu
 dTIsMi41KzEuMTIsMCwzAhsMBQkDwmcAAAoJEAY42tO4LDmIXqkP+gPEjSFIH4HYoEsBE2wB
 iJlS5bBMsmElFCYyRM1S4az/RS3FX8r2a+J58UuUeANs4wiZ/4iGlBvdYn7rwB1Yb2/LIO5P
 csc9UvWKv2fEbpIbc7GMvb8+egFfkn7pHSbOqHxV7Z+JRoXToxcIqmlZi43mz7hVdR0ei8WM
 BR5nKVE6Ixt47QHilQ5kLMCqVmNojFz/H6t5uhjs3X6oalsB5/AoeL0jH62Dd1NWq1vBaqKY
 BLHyNNATkl97VdAUgaFE28Q4Nx+as9AGY5sr6yBoHD+QjZwnNydR6uRCY7qD+mqQv9KbHhBL
 d7HqyjXY7tG7pPnP4XeNkiUUDwIv2sYUSEhN89R5kk1YDKQ14N2/43l7JGCvnll64iomqqme
 jykliW+T6HhpKYNTH9ldYpjGmcYo4y093DnEA8nCXwpa3HO17ZQ7nxlg00Y3Oo4WpSGwAlpI
 81y4shJtQGwrnHaqqfH4/obXwb3SOLsFCPF9fZxtXmlO1VOA5JaM8y6DIqBewPNAWNzZu3qe
 BJd716WXp1ivUjvFRLcCMU6GxOMTv7dz1GP3d/xG9/Lb/mBK78Lu6fPcnV7MQp38mYdfj9T1
 t0pu/GTDpG0AYRl124U8onEwl3KJzst8AO8G0kKyWdXR0cRe+qGYa3LmV2soXmdh0GFZ5KFj
 VYvdtAgTRIrQIz/K

--------------u6ykEg0YFAcHqf8sLifd16R2
Content-Type: multipart/mixed; boundary="------------CP48N0odacZcn0T6XFY7kbCo"

--------------CP48N0odacZcn0T6XFY7kbCo
Content-Type: multipart/alternative;
 boundary="------------OdVLsg2WWH06Ww0e0xhpaudE"

--------------OdVLsg2WWH06Ww0e0xhpaudE
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KT1NTQS0yMDI2LTAwNzogTERBUCBpZGVudGl0eSBi
YWNrZW5kIGRvZXMgbm90IGNvbnZlcnQgZW5hYmxlZCBhdHRyaWJ1dGUgdG8gYm9vbGVhbg0KPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PQ0KDQo6RGF0ZTogQXByaWwgMTQsIDIwMjYNCjpDVkU6IENW
RS0yMDI2LXBlbmRpbmcNCg0KDQpBZmZlY3RzDQp+fn5+fn5+DQotIEtleXN0b25lOiA+PTguMC4w
IDwyNS4wLjEsID49MjYuMC4wIDwyNi4xLjEsID49MjcuMC4wIDwyNy4wLjEsID49MjguMC4wIDwy
OC4wLjENCg0KDQpEZXNjcmlwdGlvbg0Kfn5+fn5+fn5+fn4NCkJlbmVkaWt0IFRyZWZ6ZXIgYW5k
IEFuZHJldyBCb2dvdHQgaW5kZXBlbmRlbnRseSByZXBvcnRlZCBhIHZ1bG5lcmFiaWxpdHkgaW4g
dGhlIEtleXN0b25lIExEQVAgaWRlbnRpdHkgYmFja2VuZC4gV2hlbiB0aGUgdXNlcl9lbmFibGVk
X2ludmVydCBjb25maWd1cmF0aW9uIG9wdGlvbiB3YXMgRmFsc2UgKHRoZSBkZWZhdWx0KSwgS2V5
c3RvbmUgZGlkIG5vdCBjb3JyZWN0bHkgaW50ZXJwcmV0IHRoZSBMREFQIGVuYWJsZWQgYXR0cmli
dXRlLCBjYXVzaW5nIHVzZXJzIGRpc2FibGVkIGluIExEQVAgdG8gYmUgdHJlYXRlZCBhcyBlbmFi
bGVkIGFuZCBhbGxvd2VkIHRvIGF1dGhlbnRpY2F0ZS4gRGVwbG95bWVudHMgdXNpbmcgdGhlIExE
QVAgaWRlbnRpdHkgYmFja2VuZCB3aXRob3V0IHVzZXJfZW5hYmxlZF9pbnZlcnQ9VHJ1ZSBvciB1
c2VyX2VuYWJsZWRfZW11bGF0aW9uIGFyZSBhZmZlY3RlZC4NCg0KDQoNClBhdGNoZXMNCn5+fn5+
fn4NCi1odHRwczovL3Jldmlldy5vcGVuZGV2Lm9yZy85ODI0MDkgKDIwMjQuMi9kYWxtYXRpYW4p
DQotaHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvOTgyNDA4ICgyMDI1LjEvZXBveHkpDQotaHR0
cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvOTgyNDA3ICgyMDI1LjIvZmxhbWluZ28pDQotaHR0cHM6
Ly9yZXZpZXcub3BlbmRldi5vcmcvOTU4MjA1ICgyMDI2LjEvZ2F6cGFjaG8pDQoNCg0KQ3JlZGl0
cw0Kfn5+fn5+fg0KLSBCZW5lZGlrdCBUcmVmemVyIGZyb20gQ2lycmF4IEdtYkggKENWRS0yMDI2
LXBlbmRpbmcpDQotIEFuZHJldyBCb2dvdHQgZnJvbSBXaWtpbWVkaWEgRm91bmRhdGlvbiAoQ1ZF
LTIwMjYtcGVuZGluZykNCi0gR3J6ZWdvcnogR3Jhc3phIGZyb20gUmVkIEhhdCAoQ1ZFLTIwMjYt
cGVuZGluZykNCg0KDQpSZWZlcmVuY2VzDQp+fn5+fn5+fn5+DQotaHR0cHM6Ly9sYXVuY2hwYWQu
bmV0L2J1Z3MvMjEyMTE1Mg0KLWh0dHBzOi8vbGF1bmNocGFkLm5ldC9idWdzLzIxNDE3MTMNCg0K
DQpOb3Rlcw0Kfn5+fn4NCi0gVG8gd29yayBhcm91bmQgdGhpcyB2dWxuZXJhYmlsaXR5LCBzZXQg
dXNlcl9lbmFibGVkX2ludmVydD1UcnVlIGFuZA0KICAgdXNlIGFuIExEQVAgYXR0cmlidXRlIHdp
dGggaW52ZXJ0ZWQgc2VtYW50aWNzIHN1Y2ggYXMgbnNBY2NvdW50TG9jaywNCiAgIG9yIHVzZSB1
c2VyX2VuYWJsZWRfZW11bGF0aW9uIHdpdGggZ3JvdXAtYmFzZWQgZW5hYmxlZCBzdGF0dXMuDQot
IEEgQ1ZFIHJlcXVlc3Qgd2FzIGZpbGVkIHdpdGggTUlUUkUgb24gMjAyNi0wNC0xMC4NCi0gVGhl
IGZpeCB3YXMgbWVyZ2VkIG9uIHRoZSBtYXN0ZXIgYnJhbmNoIGJlZm9yZSB0aGUgc3RhYmxlLzIw
MjYuMQ0KICAgYnJhbmNoIHdhcyBjdXQsIHNvIG5vIHNwZWNpZmljIHN0YWJsZS8yMDI2LjEgcGF0
Y2ggZXhpc3RzLiBUaGUgZml4IGlzDQogICBpbmNsdWRlZCBpbiB0aGUgZ2F6cGFjaG8gKDI5LjAu
MCkgcmVsZWFzZS4NCg0KDQotLQ0KR291dGhhbSBQYWNoYSBSYXZpIChnb3V0aGFtcikNCk9wZW5T
dGFjayBWdWxuZXJhYmlsaXR5IE1hbmFnZW1lbnQgVGVhbQ0KDQoNCg==

--------------OdVLsg2WWH06Ww0e0xhpaudE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <pre
style=3D"color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal;=
 orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wid=
ows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial; overflow-wrap: break-word; white-space: pre-wrap;">=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
OSSA-2026-007: LDAP identity backend does not convert enabled attribute to =
boolean
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

:Date: April 14, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Keystone: &gt;=3D8.0.0 &lt;25.0.1, &gt;=3D26.0.0 &lt;26.1.1, &gt;=3D27.0.=
0 &lt;27.0.1, &gt;=3D28.0.0 &lt;28.0.1


Description
~~~~~~~~~~~
Benedikt Trefzer and Andrew Bogott independently reported a vulnerability i=
n the Keystone LDAP identity backend. When the user_enabled_invert configur=
ation option was False (the default), Keystone did not correctly interpret =
the LDAP enabled attribute, causing users disabled in LDAP to be treated as=
 enabled and allowed to authenticate. Deployments using the LDAP identity b=
ackend without user_enabled_invert=3DTrue or user_enabled_emulation are aff=
ected.



Patches
~~~~~~~
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://review.opendev.org/982409">https://review.opendev.org/9=
82409</a> (2024.2/dalmatian)
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://review.opendev.org/982408">https://review.opendev.org/9=
82408</a> (2025.1/epoxy)
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://review.opendev.org/982407">https://review.opendev.org/9=
82407</a> (2025.2/flamingo)
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://review.opendev.org/958205">https://review.opendev.org/9=
58205</a> (2026.1/gazpacho)


Credits
~~~~~~~
- Benedikt Trefzer from Cirrax GmbH (CVE-2026-pending)
- Andrew Bogott from Wikimedia Foundation (CVE-2026-pending)
- Grzegorz Grasza from Red Hat (CVE-2026-pending)


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://launchpad.net/bugs/2121152">https://launchpad.net/bugs/=
2121152</a>
- <a class=3D"moz-txt-link-freetext"
    href=3D"https://launchpad.net/bugs/2141713">https://launchpad.net/bugs/=
2141713</a>


Notes
~~~~~
- To work around this vulnerability, set user_enabled_invert=3DTrue and
  use an LDAP attribute with inverted semantics such as nsAccountLock,
  or use user_enabled_emulation with group-based enabled status.
- A CVE request was filed with MITRE on 2026-04-10.
- The fix was merged on the master branch before the stable/2026.1
  branch was cut, so no specific stable/2026.1 patch exists. The fix is
  included in the gazpacho (29.0.0) release.


--
Goutham Pacha Ravi (gouthamr)
OpenStack Vulnerability Management Team</pre>
    <p><br>
    </p>
  </body>
</html>

--------------OdVLsg2WWH06Ww0e0xhpaudE--

--------------CP48N0odacZcn0T6XFY7kbCo
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

--------------CP48N0odacZcn0T6XFY7kbCo--

--------------u6ykEg0YFAcHqf8sLifd16R2--

--------------gEGRDH3Uwl0MOyI5c8t505uX
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmnecKIFAwAAAAAACgkQBjja07gsOYj5
5A/8D30GuXt/4Ikh/+Guy6EEH9KVNt3nX9oY2/jG+D0q0oupZ7a9VsJyQHsb3U1H/Cjza0YYc6gk
d5nlwluUgpyFMkNnAnSTfBeoegGFuGfzs4BM6iLSGqw6SQBAAx8kgpSx+UQu5dx1DidofeVCZp4b
JrmSsaPYTR+XW9IVRw9qg1PyHQ5DjRKuQTG9i//t2ROR9Rw5rMfHdybkhDgPQOgReXOh1nTI2Wyp
PgSaFl/0ceVAm/oVgmrt1g7ViDODjEGh8Z/nyX8atsJaHF0DaPvwIlPFLjUKOyGMPKqQppmEeFeP
ZrMLi4op5QFW4hCK774e+u1MfBCHBDOdEJKA0cHhLpGMMBMabnZqZyi8fWH03pHRjVDmsmIE/PzA
TtC2cSFX6bTRR9Sr37DrFfoyH9NifFYW+jlZ/R9nfjEC4+M/HoB02wK/3gkJoXP7qbVdN5+4SugC
c5uQ2QCYd8S88C1DWggvcvHU95muPar3WGWi4+8vCm+2a3ytcm3fI29szsEpo/caL2X74zL5ibbR
qKyePXYq8676EOutLzCFdLH3zb5a758rroO3dUGeLVK+Zt6laTLeCNSrcmNiuXW9rIS1MDIk9Lg2
h1u2zkjrt4PkvDyI0ZmKk14Xr6BiStZtZV25KB8PNs1t/9dvQ7T8qZ1Iyq1xjg+/W3bvBRMZd/L/
NZc=
=yNex
-----END PGP SIGNATURE-----

--------------gEGRDH3Uwl0MOyI5c8t505uX--
