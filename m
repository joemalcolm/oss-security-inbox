Received: (qmail 1914 invoked by uid 550); 28 Sep 2025 00:44:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32066 invoked from network); 28 Sep 2025 00:32:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wichmann.us; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1759019525;
	 x=1759105925; bh=AcWJ4vSH09U7fUN1NNzP0q3qfCJlH+m9GW/VYL75fOk=; b=
	e/lN04xgjaY2zOVe3O0CbVUxo0dX+i/X01qttDD2R10EiE8J43I6zsu8JcjRAc2W
	DKZt1rANwMbYD0GvYBvGu9V+hyL2J0IlVhdm6X8Vfl/fPj8dYr/XLs42+gWk8B2v
	ZCXoj1mrp1/eMgrGMgs/6vd7Yx+iLQLfoDhq3mSBLK228b8Z5KHqNvdqfpDoT+60
	3/oG34UX7vEG/Cd86mVciHUbHLOBtEjD8YDmUPNj2nSPuUJj6BB04OtQy697YhVa
	OBuj3IkvQbH8A2LnIjWgM27ZhEB4pvAlEmfZh/aV2AHKSXu5ln0pMtXh19hsWMWy
	RvptP7yTMQRbV1eH/aMqpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1759019525; x=1759105925; bh=A
	cWJ4vSH09U7fUN1NNzP0q3qfCJlH+m9GW/VYL75fOk=; b=LZBdNGg51cpdvuLc3
	amvObhJpYyvyDNzqO3OPhdRn/yMBQnVC2IAnf9Dx1prrauRJGYgs3PAuCtDqGhHp
	itAv3ynz7724Y8HuH4hxCI2bIdz2TBKZsIubA3x9jCD+VC769X1q9Kt0LmCc700H
	ooi97DgDHTa9bXLaBGZt3jW1JhIUpavBhNSfWDmdJXTZycbewN5aMYQi9pf2n10d
	bqQgPGvFUlUW2YsAQKNQ5fEDtARAZRUpZRJtd5nD4vajLATWmfa7U6Uxo6lDMw4D
	pqls3zB5TnZttwu0u5mNDISOulSxTEd55JPG+5kiKtD62UrhkBOvvN/b5rDa/64J
	jJXjQ==
X-ME-Sender: <xms:BYLYaDSqyCUKRu4gl7i9NqzrL4iqOEbJpb_ylp43lZ9vYma5LcgUGQ>
    <xme:BYLYaLtE6wXtOjjsvjT94f3f2178vaj4TResu7M9YxQuk1kHG87vd1ajDOcSs9FfC
    2TAbg2pJFI7q_VQ6GWJqls9MSf-glAIZJ02_RxFR5ZuvH5XHOwStAQ>
X-ME-Received: <xmr:BYLYaOewcuer7F9pBPpWQiXXbLP3ikuKnmlU03biUGeVxjOzBYSo9vDyfeifTvGnRZv5yuDH0Ip09M1s_4zVRi1Q3nWFuviojg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdejfeejtdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkfffgggfuffvfhfhjggtgfesthejredttd
    dvjeenucfhrhhomhepofgrthhsucghihgthhhmrghnnhcuoehmrghtshesfihitghhmhgr
    nhhnrdhusheqnecuggftrfgrthhtvghrnheptdejudevieetgeetjeegheeiudefkefgvd
    ejgfevtdetudffueeileeivedtgeffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepmhgrthhsseifihgthhhmrghnnhdruhhspdhnsggprhgtph
    htthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhr
    ihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:BYLYaIJdLmatLTxItOBq9IdHa8E1pucNYd_ZJghZ_P-VdqHH4Xhggw>
    <xmx:BYLYaMaRvbpjCIfYfgUopjD6FCMliRzOoEoQJBQhfqRgMUmSSj5ksQ>
    <xmx:BYLYaDvi4auAmUC3ToCBKPTHfSfCec_YADSDklM0OdVeeK8AXAA2Sw>
    <xmx:BYLYaJte0efXlrd5t9dLIcP49cTBHxAJSvKV1NzVsmzCGeU3Wd5NEg>
    <xmx:BYLYaA6T6pI8IDBzyWbI_BjDmLgs1zDf8wgoGD6JSIW0zZIdh8_80yGp>
