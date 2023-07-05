Received: (qmail 21984 invoked by uid 550); 5 Jul 2023 12:18:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18034 invoked from network); 5 Jul 2023 12:12:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:MIME-Version:Content-Type:Content-Disposition:
	Content-Transfer-Encoding; bh=Tu7R//oNNBqj87xaSuciuljhVTLzRetkmq
	lU0i4ZlDA=; b=JuD9QIQCDEz5QdBusi8XL11Xsgj1MZda1zoFCNcz3BvTH+rjEJ
	LobIu3CTLec/9RRcvVdOPvMTqx1Pl2Hs2ggMW7ehnTr6QpFbcb+5xy1nS4n5tROl
	QLNyIpSs9psMiohfATQ+anpVhTT27Rx0VjIZja5anY3ZFAJQ/L34QAt4k=
Date: Wed, 5 Jul 2023 20:12:01 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: oss-security@lists.openwall.com
Cc: Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <xhhkp3aknwwlmrmmqmr532yfq3ioqh6jbkrxfqf6ovlj2szsai@f3sjwakyq323>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:54FpogBnb18RXqVkkT1dHQ--.27504S2
X-Coremail-Antispam: 1UD129KBjvJXoW3tF18Kw1fZFWUCF1kWFyUZFb_yoWDtw1DpF
	Z5KF13tw4DJ3Z293yktF48A34Fvws3JFWaqw1DG3s8C3W3Ga4SvrWIka4Yvas8uw4kW3Wa
	vF4UKw1qkw1UZ3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUBj1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AE
	w4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2
	IY67AKxVWDJVCq3wA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2
	z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s0DM2vYz4IE04k24V
	AvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
	McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
	v_Jr0_Gr1lF7xvr2IY64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkIecxEwVCm-wCF
	04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26w4UJr1UMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUXVWUAwCIccxYrVCIc48FwI0_Gr0_Xr1lIxkGc2Ij64vIr41lIxAIcVC0I7
	IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k2
	6cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxV
	AFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JUPhL8UUUUU=
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEDBVPy78VZtwAEsk
Subject: [oss-security] StackRot (CVE-2023-3269): Linux kernel privilege escalation
 vulnerability

Hi all,

**This serves as an "early" disclosure of the StackRot vulnerability, in
compliance with [the policy of the linux-distros list][po]. While all the
essential vulnerability details have been provided here, the complete exploit
code and a comprehensive write-up will be made publicly available no later than
the end of July. This oss-security thread will be notified, and any
updates will be reflected in [the GitHub repository][gh].**

 [po]: https://oss-security.openwall.org/wiki/mailing-lists/distros
 [gh]: https://github.com/lrh2000/StackRot

A flaw was found in the handling of stack expansion in the Linux kernel 6.1
through 6.4, aka "Stack Rot". The maple tree, responsible for managing virtual
memory areas, can undergo node replacement without properly acquiring the MM
write lock, leading to use-after-free issues. An unprivileged local user could
use this flaw to compromise the kernel and escalate their privileges.

As StackRot is a Linux kernel vulnerability found in the memory management
subsystem, it affects almost all kernel configurations and requires minimal
capabilities to trigger. However, it should be noted that maple nodes are freed
using RCU callbacks, delaying the actual memory deallocation until after the
RCU grace period. Consequently, exploiting this vulnerability is considered
challenging.

To the best of my knowledge, there are currently no publicly available exploits
targeting use-after-free-by-RCU (UAFBR) bugs. This marks the first instance
where UAFBR bugs have been proven to be exploitable, even without the presence
of CONFIG_PREEMPT or CONFIG_SLAB_MERGE_DEFAULT settings. Notably, this exploit
has been successfully demonstrated in the environment provided by [Google kCTF
VRP][ctf] ([bzImage_upstream_6.1.25][img], [config][cfg]).

 [ctf]: https://google.github.io/kctf/vrp.html
 [img]: https://storage.googleapis.com/kctf-vrp-public-files/bzImage_upstream_6.1.25
 [cfg]: https://storage.googleapis.com/kctf-vrp-public-files/bzImage_upstream_6.1.25_config

The StackRot vulnerability has been present in the Linux kernel since version
6.1 when the VMA tree structure was [changed][ch] from red-black trees to maple
trees.

 [ch]: https://lore.kernel.org/lkml/20220906194824.2110408-1-Liam.Howlett@oracle.com/

## Background

