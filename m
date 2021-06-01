X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["53789" "Tuesday" "1" "June" "2021" "09:17:12" "+0800" "Mart111n" "mmmart11nnnnn@gmail.com" nil "908" "[oss-security] Re: CVE-2021-3564 Linux Bluetooth device initialization implementation bug" nil nil nil "6" nil nil (number mark "U       mmmart11nnnn Jun  1  908/53789 " thread-indent "\"[oss-security] Re: CVE-2021-3564 Linux Bluetooth device initialization implementation bug\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-3564 Linux Bluetooth device initialization implementation bug" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23681 invoked by uid 550); 1 Jun 2021 10:17:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11534 invoked from network); 1 Jun 2021 01:17:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Ryygipw8qM6qFini2JWZeK7XO3TRifrUFyxFPpw1Zko=;
        b=mZtIT4iVcDvW3T4TCpZEMNs4RkOlDHR5q6T5sbDdXaFSVndrqfGnwyfabsHHJB8nCJ
         PDrp23YppqyKR0lsbp4mnZEJQXqVBVFN5kkg9hcuOOAUHz4Kw3oOlQHrT+L4ItYCr+Tf
         wJrf/4muXBOU2ROr35yH5QBaOO0tJeqm03xiSjLPTjLfRHuMeHGAyXsb2UfL8WJi0W5V
         qwlg1/Y/UXUsM9a/YJm6a+LNKPqeekZxEKcTK3ssSCdSwsU/vDOoKvhQsbMtqsemeQa9
         dnk8ZxkqhAqiiBdk+k8VyIgA1Q/N/6ZRpiNUulDkyRO40SW5CW4pnMxXdd4LnEnfhk84
         rLlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Ryygipw8qM6qFini2JWZeK7XO3TRifrUFyxFPpw1Zko=;
        b=HBtWiJA/E0yJXtf6sNxRK8noi0zEwuHP/6abTwkdlic46CrswuMD2BL9GP7kAbOOTH
         DBpJbT+uyIFveCYoNIpuJ2j3CqOq12JdyN6lv2gTk44ZEUtQ0C/W9ID7BZz7h+dep9+6
         rctvBq7j5J6FPi6R6m5z84LO6HX6EGTm/EOb+/vxxNwKcHnHXZwQihKCtcE/IXTEmBs1
         TjJpADdH2IfJE4hbSYUdIcOEcVKIev5XjZeYes69k2fVKMEF65tQCB5G8BrpLwrrUhR0
         Ug73+iM0LylhWwaxKTZJhVt7kzHrs/JxwvKGT28lsPBxGonWDhxpDJi3hXc1153sqtf7
         wc2w==
X-Gm-Message-State: AOAM533+modhUbzSVHW+oswHP6loU8JN7xD6IZ1nw2oA8PBMz/4xkW4T
	r+kZ+07It5ItdAXkjlS0UFgXYueKmpKGjliT/wYCzM5Oc78kwfbC
X-Google-Smtp-Source: ABdhPJwtmlFkXLXtLJUJGspJjz8aFs/GMbeIMj//Fk7S9O7FDitpIWalDWxc3QNj85aYH1o4kfKt+f9yIi+KPSEH6bo=
X-Received: by 2002:a17:906:f111:: with SMTP id gv17mr8957514ejb.435.1622510244242;
 Mon, 31 May 2021 18:17:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAMMGaruFZnpyZd958Lckk=eVPgMQHf+-Bhth_p2xTW=2bJcgig@mail.gmail.com>
In-Reply-To: <CAMMGaruFZnpyZd958Lckk=eVPgMQHf+-Bhth_p2xTW=2bJcgig@mail.gmail.com>
From: Mart111n <mmmart11nnnnn@gmail.com>
Date: Tue, 1 Jun 2021 09:17:12 +0800
Message-ID: <CAMMGarv_xs0+q=7ZUaCaLOCsu-dd62Tnu=gRzvToWVaE8hzyuQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000c0c99b05c3aa1afc"
Subject: [oss-security] Re: CVE-2021-3564 Linux Bluetooth device initialization
 implementation bug

--000000000000c0c99b05c3aa1afc
Content-Type: multipart/alternative; boundary="000000000000c0c99805c3aa1afa"

--000000000000c0c99805c3aa1afa
Content-Type: text/plain; charset="UTF-8"

Because it's been a week since I reported this issue, it's time to post the
POC to the public and the POC is in attachment.

Thanks,

Mart111n

On Tue, 25 May 2021 at 15:18, Mart111n <mmmart11nnnnn@gmail.com> wrote:

