X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/9
Message-ID: <6mqqzqzujeduybqeojfh7tmblksmqjksocri5ayeudze6l4fqm@ijx64jfxrwbt>
Date: Wed, 29 Jul 2026 18:31:11 -0700
From: Pawan Gupta <pawan.kumar.gupta@...ux.intel.com>
To: Jose R Rodriguez <jose.r.r@...ztli.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: Backports available - cBPF JIT spray hardening
Content-Type: text/plain; charset=utf-8

On Wed, Jul 29, 2026 at 05:15:46PM -0700, Jose R Rodriguez wrote:
> On 2026-07-29 13:04, Pawan Gupta wrote:
> > Hi All,
> > 
> > This is an inform distro maintainers about recently upstreamed hardening
> > against speculative execution attacks using BPF JIT spraying.
> > 
> > The backports are available here:
> > 
> >   6.1  - https://lore.kernel.org/all/20260727-cbpf-jit-spray-hardening-6-1-y-v1-0-eb80dcf1eb6e@linux.intel.com
> >   6.6  - https://lore.kernel.org/all/20260717-cbpf-jit-spray-hardening-6-6-y-v1-0-e04f1b2893de@linux.intel.com
> >   6.12 - https://lore.kernel.org/all/20260715-cbpf-jit-spray-hardening-6-12-y-v1-0-d8585a9aed80@linux.intel.com
> >   6.18 - https://lore.kernel.org/all/20260713-cbpf-jit-spray-hardening-6-18-y-v1-0-755f60c55705@linux.intel.com
> >   7.1  - https://lore.kernel.org/all/20260709-cbpf-jit-spray-hardening-7-1-y-v1-0-5ac5a2d6797f@linux.intel.com
> > 
> > 6.1 backport is queued. Others are part of LTS kernels.
> > 
> > 5.15 and older do not support pack allocator for BPF on which the
> > hardening
> > is based on. So the series is not directly applicable to 5.15 and older,
> > and may need custom hardening patches.
> 
> Any patches out there for kernel 5.17.15? Thanks in advance!

Pack allocator was first introduced in 5.18 by commit:

  57631054fae6 ("bpf: Introduce bpf_prog_pack allocator")

This means that 5.17 is in the same boat as 5.15, it does not support BPF
pack allocator, and these hardening patches dont apply.

Pack allocator makes the JIT spraying attacks easier, but this doesn't mean
that kernels withouth it are immune to such attacks. This needs a fresh
assessment and possibly a different hardening approach.

BTW, I am confused by the choice of distro kernel 5.17 which is not an LTS
kernel.

Thanks,
Pawan
