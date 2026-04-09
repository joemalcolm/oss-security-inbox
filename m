Received: (qmail 30375 invoked by uid 550); 9 Apr 2026 21:17:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13452 invoked from network); 9 Apr 2026 21:10:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775769026; x=1776373826; darn=lists.openwall.com;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=x4Q8wnFWnf4BGYARFGILPwqjoaPkhNTCkQZTU7mgjT0=;
        b=Gt2zWfpkyqpqk5KVNh2hz4Hil4IEIDryit1A9JmQi3yTtCvz5pxo3OO6PNCmq+S1/p
         1WaGlqP4SiZ1WZaYhzG0u8U9tbVjIzVGjkbMZwYta/d71KSDTTmQsfDu/01xvUOeZYwP
         TiGmEE33/BnRBfGNcuQW0oGEtTHJ+EhW9n2WcvEKkt2CEyXcB3ksIYn8L4mfTUw6C03E
         fqKuVzX7D+YbAAiWiogPkwh6pqmx+2XF7G59JNnI/eDTd3VHLdC4+y+Ko3YTaJmevvM+
         /EUA3MsvYxDvrX/hGKOVoh0kv3oiC/fKWabQFsA5a1DB7VcJNBj4iubrIBBBpOWDjfuD
         BS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775769026; x=1776373826;
        h=autocrypt:subject:from:to:content-language:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x4Q8wnFWnf4BGYARFGILPwqjoaPkhNTCkQZTU7mgjT0=;
        b=tQpeh7RO5EAmTfin6KweQSDoHmg6m3zfwxyA1vFJw9sluAWsCMByrLVyqOFyH4fIJq
         5e16TWmqkUU8Y7NNaCI4UgYM5IM0qvElJisuBlNeycnpaKYbrSKebM1bvF+izI9UPAxU
         2C18ko6/6wxNJQCfhZpgCotZlOCrfO978Ufo6/wUW3RGmAtmKb5iWf3HMSAaVNq3XKQq
         21CQYIhDczUEihYPAQe7F6O7oAf4ty7Eg80AKyvp8mHUzBPxbSoxd1s4oJtVtMvuMcJk
         EjFNw78AqtHNGN/qyJLat3vdlqSBByJcQD3tS+6VvaCJvgihxKYw33hb8SVVlhjBTXwd
         qd5g==
X-Gm-Message-State: AOJu0YzmXXZk3TymlDSyg+EccHAEyaN1aWyKHizsFuoFF7qF1Avv7b1p
	pmTRi7P1+wAQv4KJRO+GoXZLB6gsM7I6xw9ctHGg4DCjIsfJChFEJowobXws8gQuH1A=
X-Gm-Gg: AeBDiesGMD5tIBztw9RFJMrODsJqkGgrq99/GP10WNG4YWmR42PhqXEysubi+H5brXi
	4iOv8zP0PDLkv64gIbGUAYH5Km0gxdeHav7ssPov30hUzMZVQK7a1XLvj7tDgmvjQOSsXUGeEO0
	RIjtoCPHHr4h2xektfT2TMXeXZs0LTyGY8g5a8Mrng7V1BGnWD1cMeZEMY8jwP8Hy/FK8AqGCTw
	WavYoas6yxqAwrXP54mxSOwSDDDb3idXiARX3qMcMriWJ6D0urp5CyGAFjWzaSh1Boq5uOfKd5V
	Jp/ZNbB7pAeolQC6z4fCH16gToXqKj3yO/zkDivCWvvF6FLMfT0PvRVsHbfYYLaHEA2nVI9G6nt
	Po86Mee52B3WuMUzUbv1fqKyx14RZ+b6GlLyyvvFHM1LnCCoW2nqGdaxUVbz4HrbxZ/AO+HU3zj
	YJNMGJh7G4eHLm48mPvGNXMibOb5SWmoFKVrTUdaXlx9ELQ8Wh9rRqaGbB03Qf6q+42j4/dF0pG
	LKW/Eo3CA==