> Hello there,
>
> Our team (BlockSec) found an implementation bug that resides in the kernel
> BlueTooth subsystem when the HCI device initialization fails. It can lead
> to unexpected results, like double-free memory corruption vulnerability.
>
> =*=*=*=*=*=*=*=*=  BUG DETAILS  =*=*=*=*=*=*=*=*=
>
> This implementation bug is inside hci_dev_do_open() function.
>
> static int hci_dev_do_open(struct hci_dev *hdev)
> {
> ...
>     } else {
>         /* Init failed, cleanup */
>         flush_work(&hdev->tx_work);
>         flush_work(&hdev->cmd_work);  // {1}
>         flush_work(&hdev->rx_work);   // {2}
>
>         skb_queue_purge(&hdev->cmd_q);
>         skb_queue_purge(&hdev->rx_q);
>
>         if (hdev->flush)
>           hdev->flush(hdev);
>
>         if (hdev->sent_cmd) {
>           kfree_skb(hdev->sent_cmd);
>           hdev->sent_cmd = NULL;
>         }
> ...
> }
>
> The purpose of flush_work(struct work_struct *work) is to wait for the
> accomplishment of the work_struct. Hence, the accomplishment of the code
> flush_work(&hdev->cmd_work) {1} means the cmd_work is finished. However, we
> discover an implementation bug that can result in activating hci_cmd_work()
> even the hdev->cmd_work has already been flushed {2}.
>
> The process is as follows:
> hci_rx_work() -> hci_event_packet() -> hci_event_packet() ->
> hci_cmd_complete_evt() -> queue_work(hdev->workqueue, &hdev->cmd_work)
>
> We found this implementation bug can lead to double-free memory
> corruption, which resulted from a data race of the hdev->sent_cmd. Here is
> the code snippet for this race.
>
> static void hci_cmd_work(struct work_struct *work)
> {
> ...
>     if (atomic_read(&hdev->cmd_cnt)) {
>         skb = skb_dequeue(&hdev->cmd_q);
>         if (!skb)
>             return;
>
>         kfree_skb(hdev->sent_cmd);
>
>         hdev->sent_cmd = skb_clone(skb, GFP_KERNEL);
> ...
> }
>
>
> We use thread-A to represent hci_dev_do_open() function and the thread-B
> for hci_cmd_work().
> The normal sequence should be like this:
>
>
> ----------------------------------------------------------------------------------------------------
> thread-A                               |  thread-B
>                                        |  kfree_skb(hdev->sent_cmd); (FREE)
>                                        |
>                                        |  hdev->sent_cmd = skb_clone(skb,
> GFP_KERNEL); (WRITE)
> if (hdev->sent_cmd) { (READ)           |
>                                        |
> kfree_skb(hdev->sent_cmd); (FREE)      |
>                                        |
> hdev->sent_cmd = NULL; (WRITE)         |
>                                        |
>
> ----------------------------------------------------------------------------------------------------
>
> However, if the sequence is like this:
>
>
> ----------------------------------------------------------------------------------------------------
> thread-A                               |  thread-B
>                                        |  kfree_skb(hdev->sent_cmd); (FREE)
> if (hdev->sent_cmd) { (READ)           |
>                                        |
> kfree_skb(hdev->sent_cmd); (FREE)      |
>                                        |  hdev->sent_cmd = skb_clone(skb,
> GFP_KERNEL); (WRITE)
>                                        |
> hdev->sent_cmd = NULL; (WRITE)         |
>                                        |
>
> ----------------------------------------------------------------------------------------------------
>
> If the FREE operation in thread-A is before WRITE operation in thread-B,
> it can lead to double-free memory corruption in the kernel.
>
>
> =*=*=*=*=*=*=*=*=  BUG EFFECTS  =*=*=*=*=*=*=*=*=
>
> For now, we can successfully trigger the vulnerability to corrupt the
> kernel memory and thus crash the kernel. Although this bug is related to
> Bluetooth device initialization, the attacker can trigger it without extra
> privileges.
>
> That is because the Linux kernel does not ask for the privilege when
> attaching the HCI device as the attached device is default set to
> HCI_AUTO_OFF state. This bug is inside in the very first attaching
> procedure and requires no syscalls.
>
> The crash log is presented below.
>
> ==================================================================
> [  500.906562] hci0 type 1 len 3
> [  500.904986] BUG: KASAN: use-after-free in kfree_skb+0x33/0x1c0
> [  500.904986] Read of size 4 at addr ffff888009d3599c by task
> kworker/u5:0/54
> [  500.904986]
> [  500.909997] CPU: 0 PID: 54 Comm: kworker/u5:0 Not tainted 5.11.11+ #16
> [  500.909997] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> 1.13.0-1ubuntu1.1 04/01/2014
> [  500.909997] Workqueue: hci0 hci_power_on
> [  500.909997] Call Trace:
> [  500.909997]  dump_stack+0x16c/0x1be
> [  500.924511]  print_address_description+0x7b/0x3a0
> [  500.924511]  __kasan_report+0x14e/0x200
> [  500.924511]  ? kfree_skb+0x33/0x1c0
> [  500.924511]  ? skb_queue_purge+0x193/0x1c0
> [  500.924511]  kasan_report+0x47/0x60
> [  500.924511]  ? skb_queue_purge+0x193/0x1c0
> [  500.924511]  check_memory_region+0x2e2/0x330
> [  500.924511]  kfree_skb+0x33/0x1c0
> [  500.924511]  hci_dev_do_open+0x1008/0x1570
> [  500.924511]  ? printk+0x62/0x83
> [  500.924511]  hci_power_on+0x183/0x580
> [  500.924511]  ? strscpy+0x7f/0x240
> [  500.924511]  process_one_work+0x722/0x1150
> [  500.924511]  worker_thread+0xb5c/0x17d0
> [  500.924511]  ? process_one_work+0x1150/0x1150
> [  500.924511]  kthread+0x2fc/0x320
> [  500.924511]  ? process_one_work+0x1150/0x1150
> [  500.924511]  ? kthread_unuse_mm+0x1d0/0x1d0
> [  500.924511]  ret_from_fork+0x22/0x30
> [  500.924511]
> [  500.924511] Allocated by task 273:
> [  500.924511]  ____kasan_kmalloc+0xc6/0x100
> [  500.924511]  kmem_cache_alloc+0xfe/0x1f0
> [  500.924511]  skb_clone+0x1b5/0x360
> [  500.924511]  hci_cmd_work+0x15d/0x350
> [  500.924511]  process_one_work+0x722/0x1150
> [  500.924511]  worker_thread+0xb5c/0x17d0
> [  500.924511]  kthread+0x2fc/0x320
> [  500.924511]  ret_from_fork+0x22/0x30
> [  500.924511]
> [  500.924511] Freed by task 273:
> [  500.924511]  kasan_set_track+0x3d/0x70
> [  500.924511]  kasan_set_free_info+0x1f/0x40
> [  500.924511]  ____kasan_slab_free+0x10e/0x140
> [  500.924511]  kmem_cache_free+0xca/0x210
> [  500.924511]  hci_cmd_work+0x150/0x350
> [  500.924511]  process_one_work+0x722/0x1150
> [  500.924511]  worker_thread+0xb5c/0x17d0
> [  500.924511]  kthread+0x2fc/0x320
> [  500.924511]  ret_from_fork+0x22/0x30
> [  500.924511]
> [  500.924511] The buggy address belongs to the object at ffff888009d358c0
> [  500.924511]  which belongs to the cache skbuff_head_cache of size 232
> [  500.924511] The buggy address is located 220 bytes inside of
> [  500.924511]  232-byte region [ffff888009d358c0, ffff888009d359a8)
> [  500.924511] The buggy address belongs to the page:
> [  500.924511] page:00000000b691648a refcount:1 mapcount:0
> mapping:0000000000000000 index:0x0 pfn:0x9d35
> [  500.924511] flags: 0x100000000000200(slab)
> [  500.924511] raw: 0100000000000200 dead000000000100 dead000000000122
> ffff888006d64640
> [  500.924511] raw: 0000000000000000 00000000000c000c 00000001ffffffff
> 0000000000000000
> [  500.924511] page dumped because: kasan: bad access detected
> [  500.924511]
> [  500.924511] Memory state around the buggy address:
> [  500.924511]  ffff888009d35880: fc fc fc fc fc fc fc fc fa fb fb fb fb
> fb fb fb
> [  500.924511]  ffff888009d35900: fb fb fb fb fb fb fb fb fb fb fb fb fb
> fb fb fb
> [  500.924511] >ffff888009d35980: fb fb fb fb fb fc fc fc fc fc fc fc fc
> fc fc fc
> [  500.924511]                             ^
> [  500.924511]  ffff888009d35a00: fa fb fb fb fb fb fb fb fb fb fb fb fb
> fb fb fb
> [  500.924511]  ffff888009d35a80: fb fb fb fb fb fb fb fb fb fb fb fb fb
> fc fc fc
> [  500.924511]
> ==================================================================
> [  500.924511] Disabling lock debugging due to kernel taint
> [  501.014277]
> ==================================================================
> [  501.014929] BUG: KASAN: double-free or invalid-free in
> hci_dev_do_open+0x1008/0x1570
> [  501.014929]
> [  501.014929] CPU: 0 PID: 54 Comm: kworker/u5:0 Tainted: G    B
>   5.11.11+ #16
> [  501.014929] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
> 1.13.0-1ubuntu1.1 04/01/2014
> [  501.014929] Workqueue: hci0 hci_power_on
> [  501.014929] Call Trace:
> [  501.014929]  dump_stack+0x16c/0x1be
> [  501.014929]  ? hci_dev_do_open+0x1008/0x1570
> [  501.014929]  ? hci_dev_do_open+0x1008/0x1570
> [  501.014929]  print_address_description+0x7b/0x3a0
> [  501.014929]  ? hci_dev_do_open+0x1008/0x1570
> [  501.014929]  ? hci_dev_do_open+0x1008/0x1570
> [  501.014929]  kasan_report_invalid_free+0x54/0xd0
> [  501.014929]  ____kasan_slab_free+0xe7/0x140
> [  501.014929]  kmem_cache_free+0xca/0x210
> [  501.014929]  ? hci_dev_do_open+0x1008/0x1570
> [  501.014929]  hci_dev_do_open+0x1008/0x1570
> [  501.014929]  ? printk+0x62/0x83
> [  501.014929]  hci_power_on+0x183/0x580
> [  501.014929]  ? strscpy+0x7f/0x240
> [  501.014929]  process_one_work+0x722/0x1150
> [  501.014929]  worker_thread+0xb5c/0x17d0
> [  501.014929]  ? process_one_work+0x1150/0x1150
> [  501.014929]  kthread+0x2fc/0x320
> [  501.014929]  ? process_one_work+0x1150/0x1150
> [  501.014929]  ? kthread_unuse_mm+0x1d0/0x1d0
> [  501.014929]  ret_from_fork+0x22/0x30
> [  501.014929]
> [  501.014929] Allocated by task 273:
> [  501.014929]  ____kasan_kmalloc+0xc6/0x100
> [  501.014929]  kmem_cache_alloc+0xfe/0x1f0
> [  501.014929]  skb_clone+0x1b5/0x360
> [  501.014929]  hci_cmd_work+0x15d/0x350
> [  501.014929]  process_one_work+0x722/0x1150
> [  501.014929]  worker_thread+0xb5c/0x17d0
> [  501.014929]  kthread+0x2fc/0x320
> [  501.014929]  ret_from_fork+0x22/0x30
> [  501.014929]
> [  501.014929] Freed by task 273:
> [  501.014929]  kasan_set_track+0x3d/0x70
> [  501.066803]  kasan_set_free_info+0x1f/0x40
> [  501.066803]  ____kasan_slab_free+0x10e/0x140
> [  501.066803]  kmem_cache_free+0xca/0x210
> [  501.066803]  hci_cmd_work+0x150/0x350
> [  501.066803]  process_one_work+0x722/0x1150
> [  501.066803]  worker_thread+0xb5c/0x17d0
> [  501.066803]  kthread+0x2fc/0x320
> [  501.066803]  ret_from_fork+0x22/0x30
> [  501.066803]
> [  501.066803] The buggy address belongs to the object at ffff888009d358c0
> [  501.066803]  which belongs to the cache skbuff_head_cache of size 232
> [  501.066803] The buggy address is located 0 bytes inside of
> [  501.066803]  232-byte region [ffff888009d358c0, ffff888009d359a8)
> [  501.066803] The buggy address belongs to the page:
> [  501.066803] page:00000000b691648a refcount:1 mapcount:0
> mapping:0000000000000000 index:0x0 pfn:0x9d35
> [  501.066803] flags: 0x100000000000200(slab)
> [  501.066803] raw: 0100000000000200 dead000000000100 dead000000000122
> ffff888006d64640
> [  501.066803] raw: 0000000000000000 00000000000c000c 00000001ffffffff
> 0000000000000000
> [  501.066803] page dumped because: kasan: bad access detected
> [  501.066803]
> [  501.066803] Memory state around the buggy address:
> [  501.066803]  ffff888009d35780: fa fb fb fb fb fb fb fb fb fb fb fb fb
> fb fb fb
> [  501.066803]  ffff888009d35800: fb fb fb fb fb fb fb fb fb fb fb fb fb
> fc fc fc
> [  501.066803] >ffff888009d35880: fc fc fc fc fc fc fc fc fa fb fb fb fb
> fb fb fb
> [  501.066803]                                            ^
> [  501.066803]  ffff888009d35900: fb fb fb fb fb fb fb fb fb fb fb fb fb
> fb fb fb
> [  501.066803]  ffff888009d35980: fb fb fb fb fb fc fc fc fc fc fc fc fc
> fc fc fc
> [  501.066803]
> ==================================================================
>
> =*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=
>
> 2021-05-17: Bug reported to security () kernel org and linux-distros () vs openwall org
>
> 2021-05-25: CVE-2021-3564 assigned
>
> We informed security@kernel.org on May 17, 2021. Now the 7-day embargo period is over, we are being asked to bring the issue to public.
>
> Since our patch has not been applied to upstream yet, we will release the POC later.
>
> =*=*=*=*=*=*=*=*=  Credit  =*=*=*=*=*=*=*=*=
>
> HaoXiong@BlockSec Team
>
> LinMa@Blocksec Team
>
> syzkaller
>
>
>
> Best regards.
>
> Mart111n
>

--000000000000c0c99805c3aa1afa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"monospace"=
>Because it&#39;s been a week since I reported this=C2=A0issue, it&#39;s ti=
me to post the POC to the public and=C2=A0the POC is in attachment.</font><=
div><font face=3D"monospace"><br></font></div><div><font face=3D"monospace"=
>Thanks,</font></div><div><font face=3D"monospace"><br></font></div><div><s=
pan style=3D"color:rgb(0,0,0)"><font face=3D"monospace">Mart111n</font></sp=
an><br></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, 25 May 2021 at 15:18, Mart111n &lt;<a href=3D"ma=
ilto:mmmart11nnnnn@gmail.com" target=3D"_blank">mmmart11nnnnn@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-col=
or:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div><font face=3D"monospace">Hello there,</font>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mon=
ospace">Our team (BlockSec) found an implementation bug that resides in the=
 kernel BlueTooth subsystem when the HCI device initialization fails. It ca=
n lead to unexpected results, like double-free memory corruption vulnerabil=
ity.</font></div><div><font face=3D"monospace"><br></font></div><div><font =
face=3D"monospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG DETAILS =
=C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</font></div><div><font face=3D"mo=
nospace"><br></font></div><div><font face=3D"monospace">This implementation=
 bug is inside hci_dev_do_open() function.</font></div><div><font face=3D"m=
onospace"><br></font></div><div><font face=3D"monospace">static int hci_dev=
_do_open(struct hci_dev *hdev)</font></div><div><font face=3D"monospace">{<=
/font></div><div><font face=3D"monospace">...</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 } else {</font></div><div><font face=3D"monosp=
ace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Init failed, cleanup */</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 flush_work(&amp;hdev=
-&gt;tx_work);</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 flush_work(&amp;hdev-&gt;cmd_work); =C2=A0// {1}</font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 flush_work(&amp;hdev=
-&gt;rx_work); =C2=A0 // {2}</font></div><div><font face=3D"monospace"><br>=
</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_=
queue_purge(&amp;hdev-&gt;cmd_q);</font></div><div><font face=3D"monospace"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb_queue_purge(&amp;hdev-&gt;rx_q);</font></d=
iv><div><font face=3D"monospace"><br></font></div><div><font face=3D"monosp=
ace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (hdev-&gt;flush)</font></div><div><font=
 face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hdev-&gt;flush(hdev)=
;</font></div><div><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (hdev-&gt;sent_cmd) {</font>=
</div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kfre=
e_skb(hdev-&gt;sent_cmd);</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 hdev-&gt;sent_cmd =3D NULL;</font></div><div><f=
ont face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</font></div><div><font=
 face=3D"monospace">...</font></div><div><font face=3D"monospace">}</font><=
/div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mono=
space">The purpose of flush_work(struct work_struct *work) is to wait for t=
he accomplishment of the work_struct. Hence, the accomplishment of the code=
 flush_work(&amp;hdev-&gt;cmd_work) {1} means the cmd_work is finished. How=
ever, we discover an implementation bug that can result in activating hci_c=
md_work() even the hdev-&gt;cmd_work has already been flushed {2}.</font></=
div><div><font face=3D"monospace"><br></font></div><div><font face=3D"monos=
pace">The process is as follows:</font></div><div><font face=3D"monospace">=
hci_rx_work() -&gt; hci_event_packet() -&gt; hci_event_packet() -&gt; hci_c=
md_complete_evt() -&gt; queue_work(hdev-&gt;workqueue, &amp;hdev-&gt;cmd_wo=
rk)</font></div><div><font face=3D"monospace"><br></font></div><div><font f=
ace=3D"monospace">We found this implementation bug can lead to double-free =
memory corruption, which resulted from a data race of the hdev-&gt;sent_cmd=
. Here is the code snippet for this race.</font></div><div><font face=3D"mo=
nospace"><br></font></div><div><font face=3D"monospace">static void hci_cmd=
_work(struct work_struct *work)</font></div><div><font face=3D"monospace">{=
</font></div><div><font face=3D"monospace">...</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 if (atomic_read(&amp;hdev-&gt;cmd_cnt)) {</fon=
t></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 skb =3D s=
kb_dequeue(&amp;hdev-&gt;cmd_q);</font></div><div><font face=3D"monospace">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!skb)</font></div><div><font face=3D"monosp=
ace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;</font></div><div><fo=
nt face=3D"monospace"><br></font></div><div><font face=3D"monospace">=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 kfree_skb(hdev-&gt;sent_cmd);</font></div><div><font =
face=3D"monospace"><br></font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 hdev-&gt;sent_cmd =3D skb_clone(skb, GFP_KERNEL);</fon=
t></div><div><font face=3D"monospace">...</font></div><div><font face=3D"mo=
nospace">}</font></div><div><font face=3D"monospace"><br></font></div><div>=
<font face=3D"monospace"><br></font></div><div><font face=3D"monospace">We =
use thread-A to represent hci_dev_do_open() function and the thread-B for h=
ci_cmd_work().</font></div><div><font face=3D"monospace">The normal sequenc=
e should be like this:</font></div><div><font face=3D"monospace"><br></font=
></div><div><font face=3D"monospace">--------------------------------------=
--------------------------------------------------------------</font></div>=
<div><font face=3D"monospace">thread-A =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=
=A0thread-B</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0kfree_skb(hdev-&gt;sen=
t_cmd); (FREE)</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|</font></div><div><font fa=
ce=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| =C2=A0hdev-&gt;sent_cmd =3D skb_clone(skb, GFP_KERNEL); (WRITE)=
</font></div><div><font face=3D"monospace">if (hdev-&gt;sent_cmd) { (READ) =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |</font></div><div><font face=3D"monospa=
ce">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|</fon=
t></div><div><font face=3D"monospace">kfree_skb(hdev-&gt;sent_cmd); (FREE) =
=C2=A0 =C2=A0 =C2=A0|</font></div><div><font face=3D"monospace">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|</font></div><div><=
font face=3D"monospace">hdev-&gt;sent_cmd =3D NULL; (WRITE) =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|</font></div><div><font fa=
ce=3D"monospace">----------------------------------------------------------=
------------------------------------------</font></div><div><font face=3D"m=
onospace"><br></font></div><div><font face=3D"monospace">However, if the se=
quence is like this:</font></div><div><font face=3D"monospace"><br></font><=
/div><div><font face=3D"monospace">----------------------------------------=
------------------------------------------------------------</font></div><d=
iv><font face=3D"monospace">thread-A =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0=
thread-B</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0kfree_skb(hdev-&gt;sent_cm=
d); (FREE)</font></div><div><font face=3D"monospace">if (hdev-&gt;sent_cmd)=
 { (READ) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0|</font></div><div><font face=3D"monospace">kfree_skb(hdev-&gt;sent_c=
md); (FREE) =C2=A0 =C2=A0 =C2=A0|</font></div><div><font face=3D"monospace"=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0h=
dev-&gt;sent_cmd =3D skb_clone(skb, GFP_KERNEL); (WRITE)</font></div><div><=
font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|</font></div><div><font face=3D"monospace">hdev-&gt;sent_=
cmd =3D NULL; (WRITE) =C2=A0 =C2=A0 =C2=A0 =C2=A0 |</font></div><div><font =
face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|</font></div><div><font face=3D"monospace">---------------------=
---------------------------------------------------------------------------=
----</font></div><div><font face=3D"monospace"><br></font></div><div><font =
face=3D"monospace">If the FREE operation in thread-A is before WRITE operat=
ion in thread-B, it can lead to double-free memory corruption in the kernel=
.</font></div><div><font face=3D"monospace"><br></font></div><div><font fac=
e=3D"monospace"><br></font></div><div><font face=3D"monospace">=3D*=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG EFFECTS =C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D=
*=3D*=3D</font></div><div><font face=3D"monospace"><br></font></div><div><f=
ont face=3D"monospace">For now, we can successfully trigger the vulnerabili=
ty to corrupt the kernel memory and thus crash the kernel. Although this bu=
g is related to Bluetooth device initialization, the attacker can trigger i=
t without extra privileges.=C2=A0</font></div><div><font face=3D"monospace"=
><br></font></div><div><font face=3D"monospace">That is because the Linux k=
ernel does not ask for the privilege when attaching the HCI device as the a=
ttached device is default set to HCI_AUTO_OFF state. This bug is inside in =
the very first attaching procedure and requires no syscalls.</font></div><d=
iv><font face=3D"monospace"><br></font></div><div><font face=3D"monospace">=
The crash log is presented below.</font></div><div><font face=3D"monospace"=
><br></font></div><div><font face=3D"monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D</font></div><div><font face=3D"monospace">[ =C2=A0500=
.906562] hci0 type 1 len 3</font></div><div><font face=3D"monospace">[ =C2=
=A0500.904986] BUG: KASAN: use-after-free in kfree_skb+0x33/0x1c0</font></d=
iv><div><font face=3D"monospace">[ =C2=A0500.904986] Read of size 4 at addr=
 ffff888009d3599c by task kworker/u5:0/54</font></div><div><font face=3D"mo=
nospace">[ =C2=A0500.904986]</font></div><div><font face=3D"monospace">[ =
=C2=A0500.909997] CPU: 0 PID: 54 Comm: kworker/u5:0 Not tainted 5.11.11+ #1=
6</font></div><div><font face=3D"monospace">[ =C2=A0500.909997] Hardware na=
me: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/20=
14</font></div><div><font face=3D"monospace">[ =C2=A0500.909997] Workqueue:=
 hci0 hci_power_on</font></div><div><font face=3D"monospace">[ =C2=A0500.90=
9997] Call Trace:</font></div><div><font face=3D"monospace">[ =C2=A0500.909=
997] =C2=A0dump_stack+0x16c/0x1be</font></div><div><font face=3D"monospace"=
>[ =C2=A0500.924511] =C2=A0print_address_description+0x7b/0x3a0</font></div=
><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0__kasan_report+0x1=
4e/0x200</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=
=A0? kfree_skb+0x33/0x1c0</font></div><div><font face=3D"monospace">[ =C2=
=A0500.924511] =C2=A0? skb_queue_purge+0x193/0x1c0</font></div><div><font f=
ace=3D"monospace">[ =C2=A0500.924511] =C2=A0kasan_report+0x47/0x60</font></=
div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0? skb_queue_pur=
ge+0x193/0x1c0</font></div><div><font face=3D"monospace">[ =C2=A0500.924511=
] =C2=A0check_memory_region+0x2e2/0x330</font></div><div><font face=3D"mono=
space">[ =C2=A0500.924511] =C2=A0kfree_skb+0x33/0x1c0</font></div><div><fon=
t face=3D"monospace">[ =C2=A0500.924511] =C2=A0hci_dev_do_open+0x1008/0x157=
0</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0? pri=
ntk+0x62/0x83</font></div><div><font face=3D"monospace">[ =C2=A0500.924511]=
 =C2=A0hci_power_on+0x183/0x580</font></div><div><font face=3D"monospace">[=
 =C2=A0500.924511] =C2=A0? strscpy+0x7f/0x240</font></div><div><font face=
=3D"monospace">[ =C2=A0500.924511] =C2=A0process_one_work+0x722/0x1150</fon=
t></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0worker_thre=
ad+0xb5c/0x17d0</font></div><div><font face=3D"monospace">[ =C2=A0500.92451=
1] =C2=A0? process_one_work+0x1150/0x1150</font></div><div><font face=3D"mo=
nospace">[ =C2=A0500.924511] =C2=A0kthread+0x2fc/0x320</font></div><div><fo=
nt face=3D"monospace">[ =C2=A0500.924511] =C2=A0? process_one_work+0x1150/0=
x1150</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0?=
 kthread_unuse_mm+0x1d0/0x1d0</font></div><div><font face=3D"monospace">[ =
=C2=A0500.924511] =C2=A0ret_from_fork+0x22/0x30</font></div><div><font face=
=3D"monospace">[ =C2=A0500.924511]</font></div><div><font face=3D"monospace=
">[ =C2=A0500.924511] Allocated by task 273:</font></div><div><font face=3D=
"monospace">[ =C2=A0500.924511] =C2=A0____kasan_kmalloc+0xc6/0x100</font></=
div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0kmem_cache_allo=
c+0xfe/0x1f0</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =
=C2=A0skb_clone+0x1b5/0x360</font></div><div><font face=3D"monospace">[ =C2=
=A0500.924511] =C2=A0hci_cmd_work+0x15d/0x350</font></div><div><font face=
=3D"monospace">[ =C2=A0500.924511] =C2=A0process_one_work+0x722/0x1150</fon=
t></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0worker_thre=
ad+0xb5c/0x17d0</font></div><div><font face=3D"monospace">[ =C2=A0500.92451=
1] =C2=A0kthread+0x2fc/0x320</font></div><div><font face=3D"monospace">[ =
=C2=A0500.924511] =C2=A0ret_from_fork+0x22/0x30</font></div><div><font face=
=3D"monospace">[ =C2=A0500.924511]</font></div><div><font face=3D"monospace=
">[ =C2=A0500.924511] Freed by task 273:</font></div><div><font face=3D"mon=
ospace">[ =C2=A0500.924511] =C2=A0kasan_set_track+0x3d/0x70</font></div><di=
v><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0kasan_set_free_info+0x=
1f/0x40</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=
=A0____kasan_slab_free+0x10e/0x140</font></div><div><font face=3D"monospace=
">[ =C2=A0500.924511] =C2=A0kmem_cache_free+0xca/0x210</font></div><div><fo=
nt face=3D"monospace">[ =C2=A0500.924511] =C2=A0hci_cmd_work+0x150/0x350</f=
ont></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0process_o=
ne_work+0x722/0x1150</font></div><div><font face=3D"monospace">[ =C2=A0500.=
924511] =C2=A0worker_thread+0xb5c/0x17d0</font></div><div><font face=3D"mon=
ospace">[ =C2=A0500.924511] =C2=A0kthread+0x2fc/0x320</font></div><div><fon=
t face=3D"monospace">[ =C2=A0500.924511] =C2=A0ret_from_fork+0x22/0x30</fon=
t></div><div><font face=3D"monospace">[ =C2=A0500.924511]</font></div><div>=
<font face=3D"monospace">[ =C2=A0500.924511] The buggy address belongs to t=
he object at ffff888009d358c0</font></div><div><font face=3D"monospace">[ =
=C2=A0500.924511] =C2=A0which belongs to the cache skbuff_head_cache of siz=
e 232</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] The bug=
gy address is located 220 bytes inside of</font></div><div><font face=3D"mo=
nospace">[ =C2=A0500.924511] =C2=A0232-byte region [ffff888009d358c0, ffff8=
88009d359a8)</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =
The buggy address belongs to the page:</font></div><div><font face=3D"monos=
pace">[ =C2=A0500.924511] page:00000000b691648a refcount:1 mapcount:0 mappi=
ng:0000000000000000 index:0x0 pfn:0x9d35</font></div><div><font face=3D"mon=
ospace">[ =C2=A0500.924511] flags: 0x100000000000200(slab)</font></div><div=
><font face=3D"monospace">[ =C2=A0500.924511] raw: 0100000000000200 dead000=
000000100 dead000000000122 ffff888006d64640</font></div><div><font face=3D"=
monospace">[ =C2=A0500.924511] raw: 0000000000000000 00000000000c000c 00000=
001ffffffff 0000000000000000</font></div><div><font face=3D"monospace">[ =
=C2=A0500.924511] page dumped because: kasan: bad access detected</font></d=
iv><div><font face=3D"monospace">[ =C2=A0500.924511]</font></div><div><font=
 face=3D"monospace">[ =C2=A0500.924511] Memory state around the buggy addre=
ss:</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0fff=
f888009d35880: fc fc fc fc fc fc fc fc fa fb fb fb fb fb fb fb</font></div>=
<div><font face=3D"monospace">[ =C2=A0500.924511] =C2=A0ffff888009d35900: f=
b fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb</font></div><div><font face=
=3D"monospace">[ =C2=A0500.924511] &gt;ffff888009d35980: fb fb fb fb fb fc =
fc fc fc fc fc fc fc fc fc fc</font></div><div><font face=3D"monospace">[ =
=C2=A0500.924511] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^</font></div><div><font face=3D"=
monospace">[ =C2=A0500.924511] =C2=A0ffff888009d35a00: fa fb fb fb fb fb fb=
 fb fb fb fb fb fb fb fb fb</font></div><div><font face=3D"monospace">[ =C2=
=A0500.924511] =C2=A0ffff888009d35a80: fb fb fb fb fb fb fb fb fb fb fb fb =
fb fc fc fc</font></div><div><font face=3D"monospace">[ =C2=A0500.924511] =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</font></div><div><font fac=
e=3D"monospace">[ =C2=A0500.924511] Disabling lock debugging due to kernel =
taint</font></div><div><font face=3D"monospace">[ =C2=A0501.014277] =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</font></div><div><font face=3D"m=
onospace">[ =C2=A0501.014929] BUG: KASAN: double-free or invalid-free in hc=
i_dev_do_open+0x1008/0x1570</font></div><div><font face=3D"monospace">[ =C2=
=A0501.014929]</font></div><div><font face=3D"monospace">[ =C2=A0501.014929=
] CPU: 0 PID: 54 Comm: kworker/u5:0 Tainted: G =C2=A0 =C2=A0B =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 5.11.11+ #16</font></div><div><font face=3D"mo=
nospace">[ =C2=A0501.014929] Hardware name: QEMU Standard PC (i440FX + PIIX=
, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014</font></div><div><font face=3D"m=
onospace">[ =C2=A0501.014929] Workqueue: hci0 hci_power_on</font></div><div=
><font face=3D"monospace">[ =C2=A0501.014929] Call Trace:</font></div><div>=
<font face=3D"monospace">[ =C2=A0501.014929] =C2=A0dump_stack+0x16c/0x1be</=
font></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0? hci_de=
v_do_open+0x1008/0x1570</font></div><div><font face=3D"monospace">[ =C2=A05=
01.014929] =C2=A0? hci_dev_do_open+0x1008/0x1570</font></div><div><font fac=
e=3D"monospace">[ =C2=A0501.014929] =C2=A0print_address_description+0x7b/0x=
3a0</font></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0? h=
ci_dev_do_open+0x1008/0x1570</font></div><div><font face=3D"monospace">[ =
=C2=A0501.014929] =C2=A0? hci_dev_do_open+0x1008/0x1570</font></div><div><f=
ont face=3D"monospace">[ =C2=A0501.014929] =C2=A0kasan_report_invalid_free+=
0x54/0xd0</font></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=
=A0____kasan_slab_free+0xe7/0x140</font></div><div><font face=3D"monospace"=
>[ =C2=A0501.014929] =C2=A0kmem_cache_free+0xca/0x210</font></div><div><fon=
t face=3D"monospace">[ =C2=A0501.014929] =C2=A0? hci_dev_do_open+0x1008/0x1=
570</font></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0hci=
_dev_do_open+0x1008/0x1570</font></div><div><font face=3D"monospace">[ =C2=
=A0501.014929] =C2=A0? printk+0x62/0x83</font></div><div><font face=3D"mono=
space">[ =C2=A0501.014929] =C2=A0hci_power_on+0x183/0x580</font></div><div>=
<font face=3D"monospace">[ =C2=A0501.014929] =C2=A0? strscpy+0x7f/0x240</fo=
nt></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0process_on=
e_work+0x722/0x1150</font></div><div><font face=3D"monospace">[ =C2=A0501.0=
14929] =C2=A0worker_thread+0xb5c/0x17d0</font></div><div><font face=3D"mono=
space">[ =C2=A0501.014929] =C2=A0? process_one_work+0x1150/0x1150</font></d=
iv><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0kthread+0x2fc/0x=
320</font></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0? p=
rocess_one_work+0x1150/0x1150</font></div><div><font face=3D"monospace">[ =
=C2=A0501.014929] =C2=A0? kthread_unuse_mm+0x1d0/0x1d0</font></div><div><fo=
nt face=3D"monospace">[ =C2=A0501.014929] =C2=A0ret_from_fork+0x22/0x30</fo=
nt></div><div><font face=3D"monospace">[ =C2=A0501.014929]</font></div><div=
><font face=3D"monospace">[ =C2=A0501.014929] Allocated by task 273:</font>=
</div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0____kasan_kma=
lloc+0xc6/0x100</font></div><div><font face=3D"monospace">[ =C2=A0501.01492=
9] =C2=A0kmem_cache_alloc+0xfe/0x1f0</font></div><div><font face=3D"monospa=
ce">[ =C2=A0501.014929] =C2=A0skb_clone+0x1b5/0x360</font></div><div><font =
face=3D"monospace">[ =C2=A0501.014929] =C2=A0hci_cmd_work+0x15d/0x350</font=
></div><div><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0process_one_=
work+0x722/0x1150</font></div><div><font face=3D"monospace">[ =C2=A0501.014=
929] =C2=A0worker_thread+0xb5c/0x17d0</font></div><div><font face=3D"monosp=
ace">[ =C2=A0501.014929] =C2=A0kthread+0x2fc/0x320</font></div><div><font f=
ace=3D"monospace">[ =C2=A0501.014929] =C2=A0ret_from_fork+0x22/0x30</font><=
/div><div><font face=3D"monospace">[ =C2=A0501.014929]</font></div><div><fo=
nt face=3D"monospace">[ =C2=A0501.014929] Freed by task 273:</font></div><d=
iv><font face=3D"monospace">[ =C2=A0501.014929] =C2=A0kasan_set_track+0x3d/=
0x70</font></div><div><font face=3D"monospace">[ =C2=A0501.066803] =C2=A0ka=
san_set_free_info+0x1f/0x40</font></div><div><font face=3D"monospace">[ =C2=
=A0501.066803] =C2=A0____kasan_slab_free+0x10e/0x140</font></div><div><font=
 face=3D"monospace">[ =C2=A0501.066803] =C2=A0kmem_cache_free+0xca/0x210</f=
ont></div><div><font face=3D"monospace">[ =C2=A0501.066803] =C2=A0hci_cmd_w=
ork+0x150/0x350</font></div><div><font face=3D"monospace">[ =C2=A0501.06680=
3] =C2=A0process_one_work+0x722/0x1150</font></div><div><font face=3D"monos=
pace">[ =C2=A0501.066803] =C2=A0worker_thread+0xb5c/0x17d0</font></div><div=
><font face=3D"monospace">[ =C2=A0501.066803] =C2=A0kthread+0x2fc/0x320</fo=
nt></div><div><font face=3D"monospace">[ =C2=A0501.066803] =C2=A0ret_from_f=
ork+0x22/0x30</font></div><div><font face=3D"monospace">[ =C2=A0501.066803]=
</font></div><div><font face=3D"monospace">[ =C2=A0501.066803] The buggy ad=
dress belongs to the object at ffff888009d358c0</font></div><div><font face=
=3D"monospace">[ =C2=A0501.066803] =C2=A0which belongs to the cache skbuff_=
head_cache of size 232</font></div><div><font face=3D"monospace">[ =C2=A050=
1.066803] The buggy address is located 0 bytes inside of</font></div><div><=
font face=3D"monospace">[ =C2=A0501.066803] =C2=A0232-byte region [ffff8880=
09d358c0, ffff888009d359a8)</font></div><div><font face=3D"monospace">[ =C2=
=A0501.066803] The buggy address belongs to the page:</font></div><div><fon=
t face=3D"monospace">[ =C2=A0501.066803] page:00000000b691648a refcount:1 m=
apcount:0 mapping:0000000000000000 index:0x0 pfn:0x9d35</font></div><div><f=
ont face=3D"monospace">[ =C2=A0501.066803] flags: 0x100000000000200(slab)</=
font></div><div><font face=3D"monospace">[ =C2=A0501.066803] raw: 010000000=
0000200 dead000000000100 dead000000000122 ffff888006d64640</font></div><div=
><font face=3D"monospace">[ =C2=A0501.066803] raw: 0000000000000000 0000000=
0000c000c 00000001ffffffff 0000000000000000</font></div><div><font face=3D"=
monospace">[ =C2=A0501.066803] page dumped because: kasan: bad access detec=
ted</font></div><div><font face=3D"monospace">[ =C2=A0501.066803]</font></d=
iv><div><font face=3D"monospace">[ =C2=A0501.066803] Memory state around th=
e buggy address:</font></div><div><font face=3D"monospace">[ =C2=A0501.0668=
03] =C2=A0ffff888009d35780: fa fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb=
</font></div><div><font face=3D"monospace">[ =C2=A0501.066803] =C2=A0ffff88=
8009d35800: fb fb fb fb fb fb fb fb fb fb fb fb fb fc fc fc</font></div><di=
v><font face=3D"monospace">[ =C2=A0501.066803] &gt;ffff888009d35880: fc fc =
fc fc fc fc fc fc fa fb fb fb fb fb fb fb</font></div><div><font face=3D"mo=
nospace">[ =C2=A0501.066803] =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</font></div><div><font face=3D"monospac=
e">[ =C2=A0501.066803] =C2=A0ffff888009d35900: fb fb fb fb fb fb fb fb fb f=
b fb fb fb fb fb fb</font></div><div><font face=3D"monospace">[ =C2=A0501.0=
66803] =C2=A0ffff888009d35980: fb fb fb fb fb fc fc fc fc fc fc fc fc fc fc=
 fc</font></div><div><font face=3D"monospace">[ =C2=A0501.066803] =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</font></div><div><pre style=3D"whit=
e-space:pre-wrap;color:rgb(0,0,0)">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D  Tim=
eline  =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</pre></div><div><pre style=3D"wh=
ite-space:pre-wrap"><font color=3D"#000000">2021-05-17: Bug reported to sec=
urity () kernel org and linux-distros () vs openwall org</font></pre><pre s=
tyle=3D"white-space:pre-wrap"><font color=3D"#000000">2021-05-25: CVE-2021-=
3564 assigned <br></font></pre><pre style=3D"white-space:pre-wrap"><font co=
lor=3D"#000000"><span style=3D"white-space:normal">We informed=C2=A0</span>=
<a href=3D"mailto:security@kernel.org" target=3D"_blank">security@kernel.or=
g</a><span style=3D"white-space:normal">=C2=A0</span><span style=3D"white-s=
pace:normal">on=C2=A0May 17, 2021. Now the 7-day embargo period is over,=C2=
=A0</span></font><font color=3D"#000000" style=3D"font-family:Arial,Helveti=
ca,sans-serif"><span style=3D"white-space:normal">we are being asked</span>=
 to bring </font><span style=3D"font-family:Arial,Helvetica,sans-serif;colo=
r:rgb(0,0,0)">the issue to public.</span></pre><pre style=3D"white-space:pr=
e-wrap"><font color=3D"#000000"><span style=3D"white-space:normal">Since ou=
r patch has not been applied to upstream yet,=C2=A0</span><span style=3D"wh=
ite-space:normal">we will release=C2=A0</span>the POC=C2=A0<span style=3D"w=
hite-space:normal">later.</span></font></pre><pre style=3D"white-space:pre-=
wrap;color:rgb(0,0,0)"><pre style=3D"white-space:pre-wrap">=3D*=3D*=3D*=3D*=
=3D*=3D*=3D*=3D*=3D  Credit  =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</pre></pre=
><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)">HaoXiong@BlockSec Tea=
m</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)">LinMa@Blocksec =
Team</pre><pre style=3D"white-space:pre-wrap;color:rgb(0,0,0)">syzkaller</p=
re></div><div><font face=3D"monospace"></font></div><div><font face=3D"mono=
space"><br></font></div><div><font face=3D"monospace"><br></font></div><div=
><font face=3D"monospace">Best regards.</font></div><font color=3D"#888888"=
 face=3D"monospace"><div><br></div><div><span style=3D"color:rgb(0,0,0)">Ma=
rt111n</span></div></font></div></div></div></div></div></div></div></div>
</blockquote></div>
</div>

--000000000000c0c99805c3aa1afa--

--000000000000c0c99b05c3aa1afc
Content-Type: application/zip; name="reproduce.zip"
Content-Disposition: attachment; filename="reproduce.zip"
Content-Transfer-Encoding: base64
Content-ID: <f_kpdcmj000>
X-Attachment-Id: f_kpdcmj000

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

--000000000000c0c99b05c3aa1afc--
