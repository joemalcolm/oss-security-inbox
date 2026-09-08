X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/1
Message-ID: <c5ae84ca-f7f2-41a2-b0e2-db32ebcba76b@nebusec.ai>
Date: Mon, 7 Sep 2026 20:29:16 -0700
From: Yuan Tan <yuant@...usec.ai>
To: oss-security@...ts.openwall.com
Subject: Linux kernel LPEs: ZcopyReaper (CVE-2026-43502) and 20 more
Content-Type: text/plain; charset=utf-8

Hi all,

We found a Linux kernel local privilege escalation vulnerability in the
RDS zerocopy send path, tracked as CVE-2026-43502. We call the exploit
ZcopyReaper.

The vulnerability was introduced in Linux v4.17 and fixed by commit
44b550d88b26. The first mainline release containing the fix was Linux
v7.1-rc3.

We successfully demonstrated local privilege escalation on an openSUSE
system running Linux kernel 6.4.0-150600.23.100.

An unprivileged local user can trigger the vulnerability. The minimal
kernel configuration required to reach the vulnerable path is:

  CONFIG_INET=y
  CONFIG_AIO=y
  CONFIG_RDS=y or m
  CONFIG_RDS_TCP=y or m

When RDS is built as modules, rds.ko and rds_tcp.ko must either be
loaded or be available for automatic loading.

No Linux capabilities are required. CONFIG_USER_NS is not required.
Disabling unprivileged user namespace creation does not mitigate the
vulnerability.


In addition to CVE-2026-43502, there are 20 other Linux bugs that have
been confirmed to be exploitable, with public exploits available:

CVE-2026-80714
CVE-2026-74597
CVE-2026-74581
CVE-2026-74480
CVE-2026-72255
CVE-2026-72137
CVE-2026-68376
CVE-2026-68162
CVE-2026-64560 
CVE-2026-63834
CVE-2026-52933
CVE-2026-52929
CVE-2026-52924 
CVE-2026-52923
CVE-2026-52912
CVE-2026-43502
CVE-2026-43501
CVE-2026-43074 
CVE-2026-43042
CVE-2026-31678
CVE-2026-31659
CVE-2026-23274

These vulnerabilities were identified and exploited by NebuSec's
automatic exploit generation pipeline. The exploits are available at:
https://github.com/NebuSec/CyberMeowfia/blob/main/security-research