X-Received: by 2002:a05:6a20:914a:b0:395:ccae:d494 with SMTP id adf61e73a8af0-39fe3d88146mr509985637.20.1775769026118;
        Thu, 09 Apr 2026 14:10:26 -0700 (PDT)
Message-ID: <b9b0f925-5c7a-475b-8040-6d1cc37e7243@gmail.com>
Date: Thu, 9 Apr 2026 14:10:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
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
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------0NbFqFtnkZM0G0B8YPHuboyx"
Subject: [oss-security] [OSSA-2026-006] OpenStack Skyline: DOM-based XSS in Skyline Console
 via unsanitized instance console log rendering (CVE-2026-pending)

--------------0NbFqFtnkZM0G0B8YPHuboyx
Content-Type: multipart/mixed; boundary="------------RXxvk7C00bowM78wOeoDxOIE";
 protected-headers="v1"
Message-ID: <b9b0f925-5c7a-475b-8040-6d1cc37e7243@gmail.com>
Date: Thu, 9 Apr 2026 14:10:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Goutham Pacha Ravi <gouthampravi@gmail.com>
Subject: [OSSA-2026-006] OpenStack Skyline: DOM-based XSS in Skyline Console
 via unsanitized instance console log rendering (CVE-2026-pending)
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

--------------RXxvk7C00bowM78wOeoDxOIE
Content-Type: multipart/mixed; boundary="------------Sir5esE5E2im1yDtmQUS720S"

--------------Sir5esE5E2im1yDtmQUS720S
Content-Type: multipart/alternative;
 boundary="------------nS3dTVWt10WLCNqIdMH6mGtP"

