X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/19
Message-ID: <aqBzcUxtFU-ewErk@codewreck.org>
Date: Wed, 9 Sep 2026 05:43:29 +0900
From: Dominique Martinet <asmadeus@...ewreck.org>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel LPEs: ZcopyReaper (CVE-2026-43502) and 20 more
Content-Type: text/plain; charset=utf-8

Dr. Thomas Orgis wrote on Tue, Sep 08, 2026 at 06:52:03PM +0200:
> Do we need an LLM agent to dig through the reports and give a summary
> where the vulnerabilities lie and what the mitigation would be?

There are quite a few, but unlike the recent similar poc releases they
were nice enough to wait a bit, so a quick look through the kernel
vulns repo[1] will show that they're almost all fixed in most stable
kernels.

[1] https://git.kernel.org/pub/scm/linux/security/vulns.git/

Looking at cve/published/2026/*.mbox, for the last four you handpicked:

> === Linux-CVE-2026-43502-openSUSE-6.4.0-150600 ===

CVE-2026-43502: net/rds: handle zerocopy send cleanup before the message

introduced in 4.17, fixed in all stable trees

> === Linux-CVE-2026-52929-Ubuntu-7.0.0-28 ===

CVE-2026-52929: sctp: stream: fully roll back denied add-stream state

4.15+, also fixed

> === Linux-CVE-2026-52933-Fedora-6.19.10-300 ===

CVE-2026-52933: io_uring/poll: fix signed comparison in io_poll_get_ownership()

6.1+, also fixed

> === Linux-CVE-2026-72137-ubuntu-7.0.0-28 ===

CVE-2026-72137: xfrm: nat_keepalive: avoid double free on send error

6.11+, also fixed



FWIW, the ones that aren't fixed yet are:
- 'CVE-2026-72255: netfilter: nf_queue: pin bridge device while NFQUEUE
holds fake dst' was missing 5.10, someone already sent a patch

- 'CVE-2026-43042: mpls: add seqcount to protect the platform_label{,s}
pair' is missing 4.1(so 5.10) ~ 6.18 (only 6.19+ fixed); I tried backporting it
but that code changed too much, I'm not sure the Fixes commit was
correctly identified but conversely the prereqs added locks so one could
argue that older code was maybe even worse?
I'm not sure, but MPLS is low level network stuff and likely needs a net
namespace as your grep showed
(there are multiple mpls modules, this CVE apparently affects the
`mpls_router` module looking at which files the fix touched)

- 'CVE-2026-31678: openvswitch: defer tunnel netdev_put to RCU release'
is missing 4.3(5.10) ~ 6.0 (6.1+ fixed). OVS is disabled for our kernel
so I didn't look deeper but openvswitch is likely to be built as a
module and definitely needs network namespaces.



Cheers(?),
-- 
Dominique Martinet | Asmadeus
