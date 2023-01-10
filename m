Received: (qmail 9393 invoked by uid 550); 10 Jan 2023 22:49:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16173 invoked from network); 10 Jan 2023 22:08:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fsvoVwibEkkc56Fs7xYDX7jfxNL0H6QV8eh/TIGen0A=;
        b=pHjlmO3U++H95xfEYF44G/OL0qWqG+AmTQDVmNVFX3ChNqmAnPYJZcx2fNROd74GQ1
         L1EkXQfSmZGsCE3OWqEJESX5qOzGN9aR6FL3560ExddcvRdWFQFe6I55MfBm0IjExEpg
         mUHgTcCPb7sPOMkr6+krVj8fsuWr8p+vJ0Lya2aR803K9jetg2Eykxn73RKXNIY5b1t1
         Tpw9c0T0KQsv83jCKOdTzONr0NPLlkPmp1ZdS2xJuGimcvW+Jyfy243hUuu+WpF8+JHI
         Pb1ezLXSjBZWPUXF3M7+q0f9aWffQJN8HvY0hcK3cCGe+dXwHf2Mq6RdSJULbQV5tdq5
         u8EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fsvoVwibEkkc56Fs7xYDX7jfxNL0H6QV8eh/TIGen0A=;
        b=S/S30iU20pYvu/L3jgzgE0VHP2xswNI9oBIl2yv2sGyzPseCzW6DpfBn70RxK3HUL6
         1ZJncLuqjZbjWaIBlZbeQfWiInSf05T42mI9DqFAwgv/NqPN2eGmx6eX6A3JnVHMtgOI
         No/FRTprH+JVB8NbnIpRrWb+s4ejvZT77tSIHKNkuHZa68pTRqe08nARjQJMoM7gXc3u
         hXEbLhGmSKNw6GHnh1q/ktJxG9NNOEy6ED/+dQ04e2CKJwOple9/5prBnNr4LVSJjKB3
         qidlmG7LvSeRRw527Na+GKFcNlbMFWH81E3w1FOjueAhmzWNoQv8u6SYdZ7XLNEB32+F
         2Kyw==
X-Gm-Message-State: AFqh2kr2JLdYVxgDh0P6HLMXyoUPJgBz4NFcMfZuecoWwanjKdrrgBZH
	93sHo9KoK+IosXRQKaM/DMA1aVXXbBQNStGdPCgkmy/tYLo=
X-Google-Smtp-Source: AMrXdXtY5mggbd/k5M0AwDr/Z8WRmTRo7uZcCPfjanRYfmwgmv/OaHob1tBTIxP2AX5nDEJmeaIvnRR9CAsLxIEhzqk=
X-Received: by 2002:a05:600c:a0d:b0:3d9:f559:1f93 with SMTP id
 z13-20020a05600c0a0d00b003d9f5591f93mr331209wmp.122.1673388500667; Tue, 10
 Jan 2023 14:08:20 -0800 (PST)
MIME-Version: 1.0
References: <CADW8OBsT3Lhc2GrgQQThG_-sUz5SyExn-XvbLm7q+wGjuHxPqA@mail.gmail.com>
 <Y71wQPQeIU1pTxCy@gentoo.org>
In-Reply-To: <Y71wQPQeIU1pTxCy@gentoo.org>
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Tue, 10 Jan 2023 15:07:44 -0700
Message-ID: <CADW8OBv8QgoMu5qdMst4qRgtLUD8b6TjqhckPapJDQYFBa4S+w@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Type Confusion in Linux Kernel

Hi John,

A crash report is attached to this email. I hope this helps evaluate
the security implication of the bug.
Best,
Kyle Zeng


==================================================================
BUG: KASAN: slab-out-of-bounds in cbq_enqueue+0x9d8/0x1fc0
Read of size 1 at addr ffff88806bfd40aa by task sd-resolve/250

CPU: 2 PID: 250 Comm: sd-resolve Not tainted 5.4.188 #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
Call Trace:
 dump_stack+0x19d/0x1e7
 print_address_description+0xd7/0xca0
 __kasan_report+0x1e0/0x270
 kasan_report+0x30/0x60
 cbq_enqueue+0x9d8/0x1fc0
 __dev_queue_xmit+0x2238/0x49f0
 ip_finish_output2+0x1529/0x2430
 ip_output+0x358/0x3f0
 ip_send_skb+0xec/0x220
 udp_send_skb+0xd4f/0x1710
 udp_sendmsg+0x3889/0x4ee0
 ____sys_sendmsg+0x1083/0x1240
 __sys_sendmmsg+0x88d/0xe90
 __x64_sys_sendmmsg+0xa1/0xb0
 do_syscall_64+0x32f/0x3e0
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x7f188612135f
Code: 89 f5 55 53 89 cd 41 89 d4 89 fb 48 83 ec 18 e8 b7 b1 00 00 44
89 e2 41 89 c0 48 63 fb 4c 63 d5 4c 89 ee b8 33 01 00 00 0f 05 <48> 3d
00 f0 ff ff 77 1b 44 89 c7 89 44 24 0c e8 ed b1 00 00 8b 44
RSP: 002b:00007f1883b5fc10 EFLAGS: 00000293 ORIG_RAX: 0000000000000133
RAX: ffffffffffffffda RBX: 000000000000000d RCX: 00007f188612135f
RDX: 0000000000000002 RSI: 00007f1883b5fdb0 RDI: 000000000000000d
RBP: 0000000000004000 R08: 0000000000000000 R09: 0000000000000004
R10: 0000000000004000 R11: 0000000000000293 R12: 0000000000000002
R13: 00007f1883b5fdb0 R14: 0000000008ce68e8 R15: 00007f1883b67db8

Allocated by task 1285:
 __kasan_kmalloc+0x1d9/0xdf0
 tc_new_tfilter+0x1f2e/0x41f0
 rtnetlink_rcv_msg+0x777/0x12d0
 netlink_rcv_skb+0x39b/0x870
 netlink_unicast+0xb45/0xf90
 netlink_sendmsg+0x1477/0x1830
 ____sys_sendmsg+0x1206/0x1240
 __sys_sendmsg+0x48d/0x570
 do_syscall_64+0x32f/0x3e0
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Freed by task 106:
 __kasan_slab_free+0x293/0xe30
 kfree+0x33e/0x1010
 process_one_work+0xea3/0x17b0
 worker_thread+0xecc/0x1a00
 kthread+0x33b/0x3a0
 ret_from_fork+0x35/0x40

The buggy address belongs to the object at ffff88806bfd4000
 which belongs to the cache kmalloc-128 of size 128
The buggy address is located 42 bytes to the right of
 128-byte region [ffff88806bfd4000, ffff88806bfd4080)
The buggy address belongs to the page:
page:ffffea0001aff500 refcount:1 mapcount:0 mapping:ffff88806bc03200 index:0x0
flags: 0x100000000000200(slab)
raw: 0100000000000200 ffffea0001a50b40 0000000400000004 ffff88806bc03200
raw: 0000000000000000 0000000080100010 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff88806bfd3f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
 ffff88806bfd4000: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 fc
>ffff88806bfd4080: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
                                  ^
 ffff88806bfd4100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff88806bfd4180: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc
==================================================================
