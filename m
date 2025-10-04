Received: (qmail 31874 invoked by uid 550); 4 Oct 2025 05:45:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31847 invoked from network); 4 Oct 2025 05:45:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1759556710;
	 x=1759643110; bh=BR1y19EDlRT1YV54hwhPaT+dXCs1499mzPyTVBr8RGM=; b=
	jISJRWIuZTT6D2twr8XCTqRAOczhuQnBtl4Qd0kBwVLJnChL9f8+NUvW+IRo6NZd
	cp4IY32Oa/dnwx3AgMvM5dpGLMxOf38F3PP/B54mTFuHMb7dGCRA8g8zvBpBovgc
	clLU/iojvQWBjIAFUuZ5ghs9hSTJnom9HxCC7DByRsw0pgFf9vU+VrHX+UcLNdAS
	lIDKTumZZg6vxwug4WtmthS/AMBsega+d3WvdJUlxXp2sa+QAR8lhxW6zY1EJPqW
	kvFRHdjktCJvlriG2/y4OVIoM2jEdIO57RQuo1hKyADisJBiNY4roeH6sXl9AKwc
	gGSHEax1aTLl8AjxnuH1bQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1759556710; x=1759643110; bh=B
	R1y19EDlRT1YV54hwhPaT+dXCs1499mzPyTVBr8RGM=; b=x7OuBlp6EDHk+8m2j
	e/NTZSr9PuoG5YFZRGXatRhY8SmQX347fMU5wm6OF3qh7nkVtptkyC9qXE3MMV9K
	khbTKXmTxly8OnBl9Hq4GXKyQq/1tIyUvdPwDNkKcVG2T+n4wgXzZhKr8lELmlJh
	jyOqV4fWUbXmot2quk8MlBT8tuDJHCVBKF+9MNOECP0rSb2pMV4jO2xtZZ/NXNs/
	ge20HPJPvXLh6bVC59xQ/FUrpsRocefpspVQevnNesJaKrFIdT/WyfP32f0nBp5q
	oz3MYI4EKlj8CERCVtxd24kuYLQK2CviXDGIZfDyJ5eZK4svNBgxDNcXY++i4nJW
	Nsogw==
X-ME-Sender: <xms:ZbTgaFyopP1pHpedqSw2RR6i5mCAzK1HoGioEeLJKwjvi9b12lartA>
    <xme:ZbTgaDOgCBNY5VIudjaXUyiVRVkbE-ohg49ZDiOqVXuD4LuEZdB91AyS-G4hOHUu-
    wMocMI--BXiaGooWvkGMnrV_uA5g756b1gaA-ZoNLTb3y6U4A>
X-ME-Received: <xmr:ZbTgaG6FZK2U16O4NQpuTjhWZWWvEBYGc7dk3cHbK62sclYxEBjotLsPfxZwetTIBuAdL565sjRQ0m1cCKxkAyMURr4QKuCtgs_TrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdeltdeljecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtugfgjgesthekredttd
    dtjeenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecu
    ggftrfgrthhtvghrnhepueehkeehlefffeeiudetfeekjeffvdeuheejjeffheeludfgte
    ekvdelkeduuddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhf
    rhhomhepghhrvghgsehkrhhorghhrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvg
    epshhmthhpohhuthdprhgtphhtthhopehoshhsqdhsvggtuhhrihhthieslhhishhtshdr
    ohhpvghnfigrlhhlrdgtohhm
X-ME-Proxy: <xmx:ZbTgaEOPrSbExrZ4Ga4GEvewcvcQ5lbeiqlWRMBXQ56gp323bPSEPQ>
    <xmx:ZbTgaEnk9G3wAu4YzNGkj-emllL8VSU9r1rqRH5TEy3wiRxmIj01yA>
    <xmx:ZbTgaLTAfEmbX3usIecmvOYZ3KCrQUahp_EIQkGl-rP-1eW4q6PN7A>
    <xmx:ZbTgaADNrVHh01D8JQdj4VcXdRkn4x-kjPL0A8z6puCsuhtkUrBpEg>
    <xmx:ZrTgaKobHQefDG0BT6X6MTgNy-wcNlOMa-49GmjBcfQ4KGtHtrCcrtNz>
Feedback-ID: i787e41f1:Fastmail
Date: Sat, 4 Oct 2025 07:45:08 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <2025100406-grew-evaluator-a961@gregkh>
References: <07bdaddb-1414-492b-a178-93b38f8ac3a0@gmail.com>
 <2025060713-aloe-decency-a74c@gregkh>
 <40b4dd6d-eb00-4076-8f38-546a1c3589a1@gmail.com>
 <2025100255-cage-squall-f003@gregkh>
 <e61844e3-47d2-4209-b34a-6d94f963113f@gmail.com>
 <2025100324-army-silica-497b@gregkh>
 <68cd6070-5909-41cf-9194-63967b2dff80@gmail.com>
 <e07ac7ab-e1a0-41e0-ba73-92d14add790f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e07ac7ab-e1a0-41e0-ba73-92d14add790f@gmail.com>
Subject: Re: [oss-security] Re: Re: Linux kernel: HFS+ filesystem
 implementation, issues, exposure in distros

On Sat, Oct 04, 2025 at 04:35:40AM +0200, Attila Szasz wrote:
> I know the workload is immense, but from my perspective as a security
> researcher, here’s what I propose:
> 
>  *
>    I can reach out to academic contacts at universities I’ve
>    collaborated with.
> 
>  *
>    Bring some of these researchers and students on board to engage with
>    the project.
> 
>  *
>    Explore securing funding for this effort, whether through the EU
>    Commission or other channels.
> 
> The idea is that if triaging 13 bugs a day is unsustainable,

What do you mean by this?  I never stated it was unsustainable, in fact
it's just fine from our side.  What is the problem you are wanting
others to help in solving with here exactly?

> we could
> delegate this to motivated students and early-career researchers who would
> gladly take on the work—verifying KASAN reproducers, running test cases, and
> handling other essential but lower-level tasks. While not senior
> engineering, it is still highly valuable work and could also serve as
> meaningful experience for them, particularly if supported by proper funding.

We never turn down help, so sure, work away.  But I'm very unclear as to
exactly what you are going to be wanting to work on.

> Of course, the authority of the Linux CNA would remain unchanged—you would
> retain the final say and could overrule any decisions if necessary.

Decision about what exactly?

> I believe this approach would help address many of the criticisms raised by
> myself, Canonical, Google, and others, while easing the security workload
> without introducing new or restrictive measures into the Linux developer
> community.

What specific criticisms are you having here?  What what ones does
Canonical have?  I talk to Google a lot, and so do other members of the
kernel CNA team, and we haven't heard anything specific in quite some
time.  Last I heard from them was that they wanted a feed from CVE->OSV
for our json records which I stated would actually reduce the
information that the record had (i.e. you loose what files are affected
by a CVE), but sure, if they wanted that, we'll gladly take patches to
our tools to provide that feed directly.

> What do you think?

I still do not understand what specifically you are asking for anyone to
do here, nor what the criticism specifically is.

thanks,

greg k-h
