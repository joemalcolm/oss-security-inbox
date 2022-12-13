Received: (qmail 5461 invoked by uid 550); 13 Dec 2022 13:45:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3908 invoked from network); 13 Dec 2022 06:53:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CDpvKzwcYIj6Id5a+p0tlYQ0Zs6J52xANQiHgym/Pcc=;
        b=D+OnehPg9Fg6BMVfimAp+blPwrg8yCCMKqduT8uKtFVzjPzdGWtH7+KH2aowTNBLr0
         ySqgmYO2NQWFq3vgOVpD8bGFRZhNGU49oMI3ZTXUkPbPRlSQ+4tGhLUUjNGGZg19wWce
         yeU5GCNUnmgmSUBw6BAEvHfTfuYPASKpdF6RyxV2MCsfnat3NUeD6HiEwQe8d4/A+aHZ
         H3g8eGd4FWLpccgDkmq5eas6X9T/HqHoKqVdInC+C+G0FzM0SyTV8ntvPzubVaPcA4zC
         TVKDlZeuLnDZIKP0Y3Ta1wUSkueNSgax8/zR9DM4WONAMP1GFj7bzsE7UdKmsVvAV03U
         UwaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CDpvKzwcYIj6Id5a+p0tlYQ0Zs6J52xANQiHgym/Pcc=;
        b=Yvr319alsCyuvasuijB5iHTaBGlNRJT5m2yd7lP1pPNGkZADwXyTNKUpNfXr5xMDEf
         ej86kVVde4L2vXIMROKqt5gBK27XDEy2LK1jdaGox7OxZrOe1MHvbVV2efeLRQ4kQvYo
         tUyQtG+2kzpzxnJHKFi+VIBIWyoy+SBun2YVf8cQknGP3/4UHPdPH3cjS3QGjJfZlIHR
         RAnUNm51RruTLtmm9tu97Ns4rcUP7n5Lmu+NM7gsUjmpGwsDTDz9C7c17hE2yusF8zSe
         3pXeaS6pwzHm5wn3bm6TlSE6TmXP+5c2Z9RDBRyvRJxdqqgfSarb2KYc3ZTW6Fi19Chb
         VpZA==
X-Gm-Message-State: ANoB5pnDWBwnrvHOjfDlzi6wEz5k2vBM6YGVtcdoiwhQJX7cWWkdF9Ux
	ib31znkHMK0UXY+2829PkaIv+W8/C+nOwdFN5yLJAcy32KY2NQ==
X-Google-Smtp-Source: AA0mqf6KQkdGAPWo/1DsrMd8EmbZq+dJehWrNi1Lpt3xf/ZEVg7Pl0/XJFxHVYuMy1EH5hK9kDjUIM5ErvDs6EvAbY0=
X-Received: by 2002:a17:90a:5782:b0:219:b79d:c308 with SMTP id
 g2-20020a17090a578200b00219b79dc308mr261555pji.69.1670914426469; Mon, 12 Dec
 2022 22:53:46 -0800 (PST)
MIME-Version: 1.0
From: Gerald Lee <sundaywind2004@gmail.com>
Date: Tue, 13 Dec 2022 14:53:34 +0800
Message-ID: <CAO3qeMUSrAkw+L7zk72FhHWM3dRpXn0MoC3wABEuN5M4mw36ZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000d716c505efb01445"
Subject: [oss-security] Linux Kernel: usb: A use-after-free Write in put_dev

--000000000000d716c505efb01445
Content-Type: text/plain; charset="UTF-8"

Hi all,

=*=*=*=*=*=*=*=*=   BUG DETAILS  =*=*=*=*=*=*=*=*=

This use-after-free violation is caused by a race among the superblock
operations in the gadgetfs driver. The vulnerability may not be a big
deal, because the normal user can't execute umount. It could be
triggered by yanking out a device that is running the gadgetfs side,
but I don't know how to do that.

C repro is attached.

