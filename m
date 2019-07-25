X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3520" "Thursday" "25" "July" "2019" "14:46:19" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>" "80" "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil "7" "2019072512:46:19" "[oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" (number mark "U       andreyknvl@g Jul 25   80/3520  " thread-indent "\"Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user\"\n") "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>" ("<470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com>" "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30432 invoked by uid 550); 25 Jul 2019 12:46:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30403 invoked from network); 25 Jul 2019 12:46:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=KL+iF2DFaABhvyaX/Xgi2TIXKStsEOxyCxuIDTRchjc=;
        b=SEA+K4wTp8VvgONmKDhF3FqMR+5NWJAKPGnxnZf4VqReOeNaADMpzAXZkPhfjKsGGh
         gfpQyngHlHmXdHEvhxb2HmHj6jEp4bjjYwQiAKydeNlC5WtaDxBz+DIySh8V6W3aGZQZ
         I0eNi7VeZwtbhZJfgDkf8iQLwf0V31te+W6f/9Oym9fYZVNAuKri/jn6FX2dZfN84KUZ
         nNiAl4gX4F09YCjcbYQogwusu7gvEpVx3MfXtQBidsIydz671DGBPp51GweHMhfoQka+
         FIMVSAmL6M9Bljhl/a7egeJpEfmMNh9NzVoK8FNAYTbU4wLqFRNdnHFmHyiPB2x1fM+P
         moTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=KL+iF2DFaABhvyaX/Xgi2TIXKStsEOxyCxuIDTRchjc=;
        b=Uo8zlNy5BunJhizE8I+mhi6jDdowFbrTjHDag4NJIibsmhRQHSEHZwSZvBb01nNvMC
         HCEmu/0ncEFNSUkxLR+LSaEOc8sO7b2+AtzZ32bKiXCgcNCVT4nyh1CRA1EcWVNiLqf2
         je7Qe3bLJwkdantLQZmAEBZYrRruezbKMq4Wx/C4neDKIDe3o/3mWO07eucXi2Vq6oAf
         FKlJCWnIdolQXP4Ta/YqziVufrZ2ZcyytbEy7dnJChR5GPz5FReBDjJPVVrlBgrNHRXt
         MUA/VEmoNQb3jEGWiqp7K0oXshoUUVFTtwidT7qbnWlgnFxlXKHr+4QvXtEVKTcL55P5
         ci6w==
X-Gm-Message-State: APjAAAVR01cIN8DujoCzc0Cf2yGMzpc7UeKknXLh9iZiMwlqXcPByK8x
	HepRQCgW+xf8mYXvI3m+oOIyglKe/MMMzHrX+9s4EPap
X-Google-Smtp-Source: APXvYqw/lv3VNL2Tf72JbzcXqJMjsojAN1kEJ/Uh7h9aWCMeoZ7N/g7WfwhXfsRniYASRvTHxxE2o+OHaRC4ooTxlds=
X-Received: by 2002:a2e:b4e4:: with SMTP id s4mr39885095ljm.207.1564058790044;
 Thu, 25 Jul 2019 05:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com> <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>
In-Reply-To: <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Thu, 25 Jul 2019 14:46:19 +0200
Message-ID: <CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart:
 0x0 address execution as nonprivileged user

On Thu, Jul 25, 2019 at 2:32 PM Vladis Dronov <vdronov@redhat.com> wrote:
>
> Hello,
>
> It was found (by the syzkaller initially) that a 0x0 address execution is
> possible as nonprivileged user in the latest Linux kernel (considering
> protection measures like SMEP, vm.mmap_min_addr, etc are disabled).
>
> The Linux kernel must have any of following config options enabled:
>
> CONFIG_BT_HCIUART_MRVL (easy to hit)
> CONFIG_BT_HCIUART_QCA (hard to hit)
> CONFIG_BT_HCIUART_BCM
> CONFIG_BT_HCIUART_INTEL
> CONFIG_BT_HCIUART_ATH3K
>
> The suggested fix is posted at:
>
> https://lore.kernel.org/linux-bluetooth/20190725120909.31235-1-vdronov@redhat.com/T/#u
>
> The bug and the reproducer are public, as they were found by the syzcaller
> several months ago:
>
> https://syzkaller.appspot.com/bug?id=1b42faa2848963564a5b1b7f8c837ea7b55ffa50
>
> CVE-2019-10207 was assigned to this bug.
>
> $ id
> uid=1000(vladis) gid=1000(vladis) groups=1000(vladis)
> $ uname -r
> 5.2.0
> $ ./hci-proto-crash 11
> proto = 11
> ioctl(SET_HCI_UART_PROTO): Success
> [   99.894572] BUG: kernel NULL pointer dereference, address: 0000000000000000
> [   99.897287] #PF: supervisor instruction fetch in kernel mode
> [   99.897863] #PF: error_code(0x0010) - not-present page
> [   99.898389] PGD 0 P4D 0
> [   99.899036] Oops: 0010 [#1] SMP
> [   99.899795] CPU: 2 PID: 691 Comm: kworker/u17:0 Not tainted 5.2.0 #23
> [   99.900836] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
> [   99.902912] Workqueue: hci0 hci_power_on
> [   99.903673] RIP: 0010:0x0
> [   99.904416] Code: Bad RIP value.
> [   99.905137] RSP: 0018:ffff92d8822c7d98 EFLAGS: 00010246
> [   99.906014] RAX: ffffffff97e7a3e0 RBX: ffff8af7b5dd9e00 RCX: 00000000000010b2
> [   99.907075] RDX: 00000000ffffffff RSI: ffff92d8822c7d44 RDI: ffff8af7b46c0400
> [   99.908127] RBP: ffff8af7b46c0400 R08: 0000000000000000 R09: 000000000001cb00
> [   99.909232] R10: 000000000000001e R11: 000000000001b900 R12: ffff8af7b45d4000
> [   99.910332] R13: ffff8af7b45d4a08 R14: 0000000000000000 R15: 0ffff8af7b167ad0
> [   99.911452] FS:  0000000000000000(0000) GS:ffff8af7b7880000(0000) knlGS:0000000000000000
> [   99.912709] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   99.913682] CR2: ffffffffffffffd6 CR3: 000000007060a003 CR4: 00000000001606e0
> [   99.914764] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   99.915830] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   99.916877] Call Trace:
> [   99.917538]  hci_uart_set_flow_control+0x149/0x1b0
> [   99.918441]  mrvl_setup+0xe/0x70
> [   99.919209]  hci_dev_do_open+0x1eb/0x690
> [   99.920013]  ? sched_clock+0x5/0x10
> [   99.920784]  hci_power_on+0x45/0x250
> [   99.921549]  ? __wake_up_common_lock+0x87/0xc0
> [   99.922399]  process_one_work+0x1c4/0x3a0
> [   99.923230]  worker_thread+0x45/0x3c0
> [   99.924019]  kthread+0xf3/0x130
> [   99.924735]  ? trace_event_raw_event_workqueue_execute_start+0xb0/0xb0
> [   99.925755]  ? kthread_park+0x80/0x80
> [   99.926546]  ret_from_fork+0x1f/0x30
> [   99.927399] Modules linked in:
> [   99.928152] CR2: 0000000000000000
> [   99.928882] ---[ end trace 577d1af3066a9585 ]---

Does this always happen in a worker thread? Does this therefore mean
that this is not exploitable by a local user even if vm.mmap_min_addr
and SMEP/SMAP are disabled, since the user can't mmap zero page in the
worker thread context?

>
> Best regards,
> Vladis Dronov | Red Hat, Inc. | The Core Kernel | Senior Software Engineer
