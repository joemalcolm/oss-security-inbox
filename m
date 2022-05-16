Received: (qmail 22027 invoked by uid 550); 16 May 2022 19:12:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21999 invoked from network); 16 May 2022 19:12:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=cc
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1652728348; x=1652814748; bh=bPBS+zi48E
	Hr5xr3IHVYYKn91lGT3XZaVR0vVCqXhoI=; b=BIaGyJUbhSQwDDvBLMRumMl7DP
	JzobYhCDx7izN1yiOyBBUhDXCbtbVYgd3AujtLnqv4l9PrS1C9jetxPm35fJIJy9
	F2YwQoLCPZ8kYoE0ECK/zJ1Iy+qniVvnW5cC7zrDJmyihSMNqgSeYRRc1YbQBIFd
	6fBBJLJNC8uMHbRG6y9yKFH1PYcsFv99MY09YH5Gbhth0fz9IlNZCslPlZFmf8L2
	HQxExnQ4GBuoJ5/Yex1E7YXN8fYsYa9lf9GvvTzSDFPr3PsWux9gD77esqBpLPUi
	vR+fKf2MxnqXiStyMgmkfGIkRn4QQaQt5/LFS2G7QVPGbz8akKrscrMGjSoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1652728348; x=
	1652814748; bh=bPBS+zi48EHr5xr3IHVYYKn91lGT3XZaVR0vVCqXhoI=; b=E
	rtOacbEpYyZ730/hWGiZLkB20/olaG1+m0Ny6rWS4R8Nt+wvmyC8u4rrb72zNaTt
	WTUUStalPXdWg5lz/bfbdGhPey8vJRdG8uHDZGj0v3gSck63FQtCRS/sLuA0nE0o
	c6wZ5HSdRLw9Mwv7mW8c0fvGYlSe+uQf/J5fi4pjUKdcvM8WEWoMAtFlksZGS/VR
	oJHX4fgVhQ7VOwf7VwBKIlK+S97oKAZGEazEymVjwbUY1Us/dEYb4XAvqDwPVp3R
	0fEoQXjGJ3wpc9lLna5+nAZtxHV+l7pTbKq9ClMWBOobGCGCov2EdYyn7kqkTZam
	eHAaTHhbageA9aXDmgMLg==
X-ME-Sender: <xms:HKKCYtr_WUrXTCwrAMdrT1vuvv7ioNAc30-QKPD7kF4zmLDKBNt_Cw>
    <xme:HKKCYvrnHbUrR2_aLUl-GlSG0T9RnCJwRkGJ8wGspmnimhyyuU4-n_OJyLckpiQdb
    NN_ps5kRX-_HQ>
X-ME-Received: <xmr:HKKCYqO5_pmvajJIde4hhVloxCs3aWBwWfbP5Xl2P72qExyqdxAfPR-4SvwnZswrsb3Aiq0hdxtD_wdiObdhUM5JOB-gfaEt>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrheehgddufeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveeuheejgfffgfeivddukedvkedtleelleeghfeljeeiue
    eggeevueduudekvdetnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
    lhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:HKKCYo7oZC3edxvtw5dJ3mVc_0RmUA4u1qVdDs8Rrf2ecE-cLZSv9A>
    <xmx:HKKCYs5cEsAefVu_S3niYeFPPo4rBO3d5g33LiQCFHmau03llc3CUQ>
    <xmx:HKKCYgg0Afqi4BaQGjm7nfW_SihA-gfQkDBL0TEY60VAd9WqKGV6xA>
    <xmx:HKKCYhhI_kgB_n0w7cExdi2bj9oYxHD9gDk3uBW5hVnSEL8mKo-bdA>
Date: Mon, 16 May 2022 21:12:25 +0200
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YoKiGWAX4E/mbGWB@kroah.com>
References: <20220515162740.GA20526@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220515162740.GA20526@openwall.com>
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Sun, May 15, 2022 at 06:27:40PM +0200, Solar Designer wrote:
> Hi,
> 
> This is a lengthy and belated message, yet I think is something we need
> to discuss in here.

Thank you for bringing it up, I appreciate it as the issues involved
here have provided a lot of friction lately between the kernel security
team and the linux-distros list.

As I'm not a member of linux-distros, I can't dictate their requirements
and rules, but I can state what I would like to see change based on my
work on the kernel team.

Some comments:

> Options:
> 
> Off the top of my head, we can do one of:
> 
> 0. Do nothing specific - let things work or fail on their own.

While Jason votes for this one, I really don't like this as I feel there
are problems today that I get stuck in the middle of many times (as
someone who helps shepard a number of kernel security issues.)  It
would be great if linux-distros could change their rules a bit to help
make projects like the kernel, and others, work together easier.

But if no changes happen, I can still live with it, we have worse groups
we deal with more often :)

> 1. Adjust linux-distros policy to allow "embargoes" on publicly fixed
> Linux kernel issues.  (Only for Linux kernel, not for other projects.)

Note, the issue isn't always "fixed" issues, the issue is "we want to
post a patch in public to get people to review it and to introduce it to
the much wider range of CI testing systems out there.  Right now if a
patch is sent to the public, linux-distros treats this like an "embargo
break" and will instantly post about it to oss-security, which helps no
one.

So if you all could just modify the rules to be something like,
"embargos are not broken when changes are posted in public, or accepted
into public trees, unless the changes or discussions around them turn
out to disclose the security related issue."

That would allow us to still get changes merged into Linus's tree, and
the stable trees, and the distro trees before the oss-security
announcement goes out to the world.

If this happens, I will be much happier as I think it would remove all
of the current friction we have today.

Taking this a bit further, why is the kernel "special" for something
like this?  Why wouldn't this also apply to any other project with a
reasonable number of developers where you want additional review and
acceptance of changes before the world is notified that an issue was
fixed?  That allows issues to be fixed, and to be in place on users
systems before the issue is made public.

I would imagine that projects like Kubernetes, or Jenkins, or Docker or
Mozilla or Chrome or other large systems would also fall into this
category.  Heck, smaller projects too, the size shouldn't matter, what
matters is that users have the ability to upgrade before security issues
are told to the world, ensuring that user's systems are safe.

I think we can all agree that this is our overall goal anyway, to make
software more secure and keep user's systems safe.  Disclosing problems
before the fixes even have the ability to make it to a user's systems
goes directly against that goal.

> 2. Strictly enforce the policy as it is - and be in conflict with Linux
> kernel security team, and handle fewer issues via linux-distros.

That's the same as 0 today, right?  Or do you mean "enforce it more
strictly than we have so far today"?

> 3. Ask that Linux kernel issues not be reported to linux-distros at all.
> This is unnecessarily limiting compared to option 2 above, but maybe not
> so conflicting (just not using this specific medium for communication).
> However, I think it won't work consistently - it would be too
> unexpected by many (indeed, out of context it sounds plain ridiculous),
> and linux-distros is referenced in older Linux kernel release trees.
> More importantly, both teams actually want to communicate on issues
> somewhere, and there isn't a good alternative currently.

This one would not go very well as we don't control where reporters send
their information.

> 4. Shut down the list.  (What about the non-Linux distros list, then?)
> I need to migrate the setup soon and ideally also update it later, so
> shutting it down is as simple as not putting more effort into it.  It's
> been around for 11 years.

I wouldn't like to see this happen as I think the distros get a lot of
value out of the current situation.  But it's your list, not mine, if
you are tired of running it, I totally understand.

thanks again for being willing to discuss this,

greg k-h
