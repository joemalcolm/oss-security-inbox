Received: (qmail 11443 invoked by uid 550); 28 Jul 2023 13:30:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5545 invoked from network); 28 Jul 2023 13:25:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pku.edu.cn; s=dkim; h=Received:Date:From:To:Cc:Subject:
	Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:In-Reply-To; bh=NEKjZPuQJA71ft0eGd3/JEU5M5hc
	CrYUtzPhT0LPAqQ=; b=EY4wxzDPhBvOA5csOqg7ehGZ52ScpwW7nsNVT9IlYilz
	T6RWdrU0Jk6TFTttvIxMPuIZ95ouYqpEnA7u2zHy5vna8I7LEvMJGgVg4WXv87/c
	qmcJsDa2NOR0bqcFm+RthuDZGQ9aw1VmvHESjJyoCPjwAZbDMtVVw+4dV65YLeE=
Date: Fri, 28 Jul 2023 21:25:12 +0800
From: Ruihan Li <lrh2000@pku.edu.cn>
To: oss-security@lists.openwall.com
Cc: Ruihan Li <lrh2000@pku.edu.cn>
Message-ID: <tkggwmpgmqj3vujgtqaugqajjuuot2areurrayhbumy5dsrhrz@sejaur5ldzhl>
References: <xhhkp3aknwwlmrmmqmr532yfq3ioqh6jbkrxfqf6ovlj2szsai@f3sjwakyq323>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xhhkp3aknwwlmrmmqmr532yfq3ioqh6jbkrxfqf6ovlj2szsai@f3sjwakyq323>
X-CM-TRANSID:54FpogB3fDi4wcNkI_wSIA--.9660S2
X-Coremail-Antispam: 1UD129KBjvAXoW3Cr1kKF13JFW7CFy8CFykXwb_yoW8Gr18Ko
	WSg3ykuw4UKFyDuws0k348KF45ZasY9rn3Xr1SgrZ8Xa4vqrWUCa13W3WDJa43ArWxGr9F
	qa4Iqa4kGFWktFyfn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73VFW2AGmfu7bjvjm3
	AaLaJ3UjIYCTnIWjp_UUUY-7CY07I20VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAF
	z4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI
	8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E
	87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_GcCE3s1lnxkEFVAIw20F6c
	xK64vIFxWle2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbV
	WUJVW8JwACjcxG0xvEwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc2xSY4AK6svPMxAI
	w28IcxkI7VAKI48JMxAIw28IcVCjz48v1sIEY20_Kr1UJr1l4I8I3I0E4IkC6x0Yz7v_Jr
	0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY
	17CE14v26r1Y6r17MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcV
	C0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY
	6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvj
	DU0xZFpf9x0JUQZ23UUUUU=
X-CM-SenderInfo: yssqiiarrvmko6sn3hxhgxhubq/1tbiAgEMBVPy78cTJwAksT
Subject: [oss-security] Re: StackRot (CVE-2023-3269): Linux kernel privilege escalation
 vulnerability

Hi all,

The PoC code and exploit write-up of the StackRot vulnerability has been
published to [GitHub][gh]. I'm going to copy the write-up here, but I
recommend the GitHub version because there are some figures embedded.

 [gh]: https://github.com/lrh2000/StackRot

Besides, the exploit is verified by the GitHub CI. Therefore, the most
straightforward way to understand how this exploit operates without
having to set up a local environment is by reviewing the GitHub CI pass
procedure, which can be found [here][ci].

 [ci]: https://github.com/lrh2000/StackRot/actions

## Exploit

The exploit primarily focuses on the Google kCTF challenge, specifically when
neither CONFIG_PREEMPT nor CONFIG_SLAB_MERGE_DEFAULT is set. To exploit
StackRot, the most important task is to locate a VMA iteration that fulfills
the following criteria:
 1. The iteration's timing can be controlled. This control allows us to ensure
    that the RCU grace period concludes during the VMA iteration.
 2. The iteration retrieves specific information from the VMA structure, and
    returns the information to the userspace. This feature enables us to
    exploit the UAF vulnerability of the maple node to leak some kernel
    addresses.
 3. The iteration invokes certain function pointers in the VMA structure. This
    particular capability allows us to exploit the UAF of the maple node to
    control the kernel-mode program counter (PC).

