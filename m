X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/31/5
Message-Id: <0J4SNT.N5MKB0NB35Z81@yandex.com>
Date: Sat, 31 Oct 2026 16:01:47 +0000
From: Rui Sousa <c3srm@...dex.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-98432: init_on_free=1 as an additional interim mitigation
Content-Type: text/plain; charset=utf-8

Hello,

An additional hardening option for CVE-2026-98432 (the IPv4 TCP inet_opt
use-after-free), for systems that cannot take a fixed kernel yet.

The interim mitigations published so far (for example AlmaLinux's, at
<https://almalinux.org/blog/2026-10-30-cve-2026-98432/>) are an nftables
rule dropping inbound TCP that carries IPv4 options and disabling MPTCP.
They do not mention the init_on_free=1 kernel boot parameter.

init_on_free=1 (mainline since 5.3) zeroes slab objects and pages when
they are freed. It does not fix this bug: the stale pointer is still
dereferenced. But a use-after-free read of the freed object then returns
zeroes instead of its previous contents, which narrows what an attacker
can learn through it.

It is off by default in the EL kernels we checked: AlmaLinux 9
(5.14.0-687.x.el9_8) and AlmaLinux 10 (6.12.0-211.x.el10_2) both ship
without CONFIG_INIT_ON_FREE_DEFAULT_ON. Enabling it:

    grubby --update-kernel=ALL --args="init_on_free=1"
    reboot
    grep -o init_on_free=1 /proc/cmdline

The commonly cited cost is roughly 1-5% on workloads heavy in memory
frees; measure on yours. We have it running alongside the nftables rule
on a handful of AlmaLinux 9 and 10 hosts with no problems so far.

It complements the packet filter (which can be bypassed by traffic
between containers on the same host) and is not a substitute for the
fixed kernel.

Regards,
Rui Sousa




