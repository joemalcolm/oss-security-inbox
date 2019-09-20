X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/20/1
Message-ID: <nycvar.YSQ.7.76.1909201557410.24344@xnncv>
Date: Fri, 20 Sep 2019 16:02:32 +0530 (IST)
From: P J P <ppandit@...hat.com>
To: oss security list <oss-security@...ts.openwall.com>
cc: Matt Delco <delco@...omium.org>
Subject: CVE-2019-14821 Kernel: KVM: OOB memory access via mmio ring buffer
Content-Type: text/plain; charset=utf-8

   Hello,

An out-of-bounds access issue was found in the way Linux kernel's KVM 
hypervisor implements Coalesced MMIO write operation. It operates on a MMIO 
ring buffer 'struct kvm_coalesced_mmio' object, wherein write indices 
'ring->first' and 'ring->last' value could be supplied by a host user-space 
process.

An unprivileged host user/process with access to '/dev/kvm' device could use 
this flaw to crash the host kernel resulting in DoS OR potentially escalate 
privileges on the system.

Upstream patch:
---------------
   -> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=b60fe990c6b07ef6d4df67bc0530c7c90a62623a

This issue was reported by Matt Delco of Google Inc.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
