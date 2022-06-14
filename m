Received: (qmail 19808 invoked by uid 550); 14 Jun 2022 11:55:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9457 invoked from network); 14 Jun 2022 01:08:19 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=I7zOcsoPppiXnoYhpM7PPsx0LxMnODxASeOh+Wc6eWw=;
        b=hh4sMGXyqhLblVwb7kivWVeOpc35pz8NnYA6lnbG7VTGxinCusYJtDlpZSx+OHNqjz
         VJEVxlLhz7y11b6JEtPcCf2zIsrRbH42ewP7hRDXr65n9+P5v1XMpyUE4L+aFtHB8ZuU
         Y0ljJZlcPX/DxCMeXfSlCRvrHXFYUKJY4UZm/1c+3mWkH4w0qGIjTM7MJVDDuIWmvqcy
         DUo+qC/SUFs3fyIXSjKChllb5fWWr+Bg42sVVaPpAXx/EXfcy7VrsNX+1uRP2h4JU6zU
         4QeaMbnWYlzfzUbpqCo+KGB+PGnSIP7krtP3iN2hn3yLQE0cyi+zG12z1PyiRiEGDTiY
         yrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=I7zOcsoPppiXnoYhpM7PPsx0LxMnODxASeOh+Wc6eWw=;
        b=2ojjNcjaQT+uRNLD23gub8K0PhdWs8YJ/40O1AtjtB5yZbotk73sFZgjHMasE3pqXu
         9xlZkHOCCS6D2hJUAhYhmgNPjnDFtX2sAn6Ub1uZjO0xMEKc9FQJqQW7K6WWMpvjylX3
         rkv/cRSDxmJhfXlap+qNHH3GVXGc7zU1fJN86IfYEfg0Q4y27YMHejfcuWBt1cjNw78t
         kdmPiukrTiewpAgAGkT0P+Nw5OcJTMlE7xs9It92hKRu67Th93D4tIglBS5JsA6cbqbq
         UxiPFGPPyEsjzWhn8XZLvUKZrojPPISiPatnHSWWIL0K3JMMEf/7ueZeheV1OSsMBQQO
         PP+w==
X-Gm-Message-State: AJIora+4W4ANuK1tr1z+2We2ZpYuExw3Mmf9A51nw4RMpypsThTvYit/
	vGcxQCxf+AG6L5CcpUexNdu0lxIPp2w0q2OXYR6LkdGy
X-Google-Smtp-Source: AGRyM1u4rve3v+SadlLj7FXM0J0GavBf29fx2AD7NC1m3/VhkCo3OkG8kN8wxVTB28KLz7NaL/NmXLdzRhQ1MZhwZvo=
X-Received: by 2002:a17:90a:7b89:b0:1e8:9f24:26b2 with SMTP id
 z9-20020a17090a7b8900b001e89f2426b2mr1622527pjc.106.1655168887278; Mon, 13
 Jun 2022 18:08:07 -0700 (PDT)
MIME-Version: 1.0
From: Gerald Lee <sundaywind2004@gmail.com>
Date: Tue, 14 Jun 2022 09:07:55 +0800
Message-ID: <CAO3qeMXKb7vad9opV7B1oSsHbJ8D4jTpQaF2CwF=J1vVdcSe8g@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="00000000000092089105e15e0957"
Subject: [oss-security] CVE-2022-1976: Linux Kernel: A use-after-free in __lock_acquire

--00000000000092089105e15e0957
Content-Type: multipart/alternative; boundary="00000000000092088e05e15e0955"

--00000000000092088e05e15e0955
Content-Type: text/plain; charset="UTF-8"

Hi all,

=*=*=*=*=*=*=*=*=   BUG DETAILS  =*=*=*=*=*=*=*=*=

The old inflight tracking for any file type that has io_uring_fops needs to
be assigned, otherwise
trivial circular references never get the ctx cleaned up and hence it'll
leak.

This issue was reported on May 31 and assigned CVE-2022-1976.

C repro is attached.


=*=*=*=*=*=*=*=*=     BACKTRACE     =*=*=*=*=*=*=*=*=

BUG: KASAN: use-after-free in __lock_acquire+0x385f/0x5840
root/opt/kernel/kernel/locking/lockdep.c:4899
Read of size 8 at addr ffff8880682db3b8 by task kworker/1:9/9642

CPU: 1 PID: 9642 Comm: kworker/1:9 Not tainted 5.18.0 #7
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Workqueue: events io_fallback_req_func
Call Trace:
 <TASK>
 __dump_stack root/opt/kernel/lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xcd/0x134 root/opt/kernel/lib/dump_stack.c:106
 print_address_description root/opt/kernel/mm/kasan/report.c:313 [inline]
 print_report.cold+0xe5/0x659 root/opt/kernel/mm/kasan/report.c:429
 kasan_report+0x8a/0x1b0 root/opt/kernel/mm/kasan/report.c:491
 __lock_acquire+0x385f/0x5840 root/opt/kernel/kernel/locking/lockdep.c:4899
 lock_acquire root/opt/kernel/kernel/locking/lockdep.c:5641 [inline]
 lock_acquire+0x1ab/0x520 root/opt/kernel/kernel/locking/lockdep.c:5606
 __raw_spin_lock_irq root/opt/kernel/./include/linux/spinlock_api_smp.h:119
[inline]
 _raw_spin_lock_irq+0x32/0x50 root/opt/kernel/kernel/locking/spinlock.c:170
 spin_lock_irq root/opt/kernel/./include/linux/spinlock.h:374 [inline]
 io_poll_remove_entry root/opt/kernel/fs/io_uring.c:6840 [inline]
 io_poll_remove_entries.part.0+0x15f/0x7d0
root/opt/kernel/fs/io_uring.c:6873
 io_poll_remove_entries root/opt/kernel/fs/io_uring.c:6853 [inline]
 io_poll_task_func+0x187/0x500 root/opt/kernel/fs/io_uring.c:6971
 io_fallback_req_func+0xfa/0x1b0 root/opt/kernel/fs/io_uring.c:1824
 process_one_work+0x9cc/0x1650 root/opt/kernel/kernel/workqueue.c:2289
 worker_thread+0x623/0x1070 root/opt/kernel/kernel/workqueue.c:2436
 kthread+0x2e9/0x3a0 root/opt/kernel/kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 root/opt/kernel/arch/x86/entry/entry_64.S:302
 </TASK>

Allocated by task 11840:
 kasan_save_stack+0x1e/0x40 root/opt/kernel/mm/kasan/common.c:38
 kasan_set_track root/opt/kernel/mm/kasan/common.c:45 [inline]
 set_alloc_info root/opt/kernel/mm/kasan/common.c:436 [inline]
 ____kasan_kmalloc root/opt/kernel/mm/kasan/common.c:515 [inline]
 ____kasan_kmalloc root/opt/kernel/mm/kasan/common.c:474 [inline]
 __kasan_kmalloc+0xa9/0xd0 root/opt/kernel/mm/kasan/common.c:524
 kasan_kmalloc root/opt/kernel/./include/linux/kasan.h:234 [inline]
 __kmalloc+0x1c9/0x4c0 root/opt/kernel/mm/slub.c:4414
 io_ring_ctx_alloc root/opt/kernel/fs/io_uring.c:1838 [inline]
 io_uring_create root/opt/kernel/fs/io_uring.c:12396 [inline]
 io_uring_setup.cold+0x176/0x2a59 root/opt/kernel/fs/io_uring.c:12535
 do_syscall_x64 root/opt/kernel/arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x35/0xb0 root/opt/kernel/arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x46/0xb0

Freed by task 787:
 kasan_save_stack+0x1e/0x40 root/opt/kernel/mm/kasan/common.c:38
 kasan_set_track+0x21/0x30 root/opt/kernel/mm/kasan/common.c:45
 kasan_set_free_info+0x20/0x30 root/opt/kernel/mm/kasan/generic.c:370
 ____kasan_slab_free root/opt/kernel/mm/kasan/common.c:366 [inline]
 ____kasan_slab_free root/opt/kernel/mm/kasan/common.c:328 [inline]
 __kasan_slab_free+0x11d/0x190 root/opt/kernel/mm/kasan/common.c:374
 kasan_slab_free root/opt/kernel/./include/linux/kasan.h:200 [inline]
 slab_free_hook root/opt/kernel/mm/slub.c:1728 [inline]
 slab_free_freelist_hook root/opt/kernel/mm/slub.c:1754 [inline]
 slab_free root/opt/kernel/mm/slub.c:3510 [inline]
 kfree+0xec/0x4b0 root/opt/kernel/mm/slub.c:4552
 io_ring_ctx_free root/opt/kernel/fs/io_uring.c:11159 [inline]
 io_ring_exit_work+0xefb/0xf43 root/opt/kernel/fs/io_uring.c:11303
 process_one_work+0x9cc/0x1650 root/opt/kernel/kernel/workqueue.c:2289
 worker_thread+0x623/0x1070 root/opt/kernel/kernel/workqueue.c:2436
 kthread+0x2e9/0x3a0 root/opt/kernel/kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 root/opt/kernel/arch/x86/entry/entry_64.S:302

