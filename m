X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4703" "Tuesday" "20" "February" "2018" "12:19:13" "+0000" "Mohamed Ghannam" "simo.ghannam@gmail.com" "<CAP8jf_AP5Pesoa96fjSOvUcWy74Oc6ryBK9EtQ9g53wQUYOsZg@mail.gmail.com>" "126" "Re: [oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition" nil nil nil "2" "2018022012:19:13" "[oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition" (number mark "U       simo.ghannam Feb 20  126/4703  " thread-indent "\"Re: [oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition\"\n") "<a723f5ff-7a36-2f89-3c13-e22c6c3558c8@linux.com>" ("<CAP8jf_BKWuYGsqrNUCbJgCFUJv0nJvp+eiKEy3Ati0FYaCED0Q@mail.gmail.com>" "<a723f5ff-7a36-2f89-3c13-e22c6c3558c8@linux.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20276 invoked by uid 550); 20 Feb 2018 12:40:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1437 invoked from network); 20 Feb 2018 12:19:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=EPA0szygXNgPm9VD/JMqKDj0Abbtk6F85sEDcHsQRGQ=;
        b=TFk1j3w/iuFpTWLM81yDTSe4GcsN6QgMsvT42yANiapEvuEnybjjki7B5yj/iUv2eI
         A/Uy4DZws620bERkGoCu2TDlgzN685XSskng/4IjMUmj/7MrgZcu/+ShnWlVP2sCwThv
         hKb8kIawU5+GFkfrz6gkVsPMo6JDCr3vH1NTkZkOxUGbm/GKYjcvZ3fWx3foohrrbVrY
         ockhRjOaNwFOKKhJJ+tuCQnhlsYnvQSTMXUxtM4gkfCroksfD4dDS4Dj3hcN/MKhYYR7
         7rhOebDZJ33fHMX0Nq7fFTraiMsaDDExOjyRicv7ih1JRbo9zGSHvzt+zVLHqlQo5cqh
         YReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=EPA0szygXNgPm9VD/JMqKDj0Abbtk6F85sEDcHsQRGQ=;
        b=Ieir4IutlgnpjD38DQzcmmlMaMCYj4K7UYNcAl8Xb724Wck+n9UfH6FmnFoDgSvcXq
         iyZyhoHGNYeThd/PT3WJoXk0UedUHfAIr2ev1216tvPWdg95aoa3HNZfh2D+OfGHGdzt
         84RKhqpFLSJNWmYsawkCM47iOKyH9PbyxWA7VxK+zXLCskauIulqolbCp7qwD6FdN2KK
         Jaq6qAJppeKHkk+ZYogxNKFibMgQNXfKI3pQQWjc8OgVA2lukG03nZZKGknC2+JKpFSU
         uP5/DsP58JhVYhw9CZewC3JR3YyQAQ4lZXSpfL4c5s4JrStipdUt4YH1z0TF6Zn0piVu
         94ZA==
X-Gm-Message-State: APf1xPBfb3hJfkjKO35KHsYpT4AV2WujPhiBeIMzIGZReUbpgY1Ak1Fv
	SOt+znBfWJp/33LCLv2sjWq3AoSeNzpyk7n0P/Q=
X-Google-Smtp-Source: AH8x224YOI2/1Hv7TKm9Rq7u9ux2/HNB++SsB/VshUJ+ORCOibNnf26KMSMkKpKmgJm26h5P6rG/MwIH9H34Naq7QP8=
X-Received: by 10.200.0.89 with SMTP id i25mr30696761qtg.85.1519129153838;
 Tue, 20 Feb 2018 04:19:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <a723f5ff-7a36-2f89-3c13-e22c6c3558c8@linux.com>
References: <CAP8jf_BKWuYGsqrNUCbJgCFUJv0nJvp+eiKEy3Ati0FYaCED0Q@mail.gmail.com>
 <a723f5ff-7a36-2f89-3c13-e22c6c3558c8@linux.com>
From: Mohamed Ghannam <simo.ghannam@gmail.com>
Date: Tue, 20 Feb 2018 12:19:13 +0000
Message-ID: <CAP8jf_AP5Pesoa96fjSOvUcWy74Oc6ryBK9EtQ9g53wQUYOsZg@mail.gmail.com>
To: alex.popov@linux.com
Cc: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="f403045e72da9522da0565a3d1f1"
Subject: Re: [oss-security] CVE-2017-17712 net/ipv4/raw.c: raw_sendmsg() race condition

--f403045e72da9522da0565a3d1f1
Content-Type: text/plain; charset="UTF-8"

Hi,

It looks great!, awesome work

Cheers,
Mohamed

2018-02-20 9:45 GMT+00:00 Alexander Popov <alex.popov@linux.com>:

> Hello Mohamed,
>
> On 16.12.2017 03:29, Mohamed Ghannam wrote:
> > Hi,
> >
> > This is an announcement for CVE-2017-17712 which is a race condition
> leads to
> > uninitialized stack variable, this might be used to gain code execution.
> >
> > The bug was introduced  here
> > : https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/
> linux.git/commit/?id=c008ba5bdc9fa830e1a349b20b0be5a137bdef7a
> >
> > And fixed here :
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/
> linux.git/commit/?id=8f659a03a0ba9289b9aeb9b4470e6fb263d6f483
>
> Thanks a lot for your report, PoC and patch fixing the issue. Really great!
>
> The exploitation of this kind of vulnerabilities should be blocked by
> STACKLEAK.
>
> STACKLEAK is a Linux kernel hardening feature initially developed by
> Grsecurity/PaX. I'm doing my best to introduce it to the mainline kernel:
> http://www.openwall.com/lists/kernel-hardening/2018/02/16/2
>
> > By spraying the stack with controlled user data , we can take control of
> msg
> > pointer which is used later in ip_append_data().
>
> I've tested your PoC against the kernel with STACKLEAK. The msg pointer is
> now
> initialized with STACKLEAK_POISON (-0xBEEF), which points to the unused
> hole in
> the virtual memory map.
>
> So the access to msg->msg_iter gives the following:
>
> [    8.806868] BUG: unable to handle kernel paging request at
> ffffffffffff4121
> [    8.807738] IP: csum_and_copy_from_iter_full+0x2d/0x400
> [    8.807738] PGD 220c067 P4D 220c067 PUD 220e067 PMD 0
> [    8.807738] Oops: 0000 [#1] SMP PTI
> [    8.807738] Dumping ftrace buffer:
> [    8.807738]    (ftrace buffer empty)
> [    8.807738] Modules linked in:
> [    8.807738] CPU: 0 PID: 2893 Comm: poc Not tainted 4.16.0-rc1+ #4
> [    8.807738] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> Ubuntu-1.8.2-1ubuntu1 04/01/2014
> [    8.807738] RIP: 0010:csum_and_copy_from_iter_full+0x2d/0x400
> [    8.807738] RSP: 0018:ffffc900015679c0 EFLAGS: 00010246
> [    8.807738] RAX: 0000000000000000 RBX: 0000000000006400 RCX:
> ffffffffffff4121
> [    8.807738] RDX: ffffc90001567a44 RSI: 0000000000006400 RDI:
> ffff88003d398024
> [    8.807738] RBP: ffffffffffff4111 R08: 0000000000000000 R09:
> ffff88003d0291c0
> [    8.807738] R10: 0000000000000000 R11: 0000000000000001 R12:
> 0000000000000000
> [    8.807738] R13: ffffffffffff4121 R14: 0000000000006400 R15:
> ffff88003d2e6b10
> [    8.807738] FS:  00007f671dff4700(0000) GS:ffff88003ec00000(0000)
> knlGS:0000000000000000
> [    8.807738] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [    8.807738] CR2: ffffffffffff4121 CR3: 000000003e044000 CR4:
> 00000000000006f0
> [    8.807738] Call Trace:
> [    8.807738]  ? __kmalloc_reserve.isra.41+0x32/0x80
> [    8.807738]  ip_generic_getfrag+0x84/0xc0
> [    8.807738]  __ip_append_data.isra.48+0x69c/0x8a0
> [    8.807738]  ? raw_destroy+0x20/0x20
> [    8.807738]  ? raw_destroy+0x20/0x20
> [    8.807738]  ip_append_data.part.50+0x6f/0xd0
> [    8.807738]  raw_sendmsg+0x432/0xa30
> [    8.807738]  ? _copy_from_user+0x44/0x70
> [    8.807738]  ? rw_copy_check_uvector+0x5b/0x110
> [    8.807738]  sock_sendmsg+0x37/0x40
> [    8.807738]  ___sys_sendmsg+0x269/0x2c0
> [    8.807738]  ? __sys_sendmsg+0x55/0x90
> [    8.807738]  __sys_sendmsg+0x55/0x90
> [    8.807738]  do_syscall_64+0x63/0x120
> [    8.807738]  entry_SYSCALL_64_after_hwframe+0x21/0x86
> [    8.807738] RIP: 0033:0x7f6780c68e90
> [    8.807738] RSP: 002b:00007f671dff3f00 EFLAGS: 00000293 ORIG_RAX:
> 000000000000002e
> [    8.807738] RAX: ffffffffffffffda RBX: 0000000000000003 RCX:
> 00007f6780c68e90
> [    8.807738] RDX: 0000000000000000 RSI: 0000000001ec6010 RDI:
> 0000000000000003
> [    8.807738] RBP: 0000000001ec6010 R08: 0000000000000000 R09:
> 00007f671dff4700
> [    8.807738] R10: 00007f671dff3f40 R11: 0000000000000293 R12:
> 0000000000000000
> [    8.807738] R13: 00007ffcbe8d1c9f R14: 0000000000000000 R15:
> 00007f6781099040
> [    8.807738] Code: 41 56 49 89 f6 41 55 41 54 49 89 cd 55 53 48 83 ec 48
> 65 48
> 8b 04 25 28 00 00 00 48 89 44 24 40 31 c0 48 89 7c 24 08 48 89 14 24 <41>
> 8b 45
> 00 a8 08 0f 85 58 01 00 00 4d 39 75 10 72 79 48 8b 3c
> [    8.807738] RIP: csum_and_copy_from_iter_full+0x2d/0x400 RSP:
> ffffc900015679c0
> [    8.807738] CR2: ffffffffffff4121
> [    8.807738] ---[ end trace d60ea40e033c90b3 ]---
>
>
> Do you think the attacker is able to bypass it?
> Thanks a lot again!
>
> Best regards,
> Alexander
>

--f403045e72da9522da0565a3d1f1--
