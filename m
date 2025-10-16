Received: (qmail 11642 invoked by uid 550); 16 Oct 2025 21:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11893 invoked from network); 16 Oct 2025 21:10:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=catalyst.net.nz;
	s=default; t=1760648992;
	bh=O30RKza17WTt9+JMkA9aXe6zn84WMH+Wrms/wUGkDyE=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=NYILIzhOZmlUUzhbgwOb7weYa2j1EzAM0NKfJZlMmQ1NbzjovugFRy78VvuulEsYd
	 5e3r/ncJdcYzFXHukPogKrl889gkEA5D8F0Au8R68Z6fPlPuAaUlOonx/lR+FTOQOq
	 sENQ8jDuEvSiO6lT30qEKDfaL5N99LX2TZl27WlieR1VdfMrPNyOwsQRGH06ZHUS4G
	 Gno/j9m9ZNFdLWi7U9fVjtQ7E4JoQ2VLPMx865vfldsGAC28TLMqqMllL0IXyF94Va
	 kaby3hFjeqMj0TLPwCptxTUm3jORwwgS55BS9tnMZTzPG9RG0XLd+u8QLjdfRBcdMM
	 TmydhAGZbjJ5A==
Message-ID: <35b4b85c-f411-421a-a29f-d25bd7797a33@catalyst.net.nz>
Date: Fri, 17 Oct 2025 10:09:51 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Demi Marie Obenour <demiobenour@gmail.com>,
 oss-security@lists.openwall.com
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
 <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
 <bb119ae4-dfdb-4cdb-bd25-edd7f19005a2@catalyst.net.nz>
 <50bcfbdc-b717-4308-83a2-1937bd361631@gmail.com>
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
In-Reply-To: <50bcfbdc-b717-4308-83a2-1937bd361631@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640

On 17/10/25 07:37, Demi Marie Obenour wrote:
> On 10/15/25 22:18, Douglas Bagnall wrote:
>> Anyway, the summary is the Samba 3/4 history has left us with
>> unmaintained pockets within our codebase that we ignore because we
>> assume nobody is using them, but which we don't delete because maybe
>> somebody is using them. There may not be very many more.
> 
> Would it make sense to announce that they are deprecated, and then
> remove them in the next release?

Yes. That is vaguely the plan in this case:

[ excerpt from https://bugzilla.samba.org/show_bug.cgi?id=15903#c8 ]
>> We should do things in this order:
>> 
>> 1. backport the fix.
>> 2. remove source4 wins hook from master/4.next.

though I did not put deprecated markers in the security patch, and now 
there is no urgency...

We will probably deprecate in the next release, and remove after that, 
depending on whether users show up.

As for other bits, we are slowly deduplicating where we can, for example:

https://gitlab.com/samba-team/samba/-/merge_requests/4219

Douglas