Last potentially related work creation:
 kasan_save_stack+0x1e/0x40 root/opt/kernel/mm/kasan/common.c:38
 __kasan_record_aux_stack+0xbe/0xd0 root/opt/kernel/mm/kasan/generic.c:348
 insert_work+0x4a/0x390 root/opt/kernel/kernel/workqueue.c:1358
 __queue_work+0x4dd/0x1140 root/opt/kernel/kernel/workqueue.c:1517
 queue_work_on+0xee/0x110 root/opt/kernel/kernel/workqueue.c:1545
 queue_work root/opt/kernel/./include/linux/workqueue.h:502 [inline]
 io_ring_ctx_wait_and_kill+0x2b6/0x2ec root/opt/kernel/fs/io_uring.c:11357
 io_uring_release+0x42/0x46 root/opt/kernel/fs/io_uring.c:11365
 __fput+0x277/0x9d0 root/opt/kernel/fs/file_table.c:317
 task_work_run+0xe0/0x1a0 root/opt/kernel/kernel/task_work.c:177
 exit_task_work root/opt/kernel/./include/linux/task_work.h:38 [inline]
 do_exit+0xb16/0x2dc0 root/opt/kernel/kernel/exit.c:795
 do_group_exit+0xd2/0x2f0 root/opt/kernel/kernel/exit.c:925
 get_signal+0x2847/0x2880 root/opt/kernel/kernel/signal.c:2864
 arch_do_signal_or_restart+0x81/0x1e30
root/opt/kernel/arch/x86/kernel/signal.c:869
 exit_to_user_mode_loop root/opt/kernel/kernel/entry/common.c:166 [inline]
 exit_to_user_mode_prepare+0x174/0x260
root/opt/kernel/kernel/entry/common.c:201
 __syscall_exit_to_user_mode_work root/opt/kernel/kernel/entry/common.c:283
[inline]
 syscall_exit_to_user_mode+0x19/0x60
root/opt/kernel/kernel/entry/common.c:294
 do_syscall_64+0x42/0xb0 root/opt/kernel/arch/x86/entry/common.c:86
 entry_SYSCALL_64_after_hwframe+0x46/0xb0

The buggy address belongs to the object at ffff8880682db000
 which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 952 bytes inside of
 2048-byte region [ffff8880682db000, ffff8880682db800)

The buggy address belongs to the physical page:
page:ffffea0001a0b600 refcount:1 mapcount:0 mapping:0000000000000000
index:0x0 pfn:0x682d8
head:ffffea0001a0b600 order:3 compound_mapcount:0 compound_pincount:0
flags: 0x4fff00000010200(slab|head|node=1|zone=1|lastcpupid=0x7ff)
raw: 04fff00000010200 ffffea00019e8e00 dead000000000002 ffff888010c42000
raw: 0000000000000000 0000000000080008 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask
0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP|__GFP_NOMEMALLOC),
pid 6529, tgid 6529 (syz-executor.2), ts 33495069085, free_ts 0
 set_page_owner root/opt/kernel/./include/linux/page_owner.h:31 [inline]
 post_alloc_hook root/opt/kernel/mm/page_alloc.c:2434 [inline]
 prep_new_page+0x297/0x330 root/opt/kernel/mm/page_alloc.c:2441
 get_page_from_freelist+0x210e/0x3ab0 root/opt/kernel/mm/page_alloc.c:4182
 __alloc_pages+0x30c/0x6e0 root/opt/kernel/mm/page_alloc.c:5408
 alloc_pages+0x119/0x250 root/opt/kernel/mm/mempolicy.c:2272
 alloc_slab_page root/opt/kernel/mm/slub.c:1799 [inline]
 allocate_slab root/opt/kernel/mm/slub.c:1944 [inline]
 new_slab+0x2a9/0x3f0 root/opt/kernel/mm/slub.c:2004
 ___slab_alloc+0xc62/0x1080 root/opt/kernel/mm/slub.c:3005
 __slab_alloc.isra.0+0x4d/0xa0 root/opt/kernel/mm/slub.c:3092
 slab_alloc_node root/opt/kernel/mm/slub.c:3183 [inline]
 slab_alloc root/opt/kernel/mm/slub.c:3225 [inline]
 kmem_cache_alloc_trace+0x383/0x460 root/opt/kernel/mm/slub.c:3256
 kmalloc root/opt/kernel/./include/linux/slab.h:581 [inline]
 kzalloc root/opt/kernel/./include/linux/slab.h:714 [inline]
 ipv6_add_dev root/opt/kernel/net/ipv6/addrconf.c:378 [inline]
 ipv6_add_dev+0xfe/0x12d0 root/opt/kernel/net/ipv6/addrconf.c:368
 addrconf_notify+0x614/0x1bb0 root/opt/kernel/net/ipv6/addrconf.c:3521
 notifier_call_chain+0xb5/0x200 root/opt/kernel/kernel/notifier.c:84
 call_netdevice_notifiers_info root/opt/kernel/net/core/dev.c:1938 [inline]
 call_netdevice_notifiers_info+0xb5/0x130
root/opt/kernel/net/core/dev.c:1923
 call_netdevice_notifiers_extack root/opt/kernel/net/core/dev.c:1976
[inline]
 call_netdevice_notifiers root/opt/kernel/net/core/dev.c:1990 [inline]
 register_netdevice+0xeb5/0x12b0 root/opt/kernel/net/core/dev.c:9994
 veth_newlink+0x405/0xa90 root/opt/kernel/drivers/net/veth.c:1764
 __rtnl_newlink+0xf52/0x1600 root/opt/kernel/net/core/rtnetlink.c:3483
 rtnl_newlink+0x64/0xa0 root/opt/kernel/net/core/rtnetlink.c:3531
page_owner free stack trace missing

Memory state around the buggy address:
 ffff8880682db280: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880682db300: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
>ffff8880682db380: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                        ^
 ffff8880682db400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880682db480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb


=*=*=*=*=*=*=*=*=     PATCH     =*=*=*=*=*=*=*=*=

The patch has been merged into the Linux kernel mainline and stable-master
tree.
It can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9cae36a094e7e9d6e5fe8b6dcd4642138b3eb0c7


=*=*=*=*=*=*=*=*=     CREDIT     =*=*=*=*=*=*=*=*=

Zhixin Li from Zero-one Security <sundaywind2004@gmail.com>


Thanks.

--00000000000092088e05e15e0955
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Hi =
all,<br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0 BUG DETAILS =C2=A0=
=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><br>The old inflight tracking for an=
y file type that has io_uring_fops needs to be assigned, otherwise<br>trivi=
al circular references never get the ctx cleaned up and hence it&#39;ll lea=
k.<br><br>This issue was reported on May 31 and assigned CVE-2022-1976.<br>=
<br>C repro is attached.<br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=
=A0 =C2=A0 BACKTRACE =C2=A0 =C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><=
br>BUG: KASAN: use-after-free in __lock_acquire+0x385f/0x5840 root/opt/kern=
el/kernel/locking/lockdep.c:4899<br>Read of size 8 at addr ffff8880682db3b8=
 by task kworker/1:9/9642<br><br>CPU: 1 PID: 9642 Comm: kworker/1:9 Not tai=
