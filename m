X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4070" "Thursday" "3" "October" "2019" "11:09:59" "-0500" "Tina Li" "tli@digitalocean.com" "<CAA8FXenV6WpB3TPD8W=fi+TDsCLrqgDDFhGnfj0Q+PBUHvjdUw@mail.gmail.com>" "127" "Re: [oss-security] CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" "^Cc:" nil nil "10" "2019100316:09:59" "[oss-security] CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" (number mark "        tli@digitalo Oct  3  127/4070  " thread-indent "\"Re: [oss-security] CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow\"\n") "<fd63e16ea8e74eeca5852706930d8076@tencent.com>" nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape Vulnerability: vhost/vhost_net kernel buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3474 invoked by uid 550); 3 Oct 2019 16:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30186 invoked from network); 3 Oct 2019 16:10:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=digitalocean.com; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Ts6bfdojhInviuOiaxz+OxtFHMi+et6/9l0BdAV2qMA=;
        b=hUBxQvehcJpocdvqCWEjIr2/iIlWhlL37Yr/lBVKCUlQWwM/vfEL9aBi77jUB8HTb0
         FQqtFmFmpTruWBbR/vl4s4o2pMSzpgMyRefCtKvP46pSd/XrCHHgEyELPdXltJvr37RQ
         Prw6LIq40FsiRc90j6cctU/BrZKwhbDOiCjUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Ts6bfdojhInviuOiaxz+OxtFHMi+et6/9l0BdAV2qMA=;
        b=odObxCppQ1e0qfC/V61AODrA669zJxcoog86uj3InYswFYFswXKC+Dc9zdubkj2Zsz
         OSSZrghACS6PZwUN47rIZbetBTixVXs4H5Ic+yeYIK4qwAoBbEU9zFmDRmCRyP5dVEEO
         NZHeD1rBAYl1s8+/+hvU7A4fLpDNFJ9ghoCK4DIxE93AnPleIOKp5A0KCrjXz1G1z+TV
         F/URFjNpV5w8NOvksakr5ZHEHceAi3ZJCQ4ONDXunNjAIrYIY57kadstnaUNc6PIAtuC
         8MO2qGiPMFdtge0bmB4mJfwOI3/5r9RWfRIJgJIL1Qwov6GafnOhyjv3ujl1wYYQa8fx
         xrFQ==
X-Gm-Message-State: APjAAAWvBkPhNY5nwQf1uZQDUo+L9EaUyDokK1tCGdF5iuTM1aogIufy
	h/e/RgsCZjfccy9qeGtbQew+KOOscZeQLIq9cJ+ImYlYng==
X-Google-Smtp-Source: APXvYqwr2JybYKdw5ZQj7TymGeMLkYqS5eXdQSSAUpfSjCejEjUmXl2z9ke5uo5l6zokUxK0MOsFqpyJOWihnUX7Qn4=
X-Received: by 2002:a02:9443:: with SMTP id a61mr9698188jai.35.1570119010797;
 Thu, 03 Oct 2019 09:10:10 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAA8FXenV6WpB3TPD8W=fi+TDsCLrqgDDFhGnfj0Q+PBUHvjdUw@mail.gmail.com>
In-Reply-To: <fd63e16ea8e74eeca5852706930d8076@tencent.com>
Content-Type: multipart/alternative; boundary="000000000000e53042059403d156"
Cc: Vineeth Remanan Pillai <vpillai@digitalocean.com>
Date: Thu, 3 Oct 2019 11:09:59 -0500
From: Tina Li <tli@digitalocean.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-14835: QEMU-KVM Guest to Host Kernel Escape
 Vulnerability: vhost/vhost_net kernel buffer overflow
To: oss-security@lists.openwall.com, peterpi@tencent.com

--000000000000e53042059403d156
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

We are trying to follow your steps to reproduce the attack.

Our host is Ubuntu 18.04.2 LTS.

Guest is installed with Ubuntu 16.04.3 LTS, and we have built the
kernel with attached patches and install the built kernel.

Initially, we were using QEMU 4.1. After running  the echo command to
trigger the bug, the guest kernel crashes every time.

Here is the crash stack trace:

[  322.977160] kernel BUG at drivers/virtio/virtio_ring.c:685!

