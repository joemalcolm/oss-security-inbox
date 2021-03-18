X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2218" "Thursday" "18" "March" "2021" "13:08:21" "+0100" "Greg KH" "greg@kroah.com" nil "67" "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil "3" nil nil (number mark "U       greg@kroah.c Mar 18   67/2218  " thread-indent "\"Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper synchronization in flush_to_ldisc() can lead to DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14068 invoked by uid 550); 18 Mar 2021 12:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14050 invoked from network); 18 Mar 2021 12:08:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=71w4ZLg7BvGa03k24TgKHR007gV
	8O7TNrjQDq6cPj2k=; b=KwZiZlr6C7U/IYPhY03n1chSwz9K4SkpbO271/zH9Hw
	X/K/e+pP16oO6N1jqpwBo6u+rprdSQV8VBii406hggKEm8y2voq7oaCPrO1RRtH/
	2zhXC5QGPz+LTVoShvmgeGDvJnYDtBAKvzkv/hikmemV7+0FxWSE+B0Tqhjz/oXr
	UNz8LKkdsLXM0aH1LwiZ33hsOCTrWTtoPoab/Qi7QhfCRmUj5g8XXXtQK2HIFPRh
	w5e2XkPViRVJkGmQTa5JNIoFSXP6yWVxiPhSHFqTszbsyleh4qc79OGhPtnVo62G
	uCaF4O+JSaiqiPmBvP2Oem5XufBTSCGXtHBKh3Lij5A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=71w4ZL
	g7BvGa03k24TgKHR007gV8O7TNrjQDq6cPj2k=; b=bAlpaTLxAQSNNKitXYiBIn
	dUMZfTlT3jAhH/OJZT9H9wvwqjBJwVFxIXmJiY1x2nGMKe/GIOEHhQgJsr1ca1hy
	ytipHPm58/Dh6Y7WMcgijvUgClMuB71/zbuvKhLepQ0BgMNQwJSxsOOzaJ5V8AlD
	aUxMjsuspPEkcjODkTlELjcNvFc9I7aqshksbD+XpUH4JB8u3qo6j28hxt/906LV
	WDI2/U6zMVfiyH2SPStWRPJunJYr4MuwJa90FbzW7xlFAxPX7AnESFd5wmpwOPie
	DcI2dwSQ5Ab7x5vLuFMW1ACGGcT+ncCWEMtLVcVGWvqgICp8STFmBDFIQhfKOqQw
	==
X-ME-Sender: <xms:uEJTYOPKCTK8RVNYV7rWSA4HMl9G0QxPHpXB1dYYj2kfBGshaebm1A>
    <xme:uEJTYM9wrUXi1bo7fhzbJpSwZPDs3CAP6qWAdu4iYwrQIk_qCahrkh5ijRYlSex89
    fTACZwpfLyDpQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefiedgfeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtro
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuggftrfgrthhtvghrnhepveehgfejiedtffefhfdvgeelieegjeegieffkeeiffejfe
    elhfeigeethfdujeeunecukfhppeekfedrkeeirdejgedrieegnecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtoh
    hm
X-ME-Proxy: <xmx:uEJTYFRaZ_biq019UWsMa41Uzlv5jyNJ3pFDfU12wCOPZSV2Ce3CiA>
    <xmx:uEJTYOtZfCctIPlmQUB21WWC9c2yUNNvmeCXqOU1peCcurKxymScpQ>
    <xmx:uEJTYGcvo3PmNNI_aTrroCJbTpJ6aWhre3r0WrvI3z59SffBTmLtsg>
    <xmx:uUJTYAqPZWTtKcGKpPLwmbg8KL8fMesE6IVIPdxGRxylbDbJgQYaDg>
Date: Thu, 18 Mar 2021 13:08:21 +0100
From: Greg KH <greg@kroah.com>
To: oss-security@lists.openwall.com
Message-ID: <YFNCtWmsYrtYQeEJ@kroah.com>
References: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-pR3JScgA-PJFSwkAw6B8xiXYWFtVD6rEYp2wnJjyCogw@mail.gmail.com>
Subject: Re: [oss-security] Re: CVE-2021-20219 Linux kernel: improper
 synchronization in flush_to_ldisc() can lead to DoS

On Thu, Mar 18, 2021 at 05:03:53PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> > Given that the above CVE is not public in any database that I can find,
> > one can only hope that the text will reflect what really is happening
> > here.  Rohit, why was this even published?
> 
> > Again, stuff like this is just causing extra work by everyone else for
> > no good reason that I can see.
> 
> 
> I understand and apologize for the confusion.
> 
> 
> This issue was reported for rhel7 to us (which was not seen in rhel8
> or later versions),  but it also  applies to  kernel before this
> ('3d63b7e4ae0dc') patch or kernel without this patch.
> 
> 
> $ git tag --contains  3d63b7e4ae0dc
> v4.18
> v4.18-rc3
> v4.18-rc4
> v4.18-rc5
> v4.18-rc6
> v4.18-rc7
> v4.18-rc8
> 
> ..

`git describe` should be used instead for stuff like this:
	$ git describe --contains 3d63b7e4ae0dc
	v4.18-rc3~4^2~4

But none of that takes into account for the backporting of commits into
the stable tree, you need a different tool for that, which many of us
have our own.  If you use that you will see that the above commit really
is in lots of fixed kernel trees:

$ id_found_in 3d63b7e4ae0dc5e02d28ddd2fa1f945defc68d81
3.16.61 3.18.115 4.4.140 4.9.112 4.14.54 4.17.5 4.18

So this means that your RHEL 7 kernel, which is based on 3.10, somehow
missed picking this up when it was backported to the "newer" stable
kernel trees almost 3 years ago.

Is that a mistake in your kernel development process that should be
resolved?

> Since this issue was reported to us,  identified as a security flaw,
> and was fixed in the upstream, we decided to assign a CVE.

But then you announce that CVE to the community with no context or
information which only causes us to have to do lots of extra work.

If it's Red Hat's goal to get some people in the Linux kernel community
mad at them, it's working well.  If it's Red Hat's goal to somehow help
the community out with this type of announcement, it's not working at
all.  You failed to site the fix, when it was, who did the fix, who
found the fix, and where it was actually fixed in, all things that
people here actually would like to know.

So, what really is your goal here?

thanks,

greg k-h