=*=*=*=*=*=*=*=*=     BACKTRACE     =*=*=*=*=*=*=*=*=
BUG: KASAN: use-after-free in instrument_atomic_read_write
include/linux/instrumented.h:102 [inline]
BUG: KASAN: use-after-free in atomic_fetch_sub_release
include/linux/atomic/atomic-instrumented.h:176 [inline]
BUG: KASAN: use-after-free in __refcount_sub_and_test
include/linux/refcount.h:272 [inline]
BUG: KASAN: use-after-free in __refcount_dec_and_test
include/linux/refcount.h:315 [inline]
BUG: KASAN: use-after-free in refcount_dec_and_test
include/linux/refcount.h:333 [inline]
BUG: KASAN: use-after-free in put_dev+0x22/0xd0
drivers/usb/gadget/legacy/inode.c:159
Write of size 4 at addr ffff8880436d2040 by task syz-executor.5/7587

CPU: 1 PID: 7587 Comm: syz-executor.5 Not tainted 6.1.0-rc7 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.13.0-1ubuntu1.1 04/01/2014
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:88 [inline]
 dump_stack_lvl+0xd1/0x138 lib/dump_stack.c:106
 print_address_description mm/kasan/report.c:284 [inline]
 print_report+0x15e/0x45d mm/kasan/report.c:395
 kasan_report+0xbf/0x1f0 mm/kasan/report.c:495
 check_region_inline mm/kasan/generic.c:183 [inline]
 kasan_check_range+0x141/0x190 mm/kasan/generic.c:189
 instrument_atomic_read_write include/linux/instrumented.h:102 [inline]
 atomic_fetch_sub_release
include/linux/atomic/atomic-instrumented.h:176 [inline]
 __refcount_sub_and_test include/linux/refcount.h:272 [inline]
 __refcount_dec_and_test include/linux/refcount.h:315 [inline]
 refcount_dec_and_test include/linux/refcount.h:333 [inline]
 put_dev+0x22/0xd0 drivers/usb/gadget/legacy/inode.c:159
 gadgetfs_kill_sb+0x2e/0x60 drivers/usb/gadget/legacy/inode.c:2086
 deactivate_locked_super+0x98/0x160 fs/super.c:332
 vfs_get_super fs/super.c:1190 [inline]
 get_tree_single+0x188/0x1d0 fs/super.c:1207
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1531
 vfs_fsconfig_locked fs/fsopen.c:232 [inline]
 __do_sys_fsconfig+0x8d6/0xc20 fs/fsopen.c:439
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd
RIP: 0033:0x7f8d5129078d
Code: c3 e8 17 32 00 00 0f 1f 80 00 00 00 00 f3 0f 1e fa 48 89 f8 48
89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d
01 f0 ff ff 73 01 c3 48 c7 c1 b8 ff ff ff f7 d8 64 89 01 48
RSP: 002b:00007f8d52024bd8 EFLAGS: 00000246 ORIG_RAX: 00000000000001af
RAX: ffffffffffffffda RBX: 00007f8d513cbf80 RCX: 00007f8d5129078d
RDX: 0000000000000000 RSI: 0000000000000006 RDI: 0000000000000003
RBP: 00007f8d512feb02 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000000
R13: 00007ffd48293eff R14: 00007ffd48294090 R15: 00007f8d52024d80
 </TASK>

Allocated by task 7561:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 kasan_set_track+0x25/0x30 mm/kasan/common.c:52
 ____kasan_kmalloc mm/kasan/common.c:371 [inline]
 ____kasan_kmalloc mm/kasan/common.c:330 [inline]
 __kasan_kmalloc+0xa5/0xb0 mm/kasan/common.c:380
 kmalloc include/linux/slab.h:553 [inline]
 kzalloc include/linux/slab.h:689 [inline]
 dev_new drivers/usb/gadget/legacy/inode.c:170 [inline]
 gadgetfs_fill_super+0x1e4/0x460 drivers/usb/gadget/legacy/inode.c:2041
 vfs_get_super fs/super.c:1169 [inline]
 get_tree_single+0xd6/0x1d0 fs/super.c:1207
 vfs_get_tree+0x8d/0x2f0 fs/super.c:1531
 vfs_fsconfig_locked fs/fsopen.c:232 [inline]
 __do_sys_fsconfig+0x8d6/0xc20 fs/fsopen.c:439
 do_syscall_x64 arch/x86/entry/common.c:50 [inline]
 do_syscall_64+0x39/0xb0 arch/x86/entry/common.c:80
 entry_SYSCALL_64_after_hwframe+0x63/0xcd