[  322.978252] invalid opcode: 0000 [#1] SMP PTI

[  322.979077] Modules linked in: kvm_intel kvm irqbypass input_leds
joydev serio_raw ib_iser mac_hid i2c_piix4 rdma_cm iw_cm ib_cm ib_core
configfs iscsi_tcp libiscsi_tcp libiscsi scsi_transport_iscsi autofs4
btrfs zstd_decompress zstd_compress xxhash raid10 raid456
async_raid6_recov async_memcpy async_pq async_xor async_tx xor
raid6_pq libcrc32c raid1 raid0 multipath linear qxl ttm drm_kms_helper
crct10dif_pclmul crc32_pclmul ghash_clmulni_intel pcbc syscopyarea
sysfillrect sysimgblt fb_sys_fops drm aesni_intel pata_acpi aes_x86_64
crypto_simd glue_helper psmouse cryptd virtio_net virtio_scsi floppy

[  322.988821] CPU: 1 PID: 16 Comm: ksoftirqd/1 Not tainted 4.15.18+ #1

[  322.990012] Hardware name:

[  322.991303] RIP: 0010:detach_buf+0x104/0x110

[  322.992116] RSP: 0018:ffffaacd40ce7d50 EFLAGS: 00010246

[  322.993093] RAX: ffff8cda0e668000 RBX: ffff8cda0e4ec000 RCX: 0000000000000081

[  322.994411] RDX: 0000000000000000 RSI: ffff8cda0e668810 RDI: ffff8cda0ef9d400

[  322.995743] RBP: 0000000000000810 R08: 0000000000000000 R09: 0000000000000100

[  322.997068] R10: ffffaacd40ce7bf8 R11: 0000000000000000 R12: 0000000000000600

[  322.998391] R13: ffff8cda0e668810 R14: 0000000000000081 R15: ffff8cda0e4ec810

[  322.999712] FS:  0000000000000000(0000) GS:ffff8cda5fc80000(0000)
knlGS:0000000000000000

[  323.001225] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033

[  323.002285] CR2: 0000000001f74208 CR3: 000000012120a004 CR4: 00000000007606e0

[  323.003598] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000

[  323.004917] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

[  323.006236] PKRU: 55555554

[  323.006759] Call Trace:

[  323.007241]  virtqueue_get_buf_ctx+0x76/0x120

[  323.008058]  virtnet_poll+0x14a/0x300 [virtio_net]

[  323.008955]  ? tcp_delack_timer+0x6e/0xb0

[  323.009717]  net_rx_action+0x27e/0x3d0

[  323.010427]  __do_softirq+0xf8/0x29e

[  323.011125]  run_ksoftirqd+0x1e/0x40

[  323.011809]  smpboot_thread_fn+0x10e/0x160

[  323.012583]  kthread+0xf8/0x130

[  323.013181]  ? sort_range+0x20/0x20

[  323.013835]  ? kthread_destroy_worker+0x40/0x40

[  323.014681]  ret_from_fork+0x35/0x40

[  323.015364] Code: ff 49 c7 87 98 00 00 00 00 00 00 00 eb 10 4d 85
e4 74 0b 49 8b 87 98 00 00 00 49 89 04 24 5b 5d 41 5c 41 5d 41 5e 41
5f c3 0f 0b <0f> 0b 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 44 00 00 8b 47
38 55

[  323.018823] RIP: detach_buf+0x104/0x110 RSP: ffffaacd40ce7d50

[  323.019914] ---[ end trace 1f72aecb3b1ea4dc ]---

[  323.020819] Kernel panic - not syncing: Fatal exception in interrupt

[  323.022684] Kernel Offset: 0x3b000000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)

[  323.024639] ---[ end Kernel panic - not syncing: Fatal exception in interrupt

Setting _vq->indirect when *ctx is non-NULL might be leading to
BUG_ON() at a later point

=>

 684                 BUG_ON(!(vq->vring.desc[head].flags &

 685                          cpu_to_virtio16(vq->vq.vdev,
VRING_DESC_F_INDIRECT)));

Then we revert QEMU to 2.11.2, and re-do the test. In this scenario,
the guest kernel does not crash always, but we are unable to reproduce
the host crash during live migrate.

Please let us know if there is something missing in our test that is
causing the crash? Also, would be great if you could share more of
your environment details like Host OS/kernel, qemu version etc. Thanks
a lot!


Best regards,

Tianlin

--000000000000e53042059403d156--
