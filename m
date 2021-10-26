X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["72477" "Tuesday" "26" "October" "2021" "14:37:20" "+0800" "Lin Horse" "kylin.formalin@gmail.com" nil "1206" "[oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil "10" nil nil (number mark "U       kylin.formal Oct 26 1206/72477 " thread-indent "\"[oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17773 invoked by uid 550); 26 Oct 2021 10:53:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15845 invoked from network); 26 Oct 2021 06:37:43 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=25MnPBonEiUvL7fgUpfLeSfA9+TZgWRl3pSqKIYLW/s=;
        b=Q51mVsmkHl3TMgCBYBD8P3YI9vtglTjKRusiqLd1woKedOa/ECbnAtkCldCiyet0W+
         X4AAl84hivIGx4bAHSbcMizecxCtAA00+Bmzv+3rpIRkaoV0/K0NPjxz7GncBzjRNWzO
         dR2LItwJr6ouI11c576fcmZ7Ct3SYmhOO5CJZD3JXyDw783RFCUM7yGbXfDElZXDQnAw
         k87ThGtZgoMq/H8uIqmC5fCT4N1LdJcWkECmdAunnjULJsdRm7orm3eMpeYre2+VjaNM
         AERC1oLwBOuW6KDfebwjLTMUNJ17TaVO01KuEmhSA/pKtAuCOb7GQPb5QyhPlGyEEEfg
         LaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=25MnPBonEiUvL7fgUpfLeSfA9+TZgWRl3pSqKIYLW/s=;
        b=BMfm+vlGPo6sJ1ygnPgUHXGCeucIwx3SS2ae9gpqm2qEr8YGgdKDS3jvZwodMi7MeZ
         mvcWBUm/BBcxBuQzxGhBLvVb61SMO5I+mySu8H/N1rDCMYv4uS0GZhjrVPhKDtiSxnuA
         S5xeFvjdTwZZUZOzJL6LUFgMuDVq0sDnlvvfDlxtm9Ugtam962lJP6Zgy3LeSuMEaYl0
         iwuqvSwNB1ebQY/g4cQ8dpbQNujltguQcsLc+hii3eRNogvOckVLTkeY5c3YmjQeZBn7
         juSeBCrE14XLaR74UPIrtJy8Qau6V93NhHdziPFEUQ3BOD8sEo6FSZKoy8MebD0KSKL0
         2/gA==
X-Gm-Message-State: AOAM530Pt9BVvKtwfzcEF/d3imd01Zi/D9z9B8FR5uJZICA9VBr2cp9O
	nr5CVQZR67xDA0qguohYklIuobd7fgY/VUgPKQI19X5jojfrmw==
X-Google-Smtp-Source: ABdhPJx+MMyNMw2Pt/NQOTHFUYdaN3NYV4yoI7CoYShcAcFAdZN1bXyC8b9rtCy4BBdW/1R4yRuS3E2SXBzxskHoW+Y=
X-Received: by 2002:a25:bc0f:: with SMTP id i15mr21338524ybh.233.1635230251350;
 Mon, 25 Oct 2021 23:37:31 -0700 (PDT)
MIME-Version: 1.0
From: Lin Horse <kylin.formalin@gmail.com>
Date: Tue, 26 Oct 2021 14:37:20 +0800
Message-ID: <CAJjojJsrNyz+ML+Q81JB9iF2-DTKfAEkUP1cSTgyvCL6NebhzQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="0000000000004210c405cf3bb6e1"
Subject: [oss-security] CVE-2021-3760: Linux kernel: Use-After-Free vulnerability of ndev->rf_conn_info object

--0000000000004210c405cf3bb6e1
Content-Type: multipart/alternative; boundary="0000000000004210c205cf3bb6df"

--0000000000004210c205cf3bb6df
Content-Type: text/plain; charset="UTF-8"

Hello there,

Our team found a UAF vulnerability of ndev->rf_conn_info object in the
kernel NFC stack. The root cause is that ndev->rf_conn_info is forgotten to
set to NULL when the object is released.


=*=*=*=*=*=*=*=*=  BUG DETAILS  =*=*=*=*=*=*=*=*=

We will talk about the ALLOC routine, the FREE routine, and the UAF routine.


>>>>>>>> ALLOC routine <<<<<<<<

With dynamic debugging, I found the object allocation routine is like below

.. -> nci_recv_frame()
      -> nci_rx_work()
         -> nci_rsp_packet()
            -> nci_rf_disc_rsp_packet()
               -> devm_kzalloc()

The function nci_rf_disc_rsp_packet() is like below

static void nci_rf_disc_rsp_packet(struct nci_dev *ndev, struct sk_buff
*skb)
{
    struct nci_conn_info    *conn_info;
    __u8 status = skb->data[0];

    pr_debug("status 0x%x\n", status);

    if (status == NCI_STATUS_OK) {
        atomic_set(&ndev->state, NCI_DISCOVERY);

        conn_info = ndev->rf_conn_info;
        if (!conn_info) {
            conn_info = devm_kzalloc(&ndev->nfc_dev->dev, /* ALLOCATING */
                         sizeof(struct nci_conn_info),
                         GFP_KERNEL);
            if (!conn_info) {
                status = NCI_STATUS_REJECTED;
                goto exit;
            }
            conn_info->conn_id = NCI_STATIC_RF_CONN_ID;
            INIT_LIST_HEAD(&conn_info->list);
            list_add(&conn_info->list, &ndev->conn_info_list);
            ndev->rf_conn_info = conn_info;
        }
    }

exit:
    nci_req_complete(ndev, status);
}

This function will allocate nci_conn_info object if the ndev->rf_conn_info
is NULL. It will also update conn_info->conn_id and add this info data to
ndev->conn_info_list. The ndev->rf_conn_info will be set to this newly
allocated object at last.


>>>>>>>> FREE routine <<<<<<<<

We now know that the conn_info is created when the sent discovery packet is
replied to. How about the deallocation? By reading through the source code,
we will find out the deallocation site is in nci_core_conn_close_rsp_packet()
function.

.. -> nci_recv_frame()
      -> nci_rx_work()
         -> nci_rsp_packet()
            -> nci_core_conn_close_rsp_packet()
               -> devm_kfree()


static void nci_core_conn_close_rsp_packet(struct nci_dev *ndev,
                       struct sk_buff *skb)
{
    struct nci_conn_info *conn_info;
    __u8 status = skb->data[0];

    pr_debug("status 0x%x\n", status);
    if (status == NCI_STATUS_OK) {
        conn_info = nci_get_conn_info_by_conn_id(ndev,
                             ndev->cur_conn_id);
        if (conn_info) {
            list_del(&conn_info->list);
            devm_kfree(&ndev->nfc_dev->dev, conn_info);
        }
    }
    nci_req_complete(ndev, status);
}

This function will call devm_kfree() to release conn_info, which is
obtained in function nci_get_conn_info_by_conn_id() with given conn_id.
(The cur_conn_id can be set in nci_send_data() function,
nci_nfcc_loopback() function and nci_core_conn_close() function).

In another word, the ndev->cur_conn_id is possible be NCI_STATIC_RF_CONN_ID
(0x00). That is, the devm_kfree() is possibly make the ndev->rf_conn_info a
dangling pointer.


>>>>>>>> UAF routine <<<<<<<<

We can find code side that dereference the dangling pointer
ndev->rf_conn_info. For example, the nci_rf_intf_activated_ntf_packet()
function.


static void nci_rf_intf_activated_ntf_packet(struct nci_dev *ndev,
                                             struct sk_buff *skb)
{
/* ... */
exit:
        if (err == NCI_STATUS_OK) {
                conn_info = ndev->rf_conn_info;
                if (!conn_info) // This check is failed
                        return;

                conn_info->max_pkt_payload_len =
ntf.max_data_pkt_payload_size;
                conn_info->initial_num_credits = ntf.initial_num_credits;
/* ... */
}

As we can see, this function will check if the pointer ndev->rf_conn_info
is NULL. However, this check is failed because the ndev->rf_conn_info is
not set to NULL even if the object is released.
(In fact, I didn't find any code like ndev->rf_conn_info = NULL in the
kernel source code).

Hence, the following dereference of max_pkt_payload_len and
initial_num_credits will cause UAF write.


=*=*=*=*=*=*=*=*=  BUG EFFECTS  =*=*=*=*=*=*=*=*=

Below we provide the report from KASan.

[   42.075031] ============================================================
======
[   42.075705] BUG: KASAN: use-after-free in nci_ntf_packet+0x279a/0x2fd0
[   42.076322] Write of size 1 at addr ffff888009cad9c2 by task
kworker/u2:1/43
[   42.076976]
[   42.077126] CPU: 0 PID: 43 Comm: kworker/u2:1 Not tainted 5.13.1+ #26
[   42.077732] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS
rel-1.14.0-0-g155821a1990b-prebuilt.qemu.org 04/01/2014
[   42.078800] Workqueue: nfc2_nci_rx_wq nci_rx_work
[   42.079244] Call Trace:
[   42.079482]  dump_stack+0x157/0x1ae
[   42.079820]  print_address_description+0x7b/0x3a0
[   42.080265]  __kasan_report+0x14d/0x240
[   42.080628]  ? nci_ntf_packet+0x279a/0x2fd0
[   42.081022]  kasan_report+0x45/0x60
[   42.081353]  nci_ntf_packet+0x279a/0x2fd0
[   42.081738]  ? nfc_send_to_raw_sock+0x237/0x260
[   42.082165]  ? skb_dequeue+0x10f/0x140
[   42.082524]  nci_rx_work+0x140/0x280
[   42.082871]  process_one_work+0x7b1/0x1060
[   42.083264]  worker_thread+0xa56/0x1270
[   42.083627]  ? __schedule+0xc39/0x11d0
[   42.083984]  ? process_one_work+0x1060/0x1060
[   42.084394]  kthread+0x2ee/0x310
[   42.084701]  ? process_one_work+0x1060/0x1060
[   42.085111]  ? kthread_unuse_mm+0x1a0/0x1a0
[   42.085505]  ret_from_fork+0x22/0x30
[   42.085851]
[   42.085999] Allocated by task 0:
[   42.086307] (stack is not available)
[   42.086643]
[   42.086791] Freed by task 7:
[   42.087064]  kasan_set_track+0x3d/0x70
[   42.087419]  kasan_set_free_info+0x1f/0x40
[   42.087804]  ____kasan_slab_free+0x111/0x150
[   42.088204]  kfree+0xf6/0x2d0
[   42.088488]  nci_rsp_packet+0x119f/0x2060
[   42.088865]  nci_rx_work+0x102/0x280
[   42.089203]  process_one_work+0x7b1/0x1060
[   42.089588]  worker_thread+0xa56/0x1270
[   42.089954]  kthread+0x2ee/0x310
[   42.090261]  ret_from_fork+0x22/0x30
[   42.090600]
[   42.090747] The buggy address belongs to the object at ffff888009cad980
[   42.090747]  which belongs to the cache kmalloc-128 of size 128
[   42.091894] The buggy address is located 66 bytes inside of
[   42.091894]  128-byte region [ffff888009cad980, ffff888009cada00)
[   42.092964] The buggy address belongs to the page:
[   42.093411] page:000000005b218ee6 refcount:1 mapcount:0
mapping:0000000000000000 index:0x0 pfn:0x9cac
[   42.094269] head:000000005b218ee6 order:1 compound_mapcount:0
[   42.094803] flags: 0x100000000010200(slab|head|node=0|zone=1)
[   42.095340] raw: 0100000000010200 ffffea00004bf308 ffff888005c40e70
ffff888005c431c0
[   42.096055] raw: 0000000000000000 00000000000c000c 00000001ffffffff
0000000000000000
[   42.096769] page dumped because: kasan: bad access detected
[   42.097285]
[   42.097432] Memory state around the buggy address:
[   42.097885]  ffff888009cad880: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   42.098553]  ffff888009cad900: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   42.099218] >ffff888009cad980: fa fb fb fb fb fb fb fb fb fb fb fb fb fb
fb fb
[   42.099885]                                            ^
[   42.100379]  ffff888009cada00: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   42.101047]  ffff888009cada80: fc fc fc fc fc fc fc fc fc fc fc fc fc fc
fc fc
[   42.101720] ============================================================
======
[   42.102385] Disabling lock debugging due to kernel taint

In function nci_rf_intf_activated_ntf_packet(), the attacker is able to
corrupt 6 bytes of one released slub object.
Though it sounds very limited. But the write position (66 - 71 th bytes)
happens to be the metadata of a kmalloc-128 object. That is to say, one
skillful attack can use this UAF write primitive to corrupt the slub free
list to gain more powerful primitive like arbitrary address allocating.


=*=*=*=*=*=*=*=*=  BUG REPRODUCE  =*=*=*=*=*=*=*=*=

This UAF bug, in some perspective, is not easy to trigger. These three
routines are the interaction between the kernel NFC stack and the
underlying NFC controller. That is to say, the attacker may need to
compromise one real hardware controller before he can send these malicious
NFC packets.