Last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xbc/0xd0 mm/kasan/generic.c:481
 call_rcu+0x9d/0x820 kernel/rcu/tree.c:2798
 pwq_unbound_release_workfn+0x26b/0x340 kernel/workqueue.c:3736
 process_one_work+0x9bf/0x1710 kernel/workqueue.c:2289
 worker_thread+0x669/0x1090 kernel/workqueue.c:2436
 kthread+0x2e8/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

Second to last potentially related work creation:
 kasan_save_stack+0x22/0x40 mm/kasan/common.c:45
 __kasan_record_aux_stack+0xbc/0xd0 mm/kasan/generic.c:481
 call_rcu+0x9d/0x820 kernel/rcu/tree.c:2798
 pwq_unbound_release_workfn+0x26b/0x340 kernel/workqueue.c:3736
 process_one_work+0x9bf/0x1710 kernel/workqueue.c:2289
 worker_thread+0x669/0x1090 kernel/workqueue.c:2436
 kthread+0x2e8/0x3a0 kernel/kthread.c:376
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:306

The buggy address belongs to the object at ffff8880436d2000
 which belongs to the cache kmalloc-1k of size 1024
The buggy address is located 64 bytes inside of
 1024-byte region [ffff8880436d2000, ffff8880436d2400)

The buggy address belongs to the physical page:
page:ffffea00010db400 refcount:1 mapcount:0 mapping:0000000000000000
index:0x0 pfn:0x436d0
head:ffffea00010db400 order:3 compound_mapcount:0 compound_pincount:0
flags: 0x4fff00000010200(slab|head|node=1|zone=1|lastcpupid=0x7ff)
raw: 04fff00000010200 dead000000000100 dead000000000122 ffff888012041dc0
raw: 0000000000000000 0000000000100010 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected
page_owner tracks the page as allocated
page last allocated via order 3, migratetype Unmovable, gfp_mask
0x52a20(GFP_ATOMIC|__GFP_NOWARN|__GFP_NORETRY|__GFP_COMP), pid 6599,
tgid 6599 (syz-executor.0), ts 29294571719, free_ts 29285126043
 prep_new_page mm/page_alloc.c:2539 [inline]
 get_page_from_freelist+0x10b5/0x2d50 mm/page_alloc.c:4291
 __alloc_pages+0x1cb/0x5b0 mm/page_alloc.c:5558
 alloc_pages+0x1aa/0x270 mm/mempolicy.c:2285
 alloc_slab_page mm/slub.c:1794 [inline]
 allocate_slab+0x213/0x300 mm/slub.c:1939
 new_slab mm/slub.c:1992 [inline]
 ___slab_alloc+0xa9b/0x13e0 mm/slub.c:3180
 __slab_alloc.constprop.0+0x56/0xa0 mm/slub.c:3279
 slab_alloc_node mm/slub.c:3364 [inline]
 __kmem_cache_alloc_node+0x199/0x3e0 mm/slub.c:3437
 kmalloc_trace+0x26/0x60 mm/slab_common.c:1045
 kmalloc include/linux/slab.h:553 [inline]
 kzalloc include/linux/slab.h:689 [inline]
 batadv_hardif_add_interface net/batman-adv/hard-interface.c:864 [inline]
 batadv_hard_if_event+0x8a1/0x1450 net/batman-adv/hard-interface.c:952
 notifier_call_chain+0xb5/0x200 kernel/notifier.c:87
 call_netdevice_notifiers_info+0xb5/0x130 net/core/dev.c:1945
 call_netdevice_notifiers_extack net/core/dev.c:1983 [inline]
 call_netdevice_notifiers net/core/dev.c:1997 [inline]
 register_netdevice+0x10bf/0x1670 net/core/dev.c:10090
 veth_newlink+0x4d1/0x990 drivers/net/veth.c:1795
 rtnl_newlink_create net/core/rtnetlink.c:3364 [inline]
 __rtnl_newlink+0x1084/0x17e0 net/core/rtnetlink.c:3581
 rtnl_newlink+0x68/0xa0 net/core/rtnetlink.c:3594
 rtnetlink_rcv_msg+0x43e/0xca0 net/core/rtnetlink.c:6091
