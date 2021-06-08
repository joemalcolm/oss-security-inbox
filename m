X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["42707" "Tuesday" "8" "June" "2021" "08:53:42" "+0800" "Lin Horse" "kylin.formalin@gmail.com" nil "826" "[oss-security] CVE-2021-3573: UAF in hci_sock_bound_ioctl() function" nil nil nil "6" nil nil (number mark "U       kylin.formal Jun  8  826/42707 " thread-indent "\"[oss-security] CVE-2021-3573: UAF in hci_sock_bound_ioctl() function\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3573: UAF in hci_sock_bound_ioctl() function" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18383 invoked by uid 550); 8 Jun 2021 11:10:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7955 invoked from network); 8 Jun 2021 00:54:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9+r/OxE3ttynRiCDZEhHACvVl6uMwrCFxBbHiS2Eyjc=;
        b=RyFqpLsBdMcUdiGJbPIyk+qNKUpwfewR5BQnJTBO381rxQWxyGVefPjI5cwyRUiKFp
         8rgxt7ukXwjLTGX9fcwFbsszCbopBngsiy8Jj6TTO6bVZESlZ+2YfV4BwxkOBycKUNeB
         e9/WBLylz3NVT6PkU+nkarXEDZdcR6ENP8Q0yD2T5gIdw4uG5IUefMLOVA0tKDa1oAYh
         EF6vazoKAhnhGfUQWb4oHvuZsfwPaAhk5f4VOe1vSkckf9Fdchvb6UX93eh7hm2Qs+sm
         dmfbq/RVEHtwLwEc4hhBAFZxSwnkILHTdVIXWNuFxLzKz6SqMJI3AGgA2horCHKZvcfn
         VUqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9+r/OxE3ttynRiCDZEhHACvVl6uMwrCFxBbHiS2Eyjc=;
        b=nfrO1gGVdja38OEBgAvEWsvJGMiIYX6knSJHvA96NEsbGVVy71YmzRO25KuilVq/Pd
         4JbtF+YO/ntYlaZSC2dCrwRJ20yE7r2vzBRPqCZgjf9TkNNr0SV6+N85jqOep+YtV6Uw
         JKgrKzgHIvDXw/B3oeuIfYvk123W9J6D2ivO0tXOYd8K5sZxooy4Glca06qN4gjD0PZS
         1ouBlAldUAXAeC6J7LNo3s8OoLQekoZ4QLtyOhF+zAoEzKDI5L5HzQkSGbVnPvZiKK8L
         mHycGiWxco6h5534GKvM7NzPUkY/izfxURBWrtUzdNxkfbJaqddmOoP9hnhKoW7urPRq
         sgmA==
X-Gm-Message-State: AOAM532NQj9VYhmqVIv5yoRss1a3sxPOd/bPXsB2jCIiNF7lI19v1hnv
	jnNAiBWDIMIu4Z81lU0tgbM1DbRNgeLM3O33j3MIzVNaJ/aXl5NI
X-Google-Smtp-Source: ABdhPJyBgFD3Y8tgu5JdwxFcToXuy3590+QluJLR1wrDXFhKLSXzSweoR1JygUOGtokepzMAMdsRCf+D3HfKcyk2rfk=
X-Received: by 2002:a25:4009:: with SMTP id n9mr28111538yba.73.1623113633885;
 Mon, 07 Jun 2021 17:53:53 -0700 (PDT)
MIME-Version: 1.0
From: Lin Horse <kylin.formalin@gmail.com>
Date: Tue, 8 Jun 2021 08:53:42 +0800
Message-ID: <CAJjojJt8okfMvthQWTpfumajdfcFrPvJUWrQ972zca-CMCs+pw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000946fb505c4369717"
Subject: [oss-security] CVE-2021-3573: UAF in hci_sock_bound_ioctl() function

--000000000000946fb505c4369717
Content-Type: multipart/alternative; boundary="000000000000946fb305c4369715"

--000000000000946fb305c4369715
Content-Type: text/plain; charset="UTF-8"

Hello there,

Our team (BlockSec) found an UAF vulnerability in function
hci_sock_bound_ioctl(). It can allow attackers to corrupt kernel heaps
(kmalloc-8k to be specific) and adopt further exploitations.


=*=*=*=*=*=*=*=*=  BUG DETAILS  =*=*=*=*=*=*=*=*=

>>>>>>>> background knowledge <<<<<<<<

The hci_sock_bound_ioctl() function is in charge of five HCI commands.

/* Ioctls that require bound socket */
static int hci_sock_bound_ioctl(struct sock *sk, unsigned int cmd,
                unsigned long arg)
{
    struct hci_dev *hdev = hci_pi(sk)->hdev; // { 1 }

    if (!hdev)
        return -EBADFD;

    /* ..... */

    switch (cmd) {
    case HCISETRAW:
        ...

    case HCIGETCONNINFO:
        ...

    case HCIGETAUTHINFO:
        ...

    case HCIBLOCKADDR:
        ...

    case HCIUNBLOCKADDR:
        ...
    }

    return -ENOIOCTLCMD;
}

As you can see, the biggest difference between functions
hci_sock_bound_ioctl() and hci_sock_ioctl() is that the former one will
derive the hci_dev struct through hci_pi(sk)->hdev. (as code mark { 1 }
shows)

In other words, the bind() syscall needs to be called before the
hci_sock_bound_ioctl() to write this struct. The hdev is obtained through
hci_dev_get(), which based on the counter.

