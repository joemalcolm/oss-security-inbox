X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/19/1
Message-ID: <CAH+3ta4gn4EStEPJnSbBFPjY5CbRpA7gx7fdk6vgjp1h2-_XNw@mail.gmail.com>
Date: Mon, 19 Oct 2026 15:54:08 +0900
From: Jinu Kim <kimjw04271234@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux KVM/x86: stale SMM MMIO cache bypasses write tracking
Content-Type: text/plain; charset=utf-8

Hello,

I found a guest-triggerable write-tracking bypass in KVM/x86's per-vCPU
MMIO cache. On pre-fix mainline, a KVM selftest reproduces a tracked RAM
write misreported as KVM_EXIT_MMIO and the WARN_ON_ONCE() in
kvm_mmu_write_protect_fault(). A VMM completing such an exit against RAM
can modify the backing page without KVM write tracking.

KVM has separate normal and SMM memslot address spaces. The MMIO cache
fill and validity checks, vcpu_cache_mmio_info() and
vcpu_match_mmio_gen(), used kvm_memslots(vcpu->kvm), which selects the
normal address space's generation even when the vCPU is using the SMM
address space. An SMM memslot update can therefore leave an old SMM
cache entry valid after the guest returns from SMM. If the backing page
holds a nested EPT table, the untracked write can leave KVM using shadow
translations built from the table's old contents.

On Linux 6.1.74, before later shadow-MMU hardening, this same cache
bug enabled guest-to-host code execution. A stale MMIO cache entry
turned an L1 guest's write to a tracked EPT12 page into an MMIO
completion, so KVM missed the page-table change. The resulting stale
shadow translations were used to obtain arbitrary host memory read and
write and execute code in the host kernel. I reproduced this with
nested VMX/EPT and Q35 SMM under kernel-level control of the L1 guest.

The bug was introduced when commit 699023e23965 added the SMM address
space without making these cache checks use its memslots. Upstream commit
b3e6212dea2e4328a841ceb37f377583176dc735 fixes both checks to use
the vCPU's active memslots. The fix is included in Linux v7.3.

Upstream fix:
https://github.com/torvalds/linux/commit/b3e6212dea2e4328a841ceb37f377583176dc735

Regards,
Jinu Kim