page last free stack trace:
 reset_page_owner include/linux/page_owner.h:24 [inline]
 free_pages_prepare mm/page_alloc.c:1459 [inline]
 free_pcp_prepare+0x65c/0xd90 mm/page_alloc.c:1509
 free_unref_page_prepare mm/page_alloc.c:3387 [inline]
 free_unref_page+0x1d/0x4d0 mm/page_alloc.c:3483
 qlink_free mm/kasan/quarantine.c:168 [inline]
 qlist_free_all+0x6a/0x170 mm/kasan/quarantine.c:187
 kasan_quarantine_reduce+0x184/0x210 mm/kasan/quarantine.c:294
 __kasan_slab_alloc+0x66/0x90 mm/kasan/common.c:302
 kasan_slab_alloc include/linux/kasan.h:201 [inline]
 slab_post_alloc_hook mm/slab.h:737 [inline]
 slab_alloc_node mm/slub.c:3398 [inline]
 __kmem_cache_alloc_node+0x2e2/0x3e0 mm/slub.c:3437
 kmalloc_trace+0x26/0x60 mm/slab_common.c:1045
 kmalloc include/linux/slab.h:553 [inline]
 kzalloc include/linux/slab.h:689 [inline]
 kset_create lib/kobject.c:937 [inline]
 kset_create_and_add+0x4f/0x1a0 lib/kobject.c:980
 register_queue_kobjects net/core/net-sysfs.c:1766 [inline]
 netdev_register_kobject+0x1ca/0x400 net/core/net-sysfs.c:2019
 register_netdevice+0xd99/0x1670 net/core/dev.c:10057
 __ip_tunnel_create+0x398/0x570 net/ipv4/ip_tunnel.c:267
 ip_tunnel_init_net+0x2ec/0x9f0 net/ipv4/ip_tunnel.c:1073
 ops_init+0xb9/0x680 net/core/net_namespace.c:135
 setup_net+0x5d1/0xc50 net/core/net_namespace.c:332
 copy_net_ns+0x31c/0x760 net/core/net_namespace.c:478
 create_new_namespaces+0x3f6/0xb20 kernel/nsproxy.c:110

Memory state around the buggy address:
 ffff8880436d1f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff8880436d1f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
>ffff8880436d2000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                           ^
 ffff8880436d2080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8880436d2100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


=*=*=*=*=*=*=*=*=     PATCH     =*=*=*=*=*=*=*=*=

The patch has been done by Alan Stern, and it can be found here:
https://lore.kernel.org/linux-usb/Y5dV11OoM3ojxNHy@rowland.harvard.edu/

Thanks.

--000000000000d716c505efb01445
Content-Type: text/x-csrc; charset="US-ASCII"; name="repro.c"
Content-Disposition: attachment; filename="repro.c"
Content-Transfer-Encoding: base64
Content-ID: <f_lblvagtu0>
X-Attachment-Id: f_lblvagtu0

