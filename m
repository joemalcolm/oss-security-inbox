X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/3
Message-Id: <1C2E7D31-E6F2-483E-9218-9D78F0530A5B@gmail.com>
Date: Thu, 6 Aug 2026 19:33:31 +0800
From: Fourie Zhang <littleddfu@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-64564: Linux SCTP ASCONF transport UAF leading to local privilege escalation and container escape
Content-Type: text/plain; charset=utf-8

Hi all,

We are publishing details of SCTPhantom, CVE-2026-64564, a use-after-free
in Linux SCTP Dynamic Address Reconfiguration.

Impact:
- Local low-privileged user -> root on affected systems.
- Container -> host root.

Bug:
--------
In the Linux kernel's SCTP implementation, sctp_process_asconf() caches the
transport used to process an ASCONF chunk in asconf->transport. When
__sctp_rcv_asconf_lookup() locates the ASCONF through its Address Parameter,
the cached transport may differ from the transport associated with the
packet's source address. An attacker can supply an ordered ASCONF sequence:
a DEL-IP for a non-source address L first passes the D8 check and frees the
transport referenced by asconf->transport. A subsequent wildcard DEL-IP
(0.0.0.0) then reuses the dangling pointer in sctp_assoc_set_primary() and
sctp_assoc_del_nonprimary_peers(), triggering a use-after-free that can lead
to local privilege escalation or container escape.

CVSS assessment
---------------

CVSS v4.0 Base Score (CVSS-B): 8.5 (High)
Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:N
Calculator:
https://www.first.org/cvss/calculator/4.0#CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:H/VI:H/VA:H/SC:N/SI:N/SA:N

The trigger is deterministic. It requires local access with low
privileges and no user interaction. Successful exploitation provides
full kernel-level confidentiality, integrity, and availability impact.

Fix
---

The vulnerable sequence dates back to Linux 2.6.25 commit 42e30bf3463c:
https://git.kernel.org/linus/42e30bf3463cd37d73839376662cb79b4d5c416c

The mainline fix is 9b2854f86f0b:
https://git.kernel.org/linus/9b2854f86f0b56e9027d68e7a3fc909d1a9b566f

The first fixed versions listed by the Linux kernel CVE announcement are:

   6.6.148
   6.12.101
   6.18.42
   7.1.6
   7.2-rc5

Vendor kernels may carry a backport while retaining an older base version.

Tested distros
--------------------
Below is a summary of the tested distributions and kernels. Each target
reached root in the retained tests:

- Debian 13, 6.12.95+deb13-amd64
- Rocky Linux 9 / RHEL 9-family target, vendor 5.14 kernel (SCTP loaded)
- Ubuntu 24.04, 6.8.0-134-generic

The exploit was also validated on the Linux 7.2-rc2 research kernel.

References
----------

CVE record:
https://www.cve.org/CVERecord?id=CVE-2026-64564

Linux kernel CVE announcement:
https://lore.kernel.org/linux-cve-announce/2026080404-CVE-2026-64564-6762@gregkh/

Technical write-up:
https://matrix.tencent.com/en/2026/08/06/sctphantom-CVE-2026-64564

Corvus AI assisted with source analysis, reproduction, exploit
development, and cross-platform validation.

Regards,

Fourie Zhang
TencentOS Security Team ( Tencent Zhuque Lab )
