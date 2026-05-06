Received: (qmail 13789 invoked by uid 550); 6 May 2026 04:56:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1350 invoked from network); 6 May 2026 04:36:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778042187;
	bh=y3JC5vS0fj7b8pZRtb6GydJZJZDXrKF4/cM/7rE6/ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i0Sd7+qyNcFRHpHwB6FYZB5XU/0KwlX3re6FC658hGShojigQWcUTfRUf2qEdZ3mV
	 NoSNSRUw4MwnOt82/5J7B3ajQIvdTnAt6oxsiAJA6aj7inFgRo5znnDPVWsidcsvU2
	 /SkYG2YhjUy0bbNUsxJ7mSnAXOArI/i7q7ngFCsQo5N4usqfHTZg24jIl/Ql03d1ge
	 ldCjILwRdDKhMjQIF0D6g41vruwSlbj2vgK+k9cELGlIXh9pSgU9el0UFTd1AaywMs
	 eYZg/kq6x/VmW1mrbCxJ2s+qMmQgunciFKqCer3Civ0oHA3CiEBwU0LSre4tTuR6jy
	 Q/C75gSN+++lg==
Date: Tue, 5 May 2026 21:35:07 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: oss-security@lists.openwall.com
Cc: Jan Schaumann <jschauma@netmeister.org>
Message-ID: <20260506043507.GA16204@sol>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430071917.GB54208@sol>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Thu, Apr 30, 2026 at 12:19:17AM -0700, Eric Biggers wrote:
> But I also hope this finally provides some more impetus for AF_ALG to be
> deprecated and removed.  It's a massive, largely pointless attack
> surface which has been causing problems, including regular CVEs, ever
> since it was added to the kernel in 2010.  And of course it's gotten
> even worse lately, with LLMs now being able to find the bugs.
> 
> Userspace crypto libraries exist.  There's no need to escalate to kernel
> mode just to do some math.
> 
> On Linux systems with no programs that use AF_ALG, it can already be
> disabled in the kconfig by unsetting CONFIG_CRYPTO_USER_API_*.
> 
> But there are some holdouts like iwd (iNet wireless daemon) that are
> keeping general-purpose Linux distros from being able to disable it.
> 
> It may also be time for a sysctl that allows restricting it to root, or
> only to certain algorithms, etc.  There is zero reason for "authencesn"
> (which the exploit uses) to be accessible, for example.

For what it's worth, there's now a statement from the author of both
algif_aead and commit 72548b093ee38a6d which introduced this bug:
https://www.chronox.de/#comment-of-bug-cve-2026-31431
Sounds like even he doesn't think AF_ALG is a good idea anymore.

The maintainer of AF_ALG has also accepted a patch
(https://lore.kernel.org/linux-crypto/20260430011544.31823-1-ebiggers@kernel.org/)
which marks it as deprecated.

I also sent a patch that removes AF_ALG's zero-copy support
(https://lore.kernel.org/linux-crypto/20260504225328.25356-1-ebiggers@kernel.org/).
That would have prevented this vulnerability.

An algorithm allowlist probably will come next.  I determined the list
of algorithms that iwd uses, for example
(https://lore.kernel.org/linux-crypto/20260504045007.GA2289@sol/).  Of
course, as expected, it doesn't include "authencesn"...

I think there are lessons here for other kernel UAPIs.  Zero-copy
support in particular is really dangerous, as by design it allows, for
example, pagecache pages of the 'su' binary to be passed to a large body
of kernel code that needs to be super careful not to write to it.

While zero-copy support probably can't go away in performance-critical
networking and file I/O code, there may be other rarely used or
deprecated UAPIs from which it can be feasibly removed.

Nor is it a good idea for UAPIs to "automatically" expose large amounts
of functionality to userspace unnecessarily, especially things that
could be done in userspace, like math computations.  Hardly a new
insight, of course; syzbot has always loved UAPIs like these.  But it's
worth repeating.  UAPIs should be specific, minimal, do things only the
kernel can do, *and* also be useful enough to be worth the price.

- Eric