--------------nS3dTVWt10WLCNqIdMH6mGtP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KT1NTQS0yMDI2LTAwNjogRE9N
LWJhc2VkIFhTUyBpbiBTa3lsaW5lIENvbnNvbGUgdmlhIHVuc2FuaXRpemVkIGluc3RhbmNlIGNv
bnNvbGUgbG9nIHJlbmRlcmluZw0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQ0KDQo6RGF0ZTogQXByaWwgMDksIDIwMjYNCjpDVkU6IENWRS0yMDI2LXBlbmRpbmcNCg0KDQpB
ZmZlY3RzDQp+fn5+fn5+DQotIFNreWxpbmUtY29uc29sZTogPDUuMC4xLCA9PTYuMC4wLCA9PTcu
MC4wDQoNCg0KRGVzY3JpcHRpb24NCn5+fn5+fn5+fn5+DQpNeXVuZ2h5dW4gTGVlIChUZWFtIE9w
ZW4gdGhlIFdpbmRvdywgU3RlYWxpZW4gU1NMIDZ0aCkgcmVwb3J0ZWQgYSBET00tYmFzZWQgQ3Jv
c3MtU2l0ZSBTY3JpcHRpbmcgKFhTUykgdnVsbmVyYWJpbGl0eSBpbiBTa3lsaW5lIENvbnNvbGUu
IFRoZSBpbnN0YW5jZSBjb25zb2xlIGxvZyB2aWV3ZXIgcmVuZGVyZWQgbG9nIGNvbnRlbnQgaW4g
YSBuZXcgYnJvd3NlciB3aW5kb3cgdXNpbmcgZG9jdW1lbnQud3JpdGUoKSB3aXRob3V0IHNhbml0
aXppbmcgb3IgZXNjYXBpbmcgdGhlIG91dHB1dC4gRGVwbG95bWVudHMgd2hlcmUgYWRtaW5pc3Ry
YXRvcnMgdXNlIHRoZSBTa3lsaW5lIENvbnNvbGUgd2ViIGludGVyZmFjZSB0byB2aWV3IGluc3Rh
bmNlIGNvbnNvbGUgbG9ncyBhcmUgYWZmZWN0ZWQuDQoNCg0KDQpQYXRjaGVzDQp+fn5+fn5+DQot
aHR0cHM6Ly9yZXZpZXcub3BlbmRldi5vcmcvOTgyMzU2ICgyMDI0LjIvZGFsbWF0aWFuKQ0KLWh0
dHBzOi8vcmV2aWV3Lm9wZW5kZXYub3JnLzk4MjM1NSAoMjAyNS4xL2Vwb3h5KQ0KLWh0dHBzOi8v
cmV2aWV3Lm9wZW5kZXYub3JnLzk4MjM1MCAoMjAyNS4yL2ZsYW1pbmdvKQ0KLWh0dHBzOi8vcmV2
aWV3Lm9wZW5kZXYub3JnLzk3MzM1MSAoMjAyNi4xL2dhenBhY2hvKQ0KDQoNCkNyZWRpdHMNCn5+
fn5+fn4NCi0gTXl1bmdoeXVuIExlZSBmcm9tIFRlYW0gT3BlbiB0aGUgV2luZG93LCBTdGVhbGll
biBTU0wgNnRoIChDVkUtMjAyNi1wZW5kaW5nKQ0KDQoNClJlZmVyZW5jZXMNCn5+fn5+fn5+fn4N
Ci1odHRwczovL2xhdW5jaHBhZC5uZXQvYnVncy8yMTM4NTc1DQotaHR0cDovL2N2ZS5taXRyZS5v
cmcvY2dpLWJpbi9jdmVuYW1lLmNnaT9uYW1lPUNWRS0yMDI2LXBlbmRpbmcNCg0KDQpOb3Rlcw0K
fn5+fn4NCi0gVW50aWwgdXBncmFkZWQsIG9wZXJhdG9ycyBzaG91bGQgcmVzdHJpY3Qgb3IgYXZv
aWQgdXNlIG9mICJWaWV3IEZ1bGwNCiAgIExvZyIgZm9yIGluc3RhbmNlcyB3aGVyZSBjb25zb2xl
IG91dHB1dCBtYXkgYmUgaW5mbHVlbmNlZCBieSB1bnRydXN0ZWQNCiAgIHVzZXJzLg0KLSBBIENW
RSByZXF1ZXN0IHdhcyBmaWxlZCB3aXRoIE1JVFJFIG9uIDIwMjYtMDMtMjUuDQotIFRoZSBmaXgg
d2FzIG1lcmdlZCBvbiB0aGUgbWFzdGVyIGJyYW5jaCBiZWZvcmUgdGhlIHN0YWJsZS8yMDI2LjEN
CiAgIGJyYW5jaCB3YXMgY3V0LCBzbyBubyBzcGVjaWZpYyBzdGFibGUvMjAyNi4xIHBhdGNoIGV4
aXN0cy4gVGhlIGZpeCBpcw0KICAgaW5jbHVkZWQgaW4gdGhlIGdhenBhY2hvICg4LjAuMCkgcmVs
ZWFzZS4NCg0KLS0NCkdvdXRoYW0gUGFjaGEgUmF2aSAoZ291dGhhbXIpDQpPcGVuU3RhY2sgVnVs
bmVyYWJpbGl0eSBNYW5hZ2VtZW50IFRlYW0NCg0K

--------------nS3dTVWt10WLCNqIdMH6mGtP
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
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
OSSA-2026-006: DOM-based XSS in Skyline Console via unsanitized instance co=
nsole log rendering
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

:Date: April 09, 2026
:CVE: CVE-2026-pending


Affects
~~~~~~~
- Skyline-console: &lt;5.0.1, =3D=3D6.0.0, =3D=3D7.0.0


Description
~~~~~~~~~~~
Myunghyun Lee (Team Open the Window, Stealien SSL 6th) reported a DOM-based=
 Cross-Site Scripting (XSS) vulnerability in Skyline Console. The instance =
console log viewer rendered log content in a new browser window using docum=
ent.write() without sanitizing or escaping the output. Deployments where ad=
ministrators use the Skyline Console web interface to view instance console=
 logs are affected.



