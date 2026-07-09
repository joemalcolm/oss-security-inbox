X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/09/1
Message-ID: <20260709040200.GA30802@openwall.com>
Date: Thu, 9 Jul 2026 06:02:00 +0200
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Cc: "Dr. Thomas Orgis" <thomas.orgis@...-hamburg.de>
Subject: Re: Linux: GhostLock / CVE-2026-43499 / stack-UAF and LPE in kernels 2.6.39 till 7.1
Content-Type: text/plain; charset=utf-8

On Wed, Jul 08, 2026 at 10:41:29PM +0200, Dr. Thomas Orgis wrote:
> as I did not see it mentioned on this list yet, there seems to be yet
> another serioys LPE or at least DoS for the Linux kernel, dubbed
> GhostLock and assigned CVE-2026-43499:
> 
> 	https://nebusec.ai/research/ionstack-part-2/

Right, and since futex is core functionality there's no good mitigation.

Other recent futex bugs CVE-2026-23415, CVE-2026-31554, CVE-2026-52973
have same CVSS 7.8 per kernel CNA as GhostLock CVE-2026-43499.  I don't
know if they're actually just as bad or hopefully not, but they may be.
At least one of them had a little bit of publicity back in April via:

https://mtlynch.io/claude-code-found-linux-vulnerability/

It's number 3 out of 5 bugs listed in one of the sections of that post:

 3. futex: Require sys_futex_requeue() to have identical flags

which became CVE-2026-31554.

Out of these 3 other CVEs, Red Hat currently recognizes Integrity impact
only for CVE-2026-52973.  The other two maybe actually don't have such
impact, or maybe are currently underestimated.  Also, per upstream vulns
repo they're kernel 6.7+ to 6.17+ (varies by CVE), yet are recognized as
affecting RHEL 7+ or 9+ (varies by CVE), suggesting the underlying bugs
may have been backported.

> As I'd have hoped to get an alert via this list, I figured a notice is
> in order.

Yes, thank you!

> Or do we give up to keep track of the stream of serious Linux
> kernel flaws? :-/

That depends on what "serious" means.  In practice, proof or at least
expectation of exploitability matters.  Otherwise it'd be way too many.

Alexander