(P.S. This bug is found by fuzzing whose threat model is assuming the
controller is already be compromised. I didn't test if this bug can be
triggered remotely using a normal controller).

However, similar to some bugs I found in the Bluetooth stack, I found that
the NFC controller can also be simulated in userspace when the attacker
gains NET_ADMIN privilege. And this is proven to be possible!!

Hence, this bug reproducing can be achieved using the virtual_nfc driver or
the UART device simulation. The POC code for the second choice is provided
as an attachment to allow everyone to trigger this crash.

In a nutshell, the malicious controller only needs to send three packets:

1. nci_rf_disc_rsp_packet: this will awake ALLOC routine.
2. nci_core_conn_close_rsp_packet: this will awake FREE routine.
3. nci_rf_intf_activated_ntf_packet: this will cause UAF.

=*=*=*=*=*=*=*=*=  Timeline  =*=*=*=*=*=*=*=*=

2021-09-01 Report to security and linux-distro
2021-09-01 CVE-2021-3760 assigned
2021-10-26 patch upstream

Sorry for the delay of this report T.T

Best wishes

--0000000000004210c205cf3bb6df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:monospace">Hello there,</span><=
br style=3D"font-family:monospace"><br style=3D"font-family:monospace"><spa=
n style=3D"font-family:monospace">Our team found a UAF vulnerability of nde=
v-&gt;rf_conn_info object in the kernel NFC stack. The root cause is that n=
dev-&gt;rf_conn_info is forgotten to set to NULL when the object is release=
d.</span><br style=3D"font-family:monospace"><br style=3D"font-family:monos=
pace"><br style=3D"font-family:monospace"><span style=3D"font-family:monosp=
ace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG DETAILS =C2=A0=3D*=3D*=
=3D*=3D*=3D*=3D*=3D*=3D*=3D</span><br style=3D"font-family:monospace"><br s=
tyle=3D"font-family:monospace"><span style=3D"font-family:monospace">We wil=
l talk about the ALLOC routine, the FREE routine, and the UAF routine.</spa=
n><br style=3D"font-family:monospace"><br style=3D"font-family:monospace"><=
br style=3D"font-family:monospace"><span style=3D"font-family:monospace">&g=
t;&gt;&gt;&gt;&gt;&gt;&gt;&gt; ALLOC routine &lt;&lt;&lt;&lt;&lt;&lt;&lt;&l=
t;</span><br style=3D"font-family:monospace"><br style=3D"font-family:monos=
pace"><span style=3D"font-family:monospace">With dynamic debugging, I found=
 the object allocation routine is like below</span><br style=3D"font-family=
:monospace"><br style=3D"font-family:monospace"><span style=3D"font-family:=
monospace">.. -&gt; nci_recv_frame()</span><br style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 -&gt; nci_rx=
_work()</span><br style=3D"font-family:monospace"><span style=3D"font-famil=
y:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; nci_rsp_packet()</span=
><br style=3D"font-family:monospace"><span style=3D"font-family:monospace">=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -&gt; nci_rf_disc_rsp_packet()</s=
pan><br style=3D"font-family:monospace"><span style=3D"font-family:monospac=
e">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; devm_kzallo=
c()</span><br style=3D"font-family:monospace"><br style=3D"font-family:mono=
space"><span style=3D"font-family:monospace">The function nci_rf_disc_rsp_p=
acket() is like below</span><br style=3D"font-family:monospace"><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">static voi=
d nci_rf_disc_rsp_packet(struct nci_dev *ndev, struct sk_buff *skb)</span><=
br style=3D"font-family:monospace"><span style=3D"font-family:monospace">{<=
/span><br style=3D"font-family:monospace"><span style=3D"font-family:monosp=
ace">=C2=A0 =C2=A0 struct nci_conn_info =C2=A0 =C2=A0*conn_info;</span><br =
style=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=
=A0 =C2=A0 __u8 status =3D skb-&gt;data[0];</span><br style=3D"font-family:=
monospace"><br style=3D"font-family:monospace"><span style=3D"font-family:m=
onospace">=C2=A0 =C2=A0 pr_debug(&quot;status 0x%x\n&quot;, status);</span>=
<br style=3D"font-family:monospace"><br style=3D"font-family:monospace"><sp=
an style=3D"font-family:monospace">=C2=A0 =C2=A0 if (status =3D=3D NCI_STAT=
US_OK) {</span><br style=3D"font-family:monospace"><span style=3D"font-fami=
ly:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 atomic_set(&amp;ndev-&gt;state, N=
CI_DISCOVERY);</span><br style=3D"font-family:monospace"><br style=3D"font-=
family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 conn_info =3D ndev-&gt;rf_conn_info;</span><br style=3D"font-fam=
ily:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (!conn_info) {</span><br style=3D"font-family:monospace"><span st=
yle=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 con=
n_info =3D devm_kzalloc(&amp;ndev-&gt;nfc_dev-&gt;</span><span style=3D"fon=
t-family:monospace">dev, /* ALLOCATING */</span><br style=3D"font-family:mo=
nospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sizeof(struct=
 nci_conn_info),</span><br style=3D"font-family:monospace"><span style=3D"f=
ont-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GFP_KERNEL);</span><br style=3D"font-=
family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if (!conn_info) {</span><br style=3D"font-family:m=
onospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 status =3D NCI_STATUS_REJECTED;</span><br styl=
e=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto exit;</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }</span><br style=3D"font-family:monospace"=
><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 conn_info-&gt;conn_id =3D NCI_STATIC_RF_CONN_ID;</span><br style=3D"=
font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 INIT_LIST_HEAD(&amp;conn_info-&gt;</span><span =
style=3D"font-family:monospace">list);</span><br style=3D"font-family:monos=
pace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 list_add(&amp;conn_info-&gt;list, &amp;ndev-&gt;conn_info_list);=
</span><br style=3D"font-family:monospace"><span style=3D"font-family:monos=
pace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ndev-&gt;rf_conn_info =3D c=
onn_info;</span><br style=3D"font-family:monospace"><span style=3D"font-fam=
ily:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 }</span><br style=3D"font-family=
:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 }</span><br=
 style=3D"font-family:monospace"><br style=3D"font-family:monospace"><span =
style=3D"font-family:monospace">exit:</span><br style=3D"font-family:monosp=
ace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 nci_req_complete(n=
dev, status);</span><br style=3D"font-family:monospace"><span style=3D"font=
-family:monospace">}</span><br style=3D"font-family:monospace"><br style=3D=
"font-family:monospace"><span style=3D"font-family:monospace">This function=
 will allocate nci_conn_info object if the ndev-&gt;rf_conn_info is NULL. I=
t will also update conn_info-&gt;conn_id and add this info data to ndev-&gt=
;conn_info_list. The ndev-&gt;rf_conn_info will be set to this newly alloca=
ted object at last.</span><br style=3D"font-family:monospace"><br style=3D"=
font-family:monospace"><br style=3D"font-family:monospace"><span style=3D"f=
ont-family:monospace">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; FREE routine &lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;</span><br style=3D"font-family:monospace"><br sty=
le=3D"font-family:monospace"><span style=3D"font-family:monospace">We now k=
now that the conn_info is created when the sent discovery packet is replied=
 to. How about the deallocation? By reading through the source code, we wil=
l find out the deallocation site is in nci_core_conn_close_rsp_</span><span=
 style=3D"font-family:monospace">packet() function.</span><br style=3D"font=
-family:monospace"><br style=3D"font-family:monospace"><span style=3D"font-=
family:monospace">.. -&gt; nci_recv_frame()</span><br style=3D"font-family:=
monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 -&gt;=
 nci_rx_work()</span><br style=3D"font-family:monospace"><span style=3D"fon=
t-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; nci_rsp_packet(=
)</span><br style=3D"font-family:monospace"><span style=3D"font-family:mono=
space">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -&gt; nci_core_conn_close_=
rsp_</span><span style=3D"font-family:monospace">packet()</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-&gt; devm_kfree()</span><br s=
tyle=3D"font-family:monospace"><br style=3D"font-family:monospace"><br styl=
e=3D"font-family:monospace"><span style=3D"font-family:monospace">static vo=
id nci_core_conn_close_rsp_</span><span style=3D"font-family:monospace">pac=
ket(struct nci_dev *ndev,</span><br style=3D"font-family:monospace"><span s=
tyle=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0struct sk_buff *skb)</span><br sty=
le=3D"font-family:monospace"><span style=3D"font-family:monospace">{</span>=
<br style=3D"font-family:monospace"><span style=3D"font-family:monospace">=
=C2=A0 =C2=A0 struct nci_conn_info *conn_info;</span><br style=3D"font-fami=
ly:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 __u8 stat=
us =3D skb-&gt;data[0];</span><br style=3D"font-family:monospace"><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=
=A0 pr_debug(&quot;status 0x%x\n&quot;, status);</span><br style=3D"font-fa=
mily:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 if (sta=
tus =3D=3D NCI_STATUS_OK) {</span><br style=3D"font-family:monospace"><span=
 style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 conn_info =3D =
nci_get_conn_info_by_conn_id(</span><span style=3D"font-family:monospace">n=
dev,</span><br style=3D"font-family:monospace"><span style=3D"font-family:m=
onospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ndev-&gt;cur_conn_id);</span><br s=
tyle=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 if (conn_info) {</span><br style=3D"font-family:monos=
pace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 list_del(&amp;conn_info-&gt;list);</span><br style=3D"font-famil=
y:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 devm_kfree(&amp;ndev-&gt;nfc_dev-&gt;</span><span style=
=3D"font-family:monospace">dev, conn_info);</span><br style=3D"font-family:=
monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 }</span><br style=3D"font-family:monospace"><span style=3D"font-family:=
monospace">=C2=A0 =C2=A0 }</span><br style=3D"font-family:monospace"><span =
style=3D"font-family:monospace">=C2=A0 =C2=A0 nci_req_complete(ndev, status=
);</span><br style=3D"font-family:monospace"><span style=3D"font-family:mon=
ospace">}</span><br style=3D"font-family:monospace"><br style=3D"font-famil=
y:monospace"><span style=3D"font-family:monospace">This function will call =
devm_kfree() to release conn_info, which is obtained in function nci_get_co=
nn_info_by_conn_id() with given conn_id. (The cur_conn_id can be set in nci=
_send_data() function, nci_nfcc_loopback() function and nci_core_conn_close=
() function).</span><br style=3D"font-family:monospace"><br style=3D"font-f=
amily:monospace"><span style=3D"font-family:monospace">In another word, the=
 ndev-&gt;cur_conn_id is possible be NCI_STATIC_RF_CONN_ID (0x00). That is,=
 the devm_kfree() is possibly make the ndev-&gt;rf_conn_info a dangling poi=
nter.</span><br style=3D"font-family:monospace"><br style=3D"font-family:mo=
nospace"><br style=3D"font-family:monospace"><span style=3D"font-family:mon=
ospace">&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; UAF routine &lt;&lt;&lt;&lt;&lt;&l=
t;&lt;&lt;</span><br style=3D"font-family:monospace"><br style=3D"font-fami=
ly:monospace"><span style=3D"font-family:monospace">We can find code side t=
hat dereference the dangling pointer ndev-&gt;rf_conn_info. For example, th=
e nci_rf_intf_activated_ntf_</span><span style=3D"font-family:monospace">pa=
cket() function.</span><br style=3D"font-family:monospace"><br style=3D"fon=
t-family:monospace"><br style=3D"font-family:monospace"><span style=3D"font=
-family:monospace">static void nci_rf_intf_activated_ntf_</span><span style=
=3D"font-family:monospace">packet(struct nci_dev *ndev,</span><br style=3D"=
font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0st=
ruct sk_buff *skb)</span><br style=3D"font-family:monospace"><span style=3D=
"font-family:monospace">{</span><br style=3D"font-family:monospace"><span s=
tyle=3D"font-family:monospace">/* ... */</span><br style=3D"font-family:mon=
ospace"><span style=3D"font-family:monospace">exit:</span><br style=3D"font=
-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (err =3D=3D NCI_STATUS_OK) {</span><br style=3D"font-family:m=
onospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conn_info =3D ndev-&gt;rf_conn_info;</span><br=
 style=3D"font-family:monospace"><span style=3D"font-family:monospace">=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!conn_info) // Thi=
s check is failed</span><br style=3D"font-family:monospace"><span style=3D"=
font-family:monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return;</span><br style=3D"font-family:mono=
space"><br style=3D"font-family:monospace"><span style=3D"font-family:monos=
pace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conn_info-&gt=
;max_pkt_payload_len =3D ntf.max_data_pkt_payload_size;</span><br style=3D"=
font-family:monospace"><span style=3D"font-family:monospace">=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 conn_info-&gt;initial_num_credits=
 =3D ntf.initial_num_credits;</span><br style=3D"font-family:monospace"><sp=
an style=3D"font-family:monospace">/* ... */</span><br style=3D"font-family=
:monospace"><span style=3D"font-family:monospace">}</span><br style=3D"font=
-family:monospace"><br style=3D"font-family:monospace"><span style=3D"font-=
family:monospace">As we can see, this function will check if the pointer nd=
ev-&gt;rf_conn_info is NULL. However, this check is failed because the ndev=
-&gt;rf_conn_info is not set to NULL even if the object is released.</span>=
<br style=3D"font-family:monospace"><span style=3D"font-family:monospace">(=
In fact, I didn&#39;t find any code like ndev-&gt;rf_conn_info =3D NULL in =
the kernel source code).</span><br style=3D"font-family:monospace"><br styl=
e=3D"font-family:monospace"><span style=3D"font-family:monospace">Hence, th=
e following dereference of max_pkt_payload_len and initial_num_credits will=
 cause UAF write.</span><br style=3D"font-family:monospace"><br style=3D"fo=
nt-family:monospace"><br style=3D"font-family:monospace"><span style=3D"fon=
t-family:monospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG EFFECTS =
=C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</span><br style=3D"font-family:mo=
nospace"><br style=3D"font-family:monospace"><span style=3D"font-family:mon=
ospace">Below we provide the report from KASan.</span><br style=3D"font-fam=
ily:monospace"><br style=3D"font-family:monospace"><span style=3D"font-fami=
ly:monospace">[ =C2=A0 42.075031] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><span style=3D"fo=
nt-family:monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><span style=3D"font-family:monos=
pace">=3D=3D=3D=3D=3D=3D</span><br style=3D"font-family:monospace"><span st=
yle=3D"font-family:monospace">[ =C2=A0 42.075705] BUG: KASAN: use-after-fre=
e in nci_ntf_packet+0x279a/0x2fd0</span><br style=3D"font-family:monospace"=
><span style=3D"font-family:monospace">[ =C2=A0 42.076322] Write of size 1 =
at addr ffff888009cad9c2 by task kworker/u2:1/43</span><br style=3D"font-fa=
mily:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.076976]</=
span><br style=3D"font-family:monospace"><span style=3D"font-family:monospa=
ce">[ =C2=A0 42.077126] CPU: 0 PID: 43 Comm: kworker/u2:1 Not tainted 5.13.=
1+ #26</span><br style=3D"font-family:monospace"><span style=3D"font-family=
:monospace">[ =C2=A0 42.077732] Hardware name: QEMU Standard PC (i440FX + P=
IIX, 1996), BIOS=C2=A0</span><a href=3D"http://rel-1.14.0-0-g155821a1990b-p=
rebuilt.qemu.org/" target=3D"_blank" style=3D"font-family:monospace">rel-1.=
14.0-0-g155821a1990b-prebuilt.qemu.org</a><span style=3D"font-family:monosp=
ace">=C2=A004/01/2014</span><br style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">[ =C2=A0 42.078800] Workqueue: nfc2_nci_rx_wq nc=
i_rx_work</span><br style=3D"font-family:monospace"><span style=3D"font-fam=
ily:monospace">[ =C2=A0 42.079244] Call Trace:</span><br style=3D"font-fami=
ly:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.079482] =C2=
=A0dump_stack+0x157/0x1ae</span><br style=3D"font-family:monospace"><span s=
tyle=3D"font-family:monospace">[ =C2=A0 42.079820] =C2=A0print_address_desc=
ription+</span><span style=3D"font-family:monospace">0x7b/0x3a0</span><br s=
tyle=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=
=A0 42.080265] =C2=A0__kasan_report+0x14d/0x240</span><br style=3D"font-fam=
ily:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.080628] =
=C2=A0? nci_ntf_packet+0x279a/0x2fd0</span><br style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace">[ =C2=A0 42.081022] =C2=A0kasan_r=
eport+0x45/0x60</span><br style=3D"font-family:monospace"><span style=3D"fo=
nt-family:monospace">[ =C2=A0 42.081353] =C2=A0nci_ntf_packet+0x279a/0x2fd0=
</span><br style=3D"font-family:monospace"><span style=3D"font-family:monos=
pace">[ =C2=A0 42.081738] =C2=A0? nfc_send_to_raw_sock+0x237/</span><span s=
tyle=3D"font-family:monospace">0x260</span><br style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace">[ =C2=A0 42.082165] =C2=A0? skb_d=
equeue+0x10f/0x140</span><br style=3D"font-family:monospace"><span style=3D=
"font-family:monospace">[ =C2=A0 42.082524] =C2=A0nci_rx_work+0x140/0x280</=
span><br style=3D"font-family:monospace"><span style=3D"font-family:monospa=
ce">[ =C2=A0 42.082871] =C2=A0process_one_work+0x7b1/0x1060</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 4=
2.083264] =C2=A0worker_thread+0xa56/0x1270</span><br style=3D"font-family:m=
onospace"><span style=3D"font-family:monospace">[ =C2=A0 42.083627] =C2=A0?=
 __schedule+0xc39/0x11d0</span><br style=3D"font-family:monospace"><span st=
