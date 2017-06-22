X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/22/3
Message-ID: <a6f98d7e-7cc4-46f4-3cb9-743950c90a86@redhat.com>
Date: Thu, 22 Jun 2017 12:19:35 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com, Daniel Micay <danielmicay@...il.com>, Qualys Security Advisory <qsa@...lys.com>
Subject: Re: Qualys Security Advisory - The Stack Clash
Content-Type: text/plain; charset=utf-8

On 06/22/2017 08:00 AM, Daniel Micay wrote:
> Is it planned to have glibc use a larger 1M gap for secondary stacks
> rather than a single guard page? That would be a *lot* easier than it
> was to set it up for the main thread stack. It follows the main thread
> stack rlimit as a guideline so it seems to make sense to use the same
> guard region size too. If it ends up exposed as a sysctl, it could read
> the current value from there.

On the glibc side, we are waiting for the kernel interface for the
configurable gap size to materialize upstream.

Thanks,
Florian
