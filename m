X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/15
Message-ID: <20260722192024.GA10777@openwall.com>
Date: Wed, 22 Jul 2026 21:20:24 +0200
From: Solar Designer <solar@...nwall.com>
To: Wongi Lee <qw3rtyp0@...il.com>
Cc: oss-security@...ts.openwall.com, Jungwoo Lee <jwlee2217@...il.com>, Sultan Alsawaf <sultan@...neltoast.com>
Subject: Re: CVE-2026-53362, CVE-2026-53366: OOB write in UDP MSG_SPLICE_PAGES fragment-boundary handling in Linux kernel
Content-Type: text/plain; charset=utf-8

Hello Wongi and all,

On Tue, Jul 21, 2026 at 01:39:19AM +0900, Wongi Lee wrote:
> We are disclosing a heap out-of-bounds write in the Linux kernel UDP
> corking path, reachable by a local unprivileged user when a corked
> datagram crosses a fragment boundary while MSG_SPLICE_PAGES is set
> (e.g. splice() from a pipe into a UDP socket under UDP_CORK). It
> produces a controlled 15-byte OOB write into skb_shared_info and is
> exploitable for LPE.
> 
>   CVE-2026-53362  IPv6 (CONFIG_IPV6=y), UDPv6 path
>   CVE-2026-53366  IPv4, same root cause on the UDP path
> 
> Impact
> ------
> LPE. The IPv6 variant needs CONFIG_IPV6=y. IPv4 needs USERNS.
> Affected from v6.1.

Thank you for handling this disclosure so well, including a heads-up to
distros.  I see you also have a blog post with even more detail:

https://blog.qwerty.or.kr/en/posts/cdf3008a-c1a4-4eca-a373-aa3a2bcf1489/

and you've published your IPv6 exploit:

https://github.com/qwerty-po/security-research/tree/cve-2026-53362
https://github.com/google/security-research/pull/410

There was also a third-party IPv6 exploit published earlier:

https://github.com/sgkdev/ipv6_frag_escape

> Credit
> ------
> Found by @physicube and @qwerty (Wongi Lee). Thanks to Sultan Alsawaf
> (CIQ) for confirming that the IPv4 variant is exploitable.

Although both fixes were made roughly at the same time quite a while
ago, it was a more recent finding that the IPv4 variant is also an
exploitable vulnerability, and very recent assignment of the second CVE.
So distros doing their own backports could want to check they got both
fixes.  I checked that RHEL 10 did.

Alexander
