Received: (qmail 9649 invoked by uid 550); 17 May 2022 06:52:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9610 invoked from network); 17 May 2022 06:52:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1652770320; x=1652856720; bh=UewwiP3a+J
	4GD0tTK2Oz6SUkh7kxH5K0Jh9oMfyE48w=; b=ibL5HXKA2mmaUrY/OTzlkHTkxc
	MAQYqYoK3NV6cBX/hUnTWdh2gbXt90Dq2K17iNV41olm5EC7223so6a5KkK4cH8b
	7dBewZr4iGrv1sY0u2NffDxaVz3i6LeqP1KLlx2gJFgaoFqVbShMOJcF7NMN+hq8
	w1oLlacw3Ovs1ZLEPLZvk2rI18dFFo71HDAenQ7xrINxJnvF7I9iFiuxYfKAxd1x
	pHAt54jqDuoLL8M2/Lpjdw4fGi7qobUY71IuV9nOIWbODYg/J6phM85sxQcJix2F
	Q70PnGihz6ME421c6vLxd9zx0RYQ5dIJha6OFrnniVe84itSolIMYFXBnl9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1652770320; x=1652856720; bh=UewwiP3a+J4GD0tTK2Oz6SUkh7kx
	H5K0Jh9oMfyE48w=; b=NQEXgvw5lEQ/Xk99XpJIvipkXpAL8PCOpMWN9P0I0JQA
	8EC7Ctx/DyoxdZJ++rGrQtMailVtL1/AeJNwLScEKr3ol6Q1gI9CJoWlkQ0hKCSo
	R2C2Af3Uz26I8M0w4Ey35t3Z2XGvtOBHZw9SoXn2+KcZYoh82OQUeR0+gU0vUEkw
	1Pz73pJCz2YAON1Ox275WDx3l9lCsAgS9bFE21ImKGbnddgsWlsprOo0tnywGOb/
	6Hka+3zW7fpqNzVDBCGfTpyByXxJYTL765r/6OArwMw0zdyjbaw7nFlrLx/WJjU/
	/ubE2WcT9tGGJRhkNEqf7CNR09Tsk4z8A5cCcGVtYw==
X-ME-Sender: <xms:EEaDYsGr8NwQiBiQLllGQbifZz6L54otLB6mb02s2EvG7_Ha7vvQcQ>
    <xme:EEaDYlWjqkhjI4IAqxdEFhO7l20D-d_BOe_DtiUZ9yE2p93BQYZ7EZb3h1yQR4HmY
    YD0gG9NwDhSQA>
X-ME-Received: <xmr:EEaDYmJBIn9jw34BZ99cvxq6o_kIym2r0Mk0rSY5CdHCzP2iFoloEs3ClBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrheeigdduudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepteefgfevtefhheeuheejiefffffftdehvdekgeetieefje
    ehudffffeihfevtdeknecuffhomhgrihhnpehglhhosggrlhhsvggtuhhrihhthigurght
    rggsrghsvgdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:EEaDYuFOj29eBvq2cL2Nu1APjSvRC9pVJUIK34Z65uNaXyUw-OUzFw>
    <xmx:EEaDYiWAklLRkk1g1POZhnHbHHfLb0C13K5x8gRwvwGXlnwqFNgzLg>
    <xmx:EEaDYhNqhICidGF3OEloDa1o14dDnysajCdjTJeSMdvxgftoyivhmA>
    <xmx:EEaDYrdofSMZb7CbJ2Kp1iXnbTbHOvNiOV0oFSzYcS3e0e5L6mT32Q>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 17 May 2022 08:51:55 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YoNGC3IYwXWE7CBX@kroah.com>
References: <20220515162740.GA20526@openwall.com>
 <YoJNtNJXUwLySmmO@zx2c4.com>
 <20220517033033.GA3403712@millbarge>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517033033.GA3403712@millbarge>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Tue, May 17, 2022 at 03:30:33AM +0000, Seth Arnold wrote:
> Given how much effort it takes me to assign CVEs for kernel issues, I've
> wondered before if we (me, us, the community as a whole, etc) ought to
> have a very standard and lightweight way to publish kernel CVEs, something
> that's not much more than the Fixes: lines already in the commits.

Isn't this what the "GSD" process is supposed to accomplish:
	https://globalsecuritydatabase.org/

The stable kernel team (i.e. Sasha) asks for identifiers for kernel
issues all the time from this group now that MITRE refuses to assign
CVEs for kernel fixes made in stable kernel releases.

If you look in their database at github, there are lots of kernel
commits being tracked there, is that sufficient for your needs?

> I know this discussion didn't start around assigning CVEs to kernel
> issues, but if we're missing more than we're handling, perhaps it ought to
> be part of the discussion.

I think this an independent issue that doesn't have much to do with
linux-distros other than currently linux-distros is one of the simplest
ways that people can get CVEs for kernel issues at the moment.

thanks,

greg k-h
