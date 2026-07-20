X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/2
Message-ID: <al5PN7O8Qh2fRoOy@DESKTOP-19IMU7U.localdomain>
Date: Tue, 21 Jul 2026 01:39:19 +0900
From: Wongi Lee <qw3rtyp0@...il.com>
To: oss-security@...ts.openwall.com
Cc: Jungwoo Lee <jwlee2217@...il.com>, Sultan Alsawaf <sultan@...neltoast.com>
Subject: CVE-2026-53362, CVE-2026-53366: OOB write in UDP MSG_SPLICE_PAGES fragment-boundary handling in Linux kernel
Content-Type: text/plain; charset=utf-8

Hello,

We are disclosing a heap out-of-bounds write in the Linux kernel UDP
corking path, reachable by a local unprivileged user when a corked
datagram crosses a fragment boundary while MSG_SPLICE_PAGES is set
(e.g. splice() from a pipe into a UDP socket under UDP_CORK). It
produces a controlled 15-byte OOB write into skb_shared_info and is
exploitable for LPE.

  CVE-2026-53362  IPv6 (CONFIG_IPV6=y), UDPv6 path
  CVE-2026-53366  IPv4, same root cause on the UDP path

Impact
------
LPE. The IPv6 variant needs CONFIG_IPV6=y. IPv4 needs USERNS.
Affected from v6.1.

Root cause
----------
When a corked UDP datagram crosses a fragment boundary,
__ip6_append_data() (and its IPv4 twin) count the bytes past the
boundary in the previous skb as "fraggap" and move them into the
linear area of the next skb. On the paged (MSG_SPLICE_PAGES) branch
the fraggap bytes are added to datalen/pagedlen but NOT to the linear
allocation (alloclen). The resulting negative "copy" is only rejected
when MSG_SPLICE_PAGES is unset, so the check is skipped, and the
kernel does a real linear copy of the fraggap bytes past the end of
the data area -- straight into skb_shared_info.

  datalen  = length + fraggap;
  ...
  alloclen = fragheaderlen + transhdrlen;            /* fraggap missing */
  pagedlen = datalen - transhdrlen;                  /* includes fraggap */
  ...
  copy = datalen - transhdrlen - fraggap - pagedlen; /* = -fraggap */
  if (copy < 0 && !(flags & MSG_SPLICE_PAGES))       /* check skipped */
          goto error;

With a 15-byte overwrite an attacker sets nr_frags in skb_shared_info,
turning a stale frags[0] left over from a prior allocation into an
"allocated" fragment. 

Affected versions
-----------------
The flawed fraggap accounting was introduced by 773ba4fe9104. The
current MSG_SPLICE_PAGES corruption became reachable after
ce650a166335. Mainline and stable trees prior to the fixes below are
affected.

Fixes
-----
IPv6: 736b380e28d0
      https://git.kernel.org/linus/736b380e28d0
IPv4: eca856950f7c
      https://git.kernel.org/linus/eca856950f7c

Both fixes add fraggap to alloclen and subtract it from pagedlen, and
remove the MSG_SPLICE_PAGES exception from the negative-copy check.

Credit
------
Found by @physicube and @qwerty (Wongi Lee). Thanks to Sultan Alsawaf
(CIQ) for confirming that the IPv4 variant is exploitable.

Regards,
Wongi Lee
