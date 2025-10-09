Received: (qmail 13470 invoked by uid 550); 9 Oct 2025 04:47:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3688 invoked from network); 9 Oct 2025 04:46:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=catalyst.net.nz;
	s=default; t=1759985182;
	bh=HaP63b/mLS4Q75KQXYNLYJW6SIOOkPfXyoQ/h6jlEaE=;
	h=Date:Subject:References:To:From:In-Reply-To:From;
	b=GYlRaUVUSS6JQxWB5smwrRz6iLhjzGlKkdKpjs5xcf3tW/lvDWH8Pr1iE27Dp2VRi
	 OgtgpheRryxNA4a7md0u2n/0PXbOzEkQL++VRWYWBi8p4HeTMMceTrdqcKOMlnDIUC
	 cD00f9QIV/LDeHRbOKbnV1WV8HffRRVBbL68bYBArw0lzgP/JKa/wXobiR5QtzJinh
	 grBXX803qZCcbI/dHoSZk6crdAbzjigf95igQmwP8tyy0RzWUUGEQ64tYjw3E1rxlA
	 pcRKbzFzv0uh5akjqOWOGMm2C0CuzwmDLlWuMUrcLw6otnrk7O1p83eYvAS4/3uXqK
	 yYSGZ80Zi3M1w==
Message-ID: <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
Date: Thu, 9 Oct 2025 17:46:22 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-NZ
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
To: oss-security@lists.openwall.com
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
In-Reply-To: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
X-Forwarded-Message-Id: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Fwd: Heads-up: Upcoming Samba security releases

The Samba team (which includes me) has announced there will be a 
security release next Wednesday. This is our standard procedure, though 
this time we have added an estimate of how many people might be affected 
by each bug.

Douglas

-------- Forwarded Message --------
Subject: Heads-up: Upcoming Samba security releases
Date: Thu, 9 Oct 2025 17:38:13 +1300
From: Douglas Bagnall via samba-technical <samba-technical@lists.samba.org>
Reply-To: Douglas Bagnall <dbagnall@samba.org>
To: samba-technical <samba-technical@lists.samba.org>, samba 
<samba@lists.samba.org>

This is a heads-up that there will be Samba security updates for 4.21, 
4.22, and 4.23 on Wednesday, October 15, 2025. Please make sure that 
your Samba servers will be updated soon after the release!

Impacted component:
  - AD DC (CVSS 10, High, when using a very unusual configuration)
  - File services (CVSS 4.3, Low, in a widely used configuration)

The AD DC bug will affect very few, possibly zero, users.

cheers,
Douglas Bagnall
Samba Team and Catalyst IT


