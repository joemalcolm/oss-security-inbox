X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/7
Message-ID: <ae11482f-c6e4-4213-acff-d4fdf0ed4324@redhat.com>
Date: Wed, 14 Oct 2026 17:00:24 +0200
From: Maxime Coquelin <maxime.coquelin@...hat.com>
To: announce@...k.org, oss-security@...ts.openwall.com
Cc: dev@...k.org, stable@...k.org
Subject: DPDK security advisory: Multiple vulnerabilities in vhost/vhost-crypto/vDPA/GSO libraries
Content-Type: text/plain; charset=utf-8

Multiple vulnerabilities were fixed in DPDK.
Downstream stakeholders were warned in advance in order to coordinate 
the release of fixes and reduce the vulnerability window.

A malicious guest can exploit various memory safety issues in the DPDK 
vhost, vhost-crypto, vDPA, and GSO libraries to cause host crashes, 
denial of service, or potential memory corruption.
Some of these vulnerabilities affect the vhost-user boundary and can be 
triggered by a malicious VM.

Fixed in DPDK 23.11.8, 24.11.8, 25.11.4 LTS releases and main branch.

---

CVE-2026-86848 / CVE-2026-86846
Summary: vhost-crypto TOCTOU out-of-bounds write in finalize path
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2001
            https://bugs.dpdk.org/show_bug.cgi?id=2026
CVSS 3.1: 8.8 (High)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H
Note: CVE-2026-86846 is a duplicate issue with avail ring index, fixed 
in same patch.

---

CVE-2026-86561
Summary: Missing memory size validation before mmap in vhost memory 
region setup
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2002
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H

---

CVE-2026-86562
Summary: Double-fetch leading to heap buffer overflow in 
virtio_net_ctrl_pop (VDUSE)
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2003
            https://bugs.dpdk.org/show_bug.cgi?id=2021
CVSS 3.1: 7.8 (High)
CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H

---

CVE-2026-86563
Summary: Double offset bug in vhost log mapping calculation
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2004
CVSS 3.1: 7.8 (High)
CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/A:H

---

CVE-2026-86567
Summary: VDUSE vring stale pointer rebinding (use-after-unmap)
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2029
CVSS 3.1: 8.8 (High)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H

---

CVE-2026-86566
Summary: Copy length underflow in vhost enqueue (mbuf_to_desc)
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2020
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H

---

CVE-2026-86849
Summary: Integer overflow and missing validation in vhost-crypto request 
handling
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2022
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H


---

CVE-2026-86845
Summary: Use-after-free and type confusion in vhost-crypto session handling
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2028
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H


---

CVE-2026-86847
Summary: Infinite cleanup loop in vhost-crypto writeback chain
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2023
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H


---

CVE-2026-86856
Summary: Stack and heap buffer overflow in nfp vDPA driver
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2027
CVSS 3.1: 6.5 (Medium)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:N/A:H


---

CVE-2026-86564
Summary: Out-of-bounds heap read in vhost control virtqueue handler
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2007
CVSS 3.1: 3.3 (Low)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:L


---

CVE-2026-86565
Summary: Split-ring inflight descriptor table overflow
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2008
CVSS 3.1: 8.8 (High)
CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H/A:H


---

CVE-2026-93683
Summary: Indirect descriptor table double-fetch (TOCTOU)
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2046
CVSS 3.1: 6.4 (Medium)
CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:N/A:L


---

CVE-2026-100236
Summary: GSO library heap out-of-bounds read/write with small mbuf pools
Bugzilla: https://bugs.dpdk.org/show_bug.cgi?id=2047
CVSS 3.1: 8.6 (High)
CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L/A:H

---

Acknowledgments:

The DPDK project thanks the following security researchers for 
responsibly reporting these vulnerabilities:

- Adiel Sol (Dream Group) - CVE-2026-86848
- Ivar Al-Safawi - CVE-2026-86561, CVE-2026-86562, CVE-2026-86563, 
CVE-2026-86567
- Jia Jia - CVE-2026-86565
- Arthur Chan (Adalogics) - CVE-2026-86566, CVE-2026-86849, 
CVE-2026-86845, CVE-2026-86846, CVE-2026-86847, CVE-2026-86856
- syber steve - CVE-2026-86564
- Naseeb Dangi and Xiang Li from AOSP Lab aty Nankai Universit - 
CVE-2026-93683

---

For more information on DPDK security, see:
https://doc.dpdk.org/guides/contributing/vulnerability.html