Ly8gYXV0b2dlbmVyYXRlZCBieSBzeXprYWxsZXIgKGh0dHBzOi8vZ2l0aHVi
LmNvbS9nb29nbGUvc3l6a2FsbGVyKQoKI2RlZmluZSBfR05VX1NPVVJDRSAK
CiNpbmNsdWRlIDxkaXJlbnQuaD4KI2luY2x1ZGUgPGVuZGlhbi5oPgojaW5j
bHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxz
aWduYWwuaD4KI2luY2x1ZGUgPHN0ZGFyZy5oPgojaW5jbHVkZSA8c3RkYm9v
bC5oPgojaW5jbHVkZSA8c3RkaW50Lmg+CiNpbmNsdWRlIDxzdGRpby5oPgoj
aW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1
ZGUgPHN5cy9wcmN0bC5oPgojaW5jbHVkZSA8c3lzL3N0YXQuaD4KI2luY2x1
ZGUgPHN5cy9zeXNjYWxsLmg+CiNpbmNsdWRlIDxzeXMvdHlwZXMuaD4KI2lu
Y2x1ZGUgPHN5cy93YWl0Lmg+CiNpbmNsdWRlIDx0aW1lLmg+CiNpbmNsdWRl
IDx1bmlzdGQuaD4KCiNpZm5kZWYgX19OUl9mc2NvbmZpZwojZGVmaW5lIF9f
TlJfZnNjb25maWcgNDMxCiNlbmRpZgojaWZuZGVmIF9fTlJfZnNvcGVuCiNk
ZWZpbmUgX19OUl9mc29wZW4gNDMwCiNlbmRpZgoKc3RhdGljIHVuc2lnbmVk
IGxvbmcgbG9uZyBwcm9jaWQ7CgpzdGF0aWMgdm9pZCBzbGVlcF9tcyh1aW50
NjRfdCBtcykKewoJdXNsZWVwKG1zICogMTAwMCk7Cn0KCnN0YXRpYyB1aW50
NjRfdCBjdXJyZW50X3RpbWVfbXModm9pZCkKewoJc3RydWN0IHRpbWVzcGVj
IHRzOwoJaWYgKGNsb2NrX2dldHRpbWUoQ0xPQ0tfTU9OT1RPTklDLCAmdHMp
KQoJZXhpdCgxKTsKCXJldHVybiAodWludDY0X3QpdHMudHZfc2VjICogMTAw
MCArICh1aW50NjRfdCl0cy50dl9uc2VjIC8gMTAwMDAwMDsKfQoKc3RhdGlj
IGJvb2wgd3JpdGVfZmlsZShjb25zdCBjaGFyKiBmaWxlLCBjb25zdCBjaGFy
KiB3aGF0LCAuLi4pCnsKCWNoYXIgYnVmWzEwMjRdOwoJdmFfbGlzdCBhcmdz
OwoJdmFfc3RhcnQoYXJncywgd2hhdCk7Cgl2c25wcmludGYoYnVmLCBzaXpl
b2YoYnVmKSwgd2hhdCwgYXJncyk7Cgl2YV9lbmQoYXJncyk7CglidWZbc2l6
ZW9mKGJ1ZikgLSAxXSA9IDA7CglpbnQgbGVuID0gc3RybGVuKGJ1Zik7Cglp
bnQgZmQgPSBvcGVuKGZpbGUsIE9fV1JPTkxZIHwgT19DTE9FWEVDKTsKCWlm
IChmZCA9PSAtMSkKCQlyZXR1cm4gZmFsc2U7CglpZiAod3JpdGUoZmQsIGJ1
ZiwgbGVuKSAhPSBsZW4pIHsKCQlpbnQgZXJyID0gZXJybm87CgkJY2xvc2Uo
ZmQpOwoJCWVycm5vID0gZXJyOwoJCXJldHVybiBmYWxzZTsKCX0KCWNsb3Nl
KGZkKTsKCXJldHVybiB0cnVlOwp9CgpzdGF0aWMgdm9pZCBraWxsX2FuZF93
YWl0KGludCBwaWQsIGludCogc3RhdHVzKQp7CglraWxsKC1waWQsIFNJR0tJ
TEwpOwoJa2lsbChwaWQsIFNJR0tJTEwpOwoJZm9yIChpbnQgaSA9IDA7IGkg
PCAxMDA7IGkrKykgewoJCWlmICh3YWl0cGlkKC0xLCBzdGF0dXMsIFdOT0hB
TkcgfCBfX1dBTEwpID09IHBpZCkKCQkJcmV0dXJuOwoJCXVzbGVlcCgxMDAw
KTsKCX0KCURJUiogZGlyID0gb3BlbmRpcigiL3N5cy9mcy9mdXNlL2Nvbm5l
Y3Rpb25zIik7CglpZiAoZGlyKSB7CgkJZm9yICg7OykgewoJCQlzdHJ1Y3Qg
ZGlyZW50KiBlbnQgPSByZWFkZGlyKGRpcik7CgkJCWlmICghZW50KQoJCQkJ
YnJlYWs7CgkJCWlmIChzdHJjbXAoZW50LT5kX25hbWUsICIuIikgPT0gMCB8
fCBzdHJjbXAoZW50LT5kX25hbWUsICIuLiIpID09IDApCgkJCQljb250aW51
ZTsKCQkJY2hhciBhYm9ydFszMDBdOwoJCQlzbnByaW50ZihhYm9ydCwgc2l6
ZW9mKGFib3J0KSwgIi9zeXMvZnMvZnVzZS9jb25uZWN0aW9ucy8lcy9hYm9y
dCIsIGVudC0+ZF9uYW1lKTsKCQkJaW50IGZkID0gb3BlbihhYm9ydCwgT19X
Uk9OTFkpOwoJCQlpZiAoZmQgPT0gLTEpIHsKCQkJCWNvbnRpbnVlOwoJCQl9
CgkJCWlmICh3cml0ZShmZCwgYWJvcnQsIDEpIDwgMCkgewoJCQl9CgkJCWNs
b3NlKGZkKTsKCQl9CgkJY2xvc2VkaXIoZGlyKTsKCX0gZWxzZSB7Cgl9Cgl3
aGlsZSAod2FpdHBpZCgtMSwgc3RhdHVzLCBfX1dBTEwpICE9IHBpZCkgewoJ
fQp9CgpzdGF0aWMgdm9pZCBzZXR1cF90ZXN0KCkKewoJcHJjdGwoUFJfU0VU
X1BERUFUSFNJRywgU0lHS0lMTCwgMCwgMCwgMCk7CglzZXRwZ3JwKCk7Cgl3
cml0ZV9maWxlKCIvcHJvYy9zZWxmL29vbV9zY29yZV9hZGoiLCAiMTAwMCIp
Owp9CgpzdGF0aWMgdm9pZCBleGVjdXRlX29uZSh2b2lkKTsKCiNkZWZpbmUg
V0FJVF9GTEFHUyBfX1dBTEwKCnN0YXRpYyB2b2lkIGxvb3Aodm9pZCkKewoJ
aW50IGl0ZXIgPSAwOwoJZm9yICg7OyBpdGVyKyspIHsKCQlpbnQgcGlkID0g
Zm9yaygpOwoJCWlmIChwaWQgPCAwKQoJZXhpdCgxKTsKCQlpZiAocGlkID09
IDApIHsKCQkJc2V0dXBfdGVzdCgpOwoJCQlleGVjdXRlX29uZSgpOwoJCQll
eGl0KDApOwoJCX0KCQlpbnQgc3RhdHVzID0gMDsKCQl1aW50NjRfdCBzdGFy
dCA9IGN1cnJlbnRfdGltZV9tcygpOwoJCWZvciAoOzspIHsKCQkJaWYgKHdh
aXRwaWQoLTEsICZzdGF0dXMsIFdOT0hBTkcgfCBXQUlUX0ZMQUdTKSA9PSBw
aWQpCgkJCQlicmVhazsKCQkJc2xlZXBfbXMoMSk7CgkJCWlmIChjdXJyZW50
X3RpbWVfbXMoKSAtIHN0YXJ0IDwgNTAwMCkKCQkJCWNvbnRpbnVlOwoJCQlr
aWxsX2FuZF93YWl0KHBpZCwgJnN0YXR1cyk7CgkJCWJyZWFrOwoJCX0KCX0K
fQoKdWludDY0X3QgclsxXSA9IHsweGZmZmZmZmZmZmZmZmZmZmZ9OwoKdm9p
ZCBleGVjdXRlX29uZSh2b2lkKQp7CgkJaW50cHRyX3QgcmVzID0gMDsKbWVt
Y3B5KCh2b2lkKikweDIwMDAwMDQwLCAiZ2FkZ2V0ZnNcMDAwIiwgOSk7Cgly
ZXMgPSBzeXNjYWxsKF9fTlJfZnNvcGVuLCAweDIwMDAwMDQwdWwsIDB1bCk7
CglpZiAocmVzICE9IC0xKQoJCXJbMF0gPSByZXM7CglzeXNjYWxsKF9fTlJf
ZnNjb25maWcsIHJbMF0sIDZ1bCwgMHVsLCAwdWwsIDB1bCk7Cgp9CmludCBt
YWluKHZvaWQpCnsKCQlzeXNjYWxsKF9fTlJfbW1hcCwgMHgxZmZmZjAwMHVs
LCAweDEwMDB1bCwgMHVsLCAweDMydWwsIC0xLCAwdWwpOwoJc3lzY2FsbChf
X05SX21tYXAsIDB4MjAwMDAwMDB1bCwgMHgxMDAwMDAwdWwsIDd1bCwgMHgz
MnVsLCAtMSwgMHVsKTsKCXN5c2NhbGwoX19OUl9tbWFwLCAweDIxMDAwMDAw
dWwsIDB4MTAwMHVsLCAwdWwsIDB4MzJ1bCwgLTEsIDB1bCk7Cglmb3IgKHBy
b2NpZCA9IDA7IHByb2NpZCA8IDI7IHByb2NpZCsrKSB7CgkJaWYgKGZvcmso
KSA9PSAwKSB7CgkJCWxvb3AoKTsKCQl9Cgl9CglzbGVlcCgxMDAwMDAwKTsK
CXJldHVybiAwOwp9Cg==

--000000000000d716c505efb01445--