nted 5.18.0 #7<br>Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BI=
OS 1.13.0-1ubuntu1.1 04/01/2014<br>Workqueue: events io_fallback_req_func<b=
r>Call Trace:<br>=C2=A0&lt;TASK&gt;<br>=C2=A0__dump_stack root/opt/kernel/l=
ib/dump_stack.c:88 [inline]<br>=C2=A0dump_stack_lvl+0xcd/0x134 root/opt/ker=
nel/lib/dump_stack.c:106<br>=C2=A0print_address_description root/opt/kernel=
/mm/kasan/report.c:313 [inline]<br>=C2=A0print_report.cold+0xe5/0x659 root/=
opt/kernel/mm/kasan/report.c:429<br>=C2=A0kasan_report+0x8a/0x1b0 root/opt/=
kernel/mm/kasan/report.c:491<br>=C2=A0__lock_acquire+0x385f/0x5840 root/opt=
/kernel/kernel/locking/lockdep.c:4899<br>=C2=A0lock_acquire root/opt/kernel=
/kernel/locking/lockdep.c:5641 [inline]<br>=C2=A0lock_acquire+0x1ab/0x520 r=
oot/opt/kernel/kernel/locking/lockdep.c:5606<br>=C2=A0__raw_spin_lock_irq r=
oot/opt/kernel/./include/linux/spinlock_api_smp.h:119 [inline]<br>=C2=A0_ra=
w_spin_lock_irq+0x32/0x50 root/opt/kernel/kernel/locking/spinlock.c:170<br>=
=C2=A0spin_lock_irq root/opt/kernel/./include/linux/spinlock.h:374 [inline]=
<br>=C2=A0io_poll_remove_entry root/opt/kernel/fs/io_uring.c:6840 [inline]<=
br>=C2=A0io_poll_remove_entries.part.0+0x15f/0x7d0 root/opt/kernel/fs/io_ur=
ing.c:6873<br>=C2=A0io_poll_remove_entries root/opt/kernel/fs/io_uring.c:68=
53 [inline]<br>=C2=A0io_poll_task_func+0x187/0x500 root/opt/kernel/fs/io_ur=
ing.c:6971<br>=C2=A0io_fallback_req_func+0xfa/0x1b0 root/opt/kernel/fs/io_u=
ring.c:1824<br>=C2=A0process_one_work+0x9cc/0x1650 root/opt/kernel/kernel/w=
orkqueue.c:2289<br>=C2=A0worker_thread+0x623/0x1070 root/opt/kernel/kernel/=
workqueue.c:2436<br>=C2=A0kthread+0x2e9/0x3a0 root/opt/kernel/kernel/kthrea=
d.c:376<br>=C2=A0ret_from_fork+0x1f/0x30 root/opt/kernel/arch/x86/entry/ent=
ry_64.S:302<br>=C2=A0&lt;/TASK&gt;<br><br>Allocated by task 11840:<br>=C2=
=A0kasan_save_stack+0x1e/0x40 root/opt/kernel/mm/kasan/common.c:38<br>=C2=
=A0kasan_set_track root/opt/kernel/mm/kasan/common.c:45 [inline]<br>=C2=A0s=
et_alloc_info root/opt/kernel/mm/kasan/common.c:436 [inline]<br>=C2=A0____k=
asan_kmalloc root/opt/kernel/mm/kasan/common.c:515 [inline]<br>=C2=A0____ka=
san_kmalloc root/opt/kernel/mm/kasan/common.c:474 [inline]<br>=C2=A0__kasan=
_kmalloc+0xa9/0xd0 root/opt/kernel/mm/kasan/common.c:524<br>=C2=A0kasan_kma=
lloc root/opt/kernel/./include/linux/kasan.h:234 [inline]<br>=C2=A0__kmallo=
c+0x1c9/0x4c0 root/opt/kernel/mm/slub.c:4414<br>=C2=A0io_ring_ctx_alloc roo=
t/opt/kernel/fs/io_uring.c:1838 [inline]<br>=C2=A0io_uring_create root/opt/=
kernel/fs/io_uring.c:12396 [inline]<br>=C2=A0io_uring_setup.cold+0x176/0x2a=
59 root/opt/kernel/fs/io_uring.c:12535<br>=C2=A0do_syscall_x64 root/opt/ker=
nel/arch/x86/entry/common.c:50 [inline]<br>=C2=A0do_syscall_64+0x35/0xb0 ro=
ot/opt/kernel/arch/x86/entry/common.c:80<br>=C2=A0entry_SYSCALL_64_after_hw=
frame+0x46/0xb0<br><br>Freed by task 787:<br>=C2=A0kasan_save_stack+0x1e/0x=
40 root/opt/kernel/mm/kasan/common.c:38<br>=C2=A0kasan_set_track+0x21/0x30 =
root/opt/kernel/mm/kasan/common.c:45<br>=C2=A0kasan_set_free_info+0x20/0x30=
 root/opt/kernel/mm/kasan/generic.c:370<br>=C2=A0____kasan_slab_free root/o=
pt/kernel/mm/kasan/common.c:366 [inline]<br>=C2=A0____kasan_slab_free root/=
opt/kernel/mm/kasan/common.c:328 [inline]<br>=C2=A0__kasan_slab_free+0x11d/=
0x190 root/opt/kernel/mm/kasan/common.c:374<br>=C2=A0kasan_slab_free root/o=
pt/kernel/./include/linux/kasan.h:200 [inline]<br>=C2=A0slab_free_hook root=
/opt/kernel/mm/slub.c:1728 [inline]<br>=C2=A0slab_free_freelist_hook root/o=
pt/kernel/mm/slub.c:1754 [inline]<br>=C2=A0slab_free root/opt/kernel/mm/slu=
b.c:3510 [inline]<br>=C2=A0kfree+0xec/0x4b0 root/opt/kernel/mm/slub.c:4552<=
br>=C2=A0io_ring_ctx_free root/opt/kernel/fs/io_uring.c:11159 [inline]<br>=
=C2=A0io_ring_exit_work+0xefb/0xf43 root/opt/kernel/fs/io_uring.c:11303<br>=
=C2=A0process_one_work+0x9cc/0x1650 root/opt/kernel/kernel/workqueue.c:2289=
<br>=C2=A0worker_thread+0x623/0x1070 root/opt/kernel/kernel/workqueue.c:243=
6<br>=C2=A0kthread+0x2e9/0x3a0 root/opt/kernel/kernel/kthread.c:376<br>=C2=
=A0ret_from_fork+0x1f/0x30 root/opt/kernel/arch/x86/entry/entry_64.S:302<br=
><br>Last potentially related work creation:<br>=C2=A0kasan_save_stack+0x1e=
/0x40 root/opt/kernel/mm/kasan/common.c:38<br>=C2=A0__kasan_record_aux_stac=
k+0xbe/0xd0 root/opt/kernel/mm/kasan/generic.c:348<br>=C2=A0insert_work+0x4=
a/0x390 root/opt/kernel/kernel/workqueue.c:1358<br>=C2=A0__queue_work+0x4dd=
/0x1140 root/opt/kernel/kernel/workqueue.c:1517<br>=C2=A0queue_work_on+0xee=
/0x110 root/opt/kernel/kernel/workqueue.c:1545<br>=C2=A0queue_work root/opt=
/kernel/./include/linux/workqueue.h:502 [inline]<br>=C2=A0io_ring_ctx_wait_=
and_kill+0x2b6/0x2ec root/opt/kernel/fs/io_uring.c:11357<br>=C2=A0io_uring_=
release+0x42/0x46 root/opt/kernel/fs/io_uring.c:11365<br>=C2=A0__fput+0x277=
/0x9d0 root/opt/kernel/fs/file_table.c:317<br>=C2=A0task_work_run+0xe0/0x1a=
0 root/opt/kernel/kernel/task_work.c:177<br>=C2=A0exit_task_work root/opt/k=
ernel/./include/linux/task_work.h:38 [inline]<br>=C2=A0do_exit+0xb16/0x2dc0=
 root/opt/kernel/kernel/exit.c:795<br>=C2=A0do_group_exit+0xd2/0x2f0 root/o=
pt/kernel/kernel/exit.c:925<br>=C2=A0get_signal+0x2847/0x2880 root/opt/kern=
el/kernel/signal.c:2864<br>=C2=A0arch_do_signal_or_restart+0x81/0x1e30 root=
/opt/kernel/arch/x86/kernel/signal.c:869<br>=C2=A0exit_to_user_mode_loop ro=
ot/opt/kernel/kernel/entry/common.c:166 [inline]<br>=C2=A0exit_to_user_mode=
_prepare+0x174/0x260 root/opt/kernel/kernel/entry/common.c:201<br>=C2=A0__s=
yscall_exit_to_user_mode_work root/opt/kernel/kernel/entry/common.c:283 [in=
line]<br>=C2=A0syscall_exit_to_user_mode+0x19/0x60 root/opt/kernel/kernel/e=
ntry/common.c:294<br>=C2=A0do_syscall_64+0x42/0xb0 root/opt/kernel/arch/x86=
/entry/common.c:86<br>=C2=A0entry_SYSCALL_64_after_hwframe+0x46/0xb0<br><br=
>The buggy address belongs to the object at ffff8880682db000<br>=C2=A0which=
 belongs to the cache kmalloc-2k of size 2048<br>The buggy address is locat=
