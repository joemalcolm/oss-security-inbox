Received: (qmail 13973 invoked by uid 550); 21 Apr 2022 17:36:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13952 invoked from network); 21 Apr 2022 17:36:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1650562550; x=1650648950; bh=fzyz3VmBpX
	HVH5oWPjWxbmXLc0/9lGtAQWiyjjWCeQY=; b=NqWS0/42SWaFG7cHGoGji8RL6e
	3b2qXjIqx8SpctR1joVCSMIBK57YUqr2yu+1TM3dKIMbSy80zEYYvaWnmsZan2+k
	px3SAEW2Vxe+mGKKXaVj1Od2pCqdEuQHLC0W7hToSO8Kp65rdOkaVw8begcQeU7/
	xNnXEL09YKXePEc0PfcqyijK+inm5Ulc+NYEBkPazRrLXsG6E7vZeBVaslXxgxH8
	kRQqpZW2txgk27pVeM7aeH0mxFxmGOQecS4sYcza4XuvJdWkLnq5Wjtu++M1h+N4
	0aaDUyI7pbG5QtDYzpDXpliUO4jPDNVTl+1JsEYnAxCglZ6cTRVZXh+9fkeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1650562550; x=
	1650648950; bh=fzyz3VmBpXHVH5oWPjWxbmXLc0/9lGtAQWiyjjWCeQY=; b=O
	0hFyikB/9pOC2+AoGE7WrjUgR5yyjaFxXZAh0ZGHepdB1vLdzsVRvnZbLE4U37pl
	rAhaJ70LtV0uXiAS6VbYcO+fvnPK4JRn3yYpaRqpvN9B7qW/APORivyzRt3mFXpW
	q51sRGcXx/ICYwhzadW2336eF4L40I3XOBap1dW+BkpaFOT0NIkkV78cR5242vwU
	HW19HJ4T7UnsF0cTXtTer0NC9j2gPaesli+aHUJELBUP5OqJWr3sKm0ATF0gEJkS
	u8GFeEhS1Mfz8qQxrHabYRGf+CCZgNt59DKfW1kh06ki8kqIhk8N5DsUMxNYQD+w
	yLUjcV9ATB/gZwLnFlZlw==
X-ME-Sender: <xms:9ZVhYsmJ7NQGbi1yFbAivtguBqS1OaJup3XiJWDMLk-CFABKQgxT-w>
    <xme:9ZVhYr1cw8erPsx5rhZEb5kumvHPTMKcYzB07bjQTmxI0dhv52ofKA07hAS4ZSOfz
    FoFHfKxECq4TQ>
X-ME-Received: <xmr:9ZVhYqqiHO-KfIka3v4THjHd5BHc6Ba0x0sUV4YbRKcaI5rgB7Qp_SBvAduEPa-CR0PnI18p2dIF4qkhoxw54K0794-BcF9x>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrtddvgdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:9ZVhYolq8S6uXLejerzwyH-TA69IcpF1gsg-EN35EuUgyrpTFmbl7w>
    <xmx:9ZVhYq02ESPr_kbPvBovuwAV0yU5nuNYDVgfMrzl7Xfj7jABicoGyA>
    <xmx:9ZVhYvtR1lMsLzFVaNmicSaI4LKny1XdF3xcIwGlkw3g6PZL-GskUw>
    <xmx:9pVhYv-ql9xsaeWMBT4Xq7hZaGxLV7rRVY0a5a21irUB_Gd3IZxcgQ>
Date: Thu, 21 Apr 2022 19:35:46 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YmGV8gVeaVN9IMve@kroah.com>
References: <CAH5WSp5hx0pPjhbUoyduc-Nk7fW12pLsJqBFFQ9S4p7ZdgkHcg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAH5WSp5hx0pPjhbUoyduc-Nk7fW12pLsJqBFFQ9S4p7ZdgkHcg@mail.gmail.com>
Subject: Re: [oss-security] CVE-2022-1419: Linux kernel: A concurrency
 use-after-free in vgem_gem_dumb_create

On Thu, Apr 21, 2022 at 11:44:54PM +0800, Minh Yuan wrote:
> Timeline:
> * 21.04.22 - Vulnerability reported to security@kernel.org and
> linux-distros@vs.openwall.org
> * 21.04.22 - CVE-2022-1419 assigned.

Why are people assigning CVEs to things that require root permissions?
Or are there distros running on kernels older than 5.4 that allow
untrusted users access to the drm ioctls directly?

I'm curious as it would affect the backporting of the needed fixes here
(or not.)

thanks,

greg k-h