yle=3D"font-family:monospace">[ =C2=A0 42.083984] =C2=A0? process_one_work+=
0x1060/0x1060</span><br style=3D"font-family:monospace"><span style=3D"font=
-family:monospace">[ =C2=A0 42.084394] =C2=A0kthread+0x2ee/0x310</span><br =
style=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=
=A0 42.084701] =C2=A0? process_one_work+0x1060/0x1060</span><br style=3D"fo=
nt-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.0851=
11] =C2=A0? kthread_unuse_mm+0x1a0/0x1a0</span><br style=3D"font-family:mon=
ospace"><span style=3D"font-family:monospace">[ =C2=A0 42.085505] =C2=A0ret=
_from_fork+0x22/0x30</span><br style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">[ =C2=A0 42.085851]</span><br style=3D"font-fami=
ly:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.085999] All=
ocated by task 0:</span><br style=3D"font-family:monospace"><span style=3D"=
font-family:monospace">[ =C2=A0 42.086307] (stack is not available)</span><=
br style=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =
=C2=A0 42.086643]</span><br style=3D"font-family:monospace"><span style=3D"=
font-family:monospace">[ =C2=A0 42.086791] Freed by task 7:</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 4=
2.087064] =C2=A0kasan_set_track+0x3d/0x70</span><br style=3D"font-family:mo=
nospace"><span style=3D"font-family:monospace">[ =C2=A0 42.087419] =C2=A0ka=
san_set_free_info+0x1f/0x40</span><br style=3D"font-family:monospace"><span=
 style=3D"font-family:monospace">[ =C2=A0 42.087804] =C2=A0____kasan_slab_f=
ree+0x111/</span><span style=3D"font-family:monospace">0x150</span><br styl=
e=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 =
42.088204] =C2=A0kfree+0xf6/0x2d0</span><br style=3D"font-family:monospace"=
><span style=3D"font-family:monospace">[ =C2=A0 42.088488] =C2=A0nci_rsp_pa=
cket+0x119f/0x2060</span><br style=3D"font-family:monospace"><span style=3D=
"font-family:monospace">[ =C2=A0 42.088865] =C2=A0nci_rx_work+0x102/0x280</=
span><br style=3D"font-family:monospace"><span style=3D"font-family:monospa=
ce">[ =C2=A0 42.089203] =C2=A0process_one_work+0x7b1/0x1060</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 4=
2.089588] =C2=A0worker_thread+0xa56/0x1270</span><br style=3D"font-family:m=
onospace"><span style=3D"font-family:monospace">[ =C2=A0 42.089954] =C2=A0k=
thread+0x2ee/0x310</span><br style=3D"font-family:monospace"><span style=3D=
"font-family:monospace">[ =C2=A0 42.090261] =C2=A0ret_from_fork+0x22/0x30</=
span><br style=3D"font-family:monospace"><span style=3D"font-family:monospa=
ce">[ =C2=A0 42.090600]</span><br style=3D"font-family:monospace"><span sty=
le=3D"font-family:monospace">[ =C2=A0 42.090747] The buggy address belongs =
to the object at ffff888009cad980</span><br style=3D"font-family:monospace"=
><span style=3D"font-family:monospace">[ =C2=A0 42.090747] =C2=A0which belo=
ngs to the cache kmalloc-128 of size 128</span><br style=3D"font-family:mon=
ospace"><span style=3D"font-family:monospace">[ =C2=A0 42.091894] The buggy=
 address is located 66 bytes inside of</span><br style=3D"font-family:monos=
pace"><span style=3D"font-family:monospace">[ =C2=A0 42.091894] =C2=A0128-b=
yte region [ffff888009cad980, ffff888009cada00)</span><br style=3D"font-fam=
ily:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.092964] Th=
e buggy address belongs to the page:</span><br style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace">[ =C2=A0 42.093411] page:00000000=
5b218ee6 refcount:1 mapcount:0 mapping:0000000000000000 index:0x0 pfn:0x9ca=
c</span><br style=3D"font-family:monospace"><span style=3D"font-family:mono=
space">[ =C2=A0 42.094269] head:000000005b218ee6 order:1 compound_mapcount:=
0</span><br style=3D"font-family:monospace"><span style=3D"font-family:mono=
space">[ =C2=A0 42.094803] flags: 0x100000000010200(slab|head|</span><span =
style=3D"font-family:monospace">node=3D0|zone=3D1)</span><br style=3D"font-=
family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.095340]=
 raw: 0100000000010200 ffffea00004bf308 ffff888005c40e70 ffff888005c431c0</=
span><br style=3D"font-family:monospace"><span style=3D"font-family:monospa=
ce">[ =C2=A0 42.096055] raw: 0000000000000000 00000000000c000c 00000001ffff=
ffff 0000000000000000</span><br style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">[ =C2=A0 42.096769] page dumped because: kasan: =
bad access detected</span><br style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">[ =C2=A0 42.097285]</span><br style=3D"font-fami=
ly:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.097432] Mem=
ory state around the buggy address:</span><br style=3D"font-family:monospac=
e"><span style=3D"font-family:monospace">[ =C2=A0 42.097885] =C2=A0ffff8880=
09cad880: fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc fc</span><br style=
=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 4=
2.098553] =C2=A0ffff888009cad900: fc fc fc fc fc fc fc fc fc fc fc fc fc fc=
 fc fc</span><br style=3D"font-family:monospace"><span style=3D"font-family=
:monospace">[ =C2=A0 42.099218] &gt;ffff888009cad980: fa fb fb fb fb fb fb =
fb fb fb fb fb fb fb fb fb</span><br style=3D"font-family:monospace"><span =
style=3D"font-family:monospace">[ =C2=A0 42.099885] =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</span><br styl=
e=3D"font-family:monospace"><span style=3D"font-family:monospace">[ =C2=A0 =
42.100379] =C2=A0ffff888009cada00: fc fc fc fc fc fc fc fc fc fc fc fc fc f=
c fc fc</span><br style=3D"font-family:monospace"><span style=3D"font-famil=
y:monospace">[ =C2=A0 42.101047] =C2=A0ffff888009cada80: fc fc fc fc fc fc =
fc fc fc fc fc fc fc fc fc fc</span><br style=3D"font-family:monospace"><sp=
an style=3D"font-family:monospace">[ =C2=A0 42.101720] =3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</s=
pan><span style=3D"font-family:monospace">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><span style=
=3D"font-family:monospace">=3D=3D=3D=3D=3D=3D</span><br style=3D"font-famil=
y:monospace"><span style=3D"font-family:monospace">[ =C2=A0 42.102385] Disa=
bling lock debugging due to kernel taint</span><br style=3D"font-family:mon=
ospace"><br style=3D"font-family:monospace"><span style=3D"font-family:mono=
space">In function nci_rf_intf_activated_ntf_</span><span style=3D"font-fam=
ily:monospace">packet(), the attacker is able to corrupt 6 bytes of one rel=
eased slub object.</span><br style=3D"font-family:monospace"><span style=3D=
"font-family:monospace">Though it sounds very limited. But the write positi=
on (66 - 71 th bytes) happens to be the metadata of a kmalloc-128 object. T=
hat is to say, one skillful attack can use this UAF write primitive to corr=
upt the slub free list to gain more powerful primitive like arbitrary addre=
ss allocating.</span><br style=3D"font-family:monospace"><br style=3D"font-=
family:monospace"><br style=3D"font-family:monospace"><span style=3D"font-f=
amily:monospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0BUG REPRODUCE =
=C2=A0=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</span><br style=3D"font-family:mo=
nospace"><br style=3D"font-family:monospace"><span style=3D"font-family:mon=
ospace">This UAF bug, in some perspective, is not easy to trigger. These th=
ree routines are the interaction between the kernel NFC stack and the under=
lying NFC controller. That is to say, the attacker may need to compromise o=
ne real hardware controller before he can send these malicious NFC packets.=
</span><br style=3D"font-family:monospace"><br style=3D"font-family:monospa=
ce"><span style=3D"font-family:monospace">(P.S. This bug is found by fuzzin=
g whose threat model is assuming the controller is already be compromised. =
I didn&#39;t test if this bug can be triggered remotely using a normal cont=
roller).</span><br style=3D"font-family:monospace"><br style=3D"font-family=
:monospace"><span style=3D"font-family:monospace">However, similar to some =
bugs I found in the Bluetooth stack, I found that the NFC controller can al=
so be simulated in userspace when the attacker gains NET_ADMIN privilege. A=
nd this is proven to be possible!!</span><br style=3D"font-family:monospace=
"><br style=3D"font-family:monospace"><span style=3D"font-family:monospace"=
>Hence, this bug reproducing can be achieved using the virtual_nfc driver o=
r the UART device simulation. The POC code for the second choice is provide=
d as an attachment to allow everyone to trigger this crash.</span><br style=
=3D"font-family:monospace"><br style=3D"font-family:monospace"><span style=
=3D"font-family:monospace">In a nutshell, the malicious controller only nee=
ds to send three packets:</span><br style=3D"font-family:monospace"><br sty=
le=3D"font-family:monospace"><span style=3D"font-family:monospace">1. nci_r=
f_disc_rsp_packet: this will awake ALLOC routine.</span><br style=3D"font-f=
amily:monospace"><span style=3D"font-family:monospace">2. nci_core_conn_clo=
se_rsp_</span><span style=3D"font-family:monospace">packet: this will awake=
 FREE routine.</span><br style=3D"font-family:monospace"><span style=3D"fon=
