X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5156" "Thursday" "25" "July" "2019" "10:29:53" "-0400" "Brad Spengler" "spender@grsecurity.net" "<20190725142953.GA9754@grsecurity.net>" "137" "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil "7" "2019072514:29:53" "[oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" (number mark "U       spender@grse Jul 25  137/5156  " thread-indent "\"Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user\"\n") "<CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>" ("<470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com>" "<613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>" "<CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth: hci_uart: 0x0 address execution as nonprivileged user" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18217 invoked by uid 550); 25 Jul 2019 14:35:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9875 invoked from network); 25 Jul 2019 14:34:50 -0000
Date: Thu, 25 Jul 2019 10:29:53 -0400
From: Brad Spengler <spender@grsecurity.net>
To: oss-security@lists.openwall.com
Message-ID: <20190725142953.GA9754@grsecurity.net>
References: <470270831.4241339.1563979659491.JavaMail.zimbra@redhat.com>
 <613396710.4527654.1564057889289.JavaMail.zimbra@redhat.com>
 <CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Content-Disposition: inline
In-Reply-To: <CA+fCnZe-OJiGRGC7h9VDG5H4JyiJ6dO15VWoz0tvZ+2_inYbPg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] CVE-2019-10207: linux kernel: bluetooth:
 hci_uart: 0x0 address execution as nonprivileged user

--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

https://twitter.com/grsecurity/status/1154397455267586050

"The only "direct" ones in hci_ath.c (ath_wakeup_ar3k) are also done in=20
worker context: ath_hci_uart_work(), created from ath_open().  Looks=20
like just a DoS then"

Thanks,
-Brad