The chosen VMA iteration is the iteration responsible for generating the
contents of `/proc/[pid]/maps`. The following sections will show how this
iteration satisfies the above criteria.

### Step 0: From UAFBR to UAF

During any VMA iteration, the reference to the root node of the VMA tree is
obtained, and the iteration proceeds through its slots. Thus, by triggering
stack expansion in another thread on a separate CPU during the VMA iteration,
the node replacement can be concurrently initiated. At this point, accessing
the old node is considered a use-after-free-by-RCU (UAFBR) situation. However,
actual issues arise only when the old node is truly freed, which occurs in the
RCU callback.

This presents two challenges: (i) determining when the old node is freed and
(ii) ensuring that the VMA iteration does not complete before the old node is
freed.

The first question is relatively straightforward. In the kernel, the
`synchronize_rcu()` function can be employed to wait until the RCU grace period
concludes, ensuring that all pre-existing RCU callbacks have been invoked. In
userspace, system calls that ultimately call `synchronize_rcu()` can be
utilized for the same purpose. Thus, when such system calls terminate, it is
known that the old node has been freed. Notably, there is a system call,
`membarrier(MEMBARRIER_CMD_GLOBAL, 0, -1)`, that solely invokes
`synchronize_rcu()`.

```c
SYSCALL_DEFINE3(membarrier, int, cmd, unsigned int, flags, int, cpu_id)
{
	// ...

	switch (cmd) {
	// ...
	case MEMBARRIER_CMD_GLOBAL:
		/* MEMBARRIER_CMD_GLOBAL is not compatible with nohz_full. */
		if (tick_nohz_full_enabled())
			return -EINVAL;
		if (num_online_cpus() > 1)
			synchronize_rcu();
		return 0;
	// ...
	}
}
```

The second question necessitates further consideration. Several potential
solutions are as follows:
 1. The iteration task gets preempted, the RCU grace period ends, and the
    iteration resumes execution. However, this approach is ineffective if
    CONFIG_PREEMPT is not set.
 2. The iteration task enters a sleep state (e.g., waiting for I/O), the RCU
    grace period ends, and the iteration continues. Currently, I am unaware of
    any VMA iteration that satisfies this requirement and can be exploited to
    leak kernel addresses and control the program counter (PC). It may exist,
    but a thorough investigation is required.
 3. The iteration task experiences an interruption (e.g., timer interrupt),
    during which the RCU grace period concludes. It is possible to employ
    timerfd to create multiple hardware timers that, upon timeout during the
    VMA iteration, can trigger a lengthy interrupt. However, this approach is
    not viable because the interrupt handler operates with interrupts disabled,
    and if a CPU cannot handle inter-processor interrupts (IPIs), the RCU grace
    period will not end.
 4. The iteration task is deliberately prolonged, allowing the RCU grace period
    to expire. This is the chosen solution. If the current RCU grace period
    surpasses RCU_TASK_IPI_DELAY (defaulting to 0.5 seconds), inter-processor
    interrupts (IPIs) are dispatched to all CPUs to verify that they are not in
    RCU critical sections. In the case of VMA iteration, the answer is
    negative, signifying that the RCU grace period concludes and the maple node
    is freed, effectively converting UAFBR into a genuine use-after-free (UAF)
    scenario.

One significant observation is that during VMA iteration for
`/proc/[pid]/maps`, it generates the entire file path for file-mapped memory
regions. Although the directory name is typically restricted to a maximum of
255 characters, there is no limitation on the directory depth. This means that
by creating a file with an exceedingly large directory depth and establishing a
memory mapping for this file, accessing `/proc/[pid]/maps` can take a
considerable amount of time during the VMA iteration. Consequently, this
extended duration enables the possibility of concluding the RCU grace period
and acquiring the UAF primitive.

