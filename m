X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/16/36
Message-ID: <atJKE2-xaxxpko2X@v4bel>
Date: Sat, 17 Oct 2026 01:00:19 +0900
From: Hyunwoo Kim <imv4bel@...il.com>
To: oss-security@...ts.openwall.com
Cc: imv4bel@...il.com
Subject: Infinity Core: Linux Kernel Core LPEs
Content-Type: text/plain; charset=utf-8

Hi,

The embargo agreed with the linux-distros@...openwall.org maintainers has
expired, so I am posting this report.

This is a report on "Infinity Core", a collection of 6 vulnerabilities
found in the Timer, Signal, MM, Futex, Scheduler, and SLAB subsystems of the
Linux kernel.

These vulnerabilities can be exploited for Linux server LPE, container
escape, and Android LPE.

The vulnerabilities are summarized below.

===

CVE-2026-98260 (Timer)
This is a use-after-free caused by the interaction between an exec() failure
in a thread other than the process leader and POSIX CPU timer cleanup.

CVE-2026-98256 (Signal)
This is a sigqueue use-after-free caused by a race between exec() in a
nonleader thread and cleanup of a private pending signal queue.

CVE-2026-89754 (MM)
Retry state from the page table walker escapes into an upper level, causing
an out-of-bounds write to the temporary result buffer used by mincore().

CVE-2026-80775 (Futex)
This is a use-after-free caused when two tasks that share an mm_struct
through nested vfork() calls race to allocate the initial reference counter
for FUTEX_PRIVATE_HASH.

CVE-2026-98385 (Scheduler)
This is a use-after-free caused when scheduler cache accounting continues to
update per-CPU statistics belonging to a previously freed mm_struct. The
vulnerable path is reached when CONFIG_SCHED_CACHE is enabled, scheduler
cache is active at runtime, and the CPU topology contains multiple LLCs.

CVE-2026-97941 (SLAB)
This is a list corruption caused by a race between returning a freelist and
removing a slab from the node partial list during SLUB object refill. The
public trigger causes a kernel panic.

===

The vulnerabilities were introduced and fixed by the following upstream
commits.

CVE-2026-98260
Introduced: 55e8c8eb2c7b
Fixed: acb03d388181

CVE-2026-98256
Introduced: fb3bbcfe344e
Fixed: d2710c8d938a

CVE-2026-89754
Introduced: 3b89863c3fa4
Fixed: aedf2efd1897

CVE-2026-80775
Introduced: d9b05321e21e
Fixed: bde023808364

CVE-2026-98385
Introduced: df0d98475954
Fixed: 28f9c0e0a0b9, b636fef85bda

CVE-2026-97941
Introduced: ba7425312607
Fixed: 4a724bcf5d70

===

For detailed technical information and subsequent updates, please see:
https://github.com/V4bel/InfinityCore


Best regards,
Hyunwoo Kim