static int hci_sock_bind(struct socket *sock, struct sockaddr *addr,
             int addr_len)
{
    ...
    switch (haddr.hci_channel) {
    case HCI_CHANNEL_RAW:
        ...
            hdev = hci_dev_get(haddr.hci_dev); // { 2 }

        ...
        hci_pi(sk)->hdev = hdev;
        ...
    }
}

>>>>>>>> bug iteself <<<<<<<<

The bug itself is about the UAF of hdev and the root cause is the race
(again).

When the HCI device detaches from the kernel, the function
hci_unregister_dev() will be called. This function will call
hci_sock_dev_event(hdev, HCI_DEV_UNREG) to inform all sockets that this
device is going to be removed. The core logic is presented below.

void hci_sock_dev_event(struct hci_dev *hdev, int event)
{
...
    if (event == HCI_DEV_UNREG) {
        struct sock *sk;

        /* Detach sockets from device */
        read_lock(&hci_sk_list.lock);
        sk_for_each(sk, &hci_sk_list.head) {
            bh_lock_sock_nested(sk);
            if (hci_pi(sk)->hdev == hdev) {
                hci_pi(sk)->hdev = NULL;
                sk->sk_err = EPIPE;
                sk->sk_state = BT_OPEN;
                sk->sk_state_change(sk);

                hci_dev_put(hdev);
            }
            bh_unlock_sock(sk);
        }
        read_unlock(&hci_sk_list.lock);
    }
}

That is, the hci_sock_dev_event() function will release the hdev from the
bounded sockets, all at once.

Therefore, one question arises: Is there any possibility that the
hci_sock_dev_event() in detaching routine take places and release the hdev
while the hci_sock_bound_ioctl() is still working?

Unfortunately, the answer is YES. The hci_sock_dev_event() can release the
hdev and cause the UAF in function hci_sock_bound_ioctl(). This race can be
shown below.

hci_sock_bound_ioctl thread    |    hci_sock_dev_event thread
                               |
                               |
if (!hdev)                     |
    return -EBADFD;            |
                               |
                               |    hci_pi(sk)->hdev = NULL;
                               |    ...
                               |    hci_dev_put(hdev);
// UAF, for example            |
hci_dev_lock(hdev);            |
                               |
                               |
....

It is worth mentioning that the attacker can stably control and trigger
this race with userfaultfd primitive, which will be discussed later.


=*=*=*=*=*=*=*=*=  BUG EFFECTS  =*=*=*=*=*=*=*=*=

There are four different types of functions will be called from the
vulnerable hci_sock_bound_ioctl().

* hci_get_conn_info()
* hci_get_auth_info()
* hci_sock_blacklist_add()
* hci_sock_blacklist_del()

All these functions can have different effects when the UAF of hdev
happens. For example, the hci_sock_blacklist_add() will allow the attacker
to write arbitrary 6 bytes to any place if the released hdev->blacklist can
be sprayed.

static int hci_sock_blacklist_add(struct hci_dev *hdev, void __user *arg)
{
    bdaddr_t bdaddr;
    int err;

    if (copy_from_user(&bdaddr, arg, sizeof(bdaddr)))
        return -EFAULT;

    hci_dev_lock(hdev);

    err = hci_bdaddr_list_add(&hdev->blacklist, &bdaddr, BDADDR_BREDR);
   // the user controlled bdaddr will be insert to list

    hci_dev_unlock(hdev);

    return err;
}

In a nutshell, the UAF of hdev can easily crash the kernel. It can also be
the weapon of skillful hackers (with CAP_NET_ADMIN privilege). Below we
provide the report from KASan.

