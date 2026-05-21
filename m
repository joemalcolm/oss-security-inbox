Received: (qmail 8113 invoked by uid 550); 21 May 2026 16:08:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15454 invoked from network); 21 May 2026 03:13:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=catalyst.net.nz;
	s=default; t=1779333221;
	bh=pPw4k6NP8BA+La9WbdCOFjS3buWTZhnGMUP350MFHNI=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=V7ad/5+kTgIIezNu0wxt3e6qypNeOvz1F423wnHlCxGCSjoYo3CICUzM5qSsTGIKZ
	 4r+YCVLO3FFa2kUYvjJ9FxLqO2KP8JKbsXi49K2pt6crT49Agt/tLjY1hNJ2RSmysR
	 hlvCKK9GaSLjrcTS6QneUDMPstoaVCJKqicv/fIzNOC5CHjyzTEQ7Oy8BRvPcO9JXV
	 J0eIVEDkqy9LLiw0cX+n5fVNBZ5ZP4MsL9ja+fNbpgNrX7zPi8o5MWCpTL4rGhjFzH
	 AR+/DydfsDKjxSdBugIFTyMUfT8pwo4JhRsAtbDNyry63qcPa1D1c63kDsTkUS4qGs
	 finpX0oevN/tg==
Message-ID: <f296de5a-8c89-4678-ac2a-02b07dfd89e6@catalyst.net.nz>
Date: Thu, 21 May 2026 15:13:40 +1200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, Clemens Lang <cllang@redhat.com>
References: <afDLFWVMK-r70PB0@yuggoth.org>
 <521d0295-6a93-4a28-be55-332d663ec457@gmail.com>
 <3CD03E7B-92A9-4C32-AC58-E811FB8A43A6@redhat.com>
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
In-Reply-To: <3CD03E7B-92A9-4C32-AC58-E811FB8A43A6@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Coordinated Disclosure in the LLM Age

On 30/04/2026 06:52, Clemens Lang wrote:

>> In other words, LLM-discovered vulnerabilities should be considered already publicly known.
> 
> As a further data point backing up this theory: We’re seeing duplicate reports of the same issue found by multiple independent groups that use LLMs, within the embargo period.

In Samba we see maybe a third of valid security bugs being reported more 
than once. So far I think the invalid ones are all invalid in their own 
ways.

There is a counter-argument in favour of coordinated fixes, if not 
disclosure, in that LLMs make it easier to create an exploit from a 
patch or announcement. This means simultaneous patching is more 
important, to the extent we worry about opportunistic low-skill attacks.

Perhaps much depends on deployment. There are engineers here whose 
full-time job seems to be planning openstack upgrades, yet their 
workstations will update curl or evince without interaction. It might 
not be that all these projects should have the same security process.

Samba is continuing to muddle along more or less as before, though with 
an eye to streamlining things.

Douglas

