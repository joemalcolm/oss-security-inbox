X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/03/1
Message-ID: <1d41266d-4a41-46c1-91f7-0c91e7a80d0c@gmail.com>
Date: Thu, 3 Sep 2026 18:57:53 +0800
From: Lin Jiapeng <ljp1205831794@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80530: Linux XFS EXCHANGE_RANGE reflink flag clearing leading to local privilege escalation
Content-Type: text/plain; charset=utf-8

Hi all,

We are publishing details of XFSTango (CVE-2026-80530), a local
privilege escalation vulnerability in the Linux kernel's XFS
filesystem, caused by an inconsistent reflink-flag clearing path in
XFS_IOC_EXCHANGE_RANGE.

Impact:
--------
- An unprivileged local user can, without requiring any elevated
   privilege, arbitrarily overwrite the on-disk contents of any
   readable file (e.g. /etc/passwd, root-owned setuid binaries),
   leading to local privilege escalation to root.

Bug:
--------
A flaw was found in the Linux kernel's XFS filesystem. When performing
file range exchanges with the XFS_EXCHMAPS_INO1_WRITTEN flag set, the
reflink flag can be prematurely cleared from an inode that still
manages shared written data. This can lead to data corruption between
files that share data through the reflink mechanism, as subsequent
writes may bypass Copy-on-Write (CoW) protection.

CVSS assessment
---------------
CVSS v3.1 Base Score: 7.1 (High)
Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N
Calculator:
https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:N 


The trigger is deterministic and requires only local access with low
privileges and no user interaction; successful exploitation yields
root on affected systems.

Fix
---
The flag-exchange decision underlying the flaw was introduced by
upstream commit 966ceafc7a43 ("xfs: create deferred log items for file
mapping exchanges"), first present in v6.10.

Fixed upstream by commit b2d5a81dae385333f9734910277fbf94c78bd17f:
https://git.kernel.org/linus/b2d5a81dae385333f9734910277fbf94c78bd17f

Exploit chain outline
---------------------
The completed chain:

     ATTACKER (uid=1000)               KERNEL (XFS)
             |                              |
   FICLONE /etc/passwd -> mydir/copy        |   copy == passwd on disk:
             |----------------------------->|   shared block, both
             |                              |   flagged REFLINK
             |                              |
   ftruncate(sparse, same size)             |
             |                              |
   EXCHANGE_RANGE(sparse<->copy,            |
       FILE1_WRITTEN lie)                   |
             |----------------------------->| 0 blocks exchanged, yet
             |                              | post-op clears copy's
             |                              | REFLINK flag (no recheck)
             |                              |
   pwrite(copy, uid=0 line) + fsync         |
             |----------------------------->| CoW gate lost -> write
             |                              | IN PLACE on shared block:
             |                              | /etc/passwd DISK bytes
             |                              | now carry the uid=0 line
             |                              |
   posix_fadvise(passwd, DONTNEED)          |
             |----------------------------->| stale page cache dropped
             |                              |
       su - r00t                            |
             |----------------------------->| PAM reads DISK (passwd)
             |                              | -> authenticates uid=0
             |                              | account from tampered
             |                              | file -> attacker is root
         uid=0(root)

In short: an unprivileged attacker clones a readable target (e.g.
/etc/passwd) with FICLONE so both files share written extents, creates
a fully sparse file1 of the same size, and lies with the
FILE1_WRITTEN flag on an EXCHANGE_RANGE request. Every mapping pair is
skipped, so no blocks actually move, yet the scheduled post-operation
cleanup clears file2's reflink flag without re-scanning for shared
extents. Writes to file2 then bypass CoW and land directly on the
physical blocks shared with the victim, silently rewriting the target
file on disk; after the stale page cache is dropped with
posix_fadvise, su or execve reads the tampered contents and grants
root.

Tested distros
--------------
The following distributions were tested and confirmed vulnerable :

- RHEL 10 / Rocky Linux 10 (with the exchange feature enabled)
- Ubuntu 25.04+ (with the exchange feature enabled)
- SLES 16.1 (with the exchange feature enabled)
- Debian 13 (with the exchange feature enabled)
- Amazon Linux 2023 (with the exchange feature enabled)
- Oracle Linux 10 / UEK8 (with the exchange feature enabled)
- CloudLinux 10 (with the exchange feature enabled)

Am I affected?
--------------
Kernels v6.10 and later without the fix, on XFS filesystems that have
reflink enabled (default since xfsprogs 5.1) and the exchange_range
incompat feature bit (0x40) enabled. exchange_range is an experimental
feature, off by default, and must be enabled explicitly.

Mitigation
----------
1. Apply the upstream patch or update the system into the fixed
    kernel.
2. If patching is not available, back up the partition data and
    recreate the filesystem without the exchange feature
    (i.e. "mkfs.xfs" without "-i exchange=1"), then restore the data.

Kernels before v6.10 do not contain the vulnerable code path.

References
----------
PoC:
https://github.com/corvusaisec/security-research/tree/main/pocs/linux/cve-2026-80530 


CVE record:
https://www.cve.org/CVERecord?id=CVE-2026-80530

Fix commit:
https://git.kernel.org/linus/b2d5a81dae385333f9734910277fbf94c78bd17f

Corvus AI assisted with source analysis, reproduction, exploit
development, and cross-platform validation.

Regards,
Lin Jiapeng
TencentOS Security Team (Wukong Code Security Team)