[   12.663166]
==================================================================
[   12.664161] BUG: KASAN: use-after-free in mutex_lock+0xa9/0x130
[   12.664837] Write of size 8 at addr ffff88800c2ba010 by task exp/125
[   12.665551]
[   12.665731] CPU: 0 PID: 125 Comm: exp Not tainted 5.11.11+ #8
[   12.666378] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.10.2-1ubuntu1 04/01/2014
[   12.667372] Call Trace:
[   12.667661]  dump_stack+0x1b9/0x22e
[   12.668068]  ? show_regs_print_info+0x12/0x12
[   12.668563]  ? log_buf_vmcoreinfo_setup+0x45d/0x45d
[   12.669114]  print_address_description+0x7b/0x3a0
[   12.669646]  __kasan_report+0x14e/0x200
[   12.670084]  ? mutex_lock+0xa9/0x130
[   12.670494]  kasan_report+0x47/0x60
[   12.670894]  check_memory_region+0x2e2/0x330
[   12.671379]  mutex_lock+0xa9/0x130
[   12.671777]  ? mutex_trylock+0xb0/0xb0
[   12.672206]  ? copy_user_generic_string+0x31/0x40
[   12.672742]  hci_get_auth_info+0xbb/0x2b0
[   12.673206]  ? hci_get_conn_info+0x630/0x630
[   12.673696]  ? release_sock+0x155/0x1b0
[   12.674140]  hci_sock_ioctl+0x749/0x900
[   12.674582]  ? hci_sock_getname+0x1d0/0x1d0
[   12.675060]  ? do_vfs_ioctl+0x892/0x1a50
[   12.675514]  ? selinux_file_ioctl+0xd41/0x1200
[   12.676036]  ? __ia32_compat_sys_ioctl+0xc00/0xc00
[   12.676599]  sock_do_ioctl+0xdc/0x310
[   12.677042]  ? sock_show_fdinfo+0xb0/0xb0
[   12.677523]  ? hci_sock_release+0x400/0x400
[   12.677991]  sock_ioctl+0x4a6/0x710
[   12.678386]  ? sock_poll+0x400/0x400
[   12.678816]  ? __sys_socket+0x1c2/0x350
[   12.679275]  ? security_file_ioctl+0xa3/0xc0
[   12.679818]  ? sock_poll+0x400/0x400
[   12.680219]  __se_sys_ioctl+0x101/0x170
[   12.680683]  do_syscall_64+0x33/0x40
[   12.681085]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   12.681675] RIP: 0033:0x7f89a2384247
[   12.682077] Code: 00 00 90 48 8b 05 49 8c 0c 00 64 c7 00 26 00 00 00 48
c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05
<48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 8c 0c 00 f7 d8 64 89 01 48
[   12.684221] RSP: 002b:00007ffd49ce4538 EFLAGS: 00000246 ORIG_RAX:
0000000000000010
[   12.685111] RAX: ffffffffffffffda RBX: 00005623b3401c10 RCX:
00007f89a2384247
[   12.685918] RDX: 00007f89a249e000 RSI: 00000000800448d7 RDI:
0000000000000006
[   12.686752] RBP: 00007ffd49ce45c0 R08: 0000000000000001 R09:
00007f89a1a7c700
[   12.687561] R10: 0000000000000000 R11: 0000000000000246 R12:
00005623b3400d50
[   12.688367] R13: 00007ffd49ce46b0 R14: 0000000000000000 R15:
0000000000000000
[   12.689172]
[   12.689345] Allocated by task 125:
[   12.689758]  ____kasan_kmalloc+0xc6/0x100
[   12.690235]  kmem_cache_alloc_trace+0x124/0x200
[   12.690768]  hci_alloc_dev+0x4d/0x1ab0
[   12.691186]  hci_uart_tty_ioctl+0x3ba/0xa20
[   12.691686]  tty_ioctl+0x11ac/0x1b60
[   12.692121]  __se_sys_ioctl+0x101/0x170
[   12.692581]  do_syscall_64+0x33/0x40
[   12.693011]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   12.693600]
[   12.693773] Freed by task 126:
[   12.694115]  kasan_set_track+0x3d/0x70
[   12.694593]  kasan_set_free_info+0x1f/0x40
[   12.695050]  ____kasan_slab_free+0x10e/0x140
[   12.695551]  kfree+0xeb/0x2d0
[   12.695920]  bt_host_release+0x18/0x20
[   12.696339]  device_release+0x9e/0x1d0
[   12.696791]  kobject_put+0x194/0x2b0
[   12.697188]  hci_uart_tty_close+0x1a7/0x220
[   12.697681]  tty_ldisc_hangup+0x4d7/0x6d0
[   12.698128]  __tty_hangup+0x6b2/0x970
[   12.698569]  tty_release+0x408/0x10e0
[   12.698979]  __fput+0x32f/0x7a0
[   12.699334]  task_work_run+0x15c/0x1e0
[   12.699819]  exit_to_user_mode_prepare+0xeb/0x110
[   12.700338]  syscall_exit_to_user_mode+0x20/0x40
[   12.700880]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   12.701454]
[   12.701641] Last potentially related work creation:
[   12.702175]  kasan_save_stack+0x27/0x50
[   12.702633]  kasan_record_aux_stack+0xbd/0xe0
[   12.703116]  insert_work+0x4f/0x340
[   12.703536]  __queue_work+0x9cc/0xdb0
[   12.703975]  queue_work_on+0xd8/0x130
[   12.704387]  hci_recv_frame+0x182/0x1e0
[   12.704846]  h4_recv_buf+0x904/0xd40
[   12.705245]  h4_recv+0xf4/0x1b0
[   12.705628]  hci_uart_tty_receive+0x1be/0x380
[   12.706111]  tty_ldisc_receive_buf+0x130/0x170
[   12.706633]  tty_port_default_receive_buf+0x6a/0x90
[   12.707172]  flush_to_ldisc+0x2e8/0x510
[   12.707630]  process_one_work+0x6df/0xf80
[   12.708112]  worker_thread+0xac1/0x1340
[   12.708572]  kthread+0x2fc/0x320
[   12.708937]  ret_from_fork+0x22/0x30
[   12.709337]
[   12.709543] Second to last potentially related work creation:
[   12.710169]  kasan_save_stack+0x27/0x50
[   12.710627]  kasan_record_aux_stack+0xbd/0xe0
[   12.711111]  insert_work+0x4f/0x340
[   12.711532]  __queue_work+0x9cc/0xdb0
[   12.711983]  queue_work_on+0xd8/0x130
[   12.712392]  hci_event_packet+0x1bce1/0x23430
[   12.712908]  hci_rx_work+0x2a8/0x780
[   12.713308]  process_one_work+0x6df/0xf80
[   12.713783]  worker_thread+0xac1/0x1340
[   12.714212]  kthread+0x2fc/0x320
[   12.714610]  ret_from_fork+0x22/0x30
[   12.715012]
[   12.715186] The buggy address belongs to the object at ffff88800c2ba000
[   12.715186]  which belongs to the cache kmalloc-8k of size 8192
[   12.716629] The buggy address is located 16 bytes inside of
[   12.716629]  8192-byte region [ffff88800c2ba000, ffff88800c2bc000)
[   12.717930] The buggy address belongs to the page:
[   12.718485] page:(____ptrval____) refcount:1 mapcount:0
mapping:0000000000000000 index:0x0 pfn:0xc2b8
[   12.719519] head:(____ptrval____) order:3 compound_mapcount:0
compound_pincount:0
[   12.720364] flags: 0x100000000010200(slab|head)
[   12.720899] raw: 0100000000010200 ffffea0000346808 ffff888006c41270
ffff888006c4c2c0
[   12.721776] raw: 0000000000000000 0000000000010001 00000001ffffffff
0000000000000000
[   12.722676] page dumped because: kasan: bad access detected
[   12.723287]
[   12.723492] Memory state around the buggy address:
[   12.723961]  ffff88800c2b9f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   12.724547]  ffff88800c2b9f80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   12.725133] >ffff88800c2ba000: fa fb fb fb fb fb fb fb fb fb fb fb fb fb
fb fb
[   12.725718]                          ^
[   12.726028]  ffff88800c2ba080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb
fb fb
[   12.726612]  ffff88800c2ba100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb
fb fb
[   12.727196]
==================================================================
[   12.727784] Disabling lock debugging due to kernel taint


