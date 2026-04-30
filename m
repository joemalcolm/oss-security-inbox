Received: (qmail 16022 invoked by uid 550); 30 Apr 2026 15:56:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1255 invoked from network); 30 Apr 2026 07:20:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777533634;
	bh=r1CY4+LPZzvpNAQyVfrXKeOMnPepyOCqALvV35m34bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHB/2EUwmTxbGBU9c2KGWNjvwK0l6o9hAErH5KVj9R9evsM3gvTuKUD0xsHveaocL
	 5/wrbAPOdty3h33KFAocctRd3K6r4bPpac2LVMHjV7+heOXCsSDntKzJDa3/V216Eo
	 7wcVOvTdPPhZxMGoikrYOCYLiH/ARYHSvkT3EkVCOJzxU4drZye0HoAqPSFcSq0BpM
	 2bxcdMNDC0MtWmk8CUMwkemjXMb0/XAUl2q+TvU0uA6NxsVnY8ZLiHG9ICjAsjgBgM
	 KDb1UG6NGf1a1QjxPTxGdKWJWOuLfFHWqW4MOUGipX1+Y6kQbCbVnC5dtNWxc9Dbtz
	 HZpu8acro4qYw==
Date: Thu, 30 Apr 2026 00:19:17 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
Message-ID: <20260430071917.GB54208@sol>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afL-QhLfEKqHZqka@eldamar.lan>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Thu, Apr 30, 2026 at 09:01:22AM +0200, Salvatore Bonaccorso wrote:
> Hi,
> 
> On Thu, Apr 30, 2026 at 05:52:37AM +0100, Sam James wrote:
> > Eddie Chapman <eddie@ehuk.net> writes:
> > 
> > > On 29/04/2026 21:23, Jan Schaumann wrote:
> > >> Affected and fixed versions
> > >> ===========================
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 6.18.22 with commit
> > >> fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 6.19.12 with commit
> > >> ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > >> Issue introduced in 4.14 with commit
> > >> 72548b093ee38a6d4f2a19e6ef1948ae05c181f7 and fixed in
> > >> 7.0 with commit
> > >> a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> > >> https://git.kernel.org/stable/c/fafe0fa2995a0f7073c1c358d7d3145bcc9aedd8
> > >> https://git.kernel.org/stable/c/ce42ee423e58dffa5ec03524054c9d8bfd4f6237
> > >> https://git.kernel.org/stable/c/a664bf3d603dc3bdcf9ae47cc21e0daec706d7a5
> > >
> > > So this is one of the worst make-me-root vulnerabilities in the kernel
> > > in recent times. I see that on the 11th of April 6.19.12 & 6.18.22
> > > were released with the fix backported.
> > >
> > > Longterm 6.12, 6.6, 6.1, 5.15, 5.10 have not received the fix and I
> > > don't see anything in the upstream stable queues yet as I write. My
> > > guess is backporting that far back is not as straightforward. As this
> > > was introduced in 2017 all those older kernels are affected, right? Or
> > > am I missing something?
> > 
> > It does not apply cleanly, no. Attached is the workaround we're going to
> > use. I'm not an expert on IPSec but I think this is the lesser evil.
> > 
> > I attempted a backport but ran into a few API changes and wasn't
> > confident enough to muck around with it, especially for something to
> > deploy immediately.
> 
> Backports have just been posted, for 6.12.y:
> https://lore.kernel.org/stable/2026043038-unwilling-slogan-a20e@gregkh/T/#t
> 
> (but I do not see them yet for all versions, but guess following soon)

Yes, no one else was doing it, so I posted backports:

6.12 and 6.6: https://lore.kernel.org/stable/20260430060702.110091-1-ebiggers@kernel.org/
6.1: https://lore.kernel.org/stable/20260430062731.140497-1-ebiggers@kernel.org/
5.15: https://lore.kernel.org/stable/20260430063604.173525-1-ebiggers@kernel.org/
5.10: https://lore.kernel.org/stable/20260430070128.219863-1-ebiggers@kernel.org/

But I also hope this finally provides some more impetus for AF_ALG to be
deprecated and removed.  It's a massive, largely pointless attack
surface which has been causing problems, including regular CVEs, ever
since it was added to the kernel in 2010.  And of course it's gotten
even worse lately, with LLMs now being able to find the bugs.

Userspace crypto libraries exist.  There's no need to escalate to kernel
mode just to do some math.

On Linux systems with no programs that use AF_ALG, it can already be
disabled in the kconfig by unsetting CONFIG_CRYPTO_USER_API_*.

But there are some holdouts like iwd (iNet wireless daemon) that are
keeping general-purpose Linux distros from being able to disable it.

It may also be time for a sysctl that allows restricting it to root, or
only to certain algorithms, etc.  There is zero reason for "authencesn"
(which the exploit uses) to be accessible, for example.

- Eric
