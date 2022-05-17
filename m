Received: (qmail 3294 invoked by uid 550); 17 May 2022 11:52:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3273 invoked from network); 17 May 2022 11:52:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1652788345; x=1652874745; bh=UwxrTlpPBg
	m2nOGQy+BxTVzT2APt96nGp48YV3sC4d8=; b=Vizj5JEhDnIdmD6jCl2VrdwbfF
	u2vstyoxxdDYUpuOA8QfmgPVmkw/lKcxhP/wf4CWVaJIzdI5zQM+12d3XecLyeoD
	iaXHUb5V4N4IwHvRgTMQNBTwAr7fFFwntD9UN4Q2Bia4EQXpG/OMZEBRWwVr8+iV
	UlWzUg1mU2IJSJs/o6InjiejHQFgGNaNGUw1/W2s0YBR8g1BAtvu5JBTSMTxtQHu
	rx+wPsf87loTDZSGQiNvh2xSpIfoiWCv3uCJ9roPY6Hfd9eDHKYODI3A5J5MEW4o
	g8FL0QViivSHK6/9lJjYoz2F89pjrRGZ4GhlnHPL03evfMfa4oD2cV79Ailg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1652788345; x=1652874745; bh=UwxrTlpPBgm2nOGQy+BxTVzT2APt
	96nGp48YV3sC4d8=; b=pGqxbOpjrKV7RS2kLbwS3CDTqKUf9itgRvNKsLD7trk7
	8070WNyXkxKJSreO2YdmFiIp+aBgOby71akgb1wh3KNShGxiOBUQ1xGutJjzkDy8
	0AzVekAnYKwQ7Wb3J4v371JU99iEO3Sr2wQ4MKbZiaE+UHMzjwWZ1Udf0Os8QWZN
	BFiA/sdyvR+vYNsCh2Y1dSvb1+GF1hGLeHJguPrUxlbCqvP6Aw6oZNTmrwjSDN9A
	HNgM0r7RxkF8PqUP5cYJlCDZCwvX3wdvGKeXJZ7F7SvLL5a9IUdaoooHmr4hcmde
	er9N+roDdH3cr5dzMpU60tDzQzwn0uiWMDTnlk4c9g==
X-ME-Sender: <xms:eYyDYsRfCZ8A1ih_QgwhaPbiB8FMBdLBGDTEHPT9_SPDjRlU4AQP7g>
    <xme:eYyDYpz6raubQ5ewviYgFnnfH9B-WUh6radfhf8nfPC4owYvZCp8OCXMtId5u-kbN
    bNx6JYJ-2AGhQ>
X-ME-Received: <xmr:eYyDYp00bK-98_ZGYqSzS1ciQvvGN5htm9ioXztivMl0qSSkjefY2dKnO_CE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrheejgdegfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefirhgvghcu
    mffjuceoghhrvghgsehkrhhorghhrdgtohhmqeenucggtffrrghtthgvrhhnpeehgedvve
    dvleejuefgtdduudfhkeeltdeihfevjeekjeeuhfdtueefhffgheekteenucevlhhushht
    vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhh
    drtghomh
X-ME-Proxy: <xmx:eYyDYgDh9tPUNMzoovuZQ94RwpOHECG6KpGl4w8GBT5wpTbXicAb1A>
    <xmx:eYyDYliRh7ZxxKLk0vY8rk2zOCymGlAYFoec76kxYElIrQt7Wh8T6w>
    <xmx:eYyDYsqOVFKVQVQKB6MQig4JtL-dnn3xXYmRELBr53wQwr8yCqCiXA>
    <xmx:eYyDYotxQiFiun5VQtvU1dJVz-jEUp1OPSzkwcQeQnIY9ytSU1vYuA>
Feedback-ID: i787e41f1:Fastmail
Date: Tue, 17 May 2022 13:52:21 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Cc: Seth Arnold <seth.arnold@canonical.com>
Message-ID: <YoOMdbwp3D8bynKy@kroah.com>
References: <20220517033033.GA3403712@millbarge>
 <YoOCmBqfouvgbEX0@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YoOCmBqfouvgbEX0@zx2c4.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Tue, May 17, 2022 at 01:10:16PM +0200, Jason A. Donenfeld wrote:
> This brings us back to the original topic of this (sub-)thread: do
> public fixes make security vulnerabilities manifest to the public? I
> guess it depends on who you consider to be the public. If you're
> speaking from the perspective of placating customers and taking care of
> some commercial bottom line, the answer is no. No public PR situation
> coming your way, so no work to be done, vulnerability doesn't exist yet.
> But if you're speaking from the perspective of whether attackers now are
> aware of the bug and can write exploits for it -- that is, a real threat
> model -- then the answer is obviously yes, if the fix is public, the bug
> is public.
> 
> So when I read in this thread calls for extending embargoes until the
> vulnerability is "disclosed" in some sort of announcement (that is, PR),
> rather than just until the public git fix, it seems plain that the end
> goal is a messaging or communication one, rather than a security one. On
> the surface, delaying the release of a vulnerability until it's had time
> to reach customer systems sounds like a good idea. But zoom in a little
> bit and you quickly realize that the vulnerability has *already* been
> released to attackers who read commit logs, and the thing we're talking
> about delaying is an official announcement. It turns out, attackers
> don't care about your official announcements; the marketing team does.

As you know, there are different "grades" of attackers.  There's a huge
range from "run metasploit that I just downloaded" to "look at this
kernel change and figure out how to abuse the system that does not have
it".  By delaying a small bit of time from publically posting a patch to
telling the world that "hey, that was a security fix over there" that
allows the community that works in the public added time for review and
testing as our testing infrastructure that is NOT public is quite
limited and reviews are limited given the huge range of needed
developers to do that review.

That delay can allow users to have the fix on their system first before
the "metasploit" package is updated to attack it, which reduces the
amount of vulnerable systems out there.  Yes, it does not solve the
"prevent readers of all commits" issue, but I don't know what we can
really do about that except switch to a closed source development model,
which isn't a good thing overall anyway.

So it's just a delay, not a "never disclose" issue here.  Is a delay
good or not?  Personally I think it is, but as you say here, others
might not think so.

> And as I understand it, the Openwall mailing lists have never been about
> enabling companies to better control their messaging. They've been about
> a deterministic embargo & disclosure process, to strike the right
> balance of letting people coordinate privately when needed, and then
> letting various parties make the best decisions they can once the cat is
> out of the bag. Should the distros@ policy change to be more PR-friendly,
> or should it stay true to its security policy ideals?

I don't think it's a "PR-friendly" issue here, it's about how best to
develop and ship secure systems as that's what the linux-distros members
are responsible for.  The linux-distros group needs to talk about this
and come up with what they are going to do for this issue as it is their
members that has to define their ideals and how to follow them best.

thanks,

greg k-h