```c
static void
show_map_vma(struct seq_file *m, struct vm_area_struct *vma)
{
	// ...

	/*
	 * Print the dentry name for named mappings, and a
	 * special [heap] marker for the heap:
	 */
	if (file) {
		seq_pad(m, ' ');
		/*
		 * If user named this anon shared memory via
		 * prctl(PR_SET_VMA ..., use the provided name.
		 */
		if (anon_name)
			seq_printf(m, "[anon_shmem:%s]", anon_name->name);
		else
			seq_file_path(m, file, "\n");
		goto done;
	}

	// ...
}
```

This step is illustrated in the following figure:

![Step 0: From UAFBR to UAF](https://github.com/lrh2000/StackRot/raw/master/pic/nodes_free_and_use.png)

### Step 1: From slab UAF to page UAF

Now that UAF is functioning within a slab. If CONFIG_SLAB_MERGE_DEFAULT is
enabled and the slab of maple nodes merges with kmalloc-256, the contents
within the old node can be controlled by allocating a new structure from
kmalloc-256 and populating it with userspace data. However, if
CONFIG_SLAB_MERGE_DEFAULT is not set, an alternative approach is required. In
this case, one needs to return the page of the freed node to the page
allocator, allowing the old node to be controlled by allocating a new page and
filling it accordingly.

Recall that the VMA tree will only contain one node. Hence, by utilizing
`fork()`/`clone()`, multiple VMA trees and an equal number of maple nodes are
generated. Assuming one slab encompasses M maple nodes, and one node per M
nodes is retained while all other nodes are freed via `exit()`, the remaining
nodes become the sole nodes within their respective slabs. Initially, these
slabs reside in the CPU's partial list. When the partial list reaches its
capacity, the slabs are flushed back to the partial list of the corresponding
NUMA node.

If the last maple node within a slab is freed, the slab becomes empty. If this
slab resides in the partial list of a NUMA node, and the partial list of that
particular NUMA node is already at maximum capacity, the page is immediately
returned to the page allocator. Consequently, the slab UAF transforms into a
page UAF scenario. The contents within the freed page can be manipulated by
sending some data via `msgsnd()`, which allocates elastic objects and directly
populates them with the provided user data.

```c
static void __slab_free(struct kmem_cache *s, struct slab *slab,
			void *head, void *tail, int cnt,
			unsigned long addr)

{
	// ...

	if (unlikely(!new.inuse && n->nr_partial >= s->min_partial))
		goto slab_empty;

	// ...
	return;

slab_empty:
	// ...
	discard_slab(s, slab);
}
```

The number of maple nodes per slab, M, depends on the number of CPUs. The
exploit implementation considers a situation with two CPUs and therefore
assumes 16 as the value of M, as illustrated in the following figure:

![Step 1: From slab UAF to page UAF](https://github.com/lrh2000/StackRot/raw/master/pic/node_master_fengshui.png)

### Step 2: From UAF to address leaking

Upon gaining control of the maple node, it becomes possible to manipulate the
addresses of subsequent VMAs that will be later iterated. As the targeted
iteration is aimed at generating `/proc/self/maps`, certain VMA information,
such as the start and end addresses, which reside within the VMA structure, are
returned to the user space.

However, a challenge arises: the address of a VMA structure in the maple node
can only be appropriately set if some addresses are already known. Fortunately,
CVE-2023-0597 directly serves this purpose. According to CVE-2023-0597, the
address of `cpu_entry_area` is not randomized. Although this vulnerability has
been patched in Linux 6.2, it has not been backported to earlier stable kernels
as of the time of writing. Consequently, by overwriting the address of the VMA
structure with that of the last IDT entry, the entry that contains the address
of `asm_sysvec_spurious_apic_interrupt` is directly leaked, thereby revealing
the base addresses of the kernel code and kernel data.

![Step 2: From UAF to address leaking (1)](https://github.com/lrh2000/StackRot/raw/master/pic/node_master_code_leak.png)

The previously discussed method can be used recurrently to incrementally expose
more addresses from the kernel data section. For instance, the
`init_task.tasks.prev` pointer within the data section directs to the
`task_struct` structure of the latest created task, which is without question
allocated on the heap.

![Step 2: From UAF to address leaking (2)](https://github.com/lrh2000/StackRot/raw/master/pic/node_master_heap_leak.png)

When all newly established tasks are terminated, their `task_struct` structures
will subsequently be deallocated. If the quantity of these tasks is large
enough, the corresponding pages can be surrendered back to the page allocator.
This allows for the possibility to reallocate these pages and fill them with
user data. However, keep in mind that the released pages generally belong to
the per-cpu page (PCP) list. For pages present in the PCP list, they can be
reallocated exclusively in the same page order. Consequently, solely mapping
new pages into the user space, which requires only order-0 pages from the page
allocator, won't fulfill the objectives.

Nonetheless, the msgsnd system call will solicit memory chunks via kmalloc and
populate these chunks with user-defined data. When the kmalloc cache is
exhausted, it will requisition pages from the page allocator at a specific
order. If the message size is accurately adjusted, the exact order will be
desired. Thus, the page whose address has been previously leaked will be
reallocated. As a result, it becomes possible to obtain a page with a known
address and user-manipulated data.

### Step 3: From UAF to root privileges

It is now possible to forge the VMA structure in the address-known page and
control the `vma->vm_ops->name` function pointer. The next step involves
finding suitable gadgets to escape containers and acquire root privileges.

```c
static void
show_map_vma(struct seq_file *m, struct vm_area_struct *vma)
{
	// ...

	if (vma->vm_ops && vma->vm_ops->name) {
		name = vma->vm_ops->name(vma);
		if (name)
			goto done;
	}

	// ...
}
```

![Step 3: From UAF to root privileges](https://github.com/lrh2000/StackRot/raw/master/pic/node_master_kern_exec.png)

The gadget constructions are as follows:
 1. Stack pivot: `movq %rbx, %rsi; movq %rbp, %rdi; call
    __x86_indirect_thunk_r13` -> `pushq %rsi; jmp 46(%rsi)` -> `popq %rsp; ret`
    -> `popq %rsp; ret`, where %rdi, %rbx, and %r13 _initially_ points to
    user-controllable data.
 2. Gain root privileges: `popq %rdi; ret` -> `prepare_kernel_cred` -> `popq
    %rdi; ret` -> `movq %rax, (%rdi); ret`, where %rdi _now_ points to the
    stack top; `popq %rdi; ret` -> `commit_creds`, effectively executing
    `commit_creds(prepare_kernel_cred(&init_task))`.
 3. Escape containers: `popq %rdi; ret` -> `find_task_by_vpid` -> `popq %rdi;
    ret` -> `movq %rax, (%rdi); ret`, where %rdi _now_ points to the stack top;
    `popq %rdi; ret` -> `popq %rsi; ret` -> `switch_task_namespaces`,
    effectively performing `switch_task_namespaces(find_task_by_vpid(1),
    &init_nsproxy)`.
 4. Unlock mm: `popq %rax; ret` -> `movq %rbp, %rdi; call
    __x86_indirect_thunk_rax`, where %rbp points to the original seq_file;
    `popq %rax; ret` -> `m_stop`, effectively executing `m_stop(seq_file, ..)`.
 5. Return to userspace: use `swapgs_restore_regs_and_return_to_usermode`, and
    call `execve()` to get the shell.

Finally, using `nsenter --mount=/proc/1/ns/mnt` to restore the mount namespace
and get the flag via `cat /flag/flag`.

### Source code

The full exploit source is available [here][exp]. For more details, refer to
its README file.

 [exp]: https://github.com/lrh2000/StackRot/tree/master/exp

Thanks,
Ruihan Li