=*=*=*=*=*=*=*=*=  BUG REPRODUCE  =*=*=*=*=*=*=*=*=

As above introduced, this race condition is highly controllable. This is
because the four related functions all call copy_from_user() function after
the check of hdev.

static int hci_sock_blacklist_add(struct hci_dev *hdev, void __user *arg)
{
    bdaddr_t bdaddr;
    int err;

    if (copy_from_user(&bdaddr, arg, sizeof(bdaddr)))
        return -EFAULT;

    ...
}

static int hci_sock_blacklist_del(struct hci_dev *hdev, void __user *arg)
{
    bdaddr_t bdaddr;
    int err;

    if (copy_from_user(&bdaddr, arg, sizeof(bdaddr)))
        return -EFAULT;

    ...
}

int hci_get_conn_info(struct hci_dev *hdev, void __user *arg)
{
    struct hci_conn_info_req req;
    struct hci_conn_info ci;
    struct hci_conn *conn;
    char __user *ptr = arg + sizeof(req);

    if (copy_from_user(&req, arg, sizeof(req)))
        return -EFAULT;

    ...
}

int hci_get_auth_info(struct hci_dev *hdev, void __user *arg)
{
    struct hci_auth_info_req req;
    struct hci_conn *conn;

    if (copy_from_user(&req, arg, sizeof(req)))
        return -EFAULT;

    ...
}

That is, we can adopt userfaultfd to stop these functions and then call the
detach routine to release the hdev object. After the hdev is already freed,
we handle the page fault from copy_from_user() can let these functions
cause UAF. (attacker can further spray the heap during this window)

The provided POC code can be used to prove the feasibility.

=*=*=*=*=*=*=*=*=  Bug FIX  =*=*=*=*=*=*=*=*=

The adopted patch is presented at
https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth.git/commit/?id=e305509e678b3a4af2b3cfd410f409f7cdaabb52

In short, this patch replaces the lock to the correct one for serialization
requirements.

=*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=

2021-05-30: Bug reported to security@kernel.org and
linux-distros@vs.openwall.org
2021-05-31: Patch is adopted into Bluetooth tree
2021-06-01: CVE-2021-3573 is assigned

=*=*=*=*=*=*=*=*=  Credt  =*=*=*=*=*=*=*=*=
LinMa@BlockSec Team
syzkaller of course

Best Regards

--000000000000946fb305c4369715
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace">Hello there,<br><br>Our team (Blo=
ckSec) found an UAF vulnerability in function hci_sock_bound_ioctl(). It ca=
n allow attackers to corrupt kernel heaps (kmalloc-8k to be specific) and a=
dopt further exploitations.<br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =
=C2=A0BUG DETAILS =C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><br>&gt;&gt;=
&gt;&gt;&gt;&gt;&gt;&gt; background knowledge &lt;&lt;&lt;&lt;&lt;&lt;&lt;&=
lt;<br><br>The hci_sock_bound_ioctl() function is in charge of five HCI com=
mands.<br><br>/* Ioctls that require bound socket */<br>static int hci_sock=
_bound_ioctl(struct sock *sk, unsigned int cmd,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 unsigned long arg)<br>{<br>=C2=A0 =C2=A0 st=
ruct hci_dev *hdev =3D hci_pi(sk)-&gt;hdev; // { 1 }<br><br>=C2=A0 =C2=A0 i=
f (!hdev)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EBADFD;<br><br>=C2=A0 =C2=
=A0 /* ..... */<br><br>=C2=A0 =C2=A0 switch (cmd) {<br>=C2=A0 =C2=A0 case H=
CISETRAW:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br><br>=C2=A0 =C2=A0 case HCIG=
ETCONNINFO:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br><br>=C2=A0 =C2=A0 case HC=
IGETAUTHINFO:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br><br>=C2=A0 =C2=A0 case =
HCIBLOCKADDR:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br><br>=C2=A0 =C2=A0 case =
HCIUNBLOCKADDR:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>=C2=A0 =C2=A0 }<br><b=
r>=C2=A0 =C2=A0 return -ENOIOCTLCMD;<br>}<br><br>As you can see, the bigges=
t difference between functions hci_sock_bound_ioctl() and hci_sock_ioctl() =
is that the former one will derive the hci_dev struct through hci_pi(sk)-&g=
t;hdev. (as code mark { 1 } shows)<br><br>In other words, the bind() syscal=
l needs to be called before the hci_sock_bound_ioctl() to write this struct=
. The hdev is obtained through hci_dev_get(), which based on the counter.<b=
r><br>static int hci_sock_bind(struct socket *sock, struct sockaddr *addr,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int addr_len)<br>{<br>=
=C2=A0 =C2=A0 ...<br>=C2=A0 =C2=A0 switch (haddr.hci_channel) {<br>=C2=A0 =
=C2=A0 case HCI_CHANNEL_RAW:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdev =3D hci_dev_get(haddr.hci_dev); // =
{ 2 }<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 hci_pi(sk)-&gt;hdev =3D hdev;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>=C2=A0=
 =C2=A0 }<br>}<br><br>&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; bug iteself &lt;&lt;=
&lt;&lt;&lt;&lt;&lt;&lt;<br><br>The bug itself is about the UAF of hdev and=
 the root cause is the race (again).<br><br>When the HCI device detaches fr=
om the kernel, the function hci_unregister_dev() will be called. This funct=
ion will call hci_sock_dev_event(hdev, HCI_DEV_UNREG) to inform all sockets=
 that this device is going to be removed. The core logic is presented below=
.<br><br>void hci_sock_dev_event(struct hci_dev *hdev, int event)<br>{<br>.=
..<br>=C2=A0 =C2=A0 if (event =3D=3D HCI_DEV_UNREG) {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 struct sock *sk;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Detach so=
ckets from device */<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 read_lock(&amp;hci_sk_l=
ist.lock);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sk_for_each(sk, &amp;hci_sk_list.=
head) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bh_lock_sock_nested(sk=
);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (hci_pi(sk)-&gt;hdev =3D=
=3D hdev) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hci_=
pi(sk)-&gt;hdev =3D NULL;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 sk-&gt;sk_err =3D EPIPE;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 sk-&gt;sk_state =3D BT_OPEN;<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sk-&gt;sk_state_change(sk);<br><br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hci_dev_put(hdev);<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 bh_unlock_sock(sk);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 read_unlock(&amp;hci_sk_list.lock);<br>=C2=A0 =C2=
=A0 }<br>}<br><br>That is, the hci_sock_dev_event() function will release t=
he hdev from the bounded sockets, all at once.<br><br>Therefore, one questi=
on arises: Is there any possibility that the hci_sock_dev_event() in detach=
ing routine take places and release the hdev while the hci_sock_bound_ioctl=
() is still working?<br><br>Unfortunately, the answer is YES. The hci_sock_=
dev_event() can release the hdev and cause the UAF in function hci_sock_bou=
nd_ioctl(). This race can be shown below.<br><br>hci_sock_bound_ioctl threa=
d =C2=A0 =C2=A0| =C2=A0 =C2=A0hci_sock_dev_event thread<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>if (=
!hdev) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 return -EBADFD; =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0hci_pi(sk)-&gt;=
hdev =3D NULL;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0...<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0hci_dev_put(hdev);<br>=
// UAF, for example =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>hci_dev_l=
ock(hdev); =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>....<br>=
<br>It is worth mentioning that the attacker can stably control and trigger=
 this race with userfaultfd primitive, which will be discussed later.<br><b=
r><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG EFFECTS =C2=A0=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><br>There are four different types of functi=
ons will be called from the vulnerable hci_sock_bound_ioctl().<br><br>* hci=
_get_conn_info()<br>* hci_get_auth_info()<br>* hci_sock_blacklist_add()<br>=
* hci_sock_blacklist_del()<br><br>All these functions can have different ef=
fects when the UAF of hdev happens. For example, the hci_sock_blacklist_add=
() will allow the attacker to write arbitrary 6 bytes to any place if the r=
eleased hdev-&gt;blacklist can be sprayed.<br><br>static int hci_sock_black=
list_add(struct hci_dev *hdev, void __user *arg)<br>{<br>=C2=A0 =C2=A0 bdad=
dr_t bdaddr;<br>=C2=A0 =C2=A0 int err;<br><br>=C2=A0 =C2=A0 if (copy_from_u=
ser(&amp;bdaddr, arg, sizeof(bdaddr)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 retur=
n -EFAULT;<br><br>=C2=A0 =C2=A0 hci_dev_lock(hdev);<br><br>=C2=A0 =C2=A0 er=
r =3D hci_bdaddr_list_add(&amp;hdev-&gt;blacklist, &amp;bdaddr, BDADDR_BRED=
R); =C2=A0 =C2=A0 =C2=A0 =C2=A0// the user controlled bdaddr will be insert=
 to list<br><br>=C2=A0 =C2=A0 hci_dev_unlock(hdev);<br><br>=C2=A0 =C2=A0 re=
turn err;<br>}<br><br>In a nutshell, the UAF of hdev can easily crash the k=
ernel. It can also be the weapon of skillful hackers (with CAP_NET_ADMIN pr=
ivilege). Below we provide the report from KASan.<br><br>[ =C2=A0 12.663166=
] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[ =C2=A0 12.664161] =
BUG: KASAN: use-after-free in mutex_lock+0xa9/0x130<br>[ =C2=A0 12.664837] =
Write of size 8 at addr ffff88800c2ba010 by task exp/125<br>[ =C2=A0 12.665=
551]<br>[ =C2=A0 12.665731] CPU: 0 PID: 125 Comm: exp Not tainted 5.11.11+ =
#8<br>[ =C2=A0 12.666378] Hardware name: QEMU Standard PC (i440FX + PIIX, 1=
996), BIOS 1.10.2-1ubuntu1 04/01/2014<br>[ =C2=A0 12.667372] Call Trace:<br=
>[ =C2=A0 12.667661] =C2=A0dump_stack+0x1b9/0x22e<br>[ =C2=A0 12.668068] =
=C2=A0? show_regs_print_info+0x12/0x12<br>[ =C2=A0 12.668563] =C2=A0? log_b=
uf_vmcoreinfo_setup+0x45d/0x45d<br>[ =C2=A0 12.669114] =C2=A0print_address_=
description+0x7b/0x3a0<br>[ =C2=A0 12.669646] =C2=A0__kasan_report+0x14e/0x=
200<br>[ =C2=A0 12.670084] =C2=A0? mutex_lock+0xa9/0x130<br>[ =C2=A0 12.670=
494] =C2=A0kasan_report+0x47/0x60<br>[ =C2=A0 12.670894] =C2=A0check_memory=
_region+0x2e2/0x330<br>[ =C2=A0 12.671379] =C2=A0mutex_lock+0xa9/0x130<br>[=
 =C2=A0 12.671777] =C2=A0? mutex_trylock+0xb0/0xb0<br>[ =C2=A0 12.672206] =
=C2=A0? copy_user_generic_string+0x31/0x40<br>[ =C2=A0 12.672742] =C2=A0hci=
_get_auth_info+0xbb/0x2b0<br>[ =C2=A0 12.673206] =C2=A0? hci_get_conn_info+=
0x630/0x630<br>[ =C2=A0 12.673696] =C2=A0? release_sock+0x155/0x1b0<br>[ =
=C2=A0 12.674140] =C2=A0hci_sock_ioctl+0x749/0x900<br>[ =C2=A0 12.674582] =
=C2=A0? hci_sock_getname+0x1d0/0x1d0<br>[ =C2=A0 12.675060] =C2=A0? do_vfs_=
ioctl+0x892/0x1a50<br>[ =C2=A0 12.675514] =C2=A0? selinux_file_ioctl+0xd41/=
0x1200<br>[ =C2=A0 12.676036] =C2=A0? __ia32_compat_sys_ioctl+0xc00/0xc00<b=
r>[ =C2=A0 12.676599] =C2=A0sock_do_ioctl+0xdc/0x310<br>[ =C2=A0 12.677042]=
 =C2=A0? sock_show_fdinfo+0xb0/0xb0<br>[ =C2=A0 12.677523] =C2=A0? hci_sock=
_release+0x400/0x400<br>[ =C2=A0 12.677991] =C2=A0sock_ioctl+0x4a6/0x710<br=
>[ =C2=A0 12.678386] =C2=A0? sock_poll+0x400/0x400<br>[ =C2=A0 12.678816] =
=C2=A0? __sys_socket+0x1c2/0x350<br>[ =C2=A0 12.679275] =C2=A0? security_fi=
le_ioctl+0xa3/0xc0<br>[ =C2=A0 12.679818] =C2=A0? sock_poll+0x400/0x400<br>=
[ =C2=A0 12.680219] =C2=A0__se_sys_ioctl+0x101/0x170<br>[ =C2=A0 12.680683]=
 =C2=A0do_syscall_64+0x33/0x40<br>[ =C2=A0 12.681085] =C2=A0entry_SYSCALL_6=
4_after_hwframe+0x44/0xa9<br>[ =C2=A0 12.681675] RIP: 0033:0x7f89a2384247<b=
r>[ =C2=A0 12.682077] Code: 00 00 90 48 8b 05 49 8c 0c 00 64 c7 00 26 00 00=
 00 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f=
 05 &lt;48&gt; 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 8c 0c 00 f7 d8 64 89 01 =
48<br>[ =C2=A0 12.684221] RSP: 002b:00007ffd49ce4538 EFLAGS: 00000246 ORIG_=
RAX: 0000000000000010<br>[ =C2=A0 12.685111] RAX: ffffffffffffffda RBX: 000=
05623b3401c10 RCX: 00007f89a2384247<br>[ =C2=A0 12.685918] RDX: 00007f89a24=
9e000 RSI: 00000000800448d7 RDI: 0000000000000006<br>[ =C2=A0 12.686752] RB=
P: 00007ffd49ce45c0 R08: 0000000000000001 R09: 00007f89a1a7c700<br>[ =C2=A0=
 12.687561] R10: 0000000000000000 R11: 0000000000000246 R12: 00005623b3400d=
50<br>[ =C2=A0 12.688367] R13: 00007ffd49ce46b0 R14: 0000000000000000 R15: =
0000000000000000<br>[ =C2=A0 12.689172]<br>[ =C2=A0 12.689345] Allocated by=
 task 125:<br>[ =C2=A0 12.689758] =C2=A0____kasan_kmalloc+0xc6/0x100<br>[ =
=C2=A0 12.690235] =C2=A0kmem_cache_alloc_trace+0x124/0x200<br>[ =C2=A0 12.6=
90768] =C2=A0hci_alloc_dev+0x4d/0x1ab0<br>[ =C2=A0 12.691186] =C2=A0hci_uar=
t_tty_ioctl+0x3ba/0xa20<br>[ =C2=A0 12.691686] =C2=A0tty_ioctl+0x11ac/0x1b6=
0<br>[ =C2=A0 12.692121] =C2=A0__se_sys_ioctl+0x101/0x170<br>[ =C2=A0 12.69=
2581] =C2=A0do_syscall_64+0x33/0x40<br>[ =C2=A0 12.693011] =C2=A0entry_SYSC=
ALL_64_after_hwframe+0x44/0xa9<br>[ =C2=A0 12.693600]<br>[ =C2=A0 12.693773=
] Freed by task 126:<br>[ =C2=A0 12.694115] =C2=A0kasan_set_track+0x3d/0x70=
<br>[ =C2=A0 12.694593] =C2=A0kasan_set_free_info+0x1f/0x40<br>[ =C2=A0 12.=
695050] =C2=A0____kasan_slab_free+0x10e/0x140<br>[ =C2=A0 12.695551] =C2=A0=
kfree+0xeb/0x2d0<br>[ =C2=A0 12.695920] =C2=A0bt_host_release+0x18/0x20<br>=
[ =C2=A0 12.696339] =C2=A0device_release+0x9e/0x1d0<br>[ =C2=A0 12.696791] =
=C2=A0kobject_put+0x194/0x2b0<br>[ =C2=A0 12.697188] =C2=A0hci_uart_tty_clo=
se+0x1a7/0x220<br>[ =C2=A0 12.697681] =C2=A0tty_ldisc_hangup+0x4d7/0x6d0<br=
>[ =C2=A0 12.698128] =C2=A0__tty_hangup+0x6b2/0x970<br>[ =C2=A0 12.698569] =
=C2=A0tty_release+0x408/0x10e0<br>[ =C2=A0 12.698979] =C2=A0__fput+0x32f/0x=
7a0<br>[ =C2=A0 12.699334] =C2=A0task_work_run+0x15c/0x1e0<br>[ =C2=A0 12.6=
99819] =C2=A0exit_to_user_mode_prepare+0xeb/0x110<br>[ =C2=A0 12.700338] =
=C2=A0syscall_exit_to_user_mode+0x20/0x40<br>[ =C2=A0 12.700880] =C2=A0entr=
y_SYSCALL_64_after_hwframe+0x44/0xa9<br>[ =C2=A0 12.701454]<br>[ =C2=A0 12.=
701641] Last potentially related work creation:<br>[ =C2=A0 12.702175] =C2=
=A0kasan_save_stack+0x27/0x50<br>[ =C2=A0 12.702633] =C2=A0kasan_record_aux=
_stack+0xbd/0xe0<br>[ =C2=A0 12.703116] =C2=A0insert_work+0x4f/0x340<br>[ =
=C2=A0 12.703536] =C2=A0__queue_work+0x9cc/0xdb0<br>[ =C2=A0 12.703975] =C2=
=A0queue_work_on+0xd8/0x130<br>[ =C2=A0 12.704387] =C2=A0hci_recv_frame+0x1=
82/0x1e0<br>[ =C2=A0 12.704846] =C2=A0h4_recv_buf+0x904/0xd40<br>[ =C2=A0 1=
2.705245] =C2=A0h4_recv+0xf4/0x1b0<br>[ =C2=A0 12.705628] =C2=A0hci_uart_tt=
y_receive+0x1be/0x380<br>[ =C2=A0 12.706111] =C2=A0tty_ldisc_receive_buf+0x=
130/0x170<br>[ =C2=A0 12.706633] =C2=A0tty_port_default_receive_buf+0x6a/0x=
90<br>[ =C2=A0 12.707172] =C2=A0flush_to_ldisc+0x2e8/0x510<br>[ =C2=A0 12.7=
07630] =C2=A0process_one_work+0x6df/0xf80<br>[ =C2=A0 12.708112] =C2=A0work=
er_thread+0xac1/0x1340<br>[ =C2=A0 12.708572] =C2=A0kthread+0x2fc/0x320<br>=
[ =C2=A0 12.708937] =C2=A0ret_from_fork+0x22/0x30<br>[ =C2=A0 12.709337]<br=
>[ =C2=A0 12.709543] Second to last potentially related work creation:<br>[=
 =C2=A0 12.710169] =C2=A0kasan_save_stack+0x27/0x50<br>[ =C2=A0 12.710627] =
=C2=A0kasan_record_aux_stack+0xbd/0xe0<br>[ =C2=A0 12.711111] =C2=A0insert_=
work+0x4f/0x340<br>[ =C2=A0 12.711532] =C2=A0__queue_work+0x9cc/0xdb0<br>[ =
=C2=A0 12.711983] =C2=A0queue_work_on+0xd8/0x130<br>[ =C2=A0 12.712392] =C2=
=A0hci_event_packet+0x1bce1/0x23430<br>[ =C2=A0 12.712908] =C2=A0hci_rx_wor=
k+0x2a8/0x780<br>[ =C2=A0 12.713308] =C2=A0process_one_work+0x6df/0xf80<br>=
[ =C2=A0 12.713783] =C2=A0worker_thread+0xac1/0x1340<br>[ =C2=A0 12.714212]=
 =C2=A0kthread+0x2fc/0x320<br>[ =C2=A0 12.714610] =C2=A0ret_from_fork+0x22/=
0x30<br>[ =C2=A0 12.715012]<br>[ =C2=A0 12.715186] The buggy address belong=
s to the object at ffff88800c2ba000<br>[ =C2=A0 12.715186] =C2=A0which belo=
ngs to the cache kmalloc-8k of size 8192<br>[ =C2=A0 12.716629] The buggy a=
ddress is located 16 bytes inside of<br>[ =C2=A0 12.716629] =C2=A08192-byte=
 region [ffff88800c2ba000, ffff88800c2bc000)<br>[ =C2=A0 12.717930] The bug=
gy address belongs to the page:<br>[ =C2=A0 12.718485] page:(____ptrval____=
) refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0xc2b8<br>[ =
=C2=A0 12.719519] head:(____ptrval____) order:3 compound_mapcount:0 compoun=
d_pincount:0<br>[ =C2=A0 12.720364] flags: 0x100000000010200(slab|head)<br>=
[ =C2=A0 12.720899] raw: 0100000000010200 ffffea0000346808 ffff888006c41270=
 ffff888006c4c2c0<br>[ =C2=A0 12.721776] raw: 0000000000000000 000000000001=
0001 00000001ffffffff 0000000000000000<br>[ =C2=A0 12.722676] page dumped b=
ecause: kasan: bad access detected<br>[ =C2=A0 12.723287]<br>[ =C2=A0 12.72=
3492] Memory state around the buggy address:<br>[ =C2=A0 12.723961] =C2=A0f=
fff88800c2b9f00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc<br>[ =C2=
=A0 12.724547] =C2=A0ffff88800c2b9f80: fc fc fc fc fc fc fc fc fc fc fc fc =
fc fc fc fc<br>[ =C2=A0 12.725133] &gt;ffff88800c2ba000: fa fb fb fb fb fb =
fb fb fb fb fb fb fb fb fb fb<br>[ =C2=A0 12.725718] =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^<br>[=
 =C2=A0 12.726028] =C2=A0ffff88800c2ba080: fb fb fb fb fb fb fb fb fb fb fb=
 fb fb fb fb fb<br>[ =C2=A0 12.726612] =C2=A0ffff88800c2ba100: fb fb fb fb =
fb fb fb fb fb fb fb fb fb fb fb fb<br>[ =C2=A0 12.727196] =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[ =C2=A0 12.727784] Disabling lock deb=
ugging due to kernel taint<br><br><br>=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =
=C2=A0BUG REPRODUCE =C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<br><br>As abo=
ve introduced, this race condition is highly controllable. This is because =
the four related functions all call copy_from_user() function after the che=
ck of hdev.<br><br>static int hci_sock_blacklist_add(struct hci_dev *hdev, =
void __user *arg)<br>{<br>=C2=A0 =C2=A0 bdaddr_t bdaddr;<br>=C2=A0 =C2=A0 i=
nt err;<br><br>=C2=A0 =C2=A0 if (copy_from_user(&amp;bdaddr, arg, sizeof(bd=
addr)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EFAULT;<br><br>=C2=A0 =C2=A0=
 ...<br>}<br><br>static int hci_sock_blacklist_del(struct hci_dev *hdev, vo=
id __user *arg)<br>{<br>=C2=A0 =C2=A0 bdaddr_t bdaddr;<br>=C2=A0 =C2=A0 int=
 err;<br><br>=C2=A0 =C2=A0 if (copy_from_user(&amp;bdaddr, arg, sizeof(bdad=
dr)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EFAULT;<br><br>=C2=A0 =C2=A0 .=
..<br>}<br><br>int hci_get_conn_info(struct hci_dev *hdev, void __user *arg=
)<br>{<br>=C2=A0 =C2=A0 struct hci_conn_info_req req;<br>=C2=A0 =C2=A0 stru=
ct hci_conn_info ci;<br>=C2=A0 =C2=A0 struct hci_conn *conn;<br>=C2=A0 =C2=
=A0 char __user *ptr =3D arg + sizeof(req);<br><br>=C2=A0 =C2=A0 if (copy_f=
rom_user(&amp;req, arg, sizeof(req)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return=
 -EFAULT;<br><br>=C2=A0 =C2=A0 ...<br>}<br><br>int hci_get_auth_info(struct=
 hci_dev *hdev, void __user *arg)<br>{<br>=C2=A0 =C2=A0 struct hci_auth_inf=
o_req req;<br>=C2=A0 =C2=A0 struct hci_conn *conn;<br><br>=C2=A0 =C2=A0 if =
(copy_from_user(&amp;req, arg, sizeof(req)))<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return -EFAULT;<br><br>=C2=A0 =C2=A0 ...<br>}<br><br>That is, we can adopt=
 userfaultfd to stop these functions and then call the detach routine to re=
lease the hdev object. After the hdev is already freed, we handle the page =
fault from copy_from_user() can let these functions cause UAF. (attacker ca=
n further spray the heap during this window)<br><br>The provided POC code c=
an be used to prove the feasibility.</font><div><font face=3D"monospace"><b=
r></font></div><div><font face=3D"monospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D =C2=A0Bug FIX =C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</font><br><=
font face=3D"monospace"><br>The adopted patch is presented at=C2=A0<a href=
=3D"https://git.kernel.org/pub/scm/linux/kernel/git/bluetooth/bluetooth.git=
/commit/?id=3De305509e678b3a4af2b3cfd410f409f7cdaabb52">https://git.kernel.=
org/pub/scm/linux/kernel/git/bluetooth/bluetooth.git/commit/?id=3De305509e6=
78b3a4af2b3cfd410f409f7cdaabb52</a></font></div><div><font face=3D"monospac=
e"><br></font></div><div><font face=3D"monospace">In short, this patch repl=
aces the lock to the correct one for serialization requirements.</font></di=
v><div><font face=3D"monospace"><br></font></div><div><font face=3D"monospa=
ce">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0Timeline=C2=A0 =3D*=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D</font><br></div><div><font face=3D"monospace"><br><=
/font></div><div><font face=3D"monospace">2021-05-30: Bug reported to <a hr=
ef=3D"mailto:security@kernel.org">security@kernel.org</a> and=C2=A0<a href=
=3D"mailto:linux-distros@vs.openwall.org">linux-distros@vs.openwall.org</a>=
</font></div><div><font face=3D"monospace">2021-05-31: Patch is adopted int=
o Bluetooth tree</font></div><div><font face=3D"monospace">2021-06-01: CVE-=
2021-3573 is assigned</font></div><div><br></div><div><div><font face=3D"mo=
nospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0Credt=C2=A0 =3D*=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D</font></div></div><div><font face=3D"monospace">Lin=
Ma@BlockSec Team</font></div><div><font face=3D"monospace">syzkaller of cou=
rse</font></div><div><span style=3D"font-family:monospace"><br></span></div=
><div><span style=3D"font-family:monospace">Best Regards</span></div></div>

--000000000000946fb305c4369715--

--000000000000946fb505c4369717
Content-Type: application/zip; name="POC.zip"
Content-Disposition: attachment; filename="POC.zip"
Content-Transfer-Encoding: base64
Content-ID: <f_kpnbxt8p0>
X-Attachment-Id: f_kpnbxt8p0

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
AAAAAA==

--000000000000946fb505c4369717--