t-family:monospace">3. nci_rf_intf_activated_ntf_</span><span style=3D"font=
-family:monospace">packet: this will cause UAF.</span><br style=3D"font-fam=
ily:monospace"><br style=3D"font-family:monospace"><div><span style=3D"font=
-family:monospace">=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D =C2=A0Timeline=C2=A0=
 =3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D*=3D</span><br style=3D"font-family:monospa=
ce"></div><div><span style=3D"font-family:monospace"><br></span></div><div>=
<span style=3D"font-family:monospace">2021-09-01 Report to security and lin=
ux-distro</span></div><div><span style=3D"font-family:monospace">2021-09-01=
 CVE-2021-3760 assigned</span></div><div><span style=3D"font-family:monospa=
ce">2021-10-26 patch upstream</span></div><div><span style=3D"font-family:m=
onospace"><br></span></div><div><span style=3D"font-family:monospace">Sorry=
 for the delay of this report T.T</span></div><div><span style=3D"font-fami=
ly:monospace"><br></span></div><div><span style=3D"font-family:monospace">B=
est wishes</span></div><div><span style=3D"font-family:monospace"><br></spa=
n></div><div><span style=3D"font-family:monospace"><br></span></div><div><s=
pan style=3D"font-family:monospace"><br></span></div></div>

--0000000000004210c205cf3bb6df--

--0000000000004210c405cf3bb6e1
Content-Type: application/x-tar; name="reproduce.tar"
Content-Disposition: attachment; filename="reproduce.tar"
Content-Transfer-Encoding: base64
Content-ID: <f_kv7puxgs0>
X-Attachment-Id: f_kv7puxgs0