Feedback-ID: i387144f0:Fastmail
Message-ID: <dbb07692-6f92-48d1-ac35-239943831edd@wichmann.us>
Date: Sat, 27 Sep 2025 18:32:04 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
From: Mats Wichmann <mats@wichmann.us>
Content-Language: en-US
Autocrypt: addr=mats@wichmann.us;
 keydata= xsDiBD9xp6oRBAC1vd3YI8Gcr1CxpV1gldNQu0uQsNaICDk+Ai3+R163s/P83JOYG+SBEA3P
 v7iZx70qpQ3RzP7KrjF1Nm6j0em9ccUX2fPQUCAxXw5Hiq7CSMiwQQZRI6shcnyMh9XTKViT
 WK5MrKDyvjDEn7epjKzKwPS5SG039l6XaOKU0A4uGwCgsNqUQqC0gMMcbKlJV8ql58iKmbMD
 /ii8FPQrXmyS/FnsPs7UddV5qMHKm7NUH5oiKuMVyakInRyq9iIxuu3D4Ec6mWRKcGsjmIkW
 HXCSz0aefs6dsqNqpU54cYioJ3wP5LzHK7oclgJPryVt5Qezbdutf8SQf8gVkaNIlkxwGUzi
 bKTZ6CHzwlz9nNgeel0XPUcZzFxGA/4paeCg2rMSVuAhUQbsLYHu4XzTs9P16zaXkrtxc4m5
 b+BF5xsLgTpyO5l859XudS2Gp+7/Y37dAU4QlyGGOboWmF1y9U5DnzBwG8ghsnym+ga58MJh
 LdRdQQ6xQolCpEXOuzm40f2r5uMxF3KOJ7WpIPuGAkeCPru9BmlATH+zOs0gTWF0cyBXaWNo
 bWFubiA8bWF0c0B3aWNobWFubi51cz7CYQQTEQIAIQIbAwYLCQgHAwIDFQIDAxYCAQIeAQIX
 gAUCT0VyZwIZAQAKCRDAMaCQc9hUxiZBAJ9cWziGp7hVfsu5T+cQptc3rLNndQCgrZh8u5LW
 BfJ5e/Y+3PwZ8UEm+ELOwE0EP5is8BAEAMtwzcA8TYf5UTjDMgwcSNoErTc9ag+IX05QFgL8
 aF8sfJRv5atcitqQy0gSIsOzI+L/AFdPN/+QQI3dL1tCq14t32KPDtigDhzm6jVPXX5z+V9u
 xnD8XTp+ZvNcWoHXjViM8aXeLLEiCpiVCho307h3XShvqoKINWRQWeAsKKDDAAMFA/48zaey
 wiiEyvI0meJ1KkNHxdLP0yLODr1WV6j9xkPkLWOaIDw7dlwEOlF1N1YtZ2wa0p1wsttdIbIx
 ffgwXmcH4zrdxUIMz3U0BqYzk5H+5cYFXECXTFVOmweS+JECYMj80PjRoKCO1eVO1N30zksB
 36NnhZWPRWIhjK3ZarIYH8JGBBgRAgAGBQI/mKzwAAoJEMAxoJBz2FTG6VEAoKDYHfDp5Q3q
 PuPvPahCE9HsXMgAAJ9INTqcLSJrOfyJ8q95nBO1T26H2Q==
In-Reply-To: <CAFf+5ziKPTBLFmDAffWTH+MCnOp5NHhZNM803PsemVLRuQoCaQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] How to do secure coding and create secure software

On 9/27/25 02:30, Amit wrote:
> -----------------------------------------------------------------------
> How to do secure coding and create secure software
> -----------------------------------------------------------------------
> 
> I can do secure coding and no one can hack my code unless the language/OS have
> some issues. You can challenge me on this.
> 
> Ultimately, all software boil down to functions/methods. If functions/methods
> are secure then the whole software is secure.

That's just plain silly.  You will get challenged on this... already 
seen some. I'll just post a hokey analogy: a door lock is secure, as it 
requires a "thing you have" (the key). The API is fine. If you don't 
protect the security token (leave the key under a flowerpot), that's not 
the fault of the lock - defeated by bad security processes and no fault 
of the "function". If someone kick in the door it's bad design: a door 
jamb made out of wood isn't safe from a brute force attack, even if the 
lock mechanism itself wasn't breached.

The "whole system" matters a lot. Secure functions are necessary but not 
sufficient.