ed 952 bytes inside of<br>=C2=A02048-byte region [ffff8880682db000, ffff888=
0682db800)<br><br>The buggy address belongs to the physical page:<br>page:f=
fffea0001a0b600 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pf=
n:0x682d8<br>head:ffffea0001a0b600 order:3 compound_mapcount:0 compound_pin=
count:0<br>flags: 0x4fff00000010200(slab|head|node=3D1|zone=3D1|lastcpupid=
=3D0x7ff)<br>raw: 04fff00000010200 ffffea00019e8e00 dead000000000002 ffff88=
8010c42000<br>raw: 0000000000000000 0000000000080008 00000001ffffffff 00000=
00000000000<br>page dumped because: kasan: bad access detected<br>page_owne=
r tracks the page as allocated<br>page last allocated via order 3, migratet=
ype Unmovable, gfp_mask 0xd20c0(__GFP_IO|__GFP_FS|__GFP_NOWARN|__GFP_NORETR=
Y|__GFP_COMP|__GFP_NOMEMALLOC), pid 6529, tgid 6529 (syz-executor.2), ts 33=
495069085, free_ts 0<br>=C2=A0set_page_owner root/opt/kernel/./include/linu=
x/page_owner.h:31 [inline]<br>=C2=A0post_alloc_hook root/opt/kernel/mm/page=
_alloc.c:2434 [inline]<br>=C2=A0prep_new_page+0x297/0x330 root/opt/kernel/m=
m/page_alloc.c:2441<br>=C2=A0get_page_from_freelist+0x210e/0x3ab0 root/opt/=
kernel/mm/page_alloc.c:4182<br>=C2=A0__alloc_pages+0x30c/0x6e0 root/opt/ker=
nel/mm/page_alloc.c:5408<br>=C2=A0alloc_pages+0x119/0x250 root/opt/kernel/m=
m/mempolicy.c:2272<br>=C2=A0alloc_slab_page root/opt/kernel/mm/slub.c:1799 =
[inline]<br>=C2=A0allocate_slab root/opt/kernel/mm/slub.c:1944 [inline]<br>=
=C2=A0new_slab+0x2a9/0x3f0 root/opt/kernel/mm/slub.c:2004<br>=C2=A0___slab_=
alloc+0xc62/0x1080 root/opt/kernel/mm/slub.c:3005<br>=C2=A0__slab_alloc.isr=
a.0+0x4d/0xa0 root/opt/kernel/mm/slub.c:3092<br>=C2=A0slab_alloc_node root/=
opt/kernel/mm/slub.c:3183 [inline]<br>=C2=A0slab_alloc root/opt/kernel/mm/s=
lub.c:3225 [inline]<br>=C2=A0kmem_cache_alloc_trace+0x383/0x460 root/opt/ke=
rnel/mm/slub.c:3256<br>=C2=A0kmalloc root/opt/kernel/./include/linux/slab.h=
:581 [inline]<br>=C2=A0kzalloc root/opt/kernel/./include/linux/slab.h:714 [=
inline]<br>=C2=A0ipv6_add_dev root/opt/kernel/net/ipv6/addrconf.c:378 [inli=
ne]<br>=C2=A0ipv6_add_dev+0xfe/0x12d0 root/opt/kernel/net/ipv6/addrconf.c:3=
68<br>=C2=A0addrconf_notify+0x614/0x1bb0 root/opt/kernel/net/ipv6/addrconf.=
c:3521<br>=C2=A0notifier_call_chain+0xb5/0x200 root/opt/kernel/kernel/notif=
ier.c:84<br>=C2=A0call_netdevice_notifiers_info root/opt/kernel/net/core/de=
v.c:1938 [inline]<br>=C2=A0call_netdevice_notifiers_info+0xb5/0x130 root/op=
t/kernel/net/core/dev.c:1923<br>=C2=A0call_netdevice_notifiers_extack root/=
opt/kernel/net/core/dev.c:1976 [inline]<br>=C2=A0call_netdevice_notifiers r=
oot/opt/kernel/net/core/dev.c:1990 [inline]<br>=C2=A0register_netdevice+0xe=
b5/0x12b0 root/opt/kernel/net/core/dev.c:9994<br>=C2=A0veth_newlink+0x405/0=
xa90 root/opt/kernel/drivers/net/veth.c:1764<br>=C2=A0__rtnl_newlink+0xf52/=
0x1600 root/opt/kernel/net/core/rtnetlink.c:3483<br>=C2=A0rtnl_newlink+0x64=
/0xa0 root/opt/kernel/net/core/rtnetlink.c:3531<br>page_owner free stack tr=
ace missing<br><br>Memory state around the buggy address:<br>=C2=A0ffff8880=
682db280: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb<br>=C2=A0ffff8880=
682db300: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb<br>&gt;ffff888068=
2db380: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^<br>=C2=A0ffff8880682=
db400: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb<br>=C2=A0ffff8880682=
db480: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb<br><br><br>=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0 =C2=A0 PATCH =C2=A0 =C2=A0 =3D*=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D<br><br>The patch has been merged into the Linux ker=
nel mainline and stable-master tree. <br></div><div class=3D"gmail_default"=
 style=3D"font-size:small">It can be found here:<br><a href=3D"https://git.=
kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3D9cae36a=
094e7e9d6e5fe8b6dcd4642138b3eb0c7" target=3D"_blank">https://git.kernel.org=
/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3D9cae36a094e7e9d6e=
5fe8b6dcd4642138b3eb0c7</a><br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =
=C2=A0 =C2=A0 CREDIT =C2=A0 =C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><=
br>Zhixin Li from Zero-one Security &lt;<a href=3D"mailto:sundaywind2004@gm=
ail.com" target=3D"_blank">sundaywind2004@gmail.com</a>&gt;<br><br><br>Than=
ks.<br></div></div>

--00000000000092088e05e15e0955--

--00000000000092089105e15e0957
Content-Type: text/x-c-code; charset="US-ASCII"; name="repro.c"
Content-Disposition: attachment; filename="repro.c"
Content-Transfer-Encoding: base64
Content-ID: <f_l4c2sae40>
X-Attachment-Id: f_l4c2sae40

