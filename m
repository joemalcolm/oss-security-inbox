X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3681" "Monday" "12" "June" "2017" "19:27:51" "+0200" "Alexander Potapenko" "glider@google.com" "<CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>" "85" "[oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer" "^Cc:" nil nil "6" "2017061217:27:51" "[oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer" (number mark "        glider@googl Jun 12   85/3681  " thread-indent "\"[oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13492 invoked by uid 550); 12 Jun 2017 17:34:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7408 invoked from network); 12 Jun 2017 17:28:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=JD9h3VmTgarqAn1DXQ27fTk9oig9j8wMSocsPibvo60=;
        b=Cx9UtZzav3m3iYMJeHx5vVGVbaxCx58XGNQ1IlQMW9m6Zm7u/4HPXK8leuz4AANoJA
         s8t2kCi1cmom7BtbWFu2c0O9vMn2fNaAzcZp5MTYruJkOxTM/MlvK1b+PyhHKpyhSbmW
         4DLi+NYIACoEKc8C1xTie4N5ejFAr1CV8vxj2b6bKKFZo8sqdFC/IKolc9S0JhH4uGv9
         t1zU24uJqgl/HZSKIaNcfxdohWrsoqlvcXxDfMEoq63QDQKywQz0wBXZUPPR61KP3EVI
         tPquNTt65gmdmCDB/3/l6Q5KZIVSdCPSrexJJtO01sJ6XKpj0tXVVTlimKAguh2k/g9v
         lQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=JD9h3VmTgarqAn1DXQ27fTk9oig9j8wMSocsPibvo60=;
        b=rFIEi75glN0wvTG311fbQjH/AZ5BaUOX+ks4S+e48LZE/lFLW2srueOfXop8IcnvhK
         +uPFzHJ887OainE4z1BbKXmpv31e29+bvRMchGjHOl3PizTfTYi3B0r3T1WCAkBNvdhc
         t7wpV9B6k/rf3RwwOQJ/eoM5X8xAExYL3Dpbb/3BUkfn6XTJCVoADhJKAJ3/KHzxeVJ8
         zFzxco63kknZy1LSyH/W/D025p16ZU3ELBnerUQQU3nhOgnQeE4uRXizNGgDlEfwcIKp
         j13N/f8s/zqgTDQtQRi2TkhK/DWIHvqAiePZQNkmo6QPGYTnUfwu4Ukz83DsOHpIV7Xj
         X2gQ==
X-Gm-Message-State: AODbwcCq0lYpz0fYGblP5tRwTFn4Oa1r5SFDx10MAdbI2zZmcYLQKBnZ
	8qzdAGqRqx0Z8pI2PZ1/dn7nSHaOKP7+CkRFhg==
X-Received: by 10.31.61.13 with SMTP id k13mr20686679vka.43.1497288472080;
 Mon, 12 Jun 2017 10:27:52 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAG_fn=W+kiQAmmtXeEwECmyabiJwaEQVyxo0D29-PTXwzgF9jg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: Dmitriy Vyukov <dvyukov@google.com>, Kostya Serebryany <kcc@google.com>, Takashi Iwai <tiwai@suse.de>, 
	Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 12 Jun 2017 19:27:51 +0200
From: Alexander Potapenko <glider@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Linux kernel 2.6.0 to 4.12-rc4 infoleak due to a data race in ALSA timer
To: oss-security@lists.openwall.com

Hi all,

Until recently, /dev/snd/timer driver was prone to a data race, which
led to uninitialized memory from the kernel heap being copied to the
userspace.
KernelMemorySanitizer (http://github.com/google/kmsan) reported it as
follows (line numbers relative to 4.11-rc5):

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
BUG: KMSAN: use of uninitialized memory in snd_timer_user_read+0x6c4/0xa10
CPU: 0 PID: 1037 Comm: probe Not tainted 4.11.0-rc5+ #2739
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS Bochs 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:16
 dump_stack+0x143/0x1b0 lib/dump_stack.c:52
 kmsan_report+0x12a/0x180 mm/kmsan/kmsan.c:1007
 kmsan_check_memory+0xc2/0x140 mm/kmsan/kmsan.c:1086
 copy_to_user ./arch/x86/include/asm/uaccess.h:725
 snd_timer_user_read+0x6c4/0xa10 sound/core/timer.c:2004
 do_loop_readv_writev fs/read_write.c:716
 __do_readv_writev+0x94c/0x1380 fs/read_write.c:864
 do_readv_writev fs/read_write.c:894
 vfs_readv fs/read_write.c:908
 do_readv+0x52a/0x5d0 fs/read_write.c:934
 SYSC_readv+0xb6/0xd0 fs/read_write.c:1021
 SyS_readv+0x87/0xb0 fs/read_write.c:1018
 entry_SYSCALL_64_fastpath+0x13/0x94 arch/x86/entry/entry_64.S:204
RIP: 0033:0x43fb70
RSP: 002b:00007f736e41a930 EFLAGS: 00000293 ORIG_RAX: 0000000000000013
RAX: ffffffffffffffda RBX: 00007f736e41b700 RCX: 000000000043fb70
RDX: 0000000000000001 RSI: 00007f736e41a980 RDI: 0000000000000003
RBP: 00007ffe39b29920 R08: 0000000000000000 R09: 00007f736e41b700
R10: 00007f736e41b9d0 R11: 0000000000000293 R12: 0000000000000000
R13: 0000000000000000 R14: 00007f736e41b9c0 R15: 00007f736e41b700
origin: 00000000b2800057
 save_stack_trace+0x59/0x60 arch/x86/kernel/stacktrace.c:59
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:352
 kmsan_internal_poison_shadow+0xb1/0x1a0 mm/kmsan/kmsan.c:247
 kmsan_kmalloc+0x7f/0xe0 mm/kmsan/kmsan.c:387
 __kmalloc+0x1bb/0x260 mm/slub.c:3788
 kmalloc ./include/linux/slab.h:495
 snd_timer_user_tselect sound/core/timer.c:1636
 __snd_timer_user_ioctl sound/core/timer.c:1914
 snd_timer_user_ioctl+0x2c46/0x5af0 sound/core/timer.c:1944
 vfs_ioctl fs/ioctl.c:45
 do_vfs_ioctl+0xa8e/0x2060 fs/ioctl.c:685
 SYSC_ioctl+0x20d/0x2a0 fs/ioctl.c:700
 SyS_ioctl+0x87/0xb0 fs/ioctl.c:691
 entry_SYSCALL_64_fastpath+0x13/0x94 arch/x86/entry/entry_64.S:204
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The above means that the heap buffer allocated in
snd_timer_user_tselect() while handling ioctl(fd,
SNDRV_TIMER_IOCTL_SELECT, ...) sometimes remains uninitialized till
it's being copied to user space by a readv() call.

The bug allows a local user having access to /dev/snd/timer to sniff
data belonging to other users, if that data was previously copied to
the kernel space.

Takashi Iwai has fixed the issue in the upstream kernel in the
following commits:
https://github.com/torvalds/linux/commit/d11662f4f798b50d8c8743f433842c3e40=
fe3378
https://github.com/torvalds/linux/commit/ba3021b2c79b2fa9114f92790a99deb27a=
65b728

I'll be disclosing the PoC exploit for this bug on Tuesday, June 20,
16:00 CEST, unless other exploits for the same issue appear earlier.

--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Matthew Scott Sucherman, Paul Terence Manicle
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg
