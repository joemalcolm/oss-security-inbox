X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/5
Message-ID: <CAH+3ta4aLo9vfn9a+ER4iLy_hgpuJDXy0YziEodsotaVtHJofg@mail.gmail.com>
Date: Tue, 29 Sep 2026 16:00:52 +0900
From: Jinu Kim <kimjw04271234@...il.com>
To: oss-security@...ts.openwall.com
Subject: Linux KVM/x86 (tested on 6.1.74): guest-triggered host panic via SMM shadow MMU
Content-Type: text/plain; charset=utf-8

Hello,

I found a guest-triggerable host-kernel panic in KVM's x86 shadow MMU. I
reproduced it on Linux 6.1.74 and on pre-fix mainline. An attacker with
kernel-level control of an L1 guest can reach it; my reproducer uses nested
VMX/EPT, Q35 SMM, and two vCPUs.

Q35 compatibility SMRAM lets the normal and SMM KVM address spaces access
the same backing guest page. KVM write-tracks a nested-EPT page directory
in its normal-address-space memslot. On a write through SMM,
mmu_try_to_unsync_pages() checks only the SMM memslot for write tracking,
but then searches the VM-wide shadow-page hash. It consequently marks the
normal address space's level-2 shadow page unsync, although the sync path
expects unsync pages to be level 1.

The reproducer shadows the EPT directory in the normal address space,
changes an entry through an SMI handler in SMM, and reuses the directory
under another EPT root. When KVM later synchronizes that upper-level shadow
page, it treats a non-leaf SPTE as a leaf. drop_spte() takes the leaf
reverse-map removal path, and pte_list_remove() executes BUG() because
that reverse map does not own the SPTE. On the tested 6.1.74 host this
ends in a fatal kernel panic:

    WARNING: mmu_try_to_unsync_pages
    WARNING: ept_sync_page
    RIP: pte_list_remove
    Kernel panic - not syncing: Fatal exception

The bug was introduced by commit 699023e23965 ("KVM: x86: add SMM to the
MMU role, support SMRAM address space"). Upstream commit 0f38453cdb2e
checks write tracking in both x86 address spaces and is included in
v7.2. The adapted 6.1.y backport is commit 09aa68552d25, included
in v6.1.187. The companion upstream commit 2e8a2c1b0306 fixes a newer
hugepage fast-path check; that fast path is not present in 6.1.74.

Upstream fix:
https://github.com/torvalds/linux/commit/0f38453cdb2e17566ccb7c0f3dabd5bd21caca26

6.1.y backport:
https://github.com/gregkh/linux/commit/09aa68552d2542cc6c23edd1568ac265dc5d886f

Regards,
Jinu Kim
