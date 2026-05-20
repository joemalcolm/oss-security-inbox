Received: (qmail 22149 invoked by uid 550); 20 May 2026 03:56:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5616 invoked from network); 20 May 2026 03:54:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catalyst.net.nz;
	s=default; t=1779249250;
	bh=Pu3/dZiQ8T48okpMQqs0RwUnhmffI00eIDdv2R7YkoE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=xggIk+HhwOcRTy7OUvfBqS8vinMsoNsbNOBbW25hg4MmjHajdK087avaBEMMNQFah
	 DwRrpTvNm7U0Q2fiBFX1wb+9500yaKuMsIIulrltX5xzjwqwANoCAu4qDOxYuZ+J6I
	 Vj39OUaHI8qR3GeBnLglVf7AeeyGJdr1LfHdGHQMTOg+rAdL5w501TxCubleBu9yyF
	 TrFUhqKTjFsU7ZziFyyjYgDX5adDWubuu/vuiUu1Mwg0kc6JXHxa+GFkC+aPWp6I/u
	 VWPkY2SG0QPcRmVZRPfYw2XFbwPeYpl5jG2VOSSTrK4xk746e/AjtJ/eTmUZBKZQVp
	 6vtjCd8eDrpsQ==
Message-ID: <110d1661-716f-48d2-84c6-fbc9959b7c39@catalyst.net.nz>
Date: Wed, 20 May 2026 15:54:09 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <d9b75448-c072-40ec-9740-1c68d4cee279@samba.org>
 <2f748af7-2d2e-40e5-9c96-7927fd10b12c@samba.org>
 <621ffb04-9b12-416d-b4f6-46185f342de6@samba.org>
Content-Language: en-NZ
From: Douglas Bagnall <douglas.bagnall@catalyst.net.nz>
Autocrypt: addr=douglas.bagnall@catalyst.net.nz; keydata=
 xsBNBFTZNuABCACnBtS+eLzGts68jAJrZstbH5vM0d/4+OsGcvFkrXGPE9D6PsRdVM+jPT1Z
 fASzsarvWkx0b7p6/XTwTo2Al3KRRVLq3FQFPOLyKzSXK8u+vUi/py7Cv133t4Uea7+Pp+YM
 tWjXGwB/y3s5TBwJkYShSTBpAhDnkKjxRSQXIr7gIE0fIPIS1uy19g1q/BuXuj1sfcISRMpp
 z8qs9cAsk45tG1JItaLjO7+K47Q3LEfskChGPbhwh7tWCquDzreQC7q+h3dK6A1AOrorskON
 +Wy3aucRoOw6scNfV2H1y6lDza2lwZxCDRs6zkn7SQVjX62j9kVczShyi5udgqfWsW2jABEB
 AAHNMURvdWdsYXMgQmFnbmFsbCA8ZG91Z2xhcy5iYWduYWxsQGNhdGFseXN0Lm5ldC5uej7C
 wHgEEwECACIFAlTZNuACGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHcqM0mxsX5t
 XIoH/jiHvUuw4xrBKuk9KzAE5JNd5rcTQdaRgiIvM/6C6X/uobzO2CDKFEUOmTpYSSXkq0/3
 YmwCRqWMja/5N1886qFrkcrIkTMRb0imxkNVwd7JIPdryK6dFCzCRUC1hByqeI8EwO41ROX+
 qw6DT+H/o6QkPWAB1P8ODVtq0F3TUZ0/Xpe3xYK1QF6Ud0BKWVcKBMAdS7CWTsVRD6m9it80
 Mp4N3y6Ka0vrgZ6IEskBHGVJ/Mm6ONrHIjl4OAbAKK4PuFha5PjPx1YYYOnsp4JvhrSJQDag
 A9vDdm7mbJpxxVY0Rx4t7xRvh+jsZ1f6yVGx5UTpdtvSbriZ2SZ3F29hBGfOwE0EVNk24AEI
 ANSG9xaPHGxr7l1Wcz8J51IDT0EE7ozS3TSYRE80OSH8oB26w5StLbQkC+iWj0GsTveJL9x6
 Vp/dfsPGfG9CP9J0C4ZOwY7+V9ex1d10xzr32zetKiUt7ZEimzIiCnmnR9K54jVbGDvVfJie
 uTOGruqRLIUAO69ZyhplRywyee6MRtgmfLpJlnOySgvihR4kHmq03zHe6whhJ0RmbKSIwb/F
 Ri/ZmpujNZ7PTYcmw7sp/5HpE4taYA0f3QvK9/DTjuoITdugrxhOwBdv6jLAAzI8d0quOFf+
 5IeGizYTa6HPmBtIUyyzVajjiUpXiB8WuhgTL5pP0BT5j6BtW8Li/YEAEQEAAcLAXwQYAQIA
 CQUCVNk24AIbDAAKCRB3KjNJsbF+bYRnB/94DaFuxGVA65kkr5iubWbwKnaiTWlZLIFQp0RH
 QRk/jgdpuQj3E4D660QdfoMqhTeozOPTBH3cJOCjgN/klI7xrkvdq8sLTMWyM5Bbu+XhDaSr
 8hnjvdhZM7bHQdaH3FI5zdm2rMbP8nB6IH8wYSxHzywjR9vks6PTsqxqeCoupqdVO/kZ3jsU
 F0LOxxnMTlT8YZIn8lFVptsz5HMOKFnUdR3fYpcO+CTc9vXqcLWqnMwchdSQPp1cjZ5eUl+G
 jmq9xwOWLG/0u5b9stC3cEiCNSZn8Nyy7KaY8fQeKn//sBeyu3htjZ2wZ+oRVuc/XR/+/hl6
 QCGP/4UC6mJGdmU0
In-Reply-To: <621ffb04-9b12-416d-b4f6-46185f342de6@samba.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Heads-up: Upcoming Samba security releases (2026-05-26)

The Samba security release that was due for April 9 is now going to be 
on May 26.

On 09/04/2026 08:32, Douglas Bagnall wrote:
>> Release is still Thursday 9 April.
> Sorry again. The release has been postponed because we found an
> issue in one of the fixes.
> 
> We will announce a new date as soon as possible.

>  Impacted components:
>   - File Services, CVSS 10.0, affecting some configurations
>   - File Services, CVSS 10.0, affecting uncommon configurations
>   - File Services, CVSS 7.1 affecting some configurations
>   - File Services, CVSS 6.5 affecting uncommon configurations
>   - Domain members CVSS 8.0, affecting some configurations
>   - AD DC CVSS 7.5, affecting uncommon configurations

Patches and new versions of 4.22, 4.23, and 4.24 will be available from 
https://www.samba.org/samba/history/security.html (and the usual distro 
channels).

Douglas

