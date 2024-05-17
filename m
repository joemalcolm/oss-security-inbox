Received: (qmail 19458 invoked by uid 550); 17 May 2024 15:30:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11599 invoked from network); 17 May 2024 15:25:48 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digikod.net;
	s=20191114; t=1715959540;
	bh=EYRU7W2MhX9B38rHiPWcIVZv2TwB4YfIb73lG0Besis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nNFdsdqDckPWZphMwj3KsNALiIc5v6YLHlUO0Ia0U5JVbj6GsBpsozz3/GVusIDDw
	 EO4K1G5U9sOR6e42e7JwHvEEUcMb/S/7yakrWKkJhbA88OkOKIT/UssB7bNfqxV1Ag
	 JeZ1OZaOfIIdzPp0tHoqb6FxCtABCzPFqs2nZpC0=
Date: Fri, 17 May 2024 17:25:41 +0200
From: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
To: oss-security@lists.openwall.com
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Message-ID: <20240517.Eegh1chephap@digikod.net>
References: <20240414190855.GA12716@openwall.com>
 <ZhxdDyIBazJYRDeR@itl-email>
 <20240415151309.GA15253@openwall.com>
 <Zh1MBrBG8YOvqHmM@remnant.pseudorandom.co.uk>
 <ivMjj3lATlzwIHIHrMAPFX2ukGAAB-DvUg5TU30lGkyffNLHJEHJy7bN3uLbes9XLXnEXIHHDhYfFdmvxlSHKbTLlQLfQZycdSlE1ICaQ_E=@protonmail.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ivMjj3lATlzwIHIHrMAPFX2ukGAAB-DvUg5TU30lGkyffNLHJEHJy7bN3uLbes9XLXnEXIHHDhYfFdmvxlSHKbTLlQLfQZycdSlE1ICaQ_E=@protonmail.ch>
X-Infomaniak-Routing: alpha
Subject: Re: [oss-security] Linux: Disabling network namespaces

On Mon, Apr 15, 2024 at 11:33:32PM +0000, Jordan Glover wrote:
> On Monday, April 15th, 2024 at 5:47 PM, Simon McVittie <smcv@debian.org> wrote:
> 
> > On Mon, 15 Apr 2024 at 17:13:09 +0200, Solar Designer wrote:
> > 
> > I am not a kernel developer, so this is second-hand information; but I
> > believe the implementation of kernel.unprivileged_userns_clone used in
> > Debian (and subsequently copied from Debian by various other distros)
> > is derived from patches that were already proposed and rejected upstream,
> > so the feeling was that trying again to upstream that feature would be a
> > waste of time and upstream goodwill, because it would just get rejected
> > again by the same kernel maintainer.
> > 
> 
> Perhaps it's best to link old article covering the situation back then:
> https://lwn.net/Articles/673597/
> 
> And yes, current kernel maintainers are biggest proponents of unpriv
> userns so any restriction is rather impossible sell.

Landlock [1] could be extended to control user namespace creation the
same way we will be able to deny socket creation [2].  I'll definitely
consider any relevant sandboxing feature such as user namespace and
fine-grained capability control (that cannot already be done with
existing kernel features).  Contributions are welcome!

[1] https://docs.kernel.org/userspace-api/landlock.html
[2] https://github.com/landlock-lsm/linux/issues/6

Regards,
 Mickaël