On Thu, Jul 25, 2019 at 02:46:19PM +0200, Andrey Konovalov wrote:
> On Thu, Jul 25, 2019 at 2:32 PM Vladis Dronov <vdronov@redhat.com> wrote:
> >
> > Hello,
> >
> > It was found (by the syzkaller initially) that a 0x0 address execution =
is
> > possible as nonprivileged user in the latest Linux kernel (considering
> > protection measures like SMEP, vm.mmap_min_addr, etc are disabled).
> >
> > The Linux kernel must have any of following config options enabled:
> >
> > CONFIG_BT_HCIUART_MRVL (easy to hit)
> > CONFIG_BT_HCIUART_QCA (hard to hit)
> > CONFIG_BT_HCIUART_BCM
> > CONFIG_BT_HCIUART_INTEL
> > CONFIG_BT_HCIUART_ATH3K
> >
> > The suggested fix is posted at:
> >
> > https://lore.kernel.org/linux-bluetooth/20190725120909.31235-1-vdronov@=
redhat.com/T/#u
> >
> > The bug and the reproducer are public, as they were found by the syzcal=
ler
> > several months ago:
> >
> > https://syzkaller.appspot.com/bug?id=3D1b42faa2848963564a5b1b7f8c837ea7=
b55ffa50
> >
> > CVE-2019-10207 was assigned to this bug.
> >
> > $ id
> > uid=3D1000(vladis) gid=3D1000(vladis) groups=3D1000(vladis)
> > $ uname -r
> > 5.2.0
> > $ ./hci-proto-crash 11
> > proto =3D 11
> > ioctl(SET_HCI_UART_PROTO): Success
> > [   99.894572] BUG: kernel NULL pointer dereference, address: 000000000=
0000000
> > [   99.897287] #PF: supervisor instruction fetch in kernel mode
> > [   99.897863] #PF: error_code(0x0010) - not-present page
> > [   99.898389] PGD 0 P4D 0
> > [   99.899036] Oops: 0010 [#1] SMP
> > [   99.899795] CPU: 2 PID: 691 Comm: kworker/u17:0 Not tainted 5.2.0 #23
> > [   99.900836] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996)
> > [   99.902912] Workqueue: hci0 hci_power_on
> > [   99.903673] RIP: 0010:0x0
> > [   99.904416] Code: Bad RIP value.
> > [   99.905137] RSP: 0018:ffff92d8822c7d98 EFLAGS: 00010246
> > [   99.906014] RAX: ffffffff97e7a3e0 RBX: ffff8af7b5dd9e00 RCX: 0000000=
0000010b2
> > [   99.907075] RDX: 00000000ffffffff RSI: ffff92d8822c7d44 RDI: ffff8af=
7b46c0400
> > [   99.908127] RBP: ffff8af7b46c0400 R08: 0000000000000000 R09: 0000000=
00001cb00
> > [   99.909232] R10: 000000000000001e R11: 000000000001b900 R12: ffff8af=
7b45d4000
> > [   99.910332] R13: ffff8af7b45d4a08 R14: 0000000000000000 R15: 0ffff8a=
f7b167ad0
> > [   99.911452] FS:  0000000000000000(0000) GS:ffff8af7b7880000(0000) kn=
lGS:0000000000000000
> > [   99.912709] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [   99.913682] CR2: ffffffffffffffd6 CR3: 000000007060a003 CR4: 0000000=
0001606e0
> > [   99.914764] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000=
000000000
> > [   99.915830] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000=
000000400
> > [   99.916877] Call Trace:
> > [   99.917538]  hci_uart_set_flow_control+0x149/0x1b0
> > [   99.918441]  mrvl_setup+0xe/0x70
> > [   99.919209]  hci_dev_do_open+0x1eb/0x690
> > [   99.920013]  ? sched_clock+0x5/0x10
> > [   99.920784]  hci_power_on+0x45/0x250
> > [   99.921549]  ? __wake_up_common_lock+0x87/0xc0
> > [   99.922399]  process_one_work+0x1c4/0x3a0
> > [   99.923230]  worker_thread+0x45/0x3c0
> > [   99.924019]  kthread+0xf3/0x130
> > [   99.924735]  ? trace_event_raw_event_workqueue_execute_start+0xb0/0x=
b0
> > [   99.925755]  ? kthread_park+0x80/0x80
> > [   99.926546]  ret_from_fork+0x1f/0x30
> > [   99.927399] Modules linked in:
> > [   99.928152] CR2: 0000000000000000
> > [   99.928882] ---[ end trace 577d1af3066a9585 ]---
>=20
> Does this always happen in a worker thread? Does this therefore mean
> that this is not exploitable by a local user even if vm.mmap_min_addr
> and SMEP/SMAP are disabled, since the user can't mmap zero page in the
> worker thread context?
>=20
> >
> > Best regards,
> > Vladis Dronov | Red Hat, Inc. | The Core Kernel | Senior Software Engin=
eer

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQIcBAEBCgAGBQJdObzZAAoJEETRwPglJf5J/y4P/0La1G/mqCzQKFFtXPyBcZWt
YBVJ45FGWIj+EaEy4wyyIeFDVXryZ3YjmMeGffH1iV1EnczZ1WbHFnpZGEhS+1dB
0YKbx6keyFVffL5aox6MjnT/KuXY/zX608NcWJAPDZIImgOWx/J2Z2t0TcxMybD+
wa0ZqN6z8/hgf6ottetESslYRqNXfQ2wrjjBWVpUkvvpkQeIGdnE4DmXO0LhaRJa
SUWIhNBRUKdi+2HzQKhromjUP371SA1wU1MuG6lrM9iPg0xutIgx/Vv2BAWUVg3R
/uy96b9SCAQlYiLocB0yDQDYLjNpt9FrpCNSjnLOzeZKxO+V7As9IxyMbx++2qem
pLkLBohNt+NQYBAqI9iSOIAJPp6CicSLhfUSfz0/GP/BNZBPnZaAIs9m0M49+YMp
OKK8lgUA0LqqclfyAuB+4lnNZqwk01Bza48wMlfCARdbeoof7p4L6qcgLg6B5iA5
lao+hPGVfK2YeYpfWAt3evhTih3OZcbS+TDMFTpR41yeZdeSNtfKX0O2h6pA/Phb
7CuV22KnXhttncVvsQajusBEDwQT3OtnQnSm8xdxrU09NVXkl82OJe9xeQeVqkwf
zDCpi3DEQI+CbqIO4w1ClM04v1Ry8Qg0aC5K5MQuhIkc8cmJobsBh3kY3xz7xKp3
dWBZZsYDj5Jn3VsBOMUT
=R9En
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