cmVwcm8vAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAADAwMDc1NSAAMDAwNzY1IAAwMDAwMjQgADAwMDAwMDAwMDAw
IDE0MTEzNjA2NTE3IDAxMjQ1NAAgNQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhcgAwMG1hbGlu
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAc3RhZmYAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAwMDAwMDAgADAwMDAwMCAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAByZXByby9uZmNfdWFmdy5jAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAwNjQ0IAAwMDA3NjUgADAw
MDAyNCAAMDAwMDAwMTE1NzAgMTQxMTM2MDY1MTcgMDE0NDE0ACAwAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAHVzdGFyADAwbWFsaW4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABz
dGFmZgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDAwMCAAMDAwMDAw
IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACNpbmNsdWRlIDxz
dGRpby5oPgojaW5jbHVkZSA8c3RkbGliLmg+CiNpbmNsdWRlIDxzdHJpbmcu
aD4KI2luY2x1ZGUgPHN0ZGludC5oPgoKI2luY2x1ZGUgPHN5cy90eXBlcy5o
PgojaW5jbHVkZSA8c3lzL3NvY2tldC5oPgojaW5jbHVkZSA8bGludXgvZ2Vu
ZXRsaW5rLmg+CiNpbmNsdWRlIDxzdGRib29sLmg+CgojaW5jbHVkZSAicHR0
eV9kZXZpY2UuaCIKI2luY2x1ZGUgIm5mYy5oIgojaW5jbHVkZSAibmV0bGlu
ay5oIgoKaW50IG1hc3RlcjsKaW50IHNsYXZlOwpzdGF0aWMgc3RydWN0IG5s
bXNnIG5sbXNnOwoKc3RydWN0IG5jaV9yZl9pbnRmX2FjdGl2YXRlZF9udGYg
ewoJX191OAlyZl9kaXNjb3ZlcnlfaWQ7CglfX3U4CXJmX2ludGVyZmFjZTsK
CV9fdTgJcmZfcHJvdG9jb2w7CglfX3U4CWFjdGl2YXRpb25fcmZfdGVjaF9h
bmRfbW9kZTsKCV9fdTgJbWF4X2RhdGFfcGt0X3BheWxvYWRfc2l6ZTsKCV9f
dTgJaW5pdGlhbF9udW1fY3JlZGl0czsKCV9fdTgJcmZfdGVjaF9zcGVjaWZp
Y19wYXJhbXNfbGVuOwoJX191OAlkYXRhX2V4Y2hfcmZfdGVjaF9hbmRfbW9k
ZTsKCV9fdTgJZGF0YV9leGNoX3R4X2JpdF9yYXRlOwoJX191OAlkYXRhX2V4
Y2hfcnhfYml0X3JhdGU7CglfX3U4CWFjdGl2YXRpb25fcGFyYW1zX2xlbjsK
fSBfX2F0dHJpYnV0ZV9fKChwYWNrZWQpKTsKCnN0cnVjdCBuY2lfcmZfaW50
Zl9hY3RpdmF0ZWRfbnRmIGZha2UgPSB7CgkucmZfZGlzY292ZXJ5X2lkID0g
MHgwLAoJLnJmX2ludGVyZmFjZSA9IDB4MSwKCS5yZl9wcm90b2NvbCA9IDB4
MCwKCS5hY3RpdmF0aW9uX3JmX3RlY2hfYW5kX21vZGUgPSAweDAsCgkubWF4
X2RhdGFfcGt0X3BheWxvYWRfc2l6ZSA9IDB4MCwKCS5pbml0aWFsX251bV9j
cmVkaXRzID0gMHgxLAoJLnJmX3RlY2hfc3BlY2lmaWNfcGFyYW1zX2xlbiA9
IDB4MCwKCS5kYXRhX2V4Y2hfcmZfdGVjaF9hbmRfbW9kZSA9IDB4MCwKCS5k
YXRhX2V4Y2hfdHhfYml0X3JhdGUgPSAweDAsCgkuZGF0YV9leGNoX3J4X2Jp
dF9yYXRlID0gMHgwLAoJLmFjdGl2YXRpb25fcGFyYW1zX2xlbiA9IDB4MCwK
fTsKCgp2b2lkKiBkZXZpY2VfdGhyZWFkKHZvaWQqIGFyZykgewoJY29uc3Qg
X191OCBuY2lfcmVzZXRfY21kW10gPSB7MHgyMCwgMHgwMCwgMHgwMSwgMHgw
MX07Cgljb25zdCBfX3U4IG5jaV9pbml0X2NtZFtdID0gezB4MjAsIDB4MDEs
IDB4MDB9OwoJY29uc3QgX191OCBuY2lfc2V0X2NvbmZpZ19jbWRbXSA9IHsw
eDIwLCAweDAyLCAweDA0LCAweDAxLCAweDExLCAweDAxLCAweDAxfTsKCWNv
bnN0IF9fdTggbmNpX3Jlc2V0X3JzcFtdID0gezB4NDAsIDB4MDAsIDB4MDMs
IDB4MDAsIDB4MTAsIDB4MDF9OwoJY29uc3QgX191OCBuY2lfaW5pdF9yc3Bb
XSA9IHsweDQwLCAweDAxLCAweDE0LCAweDAwLCAweDAyLCAweDBlLCAweDAy
LAogICAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4MDAsIDB4MDMsIDB4
MDEsIDB4MDIsIDB4MDMsIDB4MDIsIDB4YzgsCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgMHgwMCwgMHhmZiwgMHgxMCwgMHgwMCwgMHgwZSwgMHgx
MiwgMHgwMCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDAwLCAw
eDA0fTsKCWNvbnN0IF9fdTggbmNpX3NldF9jb25maWdfcnNwW10gPSB7MHg0
MCwgMHgwMiwgMHgwNCwgMHgwMCwgMHgxMSwgMHgwMSwgMHgwMX07Cgljb25z
dCBfX3U4IG5jaV9yZl9kaXNjX21hcF9jbWRbXSA9IHsweDIxLCAweDAwLCAw
eDA3LCAweDAyLCAweDA0LCAweDAzLAogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAweDAyLCAweDA1LCAweDAzLCAweDAzfTsKCWNvbnN0
IF9fdTggbmNpX3JmX2Rpc2NfbWFwX3JzcFtdID0gezB4NDEsIDB4MDAsIDB4
MDEsIDB4MDB9OwogICAgCWludCBuY2lfZmQgPSAqKGludCopYXJnOwogICAg
CWNoYXIgYnVmWzI1OF07CglpbnQgbGVuOwoKICAgICAgICB3aGlsZSAoKGxl
biA9IHJlYWQobmNpX2ZkLCBidWYsIDI1OCkpID09IDApCiAgICAgICAgICAg
ICAgICA7CiAgICAgICAgaWYgKGxlbiA8PSAwKQogICAgICAgICAgICAgICAg
Z290byBlcnJvcjsKICAgICAgICBpZiAobGVuICE9IHNpemVvZihuY2lfcmVz
ZXRfY21kKSkKICAgICAgICAgICAgICAgIGdvdG8gZXJyb3I7CiAgICAgICAg
aWYgKG1lbWNtcChuY2lfcmVzZXRfY21kLCBidWYsIGxlbikpCiAgICAgICAg
ICAgICAgICBnb3RvIGVycm9yOwogICAgICAgIHdyaXRlKG5jaV9mZCwgbmNp
X3Jlc2V0X3JzcCwgc2l6ZW9mKG5jaV9yZXNldF9yc3ApKTsKCXByaW50Zigi
WytdIG5jaV9yZXNldF9yc3Agc2VudFxuIik7CgogICAgICAgIHdoaWxlICgo
bGVuID0gcmVhZChuY2lfZmQsIGJ1ZiwgMjU4KSkgPT0gMCkKICAgICAgICAg
ICAgICAgIDsKICAgICAgICBpZiAobGVuIDw9IDApCiAgICAgICAgICAgICAg
ICBnb3RvIGVycm9yOwogICAgICAgIGlmIChsZW4gIT0gc2l6ZW9mKG5jaV9z
ZXRfY29uZmlnX2NtZCkpCiAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwog
ICAgICAgIGlmIChtZW1jbXAobmNpX3NldF9jb25maWdfY21kLCBidWYsIGxl
bikpCiAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwoJd3JpdGUobmNpX2Zk
LCBuY2lfc2V0X2NvbmZpZ19yc3AsIHNpemVvZihuY2lfc2V0X2NvbmZpZ19y
c3ApKTsKCXByaW50ZigiWytdIG5jaV9zZXRfY29uZmlnX3JzcCBzZW50XG4i
KTsKCiAgICAgICAgd2hpbGUgKChsZW4gPSByZWFkKG5jaV9mZCwgYnVmLCAy
NTgpKSA9PSAwKQogICAgICAgICAgICAgICAgOwogICAgICAgIGlmIChsZW4g
PD0gMCkKICAgICAgICAgICAgICAgIGdvdG8gZXJyb3I7CiAgICAgICAgaWYg
KGxlbiAhPSBzaXplb2YobmNpX2luaXRfY21kKSkKICAgICAgICAgICAgICAg
IGdvdG8gZXJyb3I7CiAgICAgICAgaWYgKG1lbWNtcChuY2lfaW5pdF9jbWQs
IGJ1ZiwgbGVuKSkKICAgICAgICAgICAgICAgIGdvdG8gZXJyb3I7Cgl3cml0
ZShuY2lfZmQsIG5jaV9pbml0X3JzcCwgc2l6ZW9mKG5jaV9pbml0X3JzcCkp
OwoJcHJpbnRmKCJbK10gbmNpX2luaXRfcnNwIHNlbnRcbiIpOwoKCXdoaWxl
ICgobGVuID0gcmVhZChuY2lfZmQsIGJ1ZiwgMjU4KSkgPT0gMCkKICAgICAg
ICAgICAgICAgIDsKCWlmIChsZW4gPD0gMCkKICAgICAgICAgICAgICAgIGdv
dG8gZXJyb3I7CiAgICAgICAgaWYgKGxlbiAhPSBzaXplb2YobmNpX3JmX2Rp
c2NfbWFwX2NtZCkpCiAgICAgICAgICAgICAgICBnb3RvIGVycm9yOwogICAg
ICAgIGlmIChtZW1jbXAobmNpX3JmX2Rpc2NfbWFwX2NtZCwgYnVmLCBsZW4p
KQogICAgICAgICAgICAgICAgZ290byBlcnJvcjsKCXdyaXRlKG5jaV9mZCwg
bmNpX3JmX2Rpc2NfbWFwX3JzcCwgc2l6ZW9mKG5jaV9yZl9kaXNjX21hcF9y
c3ApKTsKCXByaW50ZigiWytdIG5jaV9yZl9kaXNjX21hcF9yc3Agc2VudFxu
Iik7CgoJcmV0dXJuICh2b2lkKikwOwplcnJvcjoKCXByaW50ZigiWyFdIGJh
ZCBjb21tYW5kIG1hdGNoaW5nXG4iKTsKCWZvcihpbnQgaSA9IDA7IGkgPCBs
ZW47IGkrKykKCQlwcmludGYoIiUwMnggIiwgYnVmW2ldICYgMHhmZik7Cglw
dXRzKCIiKTsKCXJldHVybiAodm9pZCopLTE7Cn0KCmludCBtYWluKGludCBh
cmdjLCBjaGFyKiBhcmd2W10pCnsKICAgCWludCBlcnI7CiAgICAJbWFzdGVy
ID0gZ2V0bWFzdGVyKCk7CiAgICAJc2xhdmUgPSBnZXRzbGF2ZShtYXN0ZXIp
OwogICAgCWlmIChuZmNfcmVnaXN0ZXIoc2xhdmUpIDwgMCkgewogICAgICAg
IAlwcmludGYoIlshXSBmYWlsZWQgdG8gcmVnaXN0ZXIgTkZDIHVhcnRcbiIp
OwogICAgICAgIAlleGl0KDEpOwogICAgCX0KCiAgICAJcHRocmVhZF90IHRo
OwogICAgCXB0aHJlYWRfY3JlYXRlKCZ0aCwgTlVMTCwgZGV2aWNlX3RocmVh
ZCwgJm1hc3Rlcik7CgoJaW50IG5zb2NrID0gc29ja2V0KEFGX05FVExJTkss
IFNPQ0tfUkFXLCBORVRMSU5LX0dFTkVSSUMpOwogICAgCWlmIChuc29jayA8
IDApIHsKICAgICAgICAJcGVycm9yKCJbIV0gbmV0bGluayBzb2NrZXQoKSIp
OwogICAgICAgIAlleGl0KDEpOwogICAgCX0KCiAgICAJaW50IG5mY19mYW1p
bHlfaWQgPSBuZXRsaW5rX3F1ZXJ5X2ZhbWlseV9pZCgmbmxtc2csIG5zb2Nr
LCAibmZjIiwgdHJ1ZSk7CgkJc3RydWN0IGdlbmxtc2doZHIgZ2VubGhkciA9
IHswfTsKCWdlbmxoZHIuY21kID0gTkZDX0NNRF9ERVZfVVA7Cgl1aW50MzJf
dCBpZHggPSAweDI7IC8vIGludGVyZXN0aW5nCgluZXRsaW5rX2luaXQoJm5s
bXNnLCBuZmNfZmFtaWx5X2lkLCAwLCAmZ2VubGhkciwgc2l6ZW9mKGdlbmxo
ZHIpKTsKCW5ldGxpbmtfYXR0cigmbmxtc2csIE5GQ19BVFRSX0RFVklDRV9J
TkRFWCwgJmlkeCwgc2l6ZW9mKHVpbnQzMl90KSk7CgllcnIgPSBuZXRsaW5r
X3NlbmQoJm5sbXNnLCBuc29jayk7CglpZiAoZXJyIDwgMCkgewoJICAgIAlw
ZXJyb3IoIlshXSBuZXRsaW5rIGRldmljZSBzZXR1cFxuIik7CgkgICAgCWV4
aXQoMSk7Cgl9CgoJLy8gY2hlY2sgc2V0dXAKCWludCBzdGF0dXM7CglwdGhy
ZWFkX2pvaW4odGgsICh2b2lkKiopJnN0YXR1cyk7CglpZiAoc3RhdHVzICE9
IDApIHsKCQlwZXJyb3IoIlshXSBiYWQgZGV2aWNlIHNldHVwXG4iKTsKCQll
eGl0KDEpOwoJfQoKCS8vIGF0dGFjawoJY29uc3QgX191OCBwa3QxWzI1Nl0g
PSB7MHg0MSwgMHgwMywgMHgwMSwgMHgwMH07Cgljb25zdCBfX3U4IHBrdDJb
MjU2XSA9IHsweDUwLCAweDA1LCAweDAxLCAweDAwfTsKCWNvbnN0IF9fdTgg
cGt0M1syNTZdID0gezB4NzEsIDB4MDUsIHNpemVvZihmYWtlKX07CgltZW1j
cHkocGt0MyArIDMsICZmYWtlLCBzaXplb2YoZmFrZSkpOwoKCXByaW50Zigi
PT0gcGt0MSA9PVxuIik7Cgl3cml0ZShtYXN0ZXIsIHBrdDEsIDB4NCk7Cglz
bGVlcCgxKTsKCQoJcHJpbnRmKCI9PSBwa3QyID09XG4iKTsKCXdyaXRlKG1h
c3RlciwgcGt0MiwgMHg0KTsKCXNsZWVwKDEpOwoJcHJpbnRmKCI9PSBwa3Qz
ID09XG4iKTsKCXdyaXRlKG1hc3RlciwgcGt0Mywgc2l6ZW9mKGZha2UpICsg
MHhmKTsKCQoJcmV0dXJuIDA7Cn0KCgoAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcmVwcm8vbmZjLmgAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAwMDY0NCAAMDAw
NzY1IAAwMDAwMjQgADAwMDAwMDEyNTczIDE0MTEzNjA2NTE3IDAxMzQwMwAg
MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAB1c3RhcgAwMG1hbGluAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAc3RhZmYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwMDAwMDAg
ADAwMDAwMCAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjaWZu
ZGVmIF9QTkZDCiNkZWZpbmUgX1BORkMKCiNpbmNsdWRlIDxzeXMvaW9jdGwu
aD4KI2RlZmluZSBOQ0lVQVJUU0VURFJJVkVSCV9JT1coJ1UnLCAwLCBjaGFy
ICopCgplbnVtIG5jaV91YXJ0X2RyaXZlciB7CglOQ0lfVUFSVF9EUklWRVJf
TUFSVkVMTCA9IDAsCglOQ0lfVUFSVF9EUklWRVJfTUFYCn07CgplbnVtIG5m
Y19jb21tYW5kcyB7CglORkNfQ01EX1VOU1BFQywKCU5GQ19DTURfR0VUX0RF
VklDRSwKCU5GQ19DTURfREVWX1VQLAoJTkZDX0NNRF9ERVZfRE9XTiwKCU5G
Q19DTURfREVQX0xJTktfVVAsCglORkNfQ01EX0RFUF9MSU5LX0RPV04sCglO
RkNfQ01EX1NUQVJUX1BPTEwsCglORkNfQ01EX1NUT1BfUE9MTCwKCU5GQ19D
TURfR0VUX1RBUkdFVCwKCU5GQ19FVkVOVF9UQVJHRVRTX0ZPVU5ELAoJTkZD
X0VWRU5UX0RFVklDRV9BRERFRCwKCU5GQ19FVkVOVF9ERVZJQ0VfUkVNT1ZF
RCwKCU5GQ19FVkVOVF9UQVJHRVRfTE9TVCwKCU5GQ19FVkVOVF9UTV9BQ1RJ
VkFURUQsCglORkNfRVZFTlRfVE1fREVBQ1RJVkFURUQsCglORkNfQ01EX0xM
Q19HRVRfUEFSQU1TLAoJTkZDX0NNRF9MTENfU0VUX1BBUkFNUywKCU5GQ19D
TURfRU5BQkxFX1NFLAoJTkZDX0NNRF9ESVNBQkxFX1NFLAoJTkZDX0NNRF9M
TENfU0RSRVEsCglORkNfRVZFTlRfTExDX1NEUkVTLAoJTkZDX0NNRF9GV19E
T1dOTE9BRCwKCU5GQ19FVkVOVF9TRV9BRERFRCwKCU5GQ19FVkVOVF9TRV9S
RU1PVkVELAoJTkZDX0VWRU5UX1NFX0NPTk5FQ1RJVklUWSwKCU5GQ19FVkVO
VF9TRV9UUkFOU0FDVElPTiwKCU5GQ19DTURfR0VUX1NFLAoJTkZDX0NNRF9T
RV9JTywKCU5GQ19DTURfQUNUSVZBVEVfVEFSR0VULAoJTkZDX0NNRF9WRU5E
T1IsCglORkNfQ01EX0RFQUNUSVZBVEVfVEFSR0VULAovKiBwcml2YXRlOiBp
bnRlcm5hbCB1c2Ugb25seSAqLwoJX19ORkNfQ01EX0FGVEVSX0xBU1QKfTsK
I2RlZmluZSBORkNfQ01EX01BWCAoX19ORkNfQ01EX0FGVEVSX0xBU1QgLSAx
KQoKZW51bSBuZmNfYXR0cnMgewoJTkZDX0FUVFJfVU5TUEVDLAoJTkZDX0FU
VFJfREVWSUNFX0lOREVYLAoJTkZDX0FUVFJfREVWSUNFX05BTUUsCglORkNf
QVRUUl9QUk9UT0NPTFMsCglORkNfQVRUUl9UQVJHRVRfSU5ERVgsCglORkNf
QVRUUl9UQVJHRVRfU0VOU19SRVMsCglORkNfQVRUUl9UQVJHRVRfU0VMX1JF
UywKCU5GQ19BVFRSX1RBUkdFVF9ORkNJRDEsCglORkNfQVRUUl9UQVJHRVRf
U0VOU0JfUkVTLAoJTkZDX0FUVFJfVEFSR0VUX1NFTlNGX1JFUywKCU5GQ19B
VFRSX0NPTU1fTU9ERSwKCU5GQ19BVFRSX1JGX01PREUsCglORkNfQVRUUl9E
RVZJQ0VfUE9XRVJFRCwKCU5GQ19BVFRSX0lNX1BST1RPQ09MUywKCU5GQ19B
VFRSX1RNX1BST1RPQ09MUywKCU5GQ19BVFRSX0xMQ19QQVJBTV9MVE8sCglO
RkNfQVRUUl9MTENfUEFSQU1fUlcsCglORkNfQVRUUl9MTENfUEFSQU1fTUlV
WCwKCU5GQ19BVFRSX1NFLAoJTkZDX0FUVFJfTExDX1NEUCwKCU5GQ19BVFRS
X0ZJUk1XQVJFX05BTUUsCglORkNfQVRUUl9TRV9JTkRFWCwKCU5GQ19BVFRS
X1NFX1RZUEUsCglORkNfQVRUUl9TRV9BSUQsCglORkNfQVRUUl9GSVJNV0FS
RV9ET1dOTE9BRF9TVEFUVVMsCglORkNfQVRUUl9TRV9BUERVLAoJTkZDX0FU
VFJfVEFSR0VUX0lTTzE1NjkzX0RTRklELAoJTkZDX0FUVFJfVEFSR0VUX0lT
TzE1NjkzX1VJRCwKCU5GQ19BVFRSX1NFX1BBUkFNUywKCU5GQ19BVFRSX1ZF
TkRPUl9JRCwKCU5GQ19BVFRSX1ZFTkRPUl9TVUJDTUQsCglORkNfQVRUUl9W
RU5ET1JfREFUQSwKLyogcHJpdmF0ZTogaW50ZXJuYWwgdXNlIG9ubHkgKi8K
CV9fTkZDX0FUVFJfQUZURVJfTEFTVAp9OwojZGVmaW5lIE5GQ19BVFRSX01B
WCAoX19ORkNfQVRUUl9BRlRFUl9MQVNUIC0gMSkKCi8qIE5GQyBjb21tdW5p
Y2F0aW9uIG1vZGVzICovCiNkZWZpbmUgTkZDX0NPTU1fQUNUSVZFICAwCiNk
ZWZpbmUgTkZDX0NPTU1fUEFTU0lWRSAxCgojZGVmaW5lIE5GQ19UQVJHRVRf
SURYX0FOWSAtMQojZGVmaW5lIE5GQ19NQVhfR1RfTEVOIDQ4CiNkZWZpbmUg
TkZDX0FUUl9SRVNfR1RfT0ZGU0VUIDE1CiNkZWZpbmUgTkZDX0FUUl9SRVFf
R1RfT0ZGU0VUIDE0CgovKiBNZXNzYWdlIFR5cGUgKE1UKSAqLwojZGVmaW5l
IE5DSV9NVF9EQVRBX1BLVAkJCQkJCTB4MDAKI2RlZmluZSBOQ0lfTVRfQ01E
X1BLVAkJCQkJCTB4MDEKI2RlZmluZSBOQ0lfTVRfUlNQX1BLVAkJCQkJCTB4
MDIKI2RlZmluZSBOQ0lfTVRfTlRGX1BLVAkJCQkJCTB4MDMKCi8qIC0tLS0g
TkNJIFBhY2tldCBzdHJ1Y3R1cmVzIC0tLS0gKi8KI2RlZmluZSBOQ0lfQ1RS
TF9IRFJfU0laRQkJCQkJMwojZGVmaW5lIE5DSV9EQVRBX0hEUl9TSVpFCQkJ
CQkzCgojZGVmaW5lIG5jaV9tdChoZHIpCQkJKCgoaGRyKVswXT4+NSkmMHgw
NykKI2RlZmluZSBuY2lfbXRfc2V0KGhkciwgbXQpCQkoKGhkcilbMF0gfD0g
KHVpbnQ4X3QpKCgobXQpJjB4MDcpPDw1KSkKCi8qIFBhY2tldCBCb3VuZGFy
eSBGbGFnIChQQkYpICovCiNkZWZpbmUgTkNJX1BCRl9MQVNUCQkJCQkJMHgw
MAojZGVmaW5lIE5DSV9QQkZfQ09OVAkJCQkJCTB4MDEKCiNkZWZpbmUgbmNp
X3BiZihoZHIpCQkJKHVpbnQ4X3QpKCgoaGRyKVswXT4+NCkmMHgwMSkKI2Rl
ZmluZSBuY2lfcGJmX3NldChoZHIsIHBiZikJCSgoaGRyKVswXSB8PSAodWlu
dDhfdCkoKChwYmYpJjB4MDEpPDw0KSkKCi8qIENvbnRyb2wgT3Bjb2RlIG1h
bmlwdWxhdGlvbiAqLwojZGVmaW5lIG5jaV9vcGNvZGVfcGFjayhnaWQsIG9p
ZCkJKHVpbnQxNl90KSgoKCh1aW50MTZfdCkoKGdpZCkmMHgwZikpPDw4KXxc
CgkJCQkJKCh1aW50MTZfdCkoKG9pZCkmMHgzZikpKQojZGVmaW5lIG5jaV9v
cGNvZGUoaGRyKQkJCW5jaV9vcGNvZGVfcGFjayhoZHJbMF0sIGhkclsxXSkK
I2RlZmluZSBuY2lfb3Bjb2RlX2dpZChvcCkJCSh1aW50OF90KSgoKG9wKSYw
eDBmMDApPj44KQojZGVmaW5lIG5jaV9vcGNvZGVfb2lkKG9wKQkJKHVpbnQ4
X3QpKChvcCkmMHgwMDNmKQoKLyogUGF5bG9hZCBMZW5ndGggKi8KI2RlZmlu
ZSBuY2lfcGxlbihoZHIpCQkJKHVpbnQ4X3QpKChoZHIpWzJdKQoKLyogR0lE
IHZhbHVlcyAqLwojZGVmaW5lIE5DSV9HSURfQ09SRQkJCQkJCTB4MAojZGVm
aW5lIE5DSV9HSURfUkZfTUdNVAkJCQkJCTB4MQojZGVmaW5lIE5DSV9HSURf
TkZDRUVfTUdNVAkJCQkJMHgyCiNkZWZpbmUgTkNJX0dJRF9QUk9QUklFVEFS
WQkJCQkJMHhmCgovKiBDb25uZWN0aW9uIElEICovCiNkZWZpbmUgbmNpX2Nv
bm5faWQoaGRyKQkJKHVpbnQ4X3QpKCgoaGRyKVswXSkmMHgwZikKCiNkZWZp
bmUgTkNJX09QX1JGX0RJU0NPVkVSX05URgkJbmNpX29wY29kZV9wYWNrKE5D
SV9HSURfUkZfTUdNVCwgMHgwMykKCiNkZWZpbmUgTkZDX05GQ0lEMV9NQVhT
SVpFCQkxMAojZGVmaW5lIE5GQ19TRU5TQl9SRVNfTUFYU0laRQkJMTIKI2Rl
ZmluZSBORkNfU0VOU0ZfUkVTX01BWFNJWkUJCTE4CiNkZWZpbmUgTkZDX0lT
TzE1NjkzX1VJRF9NQVhTSVpFCTgKCnN0cnVjdCByZl90ZWNoX3NwZWNpZmlj
X3BhcmFtc19uZmNhX3BvbGwgewoJdWludDE2X3QJc2Vuc19yZXM7Cgl1aW50
OF90CW5mY2lkMV9sZW47CS8qIDAsIDQsIDcsIG9yIDEwIEJ5dGVzICovCgl1
aW50OF90CW5mY2lkMVtORkNfTkZDSUQxX01BWFNJWkVdOwoJdWludDhfdAlz
ZWxfcmVzX2xlbjsJLyogMCBvciAxIEJ5dGVzICovCgl1aW50OF90CXNlbF9y
ZXM7Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgpzdHJ1Y3QgcmZfdGVj
aF9zcGVjaWZpY19wYXJhbXNfbmZjYl9wb2xsIHsKCXVpbnQ4X3QJc2Vuc2Jf
cmVzX2xlbjsKCXVpbnQ4X3QJc2Vuc2JfcmVzW05GQ19TRU5TQl9SRVNfTUFY
U0laRV07CS8qIDExIG9yIDEyIEJ5dGVzICovCn0gX19hdHRyaWJ1dGVfXygo
cGFja2VkKSk7CgpzdHJ1Y3QgcmZfdGVjaF9zcGVjaWZpY19wYXJhbXNfbmZj
Zl9wb2xsIHsKCXVpbnQ4X3QJYml0X3JhdGU7Cgl1aW50OF90CXNlbnNmX3Jl
c19sZW47Cgl1aW50OF90CXNlbnNmX3Jlc1tORkNfU0VOU0ZfUkVTX01BWFNJ
WkVdOwkvKiAxNiBvciAxOCBCeXRlcyAqLwp9IF9fYXR0cmlidXRlX18oKHBh
Y2tlZCkpOwoKc3RydWN0IHJmX3RlY2hfc3BlY2lmaWNfcGFyYW1zX25mY3Zf
cG9sbCB7Cgl1aW50OF90CXJlc19mbGFnczsKCXVpbnQ4X3QJZHNmaWQ7Cgl1
aW50OF90CXVpZFtORkNfSVNPMTU2OTNfVUlEX01BWFNJWkVdOwkvKiA4IEJ5
dGVzICovCn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgpzdHJ1Y3QgbmNp
X3JmX2Rpc2NvdmVyX250ZiB7Cgl1aW50OF90CXJmX2Rpc2NvdmVyeV9pZDsK
CXVpbnQ4X3QJcmZfcHJvdG9jb2w7Cgl1aW50OF90CXJmX3RlY2hfYW5kX21v
ZGU7Cgl1aW50OF90CXJmX3RlY2hfc3BlY2lmaWNfcGFyYW1zX2xlbjsKCgl1
bmlvbiB7CgkJc3RydWN0IHJmX3RlY2hfc3BlY2lmaWNfcGFyYW1zX25mY2Ff
cG9sbCBuZmNhX3BvbGw7CgkJc3RydWN0IHJmX3RlY2hfc3BlY2lmaWNfcGFy
YW1zX25mY2JfcG9sbCBuZmNiX3BvbGw7CgkJc3RydWN0IHJmX3RlY2hfc3Bl
Y2lmaWNfcGFyYW1zX25mY2ZfcG9sbCBuZmNmX3BvbGw7CgkJc3RydWN0IHJm
X3RlY2hfc3BlY2lmaWNfcGFyYW1zX25mY3ZfcG9sbCBuZmN2X3BvbGw7Cgl9
IHJmX3RlY2hfc3BlY2lmaWNfcGFyYW1zOwoKCXVpbnQ4X3QJbnRmX3R5cGU7
Cn0gX19hdHRyaWJ1dGVfXygocGFja2VkKSk7CgovKiBORkNFRSBEaXNjb3Zl
cnkgQWN0aW9uICovCiNkZWZpbmUgTkNJX05GQ0VFX0RJU0NPVkVSWV9BQ1RJ
T05fRElTQUJMRQkJCTB4MDAKI2RlZmluZSBOQ0lfTkZDRUVfRElTQ09WRVJZ
X0FDVElPTl9FTkFCTEUJCQkweDAxCgovKiBOQ0kgUkYgVGVjaG5vbG9neSBh
bmQgTW9kZSAqLwojZGVmaW5lIE5DSV9ORkNfQV9QQVNTSVZFX1BPTExfTU9E
RQkJCQkweDAwCiNkZWZpbmUgTkNJX05GQ19CX1BBU1NJVkVfUE9MTF9NT0RF
CQkJCTB4MDEKI2RlZmluZSBOQ0lfTkZDX0ZfUEFTU0lWRV9QT0xMX01PREUJ
CQkJMHgwMgojZGVmaW5lIE5DSV9ORkNfQV9BQ1RJVkVfUE9MTF9NT0RFCQkJ
CTB4MDMKI2RlZmluZSBOQ0lfTkZDX0ZfQUNUSVZFX1BPTExfTU9ERQkJCQkw
eDA1CiNkZWZpbmUgTkNJX05GQ19WX1BBU1NJVkVfUE9MTF9NT0RFCQkJCTB4
MDYKI2RlZmluZSBOQ0lfTkZDX0FfUEFTU0lWRV9MSVNURU5fTU9ERQkJCQkw
eDgwCiNkZWZpbmUgTkNJX05GQ19CX1BBU1NJVkVfTElTVEVOX01PREUJCQkJ
MHg4MQojZGVmaW5lIE5DSV9ORkNfRl9QQVNTSVZFX0xJU1RFTl9NT0RFCQkJ
CTB4ODIKI2RlZmluZSBOQ0lfTkZDX0FfQUNUSVZFX0xJU1RFTl9NT0RFCQkJ
CTB4ODMKI2RlZmluZSBOQ0lfTkZDX0ZfQUNUSVZFX0xJU1RFTl9NT0RFCQkJ
CTB4ODUKCi8qIE5DSSBEaXNjb3ZlciBOb3RpZmljYXRpb24gVHlwZSAqLwoj
ZGVmaW5lIE5DSV9ESVNDT1ZFUl9OVEZfVFlQRV9MQVNUCQkJCTB4MDAKI2Rl
ZmluZSBOQ0lfRElTQ09WRVJfTlRGX1RZUEVfTEFTVF9ORkNDCQkJCTB4MDEK
I2RlZmluZSBOQ0lfRElTQ09WRVJfTlRGX1RZUEVfTU9SRQkJCQkweDAyCgoj
ZW5kaWYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAcmVwcm8vTWFrZWZpbGUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAADAwMDY0NCAAMDAwNzY1IAAwMDAwMjQgADAwMDAwMDAw
MTI3IDE0MTEzNjA2NTE3IDAxNDExNAAgMAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1c3RhcgAwMG1h
bGluAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAc3RhZmYAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAwMDAwMDAgADAwMDAwMCAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAABhbGw6CglnY2MgbmZjX3VhZncuYyBwdHR5
X2RldmljZS5jIG5ldGxpbmsuYyAtbyBuZmNfdWFmdyAtbHB0aHJlYWQKY2xl
YW46CglybSBuZmNfdWFmdwoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHJlcHJvL3B0
dHlfZGV2aWNlLmgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAwMDA2NDQgADAwMDc2NSAAMDAwMDI0IAAwMDAwMDAwMzcyMCAxNDExMzYw
NjUxNyAwMTUxNDYAIDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAdXN0YXIAMDBtYWxpbgAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAHN0YWZmAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAMDAwMDAwIAAwMDAwMDAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAALyoKICogcHR0eV9kZXZpY2UuaDogCiAqIGhlYWRlciBmaWxl
IGZvciBwdHR5X2RldmljZS5jLCB1c2VkIGZvciBkZXZpY2Ugc2ltdWxhdGlv
bgogKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogKiBBdXRob3I6IGYw
cm0ybDFuCiAqLwoKI2lmbmRlZiBfUFRUWV9ERVZJQ0UKI2RlZmluZSBfUFRU
WV9ERVZJQ0UKCiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwu
aD4KI2luY2x1ZGUgPGxpbnV4L3Jma2lsbC5oPgojaW5jbHVkZSA8cHRocmVh
ZC5oPgojaW5jbHVkZSA8c3lzL2Vwb2xsLmg+CiNpbmNsdWRlIDxzeXMvaW9j
dGwuaD4KI2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4KI2luY2x1ZGUgPHN5cy91
aW8uaD4KI2luY2x1ZGUgPHN0ZGludC5oPgojaW5jbHVkZSA8c3lzL3R5cGVz
Lmg+CiNpbmNsdWRlIDx1bmlzdGQuaD4KI2luY2x1ZGUgPHN0ZGxpYi5oPgoj
aW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1ZGUgPHN0cmluZy5oPgojaW5jbHVk
ZSA8c3lzL3N5c2NhbGwuaD4KCi8qIGxpbmUgZGlzY2lwbGluZXMgKi8KI2Rl
ZmluZSBOX1RUWQkJMAojZGVmaW5lIE5fU0xJUAkJMQojZGVmaW5lIE5fTU9V
U0UJCTIKI2RlZmluZSBOX1BQUAkJMwojZGVmaW5lIE5fU1RSSVAJCTQKI2Rl
ZmluZSBOX0FYMjUJCTUKI2RlZmluZSBOX1gyNQkJNgkvKiBYLjI1IGFzeW5j
ICovCiNkZWZpbmUgTl82UEFDSwkJNwojZGVmaW5lIE5fTUFTQwkJOAkvKiBS
ZXNlcnZlZCBmb3IgTW9iaXRleCBtb2R1bGUgPGthekBjYWZlLm5ldD4gKi8K
I2RlZmluZSBOX1IzOTY0CQk5CS8qIFJlc2VydmVkIGZvciBTaW1hdGljIFIz
OTY0IG1vZHVsZSAqLwojZGVmaW5lIE5fUFJPRklCVVNfRkRMCTEwCS8qIFJl
c2VydmVkIGZvciBQcm9maWJ1cyAqLwojZGVmaW5lIE5fSVJEQQkJMTEJLyog
TGludXggSXJEYSAtIGh0dHA6Ly9pcmRhLnNvdXJjZWZvcmdlLm5ldC8gKi8K
I2RlZmluZSBOX1NNU0JMT0NLCTEyCS8qIFNNUyBibG9jayBtb2RlIC0gZm9y
IHRhbGtpbmcgdG8gR1NNIGRhdGEgKi8KCQkJCS8qIGNhcmRzIGFib3V0IFNN
UyBtZXNzYWdlcyAqLwojZGVmaW5lIE5fSERMQwkJMTMJLyogc3luY2hyb25v
dXMgSERMQyAqLwojZGVmaW5lIE5fU1lOQ19QUFAJMTQJLyogc3luY2hyb25v
dXMgUFBQICovCiNkZWZpbmUgTl9IQ0kJCTE1CS8qIEJsdWV0b290aCBIQ0kg
VUFSVCAqLwojZGVmaW5lIE5fR0lHQVNFVF9NMTAxCTE2CS8qIFNpZW1lbnMg
R2lnYXNldCBNMTAxIHNlcmlhbCBERUNUIGFkYXB0ZXIgKi8KI2RlZmluZSBO
X1NMQ0FOCQkxNwkvKiBTZXJpYWwgLyBVU0Igc2VyaWFsIENBTiBBZGFwdG9y
cyAqLwojZGVmaW5lIE5fUFBTCQkxOAkvKiBQdWxzZSBwZXIgU2Vjb25kICov
CiNkZWZpbmUgTl9WMjUzCQkxOQkvKiBDb2RlYyBjb250cm9sIG92ZXIgdm9p
Y2UgbW9kZW0gKi8KI2RlZmluZSBOX0NBSUYJCTIwICAgICAgLyogQ0FJRiBw
cm90b2NvbCBmb3IgdGFsa2luZyB0byBtb2RlbXMgKi8KI2RlZmluZSBOX0dT
TTA3MTAJMjEJLyogR1NNIDA3MTAgTXV4ICovCiNkZWZpbmUgTl9USV9XTAkJ
MjIJLyogZm9yIFRJJ3MgV0wgQlQsIEZNLCBHUFMgY29tYm8gY2hpcHMgKi8K
I2RlZmluZSBOX1RSQUNFU0lOSwkyMwkvKiBUcmFjZSBkYXRhIHJvdXRpbmcg
Zm9yIE1JUEkgUDExNDkuNyAqLwojZGVmaW5lIE5fVFJBQ0VST1VURVIJMjQJ
LyogVHJhY2UgZGF0YSByb3V0aW5nIGZvciBNSVBJIFAxMTQ5LjcgKi8KI2Rl
ZmluZSBOX05DSQkJMjUJLyogTkZDIE5DSSBVQVJUICovCiNkZWZpbmUgTl9T
UEVBS1VQCTI2CS8qIFNwZWFrdXAgY29tbXVuaWNhdGlvbiB3aXRoIHN5bnRo
cyAqLwojZGVmaW5lIE5fTlVMTAkJMjcJLyogTnVsbCBsZGlzYyB1c2VkIGZv
ciBlcnJvciBoYW5kbGluZyAqLwoKaW50IGdldG1hc3Rlcih2b2lkKTsKaW50
IGdldHNsYXZlKGludCBmZG0pOwppbnQgc2V0c2VyaWFsKGludCBmZCwgaW50
IGxkaXNjKTsKaW50IGJsdWV0b290aF9yZWdpc3RlcihpbnQgZmQpOwppbnQg
bmZjX3JlZ2lzdGVyKGludCBmZCk7CgojZW5kaWYAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAByZXByby9uZXRsaW5r
LmgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMDAw
NjQ0IAAwMDA3NjUgADAwMDAyNCAAMDAwMDAwMDE1NjMgMTQxMTM2MDY1MTcg
MDE0Mjc2ACAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAHVzdGFyADAwbWFsaW4AAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAABzdGFmZgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
ADAwMDAwMCAAMDAwMDAwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAACNpZm5kZWYgX1BORVRMSU5LCiNkZWZpbmUgX1BORVRMSU5LCgojaW5j
bHVkZSA8YXJwYS9pbmV0Lmg+CiNpbmNsdWRlIDxuZXQvaWYuaD4KI2luY2x1
ZGUgPG5ldGluZXQvaW4uaD4KI2luY2x1ZGUgPHN0ZGJvb2wuaD4KI2luY2x1
ZGUgPHN0cmluZy5oPgojaW5jbHVkZSA8c3lzL3NvY2tldC5oPgojaW5jbHVk
ZSA8c3lzL3R5cGVzLmg+CgojaW5jbHVkZSA8bGludXgvZ2VuZXRsaW5rLmg+
CiNpbmNsdWRlIDxsaW51eC9pZl9hZGRyLmg+CiNpbmNsdWRlIDxsaW51eC9p
Zl9saW5rLmg+CiNpbmNsdWRlIDxsaW51eC9pbjYuaD4KI2luY2x1ZGUgPGxp
bnV4L25laWdoYm91ci5oPgojaW5jbHVkZSA8bGludXgvbmV0Lmg+CiNpbmNs
dWRlIDxsaW51eC9uZXRsaW5rLmg+CiNpbmNsdWRlIDxsaW51eC9ydG5ldGxp
bmsuaD4KI2luY2x1ZGUgPGxpbnV4L3ZldGguaD4KI2luY2x1ZGUgPHN0ZGlu
dC5oPgoKc3RydWN0IG5sbXNnIHsKICAgIGNoYXIqIHBvczsKICAgIGludCBu
ZXN0aW5nOwogICAgc3RydWN0IG5sYXR0ciogbmVzdGVkWzhdOwogICAgY2hh
ciBidWZbNDA5Nl07Cn07Cgp2b2lkIG5ldGxpbmtfaW5pdChzdHJ1Y3Qgbmxt
c2cqIG5sbXNnLCBpbnQgdHlwLCBpbnQgZmxhZ3MsCgkJCSBjb25zdCB2b2lk
KiBkYXRhLCBpbnQgc2l6ZSk7Cgp2b2lkIG5ldGxpbmtfYXR0cihzdHJ1Y3Qg
bmxtc2cqIG5sbXNnLCBpbnQgdHlwLAoJCQkgY29uc3Qgdm9pZCogZGF0YSwg
aW50IHNpemUpOwoKaW50IG5ldGxpbmtfc2VuZChzdHJ1Y3Qgbmxtc2cqIG5s
bXNnLCBpbnQgc29jayk7CgppbnQgbmV0bGlua19xdWVyeV9mYW1pbHlfaWQo
c3RydWN0IG5sbXNnKiBubG1zZywgaW50IHNvY2ssIGNvbnN0IGNoYXIqIGZh
bWlseV9uYW1lLCBib29sIGRvZmFpbCk7CgojZW5kaWYAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAByZXByby9u
ZmMuYwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAMDAwNjQ0IAAwMDA3NjUgADAwMDAyNCAAMDAwMDAwMTI3MTIgMTQxMTM2
MDY1MTcgMDEzMzcxACAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHVzdGFyADAwbWFsaW4AAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAABzdGFmZgAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAADAwMDAwMCAAMDAwMDAwIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAACNpbmNsdWRlIDxzdGRpby5oPgojaW5jbHVkZSA8c3RkbGli
Lmg+CiNpbmNsdWRlIDxzdHJpbmcuaD4KI2luY2x1ZGUgPHN0ZGludC5oPgoK
I2luY2x1ZGUgPHN5cy90eXBlcy5oPgojaW5jbHVkZSA8c3lzL3NvY2tldC5o
PgojaW5jbHVkZSA8bGludXgvZ2VuZXRsaW5rLmg+CiNpbmNsdWRlIDxzdGRi
b29sLmg+CgojaW5jbHVkZSAicHR0eV9kZXZpY2UuaCIKI2luY2x1ZGUgIm5m
Yy5oIgojaW5jbHVkZSAibmV0bGluay5oIgoKLyogTkZDIHNvY2tldCBwcm90
b2NvbHMgKi8KI2RlZmluZSBORkNfU09DS1BST1RPX1JBVwkwCiNkZWZpbmUg
TkZDX1NPQ0tQUk9UT19MTENQCTEKI2RlZmluZSBORkNfU09DS1BST1RPX01B
WAkyCgojZGVmaW5lIE5GQ19MTENQX01BWF9TRVJWSUNFX05BTUUgNjMKc3Ry
dWN0IHNvY2thZGRyX25mY19sbGNwIHsKCXNhX2ZhbWlseV90IHNhX2ZhbWls
eTsKCV9fdTMyIGRldl9pZHg7CglfX3UzMiB0YXJnZXRfaWR4OwoJX191MzIg
bmZjX3Byb3RvY29sOwoJdWludDhfdCBkc2FwOyAvKiBEZXN0aW5hdGlvbiBT
QVAsIGlmIGtub3duICovCgl1aW50OF90IHNzYXA7IC8qIFNvdXJjZSBTQVAg
dG8gYmUgYm91bmQgdG8gKi8KCWNoYXIgc2VydmljZV9uYW1lW05GQ19MTENQ
X01BWF9TRVJWSUNFX05BTUVdOyAvKiBTZXJ2aWNlIG5hbWUgVVJJICovOwoJ
c2l6ZV90IHNlcnZpY2VfbmFtZV9sZW47Cn07CgpzdGF0aWMgc3RydWN0IG5s
bXNnIG5sbXNnOwoKaW50IG1hc3Rlciwgc2xhdmU7Cgp2b2lkKiBkZWJ1Z190
aHJlYWQodm9pZCogYXJnKSB7CiAgICBpbnQgZmRtYXN0ZXIgPSAqKGludCop
YXJnOwogICAgd2hpbGUgKDEpIHsKICAgICAgICBjaGFyIGJ1ZlsxMDI0XSA9
IHswfTsKICAgICAgICBzc2l6ZV90IGJ1Zl9zaXplID0gcmVhZChmZG1hc3Rl
ciwgYnVmLCBzaXplb2YoYnVmKSk7CiAgICAgICAgaWYgKGJ1Zl9zaXplIDwg
MCkKICAgICAgICAgICAgZXhpdCgxKTsKICAgICAgICBwcmludGYoIi0tLS0t
LS0tLS0tLS0tLS0gREVCVUcgRFVNUCAtLS0tLS0tLS0tLS0tLS0tXG4iKTsK
ICAgICAgICBmb3IoaW50IGkgPSAwOyBpIDwgYnVmX3NpemU7IGkrKykKICAg
ICAgICAgICAgcHJpbnRmKCIlMDJ4ICIsIGJ1ZltpXSAmIDB4ZmYpOwogICAg
fQogICAgcmV0dXJuIE5VTEw7Cn0KCnZvaWQgcHJlcGFyZV90YXJnZXQoKQp7
CiAgICAvKiBwcmVwYXJlIGEgcGFja2V0ICovCiAgICAvLyBbIDMtYml0cyBw
YWNrZXQgdHlwZSB8IDEtYml0IHBiZiB8IDQtYml0cyBnaWQgfCAyLWJpdHMg
cGFkIHwgNi1iaXRzIG9pZCBdCiAgICAvLyBbIDgtYml0cyBwbGVuIHwgXQog
ICAgdWludDhfdCBidWZbMTAyNF0gPSB7MH07CiAgICBuY2lfbXRfc2V0KGJ1
ZiArIDAsIE5DSV9NVF9OVEZfUEtUKTsKICAgIGJ1ZlswXSA9IGJ1ZlswXSB8
IE5DSV9HSURfUkZfTUdNVDsKICAgIGJ1ZlsxXSA9IDB4MDM7CiAgICBidWZb
Ml0gPSBzaXplb2Yoc3RydWN0IG5jaV9yZl9kaXNjb3Zlcl9udGYpOyAvLyBw
bGVuLCBub3QgaW1wb3J0YW50Li4uCgogICAgc3RydWN0IG5jaV9yZl9kaXNj
b3Zlcl9udGYqIGRpc2NvdmVyID0gYnVmICsgMzsKICAgIGRpc2NvdmVyLT5y
Zl9kaXNjb3ZlcnlfaWQgPSAweDE7IC8vIHNob3VsZCBiZSBva2F5CiAgICBk
aXNjb3Zlci0+cmZfcHJvdG9jb2wgPSAweDE7CiAgICBkaXNjb3Zlci0+cmZf
dGVjaF9hbmRfbW9kZSA9IE5DSV9ORkNfQl9QQVNTSVZFX1BPTExfTU9ERTsg
Ly8gdHJ5IHRoaXMgb25lCgogICAgc3RydWN0IHJmX3RlY2hfc3BlY2lmaWNf
cGFyYW1zX25mY2JfcG9sbCogYnBvbGwgPSAmKGRpc2NvdmVyLT5yZl90ZWNo
X3NwZWNpZmljX3BhcmFtcyk7CiAgICBicG9sbC0+c2Vuc2JfcmVzX2xlbiA9
IDQ7CiAgICBtZW1jcHkoYnBvbGwtPnNlbnNiX3JlcywgIkFBQUEiLCA0KTsK
CiAgICBkaXNjb3Zlci0+bnRmX3R5cGUgPSBOQ0lfRElTQ09WRVJfTlRGX1RZ
UEVfTEFTVDsKCiAgICAvKiBzZW5kIHRoZSBwYWNrZXQgKi8KICAgIC8vIHBs
ZW4gPSAKICAgIGlmICh3cml0ZShtYXN0ZXIsIGJ1ZiwgTkNJX0NUUkxfSERS
X1NJWkUgKyBzaXplb2Yoc3RydWN0IG5jaV9yZl9kaXNjb3Zlcl9udGYpKSA8
IDApIHsKICAgICAgICBwZXJyb3IoIlshXSBOVEYgcGFja2V0IHdyaXRlXG4i
KTsKICAgICAgICBleGl0KDEpOwogICAgfQp9CgppbnQgbWFpbihpbnQgYXJn
YywgY2hhciogYXJndltdKQp7CiAgICBpbnQgZXJyOwogICAgbWFzdGVyID0g
Z2V0bWFzdGVyKCk7CiAgICBzbGF2ZSA9IGdldHNsYXZlKG1hc3Rlcik7CiAg
ICBpZiAobmZjX3JlZ2lzdGVyKHNsYXZlKSA8IDApIHsKICAgICAgICBwcmlu
dGYoIlshXSBmYWlsZWQgdG8gcmVnaXN0ZXIgTkZDIHVhcnRcbiIpOwogICAg
ICAgIGV4aXQoMSk7CiAgICB9CgogICAgcHRocmVhZF90IHRoOwogICAgcHRo
cmVhZF9jcmVhdGUoJnRoLCBOVUxMLCBkZWJ1Z190aHJlYWQsICZtYXN0ZXIp
OwoKICAgIC8qIHRoZSBkZXZpY2UgaXMgc3RpbGwgaW4gZG93biBzdGF0ZSwg
aGF2ZSB0byB3YWtlIGl0cyB1cCAqLwogICAgLy8gc2FkLCBoYXZlIHRvIHVz
ZSBuZXRsaW5rLCBsZWFybiBpdCBpbiBzeXprYWxsZXIgaW5pdGlhbGl6ZV93
aWZpX2RldmljZXMoKQoKICAgIGludCBuc29jayA9IHNvY2tldChBRl9ORVRM
SU5LLCBTT0NLX1JBVywgTkVUTElOS19HRU5FUklDKTsKICAgIGlmIChuc29j
ayA8IDApIHsKICAgICAgICBwZXJyb3IoIlshXSBuZXRsaW5rIHNvY2tldCgp
Iik7CiAgICAgICAgZXhpdCgxKTsKICAgIH0KICAgIAogICAgaW50IG5mY19m
YW1pbHlfaWQgPSBuZXRsaW5rX3F1ZXJ5X2ZhbWlseV9pZCgmbmxtc2csIG5z
b2NrLCAibmZjIiwgdHJ1ZSk7CiAgICAvLyBuZXRsaW5rIGNvbW1hbmRzOiBo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4xMy4yL3NvdXJj
ZS9pbmNsdWRlL3VhcGkvbGludXgvbmZjLmgjTDk0CiAgICAvLyBkdXJpbmcg
dGhlIHNldHVwLCB0aGVyZSBhcmUgc29tZSBuZmMgY29tbWFuZHMsIHNlZSBu
Y2lfb3Blbl9kZXZpY2UKICAgIC8vIHRoZXJlIGFyZSBuY2lfcmVzZXRfcmVx
LCBuY2lfaW5pdF9yZXEsIG5jaV9pbml0X2NvbXBsZXRlX3JlcSwgCiAgICAv
LyBqdXN0IGxpa2UgYmx1ZXRvb3RoLCBva2F5LCBJIG5lZWQgc29tZSB2aXJ0
dWFsIGRldmljZSB0byByZXBsYXkgdGhlIHBhY2tldHMgdGhlbgoKICAgIHN0
cnVjdCBnZW5sbXNnaGRyIGdlbmxoZHIgPSB7MH07CiAgICBnZW5saGRyLmNt
ZCA9IE5GQ19DTURfREVWX1VQOwogICAgdWludDMyX3QgaWR4ID0gMHgyOyAv
LyBpbnRlcmVzdGluZyAKICAgIG5ldGxpbmtfaW5pdCgmbmxtc2csIG5mY19m
YW1pbHlfaWQsIDAsICZnZW5saGRyLCBzaXplb2YoZ2VubGhkcikpOwogICAg
bmV0bGlua19hdHRyKCZubG1zZywgTkZDX0FUVFJfREVWSUNFX0lOREVYLCAm
aWR4LCBzaXplb2YodWludDMyX3QpKTsKICAgIGVyciA9IG5ldGxpbmtfc2Vu
ZCgmbmxtc2csIG5zb2NrKTsKICAgIGlmIChlcnIgPCAwKSB7CiAgICAgICAg
cGVycm9yKCJbIV0gbmV0bGluayBkZXZpY2Ugc2V0dXBcbiIpOwogICAgICAg
IGV4aXQoMSk7CiAgICB9IAoKICAgIHByZXBhcmVfdGFyZ2V0KCk7CgogICAg
bWVtc2V0KCZnZW5saGRyLCAwLCBzaXplb2YoZ2VubGhkcikpOwogICAgZ2Vu
bGhkci5jbWQgPSBORkNfQ01EX0RFUF9MSU5LX1VQOwogICAgdWludDhfdCBj
b21tID0gTkZDX0NPTU1fQUNUSVZFOwogICAgLy8gdWludDMyX3QgdGFyZ2V0
X2lkeCA9IC0xOyBORkNfVEFSR0VUX0lEWF9BTlkgaXMgb2theQogICAgbmV0
bGlua19pbml0KCZubG1zZywgbmZjX2ZhbWlseV9pZCwgMCwgJmdlbmxoZHIs
IHNpemVvZihnZW5saGRyKSk7CiAgICBuZXRsaW5rX2F0dHIoJm5sbXNnLCBO
RkNfQVRUUl9ERVZJQ0VfSU5ERVgsICZpZHgsIHNpemVvZih1aW50MzJfdCkp
OwogICAgbmV0bGlua19hdHRyKCZubG1zZywgTkZDX0FUVFJfQ09NTV9NT0RF
LCAmY29tbSwgc2l6ZW9mKHVpbnQ4X3QpKTsKICAgIGVyciA9IG5ldGxpbmtf
c2VuZCgmbmxtc2csIG5zb2NrKTsKICAgIGlmIChlcnIgPCAwKSB7CiAgICAg
ICAgcGVycm9yKCJbIV0gbmV0bGluayBkZXZpY2UgZGVwIGxpbmsgdXBcbiIp
OwogICAgICAgIGV4aXQoMSk7CiAgICB9IAoKICAgIC8vIHdlIHNob3VsZCBo
YXZlIG5mYzAgZGV2aWNlIG5vdwogICAgLy8gbGV0J3MgY3JlYXRlIG91ciBz
b2NrZXQKICAgIGludCBzID0gc29ja2V0KEFGX05GQywgU09DS19TVFJFQU0s
IE5GQ19TT0NLUFJPVE9fTExDUCk7CiAgICBpZiAocyA8IDApIHsKICAgICAg
ICBwZXJyb3IoIlshXSBORkMgc29ja2V0KClcbiIpOwogICAgICAgIGV4aXQo
MSk7CiAgICB9CgovKiAgV2UgZG9uJ3QgaGF2ZSB0byBiaW5kLCBqdXN0IGNv
bm5lY3QKICAgIC8vIHRyeSB0byBiaW5kIGl0CiAgICBzdHJ1Y3Qgc29ja2Fk
ZHJfbmZjX2xsY3AgYWRkcjsKICAgIGFkZHIuc2FfZmFtaWx5ID0gQUZfTkZD
OwogICAgYWRkci5kZXZfaWR4ID0gMDsgLy8gc3VwcG9zZSBzbwogICAgYWRk
ci50YXJnZXRfaWR4ID0gMTsgICAgLy8gbm8gaWRlYSA6KAogICAgYWRkci5u
ZmNfcHJvdG9jb2wgPSAwOyAgLy8gbm8gaWRlYSA6KAogICAgLy8gaWYgKHNv
Y2stPnNzYXAgPCBMTENQX0xPQ0FMX05VTV9TQVAgJiYgc29jay0+c3NhcCA+
PSBMTENQX1dLU19OVU1fU0FQKSB7IC4uLgogICAgLy8gI2RlZmluZSBMTENQ
X1dLU19OVU1fU0FQICAgMTYKICAgIC8vICNkZWZpbmUgTExDUF9MT0NBTF9O
VU1fU0FQIDMyCiAgICAKICAgIGFkZHIuc3NhcCA9IDE2OyAgLy8gbm8gaWRl
YQogICAgc3RyY3B5KGFkZHIuc2VydmljZV9uYW1lLCAiZXhwbG9pdCIpOwog
ICAgYWRkci5zZXJ2aWNlX25hbWVfbGVuID0gc3RybGVuKCJleHBsb2l0Iik7
CgogICAgaWYgKGJpbmQocywgKHN0cnVjdCBzb2NrYWRkciAqKSZhZGRyLCBz
aXplb2Yoc3RydWN0IHNvY2thZGRyX25mY19sbGNwKSkgPCAwKSB7CiAgICAg
ICAgcGVycm9yKCJbIV0gTkZDIGJpbmQiKTsKICAgICAgICBleGl0KDEpOwog
ICAgfQoqLwoKICAgIC8vIGNhbiB3ZSBmYWtlIGNvbm5lY3Rpb24gaGVyZT8K
ICAgIC8vIGJlbGlldmUgc29tZSBkYXRhIHdpbGwgYmUgc2VudCBpbiBjb25u
ZWN0CiAgICBzdHJ1Y3Qgc29ja2FkZHJfbmZjX2xsY3AgYWRkcjsKICAgIGFk
ZHIuc2FfZmFtaWx5ID0gQUZfTkZDOwogICAgYWRkci5kZXZfaWR4ID0gMHgy
OyAvLyBzdXBwb3NlIHNvCiAgICBhZGRyLnRhcmdldF9pZHggPSBORkNfVEFS
R0VUX0lEWF9BTlk7ICAKCiAgICAvLyBpZiAoYWRkci0+c2VydmljZV9uYW1l
X2xlbiA9PSAwICYmIGFkZHItPmRzYXAgPT0gMCkKICAgIC8vICAgcmV0dXJu
IC1FSU5WQUw7CiAgICAKICAgIHN0cmNweShhZGRyLnNlcnZpY2VfbmFtZSwg
ImV4cGxvaXQiKTsKICAgIGFkZHIuc2VydmljZV9uYW1lX2xlbiA9IHN0cmxl
bigiZXhwbG9pdCIpOwoKICAgIGFkZHIuc3NhcCA9IDE2OwogICAgYWRkci5k
c2FwID0gMTY7CgogICAgaWYgKGNvbm5lY3QocywgKHN0cnVjdCBzb2NrYWRk
ciopJmFkZHIsIHNpemVvZihzdHJ1Y3Qgc29ja2FkZHJfbmZjX2xsY3ApKSA8
IDApIHsKICAgICAgICBwZXJyb3IoIlshXSBuZmMgY29ubmVjdCIpOwogICAg
ICAgIGV4aXQoMSk7CiAgICB9CgogICAgd2hpbGUoMSkge30KCiAgICByZXR1
cm4gMDsKfQoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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
AAAAAAAA

--0000000000004210c405cf3bb6e1--