Whenever the `mmap()` system call is utilized to establish a memory mapping,
the kernel generates a structure called `vm_area_struct` to represent the
corresponding virtual memory area (VMA). This structure stores various
information including flags, properties, and other pertinent details related to
the mapping.

```c
struct vm_area_struct {
        long unsigned int          vm_start;             /*     0     8 */
        long unsigned int          vm_end;               /*     8     8 */
        struct mm_struct *         vm_mm;                /*    16     8 */
        pgprot_t                   vm_page_prot;         /*    24     8 */
        long unsigned int          vm_flags;             /*    32     8 */
        union {
                struct {
                        struct rb_node rb __attribute__((__aligned__(8))); /*    40    24 */
                        /* --- cacheline 1 boundary (64 bytes) --- */
                        long unsigned int rb_subtree_last; /*    64     8 */
                } __attribute__((__aligned__(8))) shared __attribute__((__aligned__(8))); /*    40    32 */
                struct anon_vma_name * anon_name;        /*    40     8 */
        } __attribute__((__aligned__(8)));               /*    40    32 */
        /* --- cacheline 1 boundary (64 bytes) was 8 bytes ago --- */
        struct list_head           anon_vma_chain;       /*    72    16 */
        struct anon_vma *          anon_vma;             /*    88     8 */
        const struct vm_operations_struct  * vm_ops;     /*    96     8 */
        long unsigned int          vm_pgoff;             /*   104     8 */
        struct file *              vm_file;              /*   112     8 */
        void *                     vm_private_data;      /*   120     8 */
        /* --- cacheline 2 boundary (128 bytes) --- */
        atomic_long_t              swap_readahead_info;  /*   128     8 */
        struct vm_userfaultfd_ctx  vm_userfaultfd_ctx;   /*   136     0 */

        /* size: 136, cachelines: 3, members: 14 */
        /* forced alignments: 1 */
        /* last cacheline: 8 bytes */
} __attribute__((__aligned__(8)));
```

Subsequently, when the kernel encounters page faults or other memory-related
system calls, it requires fast lookup of the VMA solely based on the address.
Previously, the VMAs were managed using red-black trees. However, starting from
Linux kernel version 6.1, the migration to maple trees took place. [Maple
trees][mt] are RCU-safe B-tree data structures optimized for storing
non-overlapping ranges. Nonetheless, their intricate nature adds complexity to
the codebase and introduces the StackRot vulnerability.

 [mt]: https://docs.kernel.org/6.4/core-api/maple_tree.html

In essence, the maple tree is composed of maple nodes. Throughout this article,
it is assumed that the maple tree has only a single root node, which can
contain a maximum of 16 intervals. Each interval can either represent a gap or
point to a VMA. Thus, no gaps are allowed between two intervals.

```c
struct maple_range_64 {
        struct maple_pnode *       parent;               /*     0     8 */
        long unsigned int          pivot[15];            /*     8   120 */
        /* --- cacheline 2 boundary (128 bytes) --- */
        union {
                void *             slot[16];             /*   128   128 */
                struct {
                        void *     pad[15];              /*   128   120 */
                        /* --- cacheline 3 boundary (192 bytes) was 56 bytes ago --- */
                        struct maple_metadata meta;      /*   248     2 */
                };                                       /*   128   128 */
        };                                               /*   128   128 */

        /* size: 256, cachelines: 4, members: 3 */
};
```

The structure `maple_range_64` represents a maple node in the following manner.
The pivots indicate the endpoints of 16 intervals, while the slots are used to
reference the VMA structure when the node is considered a leaf node. The layout
of pivots and slots can be visualized as shown below:

```
 Slots -> | 0 | 1 | 2 | ... | 12 | 13 | 14 | 15 |
          ┬   ┬   ┬   ┬     ┬    ┬    ┬    ┬    ┬
          │   │   │   │     │    │    │    │    └─ Implied maximum
          │   │   │   │     │    │    │    └─ Pivot 14
          │   │   │   │     │    │    └─ Pivot 13
          │   │   │   │     │    └─ Pivot 12
          │   │   │   │     └─ Pivot 11
          │   │   │   └─ Pivot 2
          │   │   └─ Pivot 1
          │   └─ Pivot 0
          └─  Implied minimum
```

Regarding concurrent modification, the maple tree imposes restrictions,
requiring an exclusive lock to be held by writers. In the case of the VMA tree,
the exclusive lock corresponds to the MM write lock. As for readers, two
options are available. The first option involves holding the MM read lock,
which results in the writer being blocked by the MM read-write lock.
Alternatively, the second option is to enter the RCU critical section. By doing
so, the writer is not blocked, and readers can continue their operations since
the maple tree is RCU-safe. While most existing VMA accesses opt for the first
option, the second option is employed in a few performance-critical scenarios,
such as lockless page faults.