Ly8gYXV0b2dlbmVyYXRlZCBieSBzeXprYWxsZXIgKGh0dHBzOi8vZ2l0aHVi
LmNvbS9nb29nbGUvc3l6a2FsbGVyKQoKI2RlZmluZSBfR05VX1NPVVJDRSAK
CiNpbmNsdWRlIDxkaXJlbnQuaD4KI2luY2x1ZGUgPGVuZGlhbi5oPgojaW5j
bHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxw
dGhyZWFkLmg+CiNpbmNsdWRlIDxzZXRqbXAuaD4KI2luY2x1ZGUgPHNpZ25h
bC5oPgojaW5jbHVkZSA8c3RkYXJnLmg+CiNpbmNsdWRlIDxzdGRib29sLmg+
CiNpbmNsdWRlIDxzdGRpbnQuaD4KI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNs
dWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8
c3lzL21tYW4uaD4KI2luY2x1ZGUgPHN5cy9wcmN0bC5oPgojaW5jbHVkZSA8
c3lzL3N0YXQuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNsdWRl
IDxzeXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy93YWl0Lmg+CiNpbmNsdWRl
IDx0aW1lLmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KCiNpbmNsdWRlIDxsaW51
eC9mdXRleC5oPgoKI2lmbmRlZiBfX05SX2lvX3VyaW5nX2VudGVyCiNkZWZp
bmUgX19OUl9pb191cmluZ19lbnRlciA0MjYKI2VuZGlmCiNpZm5kZWYgX19O
Ul9pb191cmluZ19zZXR1cAojZGVmaW5lIF9fTlJfaW9fdXJpbmdfc2V0dXAg
NDI1CiNlbmRpZgoKc3RhdGljIF9fdGhyZWFkIGludCBjbG9uZV9vbmdvaW5n
OwpzdGF0aWMgX190aHJlYWQgaW50IHNraXBfc2VndjsKc3RhdGljIF9fdGhy
ZWFkIGptcF9idWYgc2Vndl9lbnY7CgpzdGF0aWMgdm9pZCBzZWd2X2hhbmRs
ZXIoaW50IHNpZywgc2lnaW5mb190KiBpbmZvLCB2b2lkKiBjdHgpCnsKCWlm
IChfX2F0b21pY19sb2FkX24oJmNsb25lX29uZ29pbmcsIF9fQVRPTUlDX1JF
TEFYRUQpICE9IDApIHsKCQlleGl0KHNpZyk7Cgl9Cgl1aW50cHRyX3QgYWRk
ciA9ICh1aW50cHRyX3QpaW5mby0+c2lfYWRkcjsKCWNvbnN0IHVpbnRwdHJf
dCBwcm9nX3N0YXJ0ID0gMSA8PCAyMDsKCWNvbnN0IHVpbnRwdHJfdCBwcm9n
X2VuZCA9IDEwMCA8PCAyMDsKCWludCBza2lwID0gX19hdG9taWNfbG9hZF9u
KCZza2lwX3NlZ3YsIF9fQVRPTUlDX1JFTEFYRUQpICE9IDA7CglpbnQgdmFs
aWQgPSBhZGRyIDwgcHJvZ19zdGFydCB8fCBhZGRyID4gcHJvZ19lbmQ7Cglp
ZiAoc2tpcCAmJiB2YWxpZCkgewoJCV9sb25nam1wKHNlZ3ZfZW52LCAxKTsK
CX0KCWV4aXQoc2lnKTsKfQoKc3RhdGljIHZvaWQgaW5zdGFsbF9zZWd2X2hh
bmRsZXIodm9pZCkKewoJc3RydWN0IHNpZ2FjdGlvbiBzYTsKCW1lbXNldCgm
c2EsIDAsIHNpemVvZihzYSkpOwoJc2Euc2FfaGFuZGxlciA9IFNJR19JR047
CglzeXNjYWxsKFNZU19ydF9zaWdhY3Rpb24sIDB4MjAsICZzYSwgTlVMTCwg
OCk7CglzeXNjYWxsKFNZU19ydF9zaWdhY3Rpb24sIDB4MjEsICZzYSwgTlVM
TCwgOCk7CgltZW1zZXQoJnNhLCAwLCBzaXplb2Yoc2EpKTsKCXNhLnNhX3Np
Z2FjdGlvbiA9IHNlZ3ZfaGFuZGxlcjsKCXNhLnNhX2ZsYWdzID0gU0FfTk9E
RUZFUiB8IFNBX1NJR0lORk87CglzaWdhY3Rpb24oU0lHU0VHViwgJnNhLCBO
VUxMKTsKCXNpZ2FjdGlvbihTSUdCVVMsICZzYSwgTlVMTCk7Cn0KCiNkZWZp
bmUgTk9ORkFJTElORyguLi4pICh7IGludCBvayA9IDE7IF9fYXRvbWljX2Zl
dGNoX2FkZCgmc2tpcF9zZWd2LCAxLCBfX0FUT01JQ19TRVFfQ1NUKTsgaWYg
KF9zZXRqbXAoc2Vndl9lbnYpID09IDApIHsgX19WQV9BUkdTX187IH0gZWxz
ZSBvayA9IDA7IF9fYXRvbWljX2ZldGNoX3N1Yigmc2tpcF9zZWd2LCAxLCBf
X0FUT01JQ19TRVFfQ1NUKTsgb2s7IH0pCgpzdGF0aWMgdm9pZCBzbGVlcF9t
cyh1aW50NjRfdCBtcykKewoJdXNsZWVwKG1zICogMTAwMCk7Cn0KCnN0YXRp
YyB1aW50NjRfdCBjdXJyZW50X3RpbWVfbXModm9pZCkKewoJc3RydWN0IHRp
bWVzcGVjIHRzOwoJaWYgKGNsb2NrX2dldHRpbWUoQ0xPQ0tfTU9OT1RPTklD
LCAmdHMpKQoJZXhpdCgxKTsKCXJldHVybiAodWludDY0X3QpdHMudHZfc2Vj
ICogMTAwMCArICh1aW50NjRfdCl0cy50dl9uc2VjIC8gMTAwMDAwMDsKfQoK
c3RhdGljIHZvaWQgdGhyZWFkX3N0YXJ0KHZvaWQqICgqZm4pKHZvaWQqKSwg
dm9pZCogYXJnKQp7CglwdGhyZWFkX3QgdGg7CglwdGhyZWFkX2F0dHJfdCBh
dHRyOwoJcHRocmVhZF9hdHRyX2luaXQoJmF0dHIpOwoJcHRocmVhZF9hdHRy
X3NldHN0YWNrc2l6ZSgmYXR0ciwgMTI4IDw8IDEwKTsKCWludCBpID0gMDsK
CWZvciAoOyBpIDwgMTAwOyBpKyspIHsKCQlpZiAocHRocmVhZF9jcmVhdGUo
JnRoLCAmYXR0ciwgZm4sIGFyZykgPT0gMCkgewoJCQlwdGhyZWFkX2F0dHJf
ZGVzdHJveSgmYXR0cik7CgkJCXJldHVybjsKCQl9CgkJaWYgKGVycm5vID09
IEVBR0FJTikgewoJCQl1c2xlZXAoNTApOwoJCQljb250aW51ZTsKCQl9CgkJ
YnJlYWs7Cgl9CglleGl0KDEpOwp9Cgp0eXBlZGVmIHN0cnVjdCB7CglpbnQg
c3RhdGU7Cn0gZXZlbnRfdDsKCnN0YXRpYyB2b2lkIGV2ZW50X2luaXQoZXZl
bnRfdCogZXYpCnsKCWV2LT5zdGF0ZSA9IDA7Cn0KCnN0YXRpYyB2b2lkIGV2
ZW50X3Jlc2V0KGV2ZW50X3QqIGV2KQp7Cglldi0+c3RhdGUgPSAwOwp9Cgpz
dGF0aWMgdm9pZCBldmVudF9zZXQoZXZlbnRfdCogZXYpCnsKCWlmIChldi0+
c3RhdGUpCglleGl0KDEpOwoJX19hdG9taWNfc3RvcmVfbigmZXYtPnN0YXRl
LCAxLCBfX0FUT01JQ19SRUxFQVNFKTsKCXN5c2NhbGwoU1lTX2Z1dGV4LCAm
ZXYtPnN0YXRlLCBGVVRFWF9XQUtFIHwgRlVURVhfUFJJVkFURV9GTEFHLCAx
MDAwMDAwKTsKfQoKc3RhdGljIHZvaWQgZXZlbnRfd2FpdChldmVudF90KiBl
dikKewoJd2hpbGUgKCFfX2F0b21pY19sb2FkX24oJmV2LT5zdGF0ZSwgX19B
VE9NSUNfQUNRVUlSRSkpCgkJc3lzY2FsbChTWVNfZnV0ZXgsICZldi0+c3Rh
dGUsIEZVVEVYX1dBSVQgfCBGVVRFWF9QUklWQVRFX0ZMQUcsIDAsIDApOwp9
CgpzdGF0aWMgaW50IGV2ZW50X2lzc2V0KGV2ZW50X3QqIGV2KQp7CglyZXR1
cm4gX19hdG9taWNfbG9hZF9uKCZldi0+c3RhdGUsIF9fQVRPTUlDX0FDUVVJ
UkUpOwp9CgpzdGF0aWMgaW50IGV2ZW50X3RpbWVkd2FpdChldmVudF90KiBl
diwgdWludDY0X3QgdGltZW91dCkKewoJdWludDY0X3Qgc3RhcnQgPSBjdXJy
ZW50X3RpbWVfbXMoKTsKCXVpbnQ2NF90IG5vdyA9IHN0YXJ0OwoJZm9yICg7
OykgewoJCXVpbnQ2NF90IHJlbWFpbiA9IHRpbWVvdXQgLSAobm93IC0gc3Rh
cnQpOwoJCXN0cnVjdCB0aW1lc3BlYyB0czsKCQl0cy50dl9zZWMgPSByZW1h
aW4gLyAxMDAwOwoJCXRzLnR2X25zZWMgPSAocmVtYWluICUgMTAwMCkgKiAx
MDAwICogMTAwMDsKCQlzeXNjYWxsKFNZU19mdXRleCwgJmV2LT5zdGF0ZSwg
RlVURVhfV0FJVCB8IEZVVEVYX1BSSVZBVEVfRkxBRywgMCwgJnRzKTsKCQlp
ZiAoX19hdG9taWNfbG9hZF9uKCZldi0+c3RhdGUsIF9fQVRPTUlDX0FDUVVJ
UkUpKQoJCQlyZXR1cm4gMTsKCQlub3cgPSBjdXJyZW50X3RpbWVfbXMoKTsK
CQlpZiAobm93IC0gc3RhcnQgPiB0aW1lb3V0KQoJCQlyZXR1cm4gMDsKCX0K
fQoKc3RhdGljIGJvb2wgd3JpdGVfZmlsZShjb25zdCBjaGFyKiBmaWxlLCBj
b25zdCBjaGFyKiB3aGF0LCAuLi4pCnsKCWNoYXIgYnVmWzEwMjRdOwoJdmFf
bGlzdCBhcmdzOwoJdmFfc3RhcnQoYXJncywgd2hhdCk7Cgl2c25wcmludGYo
YnVmLCBzaXplb2YoYnVmKSwgd2hhdCwgYXJncyk7Cgl2YV9lbmQoYXJncyk7
CglidWZbc2l6ZW9mKGJ1ZikgLSAxXSA9IDA7CglpbnQgbGVuID0gc3RybGVu
KGJ1Zik7CglpbnQgZmQgPSBvcGVuKGZpbGUsIE9fV1JPTkxZIHwgT19DTE9F
WEVDKTsKCWlmIChmZCA9PSAtMSkKCQlyZXR1cm4gZmFsc2U7CglpZiAod3Jp
dGUoZmQsIGJ1ZiwgbGVuKSAhPSBsZW4pIHsKCQlpbnQgZXJyID0gZXJybm87
CgkJY2xvc2UoZmQpOwoJCWVycm5vID0gZXJyOwoJCXJldHVybiBmYWxzZTsK
CX0KCWNsb3NlKGZkKTsKCXJldHVybiB0cnVlOwp9CgojZGVmaW5lIFNJWkVP
Rl9JT19VUklOR19TUUUgNjQKI2RlZmluZSBTSVpFT0ZfSU9fVVJJTkdfQ1FF
IDE2CiNkZWZpbmUgU1FfSEVBRF9PRkZTRVQgMAojZGVmaW5lIFNRX1RBSUxf
T0ZGU0VUIDY0CiNkZWZpbmUgU1FfUklOR19NQVNLX09GRlNFVCAyNTYKI2Rl
ZmluZSBTUV9SSU5HX0VOVFJJRVNfT0ZGU0VUIDI2NAojZGVmaW5lIFNRX0ZM
QUdTX09GRlNFVCAyNzYKI2RlZmluZSBTUV9EUk9QUEVEX09GRlNFVCAyNzIK
I2RlZmluZSBDUV9IRUFEX09GRlNFVCAxMjgKI2RlZmluZSBDUV9UQUlMX09G
RlNFVCAxOTIKI2RlZmluZSBDUV9SSU5HX01BU0tfT0ZGU0VUIDI2MAojZGVm
aW5lIENRX1JJTkdfRU5UUklFU19PRkZTRVQgMjY4CiNkZWZpbmUgQ1FfUklO
R19PVkVSRkxPV19PRkZTRVQgMjg0CiNkZWZpbmUgQ1FfRkxBR1NfT0ZGU0VU
IDI4MAojZGVmaW5lIENRX0NRRVNfT0ZGU0VUIDMyMAoKc3RydWN0IGlvX3Nx
cmluZ19vZmZzZXRzIHsKCXVpbnQzMl90IGhlYWQ7Cgl1aW50MzJfdCB0YWls
OwoJdWludDMyX3QgcmluZ19tYXNrOwoJdWludDMyX3QgcmluZ19lbnRyaWVz
OwoJdWludDMyX3QgZmxhZ3M7Cgl1aW50MzJfdCBkcm9wcGVkOwoJdWludDMy
X3QgYXJyYXk7Cgl1aW50MzJfdCByZXN2MTsKCXVpbnQ2NF90IHJlc3YyOwp9
OwoKc3RydWN0IGlvX2NxcmluZ19vZmZzZXRzIHsKCXVpbnQzMl90IGhlYWQ7
Cgl1aW50MzJfdCB0YWlsOwoJdWludDMyX3QgcmluZ19tYXNrOwoJdWludDMy
X3QgcmluZ19lbnRyaWVzOwoJdWludDMyX3Qgb3ZlcmZsb3c7Cgl1aW50MzJf
dCBjcWVzOwoJdWludDY0X3QgcmVzdlsyXTsKfTsKCnN0cnVjdCBpb191cmlu
Z19wYXJhbXMgewoJdWludDMyX3Qgc3FfZW50cmllczsKCXVpbnQzMl90IGNx
X2VudHJpZXM7Cgl1aW50MzJfdCBmbGFnczsKCXVpbnQzMl90IHNxX3RocmVh
ZF9jcHU7Cgl1aW50MzJfdCBzcV90aHJlYWRfaWRsZTsKCXVpbnQzMl90IGZl
YXR1cmVzOwoJdWludDMyX3QgcmVzdls0XTsKCXN0cnVjdCBpb19zcXJpbmdf
b2Zmc2V0cyBzcV9vZmY7CglzdHJ1Y3QgaW9fY3FyaW5nX29mZnNldHMgY3Ff
b2ZmOwp9OwoKI2RlZmluZSBJT1JJTkdfT0ZGX1NRX1JJTkcgMAojZGVmaW5l
IElPUklOR19PRkZfU1FFUyAweDEwMDAwMDAwVUxMCgpzdGF0aWMgbG9uZyBz
eXpfaW9fdXJpbmdfc2V0dXAodm9sYXRpbGUgbG9uZyBhMCwgdm9sYXRpbGUg
bG9uZyBhMSwgdm9sYXRpbGUgbG9uZyBhMiwgdm9sYXRpbGUgbG9uZyBhMywg
dm9sYXRpbGUgbG9uZyBhNCwgdm9sYXRpbGUgbG9uZyBhNSkKewoJdWludDMy
X3QgZW50cmllcyA9ICh1aW50MzJfdClhMDsKCXN0cnVjdCBpb191cmluZ19w
YXJhbXMqIHNldHVwX3BhcmFtcyA9IChzdHJ1Y3QgaW9fdXJpbmdfcGFyYW1z
KilhMTsKCXZvaWQqIHZtYTEgPSAodm9pZCopYTI7Cgl2b2lkKiB2bWEyID0g
KHZvaWQqKWEzOwoJdm9pZCoqIHJpbmdfcHRyX291dCA9ICh2b2lkKiopYTQ7
Cgl2b2lkKiogc3Flc19wdHJfb3V0ID0gKHZvaWQqKilhNTsKCXVpbnQzMl90
IGZkX2lvX3VyaW5nID0gc3lzY2FsbChfX05SX2lvX3VyaW5nX3NldHVwLCBl
bnRyaWVzLCBzZXR1cF9wYXJhbXMpOwoJdWludDMyX3Qgc3FfcmluZ19zeiA9
IHNldHVwX3BhcmFtcy0+c3Ffb2ZmLmFycmF5ICsgc2V0dXBfcGFyYW1zLT5z
cV9lbnRyaWVzICogc2l6ZW9mKHVpbnQzMl90KTsKCXVpbnQzMl90IGNxX3Jp
bmdfc3ogPSBzZXR1cF9wYXJhbXMtPmNxX29mZi5jcWVzICsgc2V0dXBfcGFy
YW1zLT5jcV9lbnRyaWVzICogU0laRU9GX0lPX1VSSU5HX0NRRTsKCXVpbnQz
Ml90IHJpbmdfc3ogPSBzcV9yaW5nX3N6ID4gY3FfcmluZ19zeiA/IHNxX3Jp
bmdfc3ogOiBjcV9yaW5nX3N6OwoJKnJpbmdfcHRyX291dCA9IG1tYXAodm1h
MSwgcmluZ19zeiwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSwgTUFQX1NIQVJF
RCB8IE1BUF9QT1BVTEFURSB8IE1BUF9GSVhFRCwgZmRfaW9fdXJpbmcsIElP
UklOR19PRkZfU1FfUklORyk7Cgl1aW50MzJfdCBzcWVzX3N6ID0gc2V0dXBf
cGFyYW1zLT5zcV9lbnRyaWVzICogU0laRU9GX0lPX1VSSU5HX1NRRTsKCSpz
cWVzX3B0cl9vdXQgPSBtbWFwKHZtYTIsIHNxZXNfc3osIFBST1RfUkVBRCB8
IFBST1RfV1JJVEUsIE1BUF9TSEFSRUQgfCBNQVBfUE9QVUxBVEUgfCBNQVBf
RklYRUQsIGZkX2lvX3VyaW5nLCBJT1JJTkdfT0ZGX1NRRVMpOwoJcmV0dXJu
IGZkX2lvX3VyaW5nOwp9CgpzdGF0aWMgbG9uZyBzeXpfaW9fdXJpbmdfc3Vi
bWl0KHZvbGF0aWxlIGxvbmcgYTAsIHZvbGF0aWxlIGxvbmcgYTEsIHZvbGF0
aWxlIGxvbmcgYTIsIHZvbGF0aWxlIGxvbmcgYTMpCnsKCWNoYXIqIHJpbmdf
cHRyID0gKGNoYXIqKWEwOwoJY2hhciogc3Flc19wdHIgPSAoY2hhciopYTE7
CgljaGFyKiBzcWUgPSAoY2hhciopYTI7Cgl1aW50MzJfdCBzcWVzX2luZGV4
ID0gKHVpbnQzMl90KWEzOwoJdWludDMyX3Qgc3FfcmluZ19lbnRyaWVzID0g
Kih1aW50MzJfdCopKHJpbmdfcHRyICsgU1FfUklOR19FTlRSSUVTX09GRlNF
VCk7Cgl1aW50MzJfdCBjcV9yaW5nX2VudHJpZXMgPSAqKHVpbnQzMl90Kiko
cmluZ19wdHIgKyBDUV9SSU5HX0VOVFJJRVNfT0ZGU0VUKTsKCXVpbnQzMl90
IHNxX2FycmF5X29mZiA9IChDUV9DUUVTX09GRlNFVCArIGNxX3JpbmdfZW50
cmllcyAqIFNJWkVPRl9JT19VUklOR19DUUUgKyA2MykgJiB+NjM7CglpZiAo
c3FfcmluZ19lbnRyaWVzKQoJCXNxZXNfaW5kZXggJT0gc3FfcmluZ19lbnRy
aWVzOwoJY2hhciogc3FlX2Rlc3QgPSBzcWVzX3B0ciArIHNxZXNfaW5kZXgg
KiBTSVpFT0ZfSU9fVVJJTkdfU1FFOwoJbWVtY3B5KHNxZV9kZXN0LCBzcWUs
IFNJWkVPRl9JT19VUklOR19TUUUpOwoJdWludDMyX3Qgc3FfcmluZ19tYXNr
ID0gKih1aW50MzJfdCopKHJpbmdfcHRyICsgU1FfUklOR19NQVNLX09GRlNF
VCk7Cgl1aW50MzJfdCogc3FfdGFpbF9wdHIgPSAodWludDMyX3QqKShyaW5n
X3B0ciArIFNRX1RBSUxfT0ZGU0VUKTsKCXVpbnQzMl90IHNxX3RhaWwgPSAq
c3FfdGFpbF9wdHIgJiBzcV9yaW5nX21hc2s7Cgl1aW50MzJfdCBzcV90YWls
X25leHQgPSAqc3FfdGFpbF9wdHIgKyAxOwoJdWludDMyX3QqIHNxX2FycmF5
ID0gKHVpbnQzMl90KikocmluZ19wdHIgKyBzcV9hcnJheV9vZmYpOwoJKihz
cV9hcnJheSArIHNxX3RhaWwpID0gc3Flc19pbmRleDsKCV9fYXRvbWljX3N0
b3JlX24oc3FfdGFpbF9wdHIsIHNxX3RhaWxfbmV4dCwgX19BVE9NSUNfUkVM
RUFTRSk7CglyZXR1cm4gMDsKfQoKc3RhdGljIHZvaWQga2lsbF9hbmRfd2Fp
dChpbnQgcGlkLCBpbnQqIHN0YXR1cykKewoJa2lsbCgtcGlkLCBTSUdLSUxM
KTsKCWtpbGwocGlkLCBTSUdLSUxMKTsKCWZvciAoaW50IGkgPSAwOyBpIDwg
MTAwOyBpKyspIHsKCQlpZiAod2FpdHBpZCgtMSwgc3RhdHVzLCBXTk9IQU5H
IHwgX19XQUxMKSA9PSBwaWQpCgkJCXJldHVybjsKCQl1c2xlZXAoMTAwMCk7
Cgl9CglESVIqIGRpciA9IG9wZW5kaXIoIi9zeXMvZnMvZnVzZS9jb25uZWN0
aW9ucyIpOwoJaWYgKGRpcikgewoJCWZvciAoOzspIHsKCQkJc3RydWN0IGRp
cmVudCogZW50ID0gcmVhZGRpcihkaXIpOwoJCQlpZiAoIWVudCkKCQkJCWJy
ZWFrOwoJCQlpZiAoc3RyY21wKGVudC0+ZF9uYW1lLCAiLiIpID09IDAgfHwg
c3RyY21wKGVudC0+ZF9uYW1lLCAiLi4iKSA9PSAwKQoJCQkJY29udGludWU7
CgkJCWNoYXIgYWJvcnRbMzAwXTsKCQkJc25wcmludGYoYWJvcnQsIHNpemVv
ZihhYm9ydCksICIvc3lzL2ZzL2Z1c2UvY29ubmVjdGlvbnMvJXMvYWJvcnQi
LCBlbnQtPmRfbmFtZSk7CgkJCWludCBmZCA9IG9wZW4oYWJvcnQsIE9fV1JP
TkxZKTsKCQkJaWYgKGZkID09IC0xKSB7CgkJCQljb250aW51ZTsKCQkJfQoJ
CQlpZiAod3JpdGUoZmQsIGFib3J0LCAxKSA8IDApIHsKCQkJfQoJCQljbG9z
ZShmZCk7CgkJfQoJCWNsb3NlZGlyKGRpcik7Cgl9IGVsc2UgewoJfQoJd2hp
bGUgKHdhaXRwaWQoLTEsIHN0YXR1cywgX19XQUxMKSAhPSBwaWQpIHsKCX0K
fQoKc3RhdGljIHZvaWQgc2V0dXBfdGVzdCgpCnsKCXByY3RsKFBSX1NFVF9Q
REVBVEhTSUcsIFNJR0tJTEwsIDAsIDAsIDApOwoJc2V0cGdycCgpOwoJd3Jp
dGVfZmlsZSgiL3Byb2Mvc2VsZi9vb21fc2NvcmVfYWRqIiwgIjEwMDAiKTsK
fQoKc3RydWN0IHRocmVhZF90IHsKCWludCBjcmVhdGVkLCBjYWxsOwoJZXZl
bnRfdCByZWFkeSwgZG9uZTsKfTsKCnN0YXRpYyBzdHJ1Y3QgdGhyZWFkX3Qg
dGhyZWFkc1sxNl07CnN0YXRpYyB2b2lkIGV4ZWN1dGVfY2FsbChpbnQgY2Fs
bCk7CnN0YXRpYyBpbnQgcnVubmluZzsKCnN0YXRpYyB2b2lkKiB0aHIodm9p
ZCogYXJnKQp7CglzdHJ1Y3QgdGhyZWFkX3QqIHRoID0gKHN0cnVjdCB0aHJl
YWRfdCopYXJnOwoJZm9yICg7OykgewoJCWV2ZW50X3dhaXQoJnRoLT5yZWFk
eSk7CgkJZXZlbnRfcmVzZXQoJnRoLT5yZWFkeSk7CgkJZXhlY3V0ZV9jYWxs
KHRoLT5jYWxsKTsKCQlfX2F0b21pY19mZXRjaF9zdWIoJnJ1bm5pbmcsIDEs
IF9fQVRPTUlDX1JFTEFYRUQpOwoJCWV2ZW50X3NldCgmdGgtPmRvbmUpOwoJ
fQoJcmV0dXJuIDA7Cn0KCnN0YXRpYyB2b2lkIGV4ZWN1dGVfb25lKHZvaWQp
CnsKCWludCBpLCBjYWxsLCB0aHJlYWQ7Cglmb3IgKGNhbGwgPSAwOyBjYWxs
IDwgNzsgY2FsbCsrKSB7CgkJZm9yICh0aHJlYWQgPSAwOyB0aHJlYWQgPCAo
aW50KShzaXplb2YodGhyZWFkcykgLyBzaXplb2YodGhyZWFkc1swXSkpOyB0
aHJlYWQrKykgewoJCQlzdHJ1Y3QgdGhyZWFkX3QqIHRoID0gJnRocmVhZHNb
dGhyZWFkXTsKCQkJaWYgKCF0aC0+Y3JlYXRlZCkgewoJCQkJdGgtPmNyZWF0
ZWQgPSAxOwoJCQkJZXZlbnRfaW5pdCgmdGgtPnJlYWR5KTsKCQkJCWV2ZW50
X2luaXQoJnRoLT5kb25lKTsKCQkJCWV2ZW50X3NldCgmdGgtPmRvbmUpOwoJ
CQkJdGhyZWFkX3N0YXJ0KHRociwgdGgpOwoJCQl9CgkJCWlmICghZXZlbnRf
aXNzZXQoJnRoLT5kb25lKSkKCQkJCWNvbnRpbnVlOwoJCQlldmVudF9yZXNl
dCgmdGgtPmRvbmUpOwoJCQl0aC0+Y2FsbCA9IGNhbGw7CgkJCV9fYXRvbWlj
X2ZldGNoX2FkZCgmcnVubmluZywgMSwgX19BVE9NSUNfUkVMQVhFRCk7CgkJ
CWV2ZW50X3NldCgmdGgtPnJlYWR5KTsKCQkJZXZlbnRfdGltZWR3YWl0KCZ0
aC0+ZG9uZSwgNTApOwoJCQlicmVhazsKCQl9Cgl9Cglmb3IgKGkgPSAwOyBp
IDwgMTAwICYmIF9fYXRvbWljX2xvYWRfbigmcnVubmluZywgX19BVE9NSUNf
UkVMQVhFRCk7IGkrKykKCQlzbGVlcF9tcygxKTsKfQoKc3RhdGljIHZvaWQg
ZXhlY3V0ZV9vbmUodm9pZCk7CgojZGVmaW5lIFdBSVRfRkxBR1MgX19XQUxM
CgpzdGF0aWMgdm9pZCBsb29wKHZvaWQpCnsKCWludCBpdGVyID0gMDsKCWZv
ciAoOzsgaXRlcisrKSB7CgkJaW50IHBpZCA9IGZvcmsoKTsKCQlpZiAocGlk
IDwgMCkKCWV4aXQoMSk7CgkJaWYgKHBpZCA9PSAwKSB7CgkJCXNldHVwX3Rl
c3QoKTsKCQkJZXhlY3V0ZV9vbmUoKTsKCQkJZXhpdCgwKTsKCQl9CgkJaW50
IHN0YXR1cyA9IDA7CgkJdWludDY0X3Qgc3RhcnQgPSBjdXJyZW50X3RpbWVf
bXMoKTsKCQlmb3IgKDs7KSB7CgkJCWlmICh3YWl0cGlkKC0xLCAmc3RhdHVz
LCBXTk9IQU5HIHwgV0FJVF9GTEFHUykgPT0gcGlkKQoJCQkJYnJlYWs7CgkJ
CXNsZWVwX21zKDEpOwoJCQlpZiAoY3VycmVudF90aW1lX21zKCkgLSBzdGFy
dCA8IDUwMDApCgkJCQljb250aW51ZTsKCQkJa2lsbF9hbmRfd2FpdChwaWQs
ICZzdGF0dXMpOwoJCQlicmVhazsKCQl9Cgl9Cn0KCnVpbnQ2NF90IHJbNV0g
PSB7MHhmZmZmZmZmZmZmZmZmZmZmLCAweDAsIDB4MCwgMHhmZmZmZmZmZmZm
ZmZmZmZmLCAweDB9OwoKdm9pZCBleGVjdXRlX2NhbGwoaW50IGNhbGwpCnsK
CQlpbnRwdHJfdCByZXMgPSAwOwoJc3dpdGNoIChjYWxsKSB7CgljYXNlIDA6
CgkJTk9ORkFJTElORygqKHVpbnQzMl90KikweDIwMDAwMWM0ID0gMCk7CgkJ
Tk9ORkFJTElORygqKHVpbnQzMl90KikweDIwMDAwMWM4ID0gMCk7CgkJTk9O
RkFJTElORygqKHVpbnQzMl90KikweDIwMDAwMWNjID0gMCk7CgkJTk9ORkFJ
TElORygqKHVpbnQzMl90KikweDIwMDAwMWQwID0gMCk7CgkJTk9ORkFJTElO
RygqKHVpbnQzMl90KikweDIwMDAwMWQ4ID0gLTEpOwoJCU5PTkZBSUxJTkco
bWVtc2V0KCh2b2lkKikweDIwMDAwMWRjLCAwLCAxMikpOwoJCXJlcyA9IC0x
OwoJCU5PTkZBSUxJTkcocmVzID0gc3l6X2lvX3VyaW5nX3NldHVwKDB4MWIz
MCwgMHgyMDAwMDFjMCwgMHgyMGZmYTAwMCwgMHgyMGZmYjAwMCwgMHgyMDAw
MDJjMCwgMHgyMDAwMDE0MCkpOwoJCWlmIChyZXMgIT0gLTEpIHsKCQkJCXJb
MF0gPSByZXM7CgkJCQlOT05GQUlMSU5HKHJbMV0gPSAqKHVpbnQ2NF90Kikw
eDIwMDAwMmMwKTsKCQkJCU5PTkZBSUxJTkcoclsyXSA9ICoodWludDY0X3Qq
KTB4MjAwMDAxNDApOwoJCX0KCQlicmVhazsKCWNhc2UgMToKCQlOT05GQUlM
SU5HKCoodWludDMyX3QqKTB4MjAwMDAwODQgPSAwKTsKCQlOT05GQUlMSU5H
KCoodWludDMyX3QqKTB4MjAwMDAwODggPSAwKTsKCQlOT05GQUlMSU5HKCoo
dWludDMyX3QqKTB4MjAwMDAwOGMgPSAwKTsKCQlOT05GQUlMSU5HKCoodWlu
dDMyX3QqKTB4MjAwMDAwOTAgPSAwKTsKCQlOT05GQUlMSU5HKCoodWludDMy
X3QqKTB4MjAwMDAwOTggPSAwKTsKCQlOT05GQUlMSU5HKG1lbXNldCgodm9p
ZCopMHgyMDAwMDA5YywgMCwgMTIpKTsKCQlyZXMgPSAtMTsKCQlOT05GQUlM
SU5HKHJlcyA9IHN5el9pb191cmluZ19zZXR1cCgxLCAweDIwMDAwMDgwLCAw
eDIwMGEwMDAwLCAweDIwMGIwMDAwLCAweDIwMDAwMTAwLCAweDIwMDAwMTQw
KSk7CgkJaWYgKHJlcyAhPSAtMSkgewoJCQkJclszXSA9IHJlczsKCQkJCU5P
TkZBSUxJTkcocls0XSA9ICoodWludDY0X3QqKTB4MjAwMDAxMDApOwoJCX0K
CQlicmVhazsKCWNhc2UgMjoKCQlOT05GQUlMSU5HKCoodWludDhfdCopMHgy
MDAwMDAwMCA9IDYpOwoJCU5PTkZBSUxJTkcoKih1aW50OF90KikweDIwMDAw
MDAxID0gMCk7CgkJTk9ORkFJTElORygqKHVpbnQxNl90KikweDIwMDAwMDAy
ID0gMCk7CgkJTk9ORkFJTElORygqKHVpbnQzMl90KikweDIwMDAwMDA0ID0g
clszXSk7CgkJTk9ORkFJTElORygqKHVpbnQ2NF90KikweDIwMDAwMDA4ID0g
MCk7CgkJTk9ORkFJTElORygqKHVpbnQ2NF90KikweDIwMDAwMDEwID0gMCk7
CgkJTk9ORkFJTElORygqKHVpbnQzMl90KikweDIwMDAwMDE4ID0gMCk7CgkJ
Tk9ORkFJTElORygqKHVpbnQxNl90KikweDIwMDAwMDFjID0gMCk7CgkJTk9O
RkFJTElORygqKHVpbnQxNl90KikweDIwMDAwMDFlID0gMCk7CgkJTk9ORkFJ
TElORygqKHVpbnQ2NF90KikweDIwMDAwMDIwID0gMCk7CgkJTk9ORkFJTElO
RygqKHVpbnQxNl90KikweDIwMDAwMDI4ID0gMCk7CgkJTk9ORkFJTElORygq
KHVpbnQxNl90KikweDIwMDAwMDJhID0gMCk7CgkJTk9ORkFJTElORyhtZW1z
ZXQoKHZvaWQqKTB4MjAwMDAwMmMsIDAsIDIwKSk7CgkJTk9ORkFJTElORyhz
eXpfaW9fdXJpbmdfc3VibWl0KHJbNF0sIHJbMl0sIDB4MjAwMDAwMDAsIDAp
KTsKCQlicmVhazsKCWNhc2UgMzoKCQlzeXNjYWxsKF9fTlJfbXJlbWFwLCAw
eDIwZmZjMDAwdWwsIDB4NDAwMHVsLCAweDEwMDB1bCwgM3VsLCAweDIwZmZi
MDAwdWwpOwoJCWJyZWFrOwoJY2FzZSA0OgoJCU5PTkZBSUxJTkcoKih1aW50
OF90KikweDIwMDAwMTgwID0gMHhiKTsKCQlOT05GQUlMSU5HKCoodWludDhf
dCopMHgyMDAwMDE4MSA9IDApOwoJCU5PTkZBSUxJTkcoKih1aW50MTZfdCop
MHgyMDAwMDE4MiA9IDApOwoJCU5PTkZBSUxJTkcoKih1aW50MzJfdCopMHgy
MDAwMDE4NCA9IDApOwoJCU5PTkZBSUxJTkcoKih1aW50NjRfdCopMHgyMDAw
MDE4OCA9IDApOwoJCU5PTkZBSUxJTkcoKih1aW50NjRfdCopMHgyMDAwMDE5
MCA9IDApOwoJCU5PTkZBSUxJTkcoKih1aW50MzJfdCopMHgyMDAwMDE5OCA9
IDEpOwoJCU5PTkZBSUxJTkcoKih1aW50MzJfdCopMHgyMDAwMDE5YyA9IDAp
OwoJCU5PTkZBSUxJTkcoKih1aW50NjRfdCopMHgyMDAwMDFhMCA9IDApOwoJ
CU5PTkZBSUxJTkcoKih1aW50MTZfdCopMHgyMDAwMDFhOCA9IDApOwoJCU5P
TkZBSUxJTkcoKih1aW50MTZfdCopMHgyMDAwMDFhYSA9IDApOwoJCU5PTkZB
SUxJTkcobWVtc2V0KCh2b2lkKikweDIwMDAwMWFjLCAwLCAyMCkpOwoJCU5P
TkZBSUxJTkcoc3l6X2lvX3VyaW5nX3N1Ym1pdChyWzFdLCByWzJdLCAweDIw
MDAwMTgwLCAwKSk7CgkJYnJlYWs7CgljYXNlIDU6CgkJc3lzY2FsbChfX05S
X2lvX3VyaW5nX2VudGVyLCByWzBdLCAweDJkZmEsIDAsIDB1bCwgMHVsLCAw
dWwpOwoJCWJyZWFrOwoJY2FzZSA2OgoJCXN5c2NhbGwoX19OUl9pb191cmlu
Z19lbnRlciwgclszXSwgMHg3ZmU3LCAwLCAwdWwsIDB1bCwgMHVsKTsKCQli
cmVhazsKCX0KCn0KaW50IG1haW4odm9pZCkKewoJCXN5c2NhbGwoX19OUl9t
bWFwLCAweDFmZmZmMDAwdWwsIDB4MTAwMHVsLCAwdWwsIDB4MzJ1bCwgLTEs
IDB1bCk7CglzeXNjYWxsKF9fTlJfbW1hcCwgMHgyMDAwMDAwMHVsLCAweDEw
MDAwMDB1bCwgN3VsLCAweDMydWwsIC0xLCAwdWwpOwoJc3lzY2FsbChfX05S
X21tYXAsIDB4MjEwMDAwMDB1bCwgMHgxMDAwdWwsIDB1bCwgMHgzMnVsLCAt
MSwgMHVsKTsKCWluc3RhbGxfc2Vndl9oYW5kbGVyKCk7CgkJCWxvb3AoKTsK
CXJldHVybiAwOwp9Cg==

--00000000000092089105e15e0957--

