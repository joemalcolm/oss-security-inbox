Received: (qmail 27984 invoked by uid 550); 21 Apr 2025 17:00:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1471 invoked from network); 21 Apr 2025 16:53:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wichmann.us; h=
	cc:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=2018-07.pbsmtp; t=
	1745254410; x=1745340810; bh=ulkEQOF5u0AjUqrxFRVdgKVaH3mrVJ707h3
	i9HuMhVY=; b=WHtoROL0D97/P7WeXs+SpEaXQoRI3De7XTqb9fEYMgOZh5a2FvR
	iTaqv1qkPHF/wm3uZs9fzwOB11/NBctvFyNvZPHuynlaRRJ6b8T0IXjTkfQ+9FI2
	INOwqoYyUNxZVO8n8uInDuHmfrcgzvNdXIvsQyND4gxzLB470A4MKOq8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1745254410; x=1745340810; bh=u
	lkEQOF5u0AjUqrxFRVdgKVaH3mrVJ707h3i9HuMhVY=; b=qbyX/c+gmrKc3CNcu
	WMzIN6h2chQ6wUklvyWeqXt9RrMhmIgpr7DdFZmLuTkJQfFaogz4q8Nz6q3GHMlo
	UXYb92Asi+eUSuJQ8ytMUr1qtuDXpqIhA2emvZevY25jw7fERFxW19iggclwiofm
	1t8N11xKocdLXcgwNi1gAUv6c45hq6MyZbB9+/XkNLvDbzOqFen0fX+eNFJ5NhEp
	sPe3a8K90GQ0YEsASxNGIjMPD3OHAfxjPG5TxFdO5+tUj8bZfHEYrpYwXU4PGPL0
	ddoi3rReFXiKbdu6XBcuYi/JbHcxycz9PCEcPWpME/648NwtEElOG84nk1ToH1k6
	/7dQQ==
X-ME-Sender: <xms:CngGaD-yURp9uSbzGNg2_8-cqvy8Ak2r2PdeMIjfKoXTCNy2ONC0Hw>
    <xme:CngGaPua99aCAAje5BdGHUPTwS6gumxwYMJeTa1EoIO0flmAwVgZxXb4CpHJExGcS
    2XO_PAdi1XoVoVwVTg>
X-ME-Received: <xmr:CngGaBDXbn0ECenWDmG5S33RG67XQhKzo_XEplfFl9yVaeN9rrC1OqdjieRCMCu4ZMPBNZg2Nh6y91FDZgzJXCY2nGO37rACdw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvgedufeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpefkff
    ggfgfuvfhfhfgjtgfgsehtjeertddtvdejnecuhfhrohhmpeforghtshcuhghitghhmhgr
    nhhnuceomhgrthhsseifihgthhhmrghnnhdruhhsqeenucggtffrrghtthgvrhhnpedtje
    duveeiteegteejgeehiedufeekgfdvjefgvedtteduffeuieelieevtdegffenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghtshesfihitg
    hhmhgrnhhnrdhushdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtg
    homh
X-ME-Proxy: <xmx:CngGaPddDWVBoEMMbb6j5Wt1JrKWk3FxQy5er9xWE63IrMv6MwCsPA>
    <xmx:CngGaIOwFBfYrAPFCbNqh8aFMjYVtXJ763EZ6yGLQe3fyOmeBHDIHQ>
    <xmx:CngGaBl2Dz7YHGhV8V2jcCoiE2I2hOuC8IXuHK4e9TfwLGfVZoCDLA>
    <xmx:CngGaCtQWVDv383CYZNSU6il1F57N5IOaagD99E6Gmn31ly58O4XTg>
    <xmx:CngGaEAlHGLg6dcChOe1ysq8WMR9t25Wuwl3hloGdkdt3xv7xBz86dKd>
Feedback-ID: i387144f0:Fastmail
Message-ID: <49c8a7b7-0200-4bc6-bfca-4f376dcb3d25@wichmann.us>
Date: Mon, 21 Apr 2025 10:53:28 -0600
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
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
In-Reply-To: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman

On 4/21/25 10:08, Alan Coopersmith wrote:
> 3 new CVE's have been published for GNU Mailman 2.1.39, as bundled with 
> cPanel
> and WHM, credited to Firudin Davudzada and Musazada Aydan.
> 
> Note that upstream declared GNU Mailman 2.1 (which requires Python 2), 
> to be
> end of life back in 2020, and recommends migrations to Mailman 3 (which
> uses Python 3 instead):

Sadly, a lot of people are stuck with these bundled environments from 
hosting services where the provider isn't going to provide any kind of 
upgrade path to Mailman 3.  That's neither here nor there as to the 
vulnerabilities, just an observation (e.g. an open source project I work 
on gets free mailing list services from Pair Networks, a feature they've 
deprecated, although they promised at the time not to cut off existing 
lists. 2.1.39 only...).