Patches
~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/982=
356">https://review.opendev.org/982356</a> (2024.2/dalmatian)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/982=
355">https://review.opendev.org/982355</a> (2025.1/epoxy)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/982=
350">https://review.opendev.org/982350</a> (2025.2/flamingo)
- <a class=3D"moz-txt-link-freetext" href=3D"https://review.opendev.org/973=
351">https://review.opendev.org/973351</a> (2026.1/gazpacho)


Credits
~~~~~~~
- Myunghyun Lee from Team Open the Window, Stealien SSL 6th (CVE-2026-pendi=
ng)


References
~~~~~~~~~~
- <a class=3D"moz-txt-link-freetext" href=3D"https://launchpad.net/bugs/213=
8575">https://launchpad.net/bugs/2138575</a>
- <a class=3D"moz-txt-link-freetext" href=3D"http://cve.mitre.org/cgi-bin/c=
vename.cgi?name=3DCVE-2026-pending">http://cve.mitre.org/cgi-bin/cvename.cg=
i?name=3DCVE-2026-pending</a>


Notes
~~~~~
- Until upgraded, operators should restrict or avoid use of "View Full
  Log" for instances where console output may be influenced by untrusted
  users.
- A CVE request was filed with MITRE on 2026-03-25.
- The fix was merged on the master branch before the stable/2026.1
  branch was cut, so no specific stable/2026.1 patch exists. The fix is
  included in the gazpacho (8.0.0) release.

--
Goutham Pacha Ravi (gouthamr)
OpenStack Vulnerability Management Team</pre>
  </body>
</html>

--------------nS3dTVWt10WLCNqIdMH6mGtP--

--------------Sir5esE5E2im1yDtmQUS720S
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

--------------Sir5esE5E2im1yDtmQUS720S--

--------------RXxvk7C00bowM78wOeoDxOIE--

--------------0NbFqFtnkZM0G0B8YPHuboyx
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEwo5Vl+U+phfaPpN5Bjja07gsOYgFAmnYFcAFAwAAAAAACgkQBjja07gsOYgD
aA/6AhCnZjvkKiCefGInriMiYoDeV4kq4SpKdJ8n6x5Y+UcZQH73et3I8SwamLsGtV3vfGGUXNgQ
KANntlSJQUbEVmFNH7VY9WraNcH7Ki4LIvdJ7DGgL5gpzh23N936C9gBUIc0IrHTBOGLwuYhQFmh
5Q5J10QdZEQo/Iy2lYVg+ipUyB9Xv5GeFvSGq62rMU08woRfFBi0dVNXhbY2BvQc7RnUw+LZjSgJ
ioTBFYIEOEkC9AIClOh+6gW7cq5fhQ5O1pAU+3qPEPYOaJpmb7XBhQD0+51jyXQ1fZAE6NK1zlPf
Lorfgk5b5KIvJ176bId3VT6N/LkRav8blqD9bjxstjlkMRJhNdwWiSSXg0nuHH2m/SPhUoGW7dm6
yGhVWz1iiYzMTIBDmCmienewVsiAEyffP5+5qYx8yEF1lAlomE+1gfHBGhQYKpeSnL5qJR+z+BTQ
tWXTvN44ZorJ7Gb3hWmCeJQKBtij0ZUgVXXsPYzrg9gkB1xsJoukYHTGC+1wI1DY1XE68Agg4w7/
3tgJrWiu5e3C/Pt76Ljo+Hx1ktk1rw+yXgQ2rFGo7VkRcw7uRd9IyOayrQUHIcxprLog6J05e5Kw
qnwS40HMxqtWymOwSxFTP5TlPWIAqsXSuFq5Jo6/V3KF45+lDvQYupa6rEQWnzymYcqwym0ikwOO
pH4=
=2RDk
-----END PGP SIGNATURE-----

--------------0NbFqFtnkZM0G0B8YPHuboyx--
