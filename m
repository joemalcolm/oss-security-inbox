Received: (qmail 1355 invoked by uid 550); 7 Nov 2024 23:53:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29932 invoked from network); 7 Nov 2024 23:52:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wichmann.us; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=2018-07.pbsmtp; t=
	1731023512; x=1731109912; bh=EX1vyA7+nrpNRWvC1s+hnbQPBGcHEHZB/Ur
	WfaFc5vc=; b=CFLcFDY3qWceLyLR2Rcqu9mpoLqfwbmWGrulKgJI5Nhi45fgN6r
	ajcdsCtmFfSHFoQTjetCQEyktbBuODdBsrixUPQ/6KTDpZHrF+w7acUVHX6KR0vJ
	TUI7VJBkDZgqqck8e3KFDaxM5U5bHH+NwHVzLc9ueUBs8BeWQV0hUbos=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pobox.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1731023512;
	 x=1731109912; bh=EX1vyA7+nrpNRWvC1s+hnbQPBGcHEHZB/UrWfaFc5vc=; b=
	Asz1iJ2U6RSTAuldQJTRkYrsWQXypxMMtseZHLw/2WroAgwVbn0PFp4QUpaffIyo
	JQHTYDiOAro0J++9/U8oe7pYCnP7x+rjTYQlt9rcJBhR0kVdQ9W/V9VFH0fANLn5
	fpKkhw/KsLnkGEIw8khDK957+H4iI22GVxF+fdDHS4qitEfkGbDaaM+F0SFIQhQf
	eJvO1XUlcO2noIS1iplM/LutSSi1NlQwPrdJJaNrqf3pH8iRXt5ZZkDAnz+O+jy0
	8QmVYac2gY48WSb61S7ahKH2iM4bLwAZB5pYgxeke/RKpFWyAT8y6Gntqat4Khsx
	1CFFttAgyRBcTYNzWYKhCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1731023512; x=1731109912; bh=E
	X1vyA7+nrpNRWvC1s+hnbQPBGcHEHZB/UrWfaFc5vc=; b=njiLhEN7rNS/0SS/i
	XZdZuq4+Q21tOSnid9+Uy0C2emsybv4vSQfn+33oP1rFB0d4EWYoyGhBgdIlSxZw
	HUH80aC47aWqJQZTx3OV4O+so+jVUcGkjRVcdxXy48YmId7k5AdEE2BLb4BBXgmL
	18AWKlHQkXeDZTpt7veD+s7fIea/5PU5YMQRdN2sujV13/9oK85JsUM7zeFcAh6a
	HDeoX+s/hf7g1X/vROKOhKXfGB5baKZvvrQv6wVrOEYvXOSDW8j28ktg4kBK2eFG
	1ddidSVe3ebL/cUDbHdds60rT94rKsmFoea+tgY5KGbtSDHWdhoFe/04hGgGoF6M
	LkKeA==
X-ME-Sender: <xms:l1ItZ0qqmwhOEfuIrZvwM0XI7-mDh_MJoZwLwLd_6JIarY2sY1xlqg>
    <xme:l1ItZ6oZdPWpNg-k4AyFkpQOqV7Gul71DOY4ZMNi3yZ6UYg_GcBxOOKkmgOgrbEOD
    PdmdmCOXEfAk_9nQuA>
X-ME-Received: <xmr:l1ItZ5MBlt2V4sV1JdVxp1H8D4cMXPMJDTyuEGPcjdb8AVy0dPCnUsLWdXghV3CR5Lw_EVh2oqz9JA0cIM6sgBoKznWiTBPMyA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrtdehgdduhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepkfffgggfuf
    fvfhfhjggtgfesthejredttddvjeenucfhrhhomhepofgrthhsucghihgthhhmrghnnhcu
    oehmrghtshesfihitghhmhgrnhhnrdhusheqnecuggftrfgrthhtvghrnheptdejudevie
    etgeetjeegheeiudefkefgvdejgfevtdetudffueeileeivedtgeffnecuvehluhhsthgv
    rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhsseifihgthhhmrg
    hnnhdruhhspdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphht
    thhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdrohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:l1ItZ74psFBn-kUus3qZszpYwPvvyfslpySRqIeEGnu9kaalGJdPew>
    <xmx:l1ItZz4-7hsEQ0T-ubPTaEvbTcHatuOk_Bm1lAHhex0LMfLHpQkbag>
    <xmx:l1ItZ7jQapbm1uzspCglaft5IaNzfbZ-3TJwZY6oX-XmAZiS4m-lxA>
    <xmx:l1ItZ96_PW_xPjrNzHbcMWai-GtoDaeZ3LM-d0UKjKvCoKGATgTiRA>
    <xmx:mFItZwie3GokvcPia_XuYPImhFV8w9zU-g3hmjECWgaT-vTAbAI5BGR4>
Feedback-ID: i387144f0:Fastmail
Message-ID: <a0a83f75-de97-4cb1-9e8e-0cad322fd31f@wichmann.us>
Date: Thu, 7 Nov 2024 16:51:49 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <20241106041215.GA4432@openwall.com>
 <F60236E0-F65A-4441-9E62-64EE55016B2C@dwheeler.com>
 <20241107000819.z6Ygg103@steffen%sdaoden.eu>
 <20241107041658.GA10363@openwall.com>
 <20241107210420.v7ZcHYHZ@steffen%sdaoden.eu>
 <20241107214159.XFJ1n5cL@steffen%sdaoden.eu>
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
In-Reply-To: <20241107214159.XFJ1n5cL@steffen%sdaoden.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] shell wildcard expansion (un)safety

On 11/7/24 14:41, Steffen Nurpmeso wrote:

> So it standardizes behaviour as it exists in real life
> applications.
> (This is pretty unfortunate.)
As I'm sure you know, standards workgroups tend to operate in accordance 
with a charter that bounds their work.  These vary widely depending on 
circumstances and the chartering organization(s), but it's not uncommon 
for projects - POSIX being one of those -to be set up to standardize 
existing practice to provide incentive for various implementations not 
to end up diverging from such practice without good reason. It's a 
little harsh to characterize operating in accordance with one's charter 
as "pretty unfortunate".

