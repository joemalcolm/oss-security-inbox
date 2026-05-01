Received: (qmail 32074 invoked by uid 550); 1 May 2026 18:04:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20470 invoked from network); 1 May 2026 18:01:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777658506;
	bh=8d2xX5AjQncZ0ScZMo5QM41WVl9RHLDJDhi5eU0AKkM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V7E0krEemfO58kK6wjB9zDxy/bM1yRn0sNjHL4EPuJ7U0qiZLxWXcgK3FKLGxccs0
	 scRR0mI5coJ3hYBAYx3aRCQMvnFuIpm1v1qrM/1kT9CX4+DVG8BPEVALt5jgCyd+1V
	 NPPI7HRiUltfsM9DR0E6VtfdFwOZ5EXMg/ELWt427Tcg3HHgXZKJahJZR+0+xp4RHN
	 voec4RECBCRVhgYdkXFerF48EUO8mW8AtgEvga9ArO7IB0fT7/p9iiUORGAEq2eeUp
	 PshAm5ZPjl3oVfyihfleF7V15Pp7XJRwejaoZj/6EWs+ls6U9eCQedAA7O5ACb7gqM
	 1UMSPNZiaWglg==
Date: Fri, 1 May 2026 11:00:28 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Demi Marie Obenour <demiobenour@gmail.com>
Cc: oss-security@lists.openwall.com,
	Jan Schaumann <jschauma@netmeister.org>
Message-ID: <20260501180028.GA2260@sol>
References: <afJorKIje4O6dXbH@netmeister.org>
 <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol>
 <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege
 scalation

On Fri, May 01, 2026 at 11:30:17AM -0400, Demi Marie Obenour wrote:
> > But I also hope this finally provides some more impetus for AF_ALG to be
> > deprecated and removed.  It's a massive, largely pointless attack
> > surface which has been causing problems, including regular CVEs, ever
> > since it was added to the kernel in 2010.  And of course it's gotten
> > even worse lately, with LLMs now being able to find the bugs.
> > 
> > Userspace crypto libraries exist.  There's no need to escalate to kernel
> > mode just to do some math.
> 
> The only reason I can think of to keep it is for embedded systems
> with weak CPUs and crypto accelerators that are actually worth using.
> However, those seem to be very rare outside of things like routers,
> which run specialized distros like OpenWRT.  Even when the accelerator
> exists and is worth using, AF_ALG is certainly not an efficient way
> to access it.
> 
> Furthermore, an inline encryption engine in the NIC would be a much
> better choice for future router designs.  AF_ALG doesn't work with
> that at all.

All correct, of course.

The main other claimed benefit of AF_ALG (and the similar KEYCTL_PKEY_*)
that sometimes gets mentioned is, ironically, a security one: keys can
be kept out of a particular userspace processes's address space.

But:

- Different userspace processes have different address spaces too.  So
  it already can be, and indeed often already is, done in userspace.

- This security benefit is kind of besides the point when the interface
  has a privilege escalation bug every few months.

- The kernel often doesn't support the algorithm needed, or if it does,
  some of them just aren't as well maintained as userspace libraries
  like OpenSSL and BoringSSL.  For example, the kernel's RSA
  signing/decryption code is vulnerable to timing side-channels.

(I'd like to specifically call out
https://blog.cloudflare.com/the-linux-kernel-key-retention-service-and-why-you-should-use-it-in-your-next-application/
as being misleading and harmful.  It says to use the kernel for RSA
private key operations.  But it fails to mention the kernel's RSA
implementation being vulnerable to timing side-channels or the steady
stream of vulnerabilities in the associated UAPIs.)

> > On Linux systems with no programs that use AF_ALG, it can already be
> > disabled in the kconfig by unsetting CONFIG_CRYPTO_USER_API_*.
> > 
> > But there are some holdouts like iwd (iNet wireless daemon) that are
> > keeping general-purpose Linux distros from being able to disable it.
> 
> If AF_ALG was removed from the kernel, that would provide an incentive
> for someone to patch iwd to use a userspace library instead.  Or if
> iwd is unmaintained, it (sadly) needs to be removed from distros.
> (Sadly because wpa-supplicant is much less well designed.)

Where iwd is used, AF_ALG can't just be removed from the kernel
unilaterally.  People would complain that iwd is broken and invoke the
"no regressions" rule.  While only a few programs use it (iwd, bluez,
cryptsetup with certain options), they are enough for this to happen.

We do remove algorithms from AF_ALG occasionally, but we've been unable
to remove ones like MD4 (yes, that MD4) that are still used by iwd:
https://lore.kernel.org/linux-crypto/946591db-36aa-23db-a5c4-808546eab762@gmail.com/
Likewise with removing support for SHA-1 from KEYCTL_PKEY_*
(https://lore.kernel.org/linux-crypto/f0492c92-1015-48e3-bfce-598c7a4843d1@quicinc.com/).
People even post the Linus quote "we simply do not break user space".

Unfortunately, the developers and users of this small set of userspace
programs are disconnected from the extraordinary amount of time and
effort that the rest of the Linux community is putting in to maintain
these UAPIs and respond to the continuous stream of vulnerabilities.

To them these are simply APIs available that work.

This is actually one of the reasons I've been making these public posts:
this needs to be a community effort to deprecate these UAPIs.

If the developers of these userspace programs aren't taking action yet,
people need to volunteer to go in and fix these programs.  Again, it's
actually a pretty small set of programs that even uses this stuff.

This would be really impactful to the security of Linux.

A lot of the discourse around this vulnerability has focused on the
things that went wrong with the patching.  It did go very badly, but I
feel it's also missing the point a bit.  AF_ALG and KEYCTL_PKEY_*
actually have a continuous stream of vulnerabilities, which has only
accelerated in the era of LLMs.  Just in the last year there have been
at least 4 privilege escalations in AF_ALG, I think.  We need to fix the
root cause of why this is happening.

And I think it really can be fixed.  It's just a few programs that are
using these UAPIs.  Many systems already don't need them at all.

But people need to help.  Send patches to iwd, bluez, cryptsetup, etc.
that make them use userspace crypto libraries instead of AF_ALG and
KEYCTL_PKEY_*.  If the maintainers aren't convinced yet, then patch
downstream in your distro as a starting point (and disable the UAPIs in
your kernel).  Or help in other ways like writing blog posts that
promote attack surface reduction and the alternatives to these UAPIs.

I'd also like to explore some more incremental approaches, such as
making these UAPIs require CAP_SYS_ADMIN, possibly configurable by a
sysctl.  If anyone knows of anything important that would be broken by a
CAP_SYS_ADMIN requirement on AF_ALG and KEYCTL_PKEY_*, let me know.

I think there should also be an allowlist of algorithms, and the splice
support should be removed.  (Interestingly, there's precedent for
removing splice support from AF_ALG: it was already removed from the 6.1
LTS kernel last year, seemingly accidentally.  That's why the copy.fail
exploit didn't work on 6.1 but did work on other versions.)

- Eric