However, there is an additional aspect that requires particular attention,
which pertains to stack expansion. The stack represents a memory area that is
mapped with the MAP_GROWSDOWN flag, indicating automatic expansion when an
address below the region is accessed. In such cases, the start address of the
corresponding VMA is adjusted, as well as the associated interval within the
maple tree. Notably, these adjustments are made without holding the MM write
lock.

```c
static inline
void do_user_addr_fault(struct pt_regs *regs,
                        unsigned long error_code,
                        unsigned long address)
{
	// ...

	if (unlikely(!mmap_read_trylock(mm))) {
		// ...
	}
	// ...
	if (unlikely(expand_stack(vma, address))) {
		// ...
	}

	// ...
}
```

Typically, a gap exists between the stack VMA and its neighboring VMA, as the
kernel enforces a stack guard. In this scenario, when expanding the stack, only
the pivot value in the maple node needs updating, a process that can be
performed atomically. However, if the neighboring VMA also possesses the
MAP_GROWSDOWN flag, no stack guard is enforced. Consequently, the stack
expansion can eliminate the gap. In such situations, the gap interval within
the maple node must be removed. As the maple tree is RCU-safe, overwriting the
node in-place is not possible. Instead, a new node is created, triggering node
replacement, and the old node is subsequently destroyed using an RCU callback.

```c
int expand_downwards(struct vm_area_struct *vma, unsigned long address)
{
	// ...

	if (prev) {
		if (!(prev->vm_flags & VM_GROWSDOWN) &&
		    vma_is_accessible(prev) &&
		    (address - prev->vm_end < stack_guard_gap))
			return -ENOMEM;
	}

	// ...
}
```

The RCU callback is invoked only after all pre-existing RCU critical sections
have concluded. However, the issue arises when accessing VMAs, as only the MM
read lock is held, and it does not enter the RCU critical section.
Consequently, in theory, the callback could be invoked at any time, resulting
in the freeing of the old maple node. However, pointers to the old node may
have already been fetched, leading to a use-after-free bug when attempting
subsequent access to it.

The backtrace where use-after-free (UAF) occurs is shown below:

```
  - CPU 0 -                                        - CPU 1 -

  mm_read_lock()                                    mm_read_lock()
  expand_stack()                                    find_vma_prev()
    expand_downwards()                                mas_walk()
      mas_store_prealloc()                              mas_state_walk()
        mas_wr_story_entry()                              mas_start()
          mas_wr_modify()                                   mas_root()
            mas_wr_store_node()                               node = rcu_dereference_check()
              mas_replace()                                   [ The node pointer is recorded ]
                mas_free()
                  ma_free_rcu()
                    call_rcu(&mt_free_rcu)
                    [ The node is dead ]
  mm_read_unlock()

  [ Wait for the next RCU grace period.. ]
  rcu_do_batch()                                      mas_prev()
    mt_free_rcu()                                       mas_prev_entry()
      kmem_cache_free()                                   mas_prev_nentry()
      [ The node is freed ]                                 mas_slot()
                                                              mt_slot()
                                                                rcu_dereference_check(node->..)
                                                                [ UAF occurs here ]
                                                    mm_read_unlock()
```

## Fix

I reported this vulnerability to the Linux kernel security team on June 15th.
Following that, the process of addressing this bug was led by Linus Torvalds.
Given its complexity, it took nearly two weeks to develop a set of patches that
received consensus.

On June 28th, during the merge window for Linux kernel 5.5, the fix was merged
into Linus' tree. Linus provided a [comprehensive merge message][fix] to
elucidate the patch series from a technical perspective.

 [fix]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9471f1f2f50282b9e8f59198ec6bb738b4ccc009

These patches were subsequently backported to stable kernels ([6.1.37][6.1],
[6.3.11][6.3], and [6.4.1][6.4]), effectively resolving the "Stack Rot" bug on
July 1st.

 [6.1]: https://lore.kernel.org/stable/2023070133-create-stainless-9a8c@gregkh/T/
 [6.3]: https://lore.kernel.org/stable/2023070146-endearing-bounding-d21a@gregkh/T/
 [6.4]: https://lore.kernel.org/stable/2023070140-eldercare-landlord-133c@gregkh/T/

## Exploit

**The complete exploit code and a comprehensive write-up will be made publicly
available no later than the end of July.**

Thanks,
Ruihan Li

