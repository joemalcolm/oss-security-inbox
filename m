X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["21562" "Sunday" "18" "April" "2021" "11:41:06" "+0300" "Or Cohen" "orcohen@paloaltonetworks.com" nil "424" "[oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil "4" nil nil (number mark "U       orcohen@palo Apr 18  424/21562 " thread-indent "\"[oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28652 invoked by uid 550); 18 Apr 2021 09:56:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1930 invoked from network); 18 Apr 2021 08:41:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paloaltonetworks.com;
 h=mime-version : from : date : message-id : subject : to : cc :
 content-type; s=PPS12012017;
 bh=7WYPhIzPy0GvPhTLawqMZp/DBKjHhe3h2XA2qd73rmY=;
 b=T96GtY17GflyNQdGtUOJzCZPMCL/HWYTWe6ZO9woV/yML/RxuiG7Lp1kVzUPjLDuBexm
 F7BUdISL2J6ZymaESgBz6caouYeTBvbYXCoxZdPUb0eXhDSnC0spnl0Lk5BAbVrqNZro
 BJpcVQOvkfgUAOkLoWmXz3cwmSjS1DF0EywN9szuHleepyz8OtueYVH8aOIoPZSMpR7s
 87oIpUOKbmsiJ5iD93keMQjNXAAdkulqvs3bvCETgUeYRwMnhbcnlzIuW3DKY+7uk4K1
 HwVzC/lyMxHauu4ymMzMjc7GHwHB3b7UWgxNw+8GoABMMnmirTS5vEv0yz7/5XNs4GdO dw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=paloaltonetworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=7WYPhIzPy0GvPhTLawqMZp/DBKjHhe3h2XA2qd73rmY=;
        b=0sreNW511WzJ2Ndy5m7LQ4fVuQNNxLGM97PmcC7IyijWYehrSdnBp2u484JQvWu1eT
         OCJVP28icz8iuMDSO//k+78zPFwIdITgq1ex7Kvg77WDkStI74XXroaKiNeSYpXMSBhP
         1e4ivvB4uBfPdexDbEWFCNHmEiTojJChPxTE7P8seVxPYjwRU0gmZIFQm+xA0A91Rqdl
         L8drWFjNv6eLjOCVyfJIZbIpoHNZH6uMbfhmI+e5zzXCsehd1wOV3WPdFsM4TAkmvjrN
         iry/XQhhZJiBi6CTzVMwsQZA0ab/rMUothMjIgEn2SkjhXwmEB/dpo962HMeyiv02580
         DA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=7WYPhIzPy0GvPhTLawqMZp/DBKjHhe3h2XA2qd73rmY=;
        b=pGdpudvTn+VRmNoofJ1oIKRfTrk/JuST749ZCs5Xt+2PYp7s7XALGPz74W+fTS3Dfg
         /lXR+P7TjOSI717tgolfPneY3KLAN/iEer6nXgrlKiLx/BucH+kgqz1rUaKWfROd9spk
         tRauZNa+1g6/QJwpVeiM089FetSGIcDJnNkwdZHx3xUYsOmbzX5mYe/T0HTIPPSHFAz2
         kVK3L/f+VujggFUco10DSriZqZX22VpcbMSmuHwFxdfSb5j//Ns/wIObN81za8O4yvWG
         ndl7zL2rYpcP1BzNGFqzZmiIJjErR7q2uRPX4lBf/YDfitsh0U+v3lenNaBUX8ToA1OE
         jauw==
X-Gm-Message-State: AOAM531XTgGYsH4HK9kt4/IK3Yc5ca4kMZPN99HOF+gi8EDmFQvjwTWu
	WlCD9VMeB3h0KR9XESpIuGmBZwrEjMQXh+BZRZS7duduYqc8OngLZYWRUOlVRnxy0lVje5K0lBP
	CWsJtdxhh8Cig9ggQ3MDbM6LGytvoiCWCXwKx2kewbYIb
X-Received: by 2002:aa7:c9cf:: with SMTP id i15mr19722079edt.4.1618735277877;
        Sun, 18 Apr 2021 01:41:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx9ZxJ8SsL6EMDL15iHOmG3vF4UA4MsLg1PgezFxXHt3JqrstqoMQ+cayJ2y5kPnNdGX+OHk3u+5a+IWceZalk=
X-Received: by 2002:aa7:c9cf:: with SMTP id i15mr19722051edt.4.1618735277323;
 Sun, 18 Apr 2021 01:41:17 -0700 (PDT)
MIME-Version: 1.0
From: Or Cohen <orcohen@paloaltonetworks.com>
Date: Sun, 18 Apr 2021 11:41:06 +0300
Message-ID: <CAM6JnLex-+TM+p5aNrcifxG3qmpL+gfXzSTzWpVpbj3_hsp_Fw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Nadav Markus <nmarkus@paloaltonetworks.com>
Content-Type: multipart/mixed; boundary="00000000000032358e05c03b2dcf"
X-Proofpoint-ORIG-GUID: LvbE4nD2kQZ2lbwl8zT6NTYnjCnEXpkk
X-Proofpoint-GUID: LvbE4nD2kQZ2lbwl8zT6NTYnjCnEXpkk
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-18_03:2021-04-16,2021-04-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_spam_notspam policy=outbound_spam score=0 phishscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0
 spamscore=0 clxscore=1034 impostorscore=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104180061
Subject: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets

--00000000000032358e05c03b2dcf
Content-Type: text/plain; charset="UTF-8"

Hello,

This is an announcement about CVE-2021-23133 which is a race-condition
I found in Linux kernel sctp sockets (net/sctp/socket.c). It can lead to kernel
privilege escalation from the context of a network service or from
an unprivileged process if certain conditions are met.

The bug was fixed on April 13, 2021:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b166a20b07382b8bc1dcee2a448715c9c2c81b5b

=*=*=*=*=*=*=*=*=   VULNERABILITY DETAILS - sctp_destroy_sock list_del
race condition =*=*=*=*=*=*=*=*=

All of the code figures below are from kernel version 5.11

The netns_sctp struct contains sctp related information per network namespace,
one if it's fields is the auto_asconf_splist list.
As the list can be accessed from multiple threads, every access to the list
should be protected by the addr_wq_lock spinlock.

(include/net/netns/sctp.h - netns_sctp structure)
...
    struct list_head addr_waitq;
    struct timer_list addr_wq_timer;
    struct list_head auto_asconf_splist;
    /* Lock that protects both addr_waitq and auto_asconf_splist */
    spinlock_t addr_wq_lock;
...

The sctp_sock struct contains the auto_asconf_list field which is used in order
to add elements to the auto_asconf_splist.

(include/net/sctp/struct.h - sctp_sock structure)
...
    struct list_head auto_asconf_list;
...

When creating a sctp socket, the sctp_init_sock method is called, after
setting up and initializing the sock structure, the following code
is executed in the end of the function:

(net/sctp/socket.c - sctp_init_sock function)
...
if (net->sctp.default_auto_asconf) {
spin_lock(&sock_net(sk)->sctp.addr_wq_lock);
list_add_tail(&sp->auto_asconf_list,
    &net->sctp.auto_asconf_splist);
sp->do_auto_asconf = 1;
spin_unlock(&sock_net(sk)->sctp.addr_wq_lock);
}
...

net->sctp.default_auto_asconf can be set to true via writing to the
proc variable "/proc/sys/net/sctp/default_auto_asconf", which is per
network namespace. If this variable is set, the socket will be added to
the per network namespace auto_asconf_list and do_auto_asconf will be set
to 1 in the socket.

The bug lies in the sctp_destroy_sock function, this function assumes that
when it's called, the addr_wq_lock is held, so it allows itself to run the
following code without any additional locking mechanism:
...
    if (sp->do_auto_asconf) {
sp->do_auto_asconf = 0;
list_del(&sp->auto_asconf_list);
}
...

However, there are 2 places in kernel code where sk_common_release (which
calls sctp_destroy_sock) is called without taking the lock:
1. In sctp_accept, if the sctp_sock_migrate function fails.
2. In inet_create or inet6_create, if there is a bpf program
   attached to BPF_CGROUP_INET_SOCK_CREATE which denies
   creation of the sctp socket.

=*=*=*=*=*=*=*=*=   TRIGGERING THE VULNERABILITY   =*=*=*=*=*=*=*=*=

I wrote a poc (stcp_race_priv_user.c) which triggers the vulnerability
via technique (2), the poc
simply attaches BPF_CGROUP_SOCK program to BPF_CGROUP_INET_SOCK_CREATE
which denies creation of any socket, and then runs 2 threads that
each one of them creates sctp sockets in a loop. The race is then triggered
and list_add corruption is detected in sctp_init_sock. When running with
CONFIG_DEBUG_LIST the kernel is crashing immediately:

The call stack is as follows:
...
[   69.693724] list_add corruption. prev->next should be next
(ffffffff829fa980), but was dead000000000100. (prev=ffff8881079b8538).
[   69.694693] WARNING: CPU: 12 PID: 409 at lib/list_debug.c:28
__list_add_valid+0x4d/0x70
[   69.695345] Modules linked in:
[   69.695601] CPU: 12 PID: 409 Comm: test_sctp_race Not tainted 5.11.0 #74
[   69.696167] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
BIOS Ubuntu-1.8.2-1ubuntu1 04/01/2014
[   69.696949] RIP: 0010:__list_add_valid+0x4d/0x70
[   69.697336] Code: c3 48 89 c1 48 c7 c7 10 97 59 82 e8 4d 4f c1 ff
0f 0b 31 c0 c3 48 89 d1 48 c7 c7 60 97 59 82 48 89 f2 48 89 c6 e8 33
4f c1 ff <0f> 0b 31 c0 c3 48 89 fe 48 89 c1 48 c7 c7 b0 97 59 82 e8 1c
4f c1
[   69.698864] RSP: 0018:ffffc90000647e48 EFLAGS: 00010282
[   69.699300] RAX: 0000000000000000 RBX: ffff8881079a8000 RCX: 0000000000000000
[   69.699903] RDX: ffff88842fd27860 RSI: ffff88842fd17a50 RDI: ffff88842fd17a50
[   69.700487] RBP: ffffffff829fa000 R08: 0000000000000003 R09: 0000000000000001
[   69.701086] R10: ffff888100c83a60 R11: ffffc90000647c58 R12: ffff8881079b8538
[   69.701688] R13: ffff8881079a8538 R14: ffffffff829fa980 R15: 0000000000000084
[   69.702273] FS:  00007f2fb82c7b40(0000) GS:ffff88842fd00000(0000)
knlGS:0000000000000000
[   69.702950] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[   69.703426] CR2: 00007f2fb76bcff8 CR3: 0000000107960004 CR4: 00000000003706e0
[   69.704019] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[   69.704601] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[   69.705200] Call Trace:
[   69.705414]  sctp_init_sock+0x339/0x380
[   69.705759]  inet_create+0x1ac/0x350
[   69.706054]  __sock_create+0xfd/0x200
[   69.706365]  __sys_socket+0x55/0xd0
[   69.706674]  ? exit_to_user_mode_prepare+0x2f/0x120
[   69.707079]  __x64_sys_socket+0x11/0x20
[   69.707398]  do_syscall_64+0x33/0x40
[   69.707715]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
[   69.708139] RIP: 0033:0x7f2fb77a7f17
...

This specific poc (stcp_race_priv_user.c) requires CAP_BPF and
CAP_NET_ADMIN capabilities in order
to attach the bpf program, according to https://lwn.net/Articles/820560/,
this is still considered a security boundary.

=*=*=*=*=*=*=*=*=   TRIGGERING FROM UNPRIVILEGED USER  =*=*=*=*=*=*=*=*=

However, if a BPF_CGROUP_INET_SOCK_CREATE program  is already attached,
such that an unprivileged user can fail a creation of some sctp socket,
then the vulnerability can be triggered by an unprivileged user if unprivileged
 user namespaces are enabled, by creating a new user and network
namespace, setting
"/proc/sys/net/sctp/default_auto_asconf" in the new network namespace
and then racing between the 2 threads.

This can be demonstrated by the following files:

1. load_bpf_prog.c - Which loads the BPF_CGROUP_INET_SOCK_CREATE, and should
    be run from a privileged process.
2. stcp_race_unpriv_user.c - Which can be run from a regular, unprivileged
    user.

I haven't checked, but there are probably network security tools which attaches
bpf program to BPF_CGROUP_INET_SOCK_CREATE.

Regarding triggering via technique (2), which is failing sctp_sock_migrate in
sctp_accept, I've tried many tricks in order to fail sctp_sock_migrate
but eventually this requires failing some kmalloc or crypto calls,
which I couldn't
fail in a modern Ubuntu with almost the latest kernel.
However, it may be possible to do that in older kernel versions, or with
some other trick which I am not aware about, or if sctp_accept or
sctp_sock_migrate
changes in the future.

Note that by triggering via this technique, the vulnerability can be triggered
from an unprivileged user without the BPF_CGROUP_INET_SOCK_CREATE
program attached.

=*=*=*=*=*=*=*=*=    TIMELINE    =*=*=*=*=*=*=*=*=

2021-04-08: Bug reported to security () kernel org and linux-distros
() vs openwall org
2021-04-13: Patch submitted to netdev
2021-04-17: Patch committed to mainline kernel
2021-04-18: Public announcement

=*=*=*=*=*=*=*=*=     CREDIT     =*=*=*=*=*=*=*=*=

Or Cohen
Palo Alto Networks

--00000000000032358e05c03b2dcf
Content-Type: application/octet-stream; name="sctp_race_priv_user.c"
Content-Disposition: attachment; filename="sctp_race_priv_user.c"
Content-Transfer-Encoding: base64
Content-ID: <f_knmx5ml10>
X-Attachment-Id: f_knmx5ml10

I2RlZmluZSBfR05VX1NPVVJDRQojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1
ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RkZGVmLmg+CiNpbmNsdWRlIDxz
dHJpbmcuaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8YXNzZXJ0
Lmg+CiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2lu
Y2x1ZGUgPG5ldC9pZi5oPgojaW5jbHVkZSA8aW50dHlwZXMuaD4KI2luY2x1
ZGUgPGxpbnV4L2JwZi5oPgojaW5jbHVkZSA8YnBmL2JwZi5oPgojaW5jbHVk
ZSAiYnBmX2luc24uaCIKI2luY2x1ZGUgPHNjaGVkLmg+CiNpbmNsdWRlIDxz
eXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4KI2luY2x1ZGUg
PGxpbnV4L2lmX3BhY2tldC5oPgojaW5jbHVkZSA8bmV0L2V0aGVybmV0Lmg+
CiNpbmNsdWRlIDxhcnBhL2luZXQuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+
CiNpbmNsdWRlIDxzdGRib29sLmg+CiNpbmNsdWRlIDxzdGRhcmcuaD4KI2lu
Y2x1ZGUgPHN0ZGludC5oPgojaW5jbHVkZSA8c3lzL21tYW4uaD4KI2luY2x1
ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPHN5cy90aW1lLmg+CiNpbmNsdWRl
IDxzeXMvcmVzb3VyY2UuaD4KCiNkZWZpbmUgU0NUUF9BVVRPX0FTQ09ORiAg
ICAgICAzMAojZGVmaW5lIFNPTF9TQ1RQCTEzMgoKY2hhciBicGZfbG9nX2J1
ZltCUEZfTE9HX0JVRl9TSVpFXTsKCnN0YXRpYyBpbnQgcHJvZ19sb2FkKF9f
dTMyIGlkeCwgX191MzIgbWFyaywgX191MzIgcHJpbykKewoJc3RydWN0IGJw
Zl9pbnNuIHByb2dfc3RhcnRbXSA9IHsKCQlCUEZfTU9WNjRfUkVHKEJQRl9S
RUdfNiwgQlBGX1JFR18xKSwKCX07CglzdHJ1Y3QgYnBmX2luc24gcHJvZ19l
bmRbXSA9IHsKCQlCUEZfTU9WNjRfSU1NKEJQRl9SRUdfMCwgMCksIC8qIHIw
ID0gdmVyZGljdCAqLwoJCUJQRl9FWElUX0lOU04oKSwKCX07CgoJc3RydWN0
IGJwZl9pbnNuICpwcm9nOwoJc2l6ZV90IGluc25zX2NudDsKCXZvaWQgKnA7
CglpbnQgcmV0OwoKCWluc25zX2NudCA9IHNpemVvZihwcm9nX3N0YXJ0KSAr
IHNpemVvZihwcm9nX2VuZCk7CgoJcCA9IHByb2cgPSBtYWxsb2MoaW5zbnNf
Y250KTsKCWlmICghcHJvZykgewoJCWZwcmludGYoc3RkZXJyLCAiRmFpbGVk
IHRvIGFsbG9jYXRlIG1lbW9yeSBmb3IgaW5zdHJ1Y3Rpb25zXG4iKTsKCQly
ZXR1cm4gRVhJVF9GQUlMVVJFOwoJfQoKCW1lbWNweShwLCBwcm9nX3N0YXJ0
LCBzaXplb2YocHJvZ19zdGFydCkpOwoJcCArPSBzaXplb2YocHJvZ19zdGFy
dCk7CgoJbWVtY3B5KHAsIHByb2dfZW5kLCBzaXplb2YocHJvZ19lbmQpKTsK
CXAgKz0gc2l6ZW9mKHByb2dfZW5kKTsKCglpbnNuc19jbnQgLz0gc2l6ZW9m
KHN0cnVjdCBicGZfaW5zbik7CgoJcmV0ID0gYnBmX2xvYWRfcHJvZ3JhbShC
UEZfUFJPR19UWVBFX0NHUk9VUF9TT0NLLCBwcm9nLCBpbnNuc19jbnQsCgkJ
CQkiR1BMIiwgMCwgYnBmX2xvZ19idWYsIEJQRl9MT0dfQlVGX1NJWkUpOwoK
CWZyZWUocHJvZyk7CgoJcmV0dXJuIHJldDsKfQoKdm9pZCAqIGNyZWF0ZV9z
b2NrX3RocmVhZF9mdW5jdGlvbih2b2lkICphcmcpCnsKICAgIHdoaWxlKDEp
CiAgICB7CiAgICAgICAgaW50IHMxID0gc29ja2V0KEFGX0lORVQsIFNPQ0tf
U0VRUEFDS0VULCBJUFBST1RPX1NDVFApOwogICAgICAgIGlmKHMxID4gMCkK
ICAgICAgICB7CiAgICAgICAgICAgIHByaW50ZigiVGhpcyBzaG91bGQgbm90
IGhhcHBlbiEhISFcbiIpOwogICAgICAgICAgICBjbG9zZShzMSk7CiAgICAg
ICAgfQogICAgfQogICAgcmV0dXJuIE5VTEw7Cn0KCnN0YXRpYyBib29sIHdy
aXRlX2ZpbGUoY29uc3QgY2hhciogZmlsZSwgY29uc3QgY2hhciogd2hhdCwg
Li4uKQp7CgljaGFyIGJ1ZlsxMDI0XTsKCXZhX2xpc3QgYXJnczsKCXZhX3N0
YXJ0KGFyZ3MsIHdoYXQpOwoJdnNucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1Ziks
IHdoYXQsIGFyZ3MpOwoJdmFfZW5kKGFyZ3MpOwoJYnVmW3NpemVvZihidWYp
IC0gMV0gPSAwOwoJaW50IGxlbiA9IHN0cmxlbihidWYpOwoKCWludCBmZCA9
IG9wZW4oZmlsZSwgT19XUk9OTFkgfCBPX0NMT0VYRUMpOwoJaWYgKGZkID09
IC0xKQoJCXJldHVybiBmYWxzZTsKCWlmICh3cml0ZShmZCwgYnVmLCBsZW4p
ICE9IGxlbikgewoJCWNsb3NlKGZkKTsKCQlyZXR1cm4gZmFsc2U7Cgl9Cglj
bG9zZShmZCk7CglyZXR1cm4gdHJ1ZTsKfQoKCmJvb2wgc2V0X2RlZmF1bHRf
YXV0b19hc2NvbmYoKQp7CiAgICBpZiAoIXdyaXRlX2ZpbGUoIi9wcm9jL3N5
cy9uZXQvc2N0cC9kZWZhdWx0X2F1dG9fYXNjb25mIiwgIjEiKSkKICAgIHsK
ICAgICAgICBwZXJyb3IoIkZhaWxlZCB0byB3cml0ZSB0byBkZWZhdWx0X2F1
dG9fYXNjb25mXG4iKTsKICAgICAgICByZXR1cm4gZmFsc2U7CiAgICB9CiAg
ICByZXR1cm4gdHJ1ZTsKfQoKCi8qCiAgICBSZXF1aXJlZCBjYXBhYmlsaXRp
ZXM6CgogICAgICAgIGtlcm5lbCA+PSA1LjggLQogICAgICAgICAgICBDQVBf
QlBGLCBDQVBfTkVUX0FETUlOCgogICAgICAgIGtlcm5lbCA8IDUuOCAtCiAg
ICAgICAgICAgIENBUF9TWVNfQURNSU4KICAgIAoqLwppbnQgbWFpbihpbnQg
YXJnYywgY2hhciAqKmFyZ3YpCnsKICAgIHByaW50Zigic2N0cCByYWNlIHBv
YyAtIHByaXZpbGVnZWQgdXNlclxuIik7CiAgICBjaGFyKiBjZ3JwX3BhdGg7
CiAgICBpZiAoYXJndlsxXSkKICAgIHsKICAgICAgICBjZ3JwX3BhdGggPSBh
cmd2WzFdOwogICAgfQogICAgZWxzZQogICAgewogICAgICAgIGNncnBfcGF0
aCA9ICIvc3lzL2ZzL2Nncm91cC91bmlmaWVkIjsKICAgIH0KCiAgICBpbnQg
Y2dfZmQgPSBvcGVuKGNncnBfcGF0aCwgT19ESVJFQ1RPUlkgfCBPX1JET05M
WSk7CglpZiAoY2dfZmQgPCAwKQoJewoJCXByaW50ZigiRmFpbGVkIHRvIG9w
ZW4gY2dyb3VwIHBhdGg6ICclcydcbiIsIHN0cmVycm9yKGVycm5vKSk7CgkJ
cmV0dXJuIEVYSVRfRkFJTFVSRTsKCX0KICAgIHByaW50ZigiT3BlbmVkIGNn
cm91cCBwYXRoID0gICVzXG4iLCBjZ3JwX3BhdGgpOwoKICAgIGlmICghc2V0
X2RlZmF1bHRfYXV0b19hc2NvbmYoKSkKICAgIHsKICAgICAgICByZXR1cm4g
RVhJVF9GQUlMVVJFOwogICAgfQoKICAgIHByaW50ZigiU3VjY2Vzc2Z1bHkg
ZW5hYmxlZCAvcHJvYy9zeXMvbmV0L3NjdHAvZGVmYXVsdF9hdXRvX2FzY29u
ZlxuIik7CgogICAgaW50IHByb2dfZmQgPSBwcm9nX2xvYWQoMCwgMCwgMCk7
CiAgICBpZiggcHJvZ19mZCA8IDAgKQogICAgewogICAgICAgIHBlcnJvcigi
cHJvZ19sb2FkIGZhaWxlZFxuIik7CiAgICAgICAgcmV0dXJuIDE7CiAgICB9
CgogICAgcHJpbnRmKCJTdWNjZXNzZnVseSBsb2FkZWQgYSBCUEZfUFJPR19U
WVBFX0NHUk9VUF9TT0NLIHByb2dyYW1cbiIpOwoKICAgIGludCByZXQgPSBi
cGZfcHJvZ19hdHRhY2gocHJvZ19mZCwgY2dfZmQsCgkJCQkgICAgICBCUEZf
Q0dST1VQX0lORVRfU09DS19DUkVBVEUsIDApOwoJaWYgKHJldCA8IDApCiAg
ICB7CgkJcHJpbnRmKCJGYWlsZWQgdG8gYXR0YWNoIHByb2cgdG8gY2dyb3Vw
OiAnJXMnXG4iLAoJCQkgICAgc3RyZXJyb3IoZXJybm8pKTsKCQlyZXR1cm4g
RVhJVF9GQUlMVVJFOwoJfQogICAgcHJpbnRmKCJTdWNjZXNzZnVseSBhdHRh
Y2hlZCB0aGUgcHJvZ3JhbSB0byBCUEZfQ0dST1VQX0lORVRfU09DS19DUkVB
VEVcbiIpOwoKICAgIHNsZWVwKDEpOwoKICAgIHB0aHJlYWRfdCBjcmVhdGVf
c29ja190aHJlYWQ7CiAgICBpZiAocHRocmVhZF9jcmVhdGUoJmNyZWF0ZV9z
b2NrX3RocmVhZCwKICAgICAgICAgICAgICAgICAgICAgICBOVUxMLAogICAg
ICAgICAgICAgICAgICAgICAgIGNyZWF0ZV9zb2NrX3RocmVhZF9mdW5jdGlv
biwKICAgICAgICAgICAgICAgICAgICAgICBOVUxMKSkKICAgIHsKICAgICAg
ICBwcmludGYoInB0aHJlYWRfY3JlYXRlIGZhaWxlZCB3aXRoIGVycm9yID0g
ICclcydcbiIsCgkJCSAgICBzdHJlcnJvcihlcnJubykpOwogICAgICAgIHJl
dHVybiBFWElUX0ZBSUxVUkU7CiAgICB9CgogICAgcHJpbnRmKCJLZXJuZWwg
c2hvdWxkIGNyYXNoIHNvb24uLiAoaWYgQ09ORklHX0RFQlVHX0xJU1QgaXMg
ZW5hYmxlZClcbiIpOwogICAgY3JlYXRlX3NvY2tfdGhyZWFkX2Z1bmN0aW9u
KE5VTEwpOwogICAgcmV0dXJuIDA7Cn0K

--00000000000032358e05c03b2dcf
Content-Type: application/octet-stream; name="sctp_race_unpriv_user.c"
Content-Disposition: attachment; filename="sctp_race_unpriv_user.c"
Content-Transfer-Encoding: base64
Content-ID: <f_knmx5mlh1>
X-Attachment-Id: f_knmx5mlh1

I2RlZmluZSBfR05VX1NPVVJDRQojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1
ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RkZGVmLmg+CiNpbmNsdWRlIDxz
dHJpbmcuaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8YXNzZXJ0
Lmg+CiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2lu
Y2x1ZGUgPG5ldC9pZi5oPgojaW5jbHVkZSA8aW50dHlwZXMuaD4KI2luY2x1
ZGUgPGxpbnV4L2JwZi5oPgojaW5jbHVkZSA8c2NoZWQuaD4KI2luY2x1ZGUg
PHN5cy90eXBlcy5oPgojaW5jbHVkZSA8c3lzL3NvY2tldC5oPgojaW5jbHVk
ZSA8bGludXgvaWZfcGFja2V0Lmg+CiNpbmNsdWRlIDxuZXQvZXRoZXJuZXQu
aD4KI2luY2x1ZGUgPGFycGEvaW5ldC5oPgojaW5jbHVkZSA8c3lzL3N0YXQu
aD4KI2luY2x1ZGUgPHN0ZGJvb2wuaD4KI2luY2x1ZGUgPHN0ZGFyZy5oPgoj
aW5jbHVkZSA8c3RkaW50Lmg+CiNpbmNsdWRlIDxzeXMvbW1hbi5oPgojaW5j
bHVkZSA8cHRocmVhZC5oPgojaW5jbHVkZSA8c3lzL3RpbWUuaD4KI2luY2x1
ZGUgPHN5cy9yZXNvdXJjZS5oPgoKI2RlZmluZSBTQ1RQX0FVVE9fQVNDT05G
ICAgICAgIDMwCiNkZWZpbmUgU09MX1NDVFAJMTMyCgp2b2lkICogY3JlYXRl
X3NvY2tfdGhyZWFkX2Z1bmN0aW9uKHZvaWQgKmFyZykKewogICAgd2hpbGUo
MSkKICAgIHsKICAgICAgICBpbnQgczEgPSBzb2NrZXQoQUZfSU5FVCwgU09D
S19TRVFQQUNLRVQsIElQUFJPVE9fU0NUUCk7CiAgICAgICAgaWYoczEgPiAw
KQogICAgICAgIHsKICAgICAgICAgICAgcHJpbnRmKCJUaGlzIHNob3VsZCBu
b3QgaGFwcGVuISEhIVxuIik7CiAgICAgICAgICAgIGNsb3NlKHMxKTsKICAg
ICAgICB9CiAgICB9CiAgICByZXR1cm4gTlVMTDsKfQoKc3RhdGljIGJvb2wg
d3JpdGVfZmlsZShjb25zdCBjaGFyKiBmaWxlLCBjb25zdCBjaGFyKiB3aGF0
LCAuLi4pCnsKCWNoYXIgYnVmWzEwMjRdOwoJdmFfbGlzdCBhcmdzOwoJdmFf
c3RhcnQoYXJncywgd2hhdCk7Cgl2c25wcmludGYoYnVmLCBzaXplb2YoYnVm
KSwgd2hhdCwgYXJncyk7Cgl2YV9lbmQoYXJncyk7CglidWZbc2l6ZW9mKGJ1
ZikgLSAxXSA9IDA7CglpbnQgbGVuID0gc3RybGVuKGJ1Zik7CgoJaW50IGZk
ID0gb3BlbihmaWxlLCBPX1dST05MWSB8IE9fQ0xPRVhFQyk7CglpZiAoZmQg
PT0gLTEpCgkJcmV0dXJuIGZhbHNlOwoJaWYgKHdyaXRlKGZkLCBidWYsIGxl
bikgIT0gbGVuKSB7CgkJY2xvc2UoZmQpOwoJCXJldHVybiBmYWxzZTsKCX0K
CWNsb3NlKGZkKTsKCXJldHVybiB0cnVlOwp9CgoKYm9vbCBzZXRfZGVmYXVs
dF9hdXRvX2FzY29uZigpCnsKICAgIGlmICghd3JpdGVfZmlsZSgiL3Byb2Mv
c3lzL25ldC9zY3RwL2RlZmF1bHRfYXV0b19hc2NvbmYiLCAiMSIpKQogICAg
ewogICAgICAgIHBlcnJvcigiRmFpbGVkIHRvIHdyaXRlIHRvIGRlZmF1bHRf
YXV0b19hc2NvbmZcbiIpOwogICAgICAgIHJldHVybiBmYWxzZTsKICAgIH0K
ICAgIHJldHVybiB0cnVlOwp9CgoKdm9pZCBzZXR1cF9zYW5kYm94KCkKewoJ
aW50IHJlYWxfdWlkID0gZ2V0dWlkKCk7CglpbnQgcmVhbF9naWQgPSBnZXRn
aWQoKTsKCiAgICBpZiAodW5zaGFyZShDTE9ORV9ORVdVU0VSKSAhPSAwKQog
ICAgewoJCXBlcnJvcigidW5zaGFyZShDTE9ORV9ORVdVU0VSKSIpOwoJCWV4
aXQoRVhJVF9GQUlMVVJFKTsKCX0KCiAgICBpZiAodW5zaGFyZShDTE9ORV9O
RVdORVQpICE9IDApCiAgICB7CgkJcGVycm9yKCJ1bnNoYXJlKENMT05FX05F
V1VTRVIpIik7CgkJZXhpdChFWElUX0ZBSUxVUkUpOwoJfQoKCWlmICghd3Jp
dGVfZmlsZSgiL3Byb2Mvc2VsZi9zZXRncm91cHMiLCAiZGVueSIpKQogICAg
ewoJCXBlcnJvcigid3JpdGVfZmlsZSgvcHJvYy9zZWxmL3NldF9ncm91cHMp
Iik7CgkJZXhpdChFWElUX0ZBSUxVUkUpOwoJfQoKCWlmICghd3JpdGVfZmls
ZSgiL3Byb2Mvc2VsZi91aWRfbWFwIiwgIjAgJWQgMVxuIiwgcmVhbF91aWQp
KQogICAgewoJCXBlcnJvcigid3JpdGVfZmlsZSgvcHJvYy9zZWxmL3VpZF9t
YXApIik7CgkJZXhpdChFWElUX0ZBSUxVUkUpOwoJfQoKCWlmICghd3JpdGVf
ZmlsZSgiL3Byb2Mvc2VsZi9naWRfbWFwIiwgIjAgJWQgMVxuIiwgcmVhbF9n
aWQpKQogICAgewoJCXBlcnJvcigid3JpdGVfZmlsZSgvcHJvYy9zZWxmL2dp
ZF9tYXApIik7CgkJZXhpdChFWElUX0ZBSUxVUkUpOwoJfQp9CgoKLyoKICAg
IE5PVEU6OgogICAgVGhpcyBzcGVjaWZpYyBwb2Mgb2YgdGhlIHZ1bG5lcmFi
aWxpdHkgYXNzdW1lcyB0aGF0IGEgQlBGX0NHUk9VUF9JTkVUX1NPQ0tfQ1JF
QVRFCiAgICBwcm9ncmFtIHdhcyBhbHJlYWR5IGxvYWRlZCBhbmQgdGhhdCBp
dCByZWplY3RzIGNyZWF0aW9uIG9mIHNjdHAgc29ja2V0cy4KCiAgICBDb21w
aWxlIHdpdGg6CiAgICAgICAgZ2NjIHNjdHBfcmFjZV91bnByaXZfdXNlci5j
IC1scHRocmVhZAoqLwppbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3Yp
CnsKICAgIHByaW50Zigic2N0cCByYWNlIHBvYyAtIHVucHJpdmlsZWdlZCB1
c2VyXG4iKTsKICAgIHByaW50ZigidWlkID0gJWRcbiIsIGdldHVpZCgpKTsK
CiAgICBwcmludGYoIlRyeWluZyB0byBjcmVhdGUgYSBuZXcgdXNlciBhbmQg
bmV0d29yayBuYW1lc3BhY2VcbiIpOwoKICAgIHNldHVwX3NhbmRib3goKTsK
CiAgICBwcmludGYoIlJ1bm5pbmcgaW4gYSBuZXcgdXNlciBhbmQgbmV0d29y
ayBuYW1lc3BhY2VcbiIpOwoKICAgIGlmICghc2V0X2RlZmF1bHRfYXV0b19h
c2NvbmYoKSkKICAgIHsKICAgICAgICByZXR1cm4gRVhJVF9GQUlMVVJFOwog
ICAgfQoKICAgIHByaW50ZigiU3VjY2Vzc2Z1bHkgZW5hYmxlZCBkZWZhdWx0
X2F1dG9fYXNjb25mIGluIGEgbmV3IG5ldHdvcmsgbmFtZXNwYWNlXG4iKTsK
CiAgICBwdGhyZWFkX3QgY3JlYXRlX3NvY2tfdGhyZWFkOwogICAgaWYgKHB0
aHJlYWRfY3JlYXRlKCZjcmVhdGVfc29ja190aHJlYWQsCiAgICAgICAgICAg
ICAgICAgICAgICAgTlVMTCwKICAgICAgICAgICAgICAgICAgICAgICBjcmVh
dGVfc29ja190aHJlYWRfZnVuY3Rpb24sCiAgICAgICAgICAgICAgICAgICAg
ICAgTlVMTCkpCiAgICB7CiAgICAgICAgcHJpbnRmKCJwdGhyZWFkX2NyZWF0
ZSBmYWlsZWQgd2l0aCBlcnJvciA9ICAnJXMnXG4iLAoJCQkgICAgc3RyZXJy
b3IoZXJybm8pKTsKICAgICAgICByZXR1cm4gRVhJVF9GQUlMVVJFOwogICAg
fQoKICAgIHByaW50ZigiS2VybmVsIHNob3VsZCBjcmFzaCBzb29uLi4gKGlm
IENPTkZJR19ERUJVR19MSVNUIGlzIGVuYWJsZWQpXG4iKTsKICAgIGNyZWF0
ZV9zb2NrX3RocmVhZF9mdW5jdGlvbihOVUxMKTsKICAgIHJldHVybiAwOwp9
Cg==

--00000000000032358e05c03b2dcf
Content-Type: application/octet-stream; name="load_bpf_prog.c"
Content-Disposition: attachment; filename="load_bpf_prog.c"
Content-Transfer-Encoding: base64
Content-ID: <f_knmx5sy02>
X-Attachment-Id: f_knmx5sy02

I2RlZmluZSBfR05VX1NPVVJDRQojaW5jbHVkZSA8c3RkaW8uaD4KI2luY2x1
ZGUgPHN0ZGxpYi5oPgojaW5jbHVkZSA8c3RkZGVmLmg+CiNpbmNsdWRlIDxz
dHJpbmcuaD4KI2luY2x1ZGUgPHVuaXN0ZC5oPgojaW5jbHVkZSA8YXNzZXJ0
Lmg+CiNpbmNsdWRlIDxlcnJuby5oPgojaW5jbHVkZSA8ZmNudGwuaD4KI2lu
Y2x1ZGUgPG5ldC9pZi5oPgojaW5jbHVkZSA8aW50dHlwZXMuaD4KI2luY2x1
ZGUgPGxpbnV4L2JwZi5oPgojaW5jbHVkZSA8YnBmL2JwZi5oPgojaW5jbHVk
ZSAiYnBmX2luc24uaCIKI2luY2x1ZGUgPHNjaGVkLmg+CiNpbmNsdWRlIDxz
eXMvdHlwZXMuaD4KI2luY2x1ZGUgPHN5cy9zb2NrZXQuaD4KI2luY2x1ZGUg
PGxpbnV4L2lmX3BhY2tldC5oPgojaW5jbHVkZSA8bmV0L2V0aGVybmV0Lmg+
CiNpbmNsdWRlIDxhcnBhL2luZXQuaD4KI2luY2x1ZGUgPHN5cy9zdGF0Lmg+
CiNpbmNsdWRlIDxzdGRib29sLmg+CiNpbmNsdWRlIDxzdGRhcmcuaD4KI2lu
Y2x1ZGUgPHN0ZGludC5oPgojaW5jbHVkZSA8c3lzL21tYW4uaD4KI2luY2x1
ZGUgPHB0aHJlYWQuaD4KI2luY2x1ZGUgPHN5cy90aW1lLmg+CiNpbmNsdWRl
IDxzeXMvcmVzb3VyY2UuaD4KCmNoYXIgYnBmX2xvZ19idWZbQlBGX0xPR19C
VUZfU0laRV07CgpzdGF0aWMgaW50IHByb2dfbG9hZChfX3UzMiBpZHgsIF9f
dTMyIG1hcmssIF9fdTMyIHByaW8pCnsKCXN0cnVjdCBicGZfaW5zbiBwcm9n
X3N0YXJ0W10gPSB7CgkJQlBGX01PVjY0X1JFRyhCUEZfUkVHXzYsIEJQRl9S
RUdfMSksCgl9OwoJc3RydWN0IGJwZl9pbnNuIHByb2dfZW5kW10gPSB7CgkJ
QlBGX01PVjY0X0lNTShCUEZfUkVHXzAsIDApLCAvKiByMCA9IHZlcmRpY3Qg
Ki8KCQlCUEZfRVhJVF9JTlNOKCksCgl9OwoKCXN0cnVjdCBicGZfaW5zbiAq
cHJvZzsKCXNpemVfdCBpbnNuc19jbnQ7Cgl2b2lkICpwOwoJaW50IHJldDsK
CglpbnNuc19jbnQgPSBzaXplb2YocHJvZ19zdGFydCkgKyBzaXplb2YocHJv
Z19lbmQpOwoKCXAgPSBwcm9nID0gbWFsbG9jKGluc25zX2NudCk7CglpZiAo
IXByb2cpIHsKCQlmcHJpbnRmKHN0ZGVyciwgIkZhaWxlZCB0byBhbGxvY2F0
ZSBtZW1vcnkgZm9yIGluc3RydWN0aW9uc1xuIik7CgkJcmV0dXJuIEVYSVRf
RkFJTFVSRTsKCX0KCgltZW1jcHkocCwgcHJvZ19zdGFydCwgc2l6ZW9mKHBy
b2dfc3RhcnQpKTsKCXAgKz0gc2l6ZW9mKHByb2dfc3RhcnQpOwoKCW1lbWNw
eShwLCBwcm9nX2VuZCwgc2l6ZW9mKHByb2dfZW5kKSk7CglwICs9IHNpemVv
Zihwcm9nX2VuZCk7CgoJaW5zbnNfY250IC89IHNpemVvZihzdHJ1Y3QgYnBm
X2luc24pOwoKCXJldCA9IGJwZl9sb2FkX3Byb2dyYW0oQlBGX1BST0dfVFlQ
RV9DR1JPVVBfU09DSywgcHJvZywgaW5zbnNfY250LAoJCQkJIkdQTCIsIDAs
IGJwZl9sb2dfYnVmLCBCUEZfTE9HX0JVRl9TSVpFKTsKCglmcmVlKHByb2cp
OwoKCXJldHVybiByZXQ7Cn0KCmludCBtYWluKGludCBhcmdjLCBjaGFyICoq
YXJndikKewogICAgY2hhciogY2dycF9wYXRoOwogICAgaWYgKGFyZ3ZbMV0p
CiAgICB7CiAgICAgICAgY2dycF9wYXRoID0gYXJndlsxXTsKICAgIH0KICAg
IGVsc2UKICAgIHsKICAgICAgICBjZ3JwX3BhdGggPSAiL3N5cy9mcy9jZ3Jv
dXAvdW5pZmllZCI7CiAgICB9CgogICAgaW50IGNnX2ZkID0gb3BlbihjZ3Jw
X3BhdGgsIE9fRElSRUNUT1JZIHwgT19SRE9OTFkpOwoJaWYgKGNnX2ZkIDwg
MCkKCXsKCQlwcmludGYoIkZhaWxlZCB0byBvcGVuIGNncm91cCBwYXRoOiAn
JXMnXG4iLCBzdHJlcnJvcihlcnJubykpOwoJCXJldHVybiBFWElUX0ZBSUxV
UkU7Cgl9CiAgICBwcmludGYoIk9wZW5lZCBjZ3JvdXAgcGF0aCA9ICAlc1xu
IiwgY2dycF9wYXRoKTsKCiAgICBpbnQgcHJvZ19mZCA9IHByb2dfbG9hZCgw
LCAwLCAwKTsKICAgIGlmKCBwcm9nX2ZkIDwgMCApCiAgICB7CiAgICAgICAg
cGVycm9yKCJwcm9nX2xvYWQgZmFpbGVkXG4iKTsKICAgICAgICByZXR1cm4g
MTsKICAgIH0KCiAgICBwcmludGYoIlN1Y2Nlc3NmdWx5IGxvYWRlZCBhIEJQ
Rl9QUk9HX1RZUEVfQ0dST1VQX1NPQ0sgcHJvZ3JhbVxuIik7CgogICAgaW50
IHJldCA9IGJwZl9wcm9nX2F0dGFjaChwcm9nX2ZkLCBjZ19mZCwKCQkJCSAg
ICAgIEJQRl9DR1JPVVBfSU5FVF9TT0NLX0NSRUFURSwgMCk7CglpZiAocmV0
IDwgMCkKICAgIHsKCQlwcmludGYoIkZhaWxlZCB0byBhdHRhY2ggcHJvZyB0
byBjZ3JvdXA6ICclcydcbiIsCgkJCSAgICBzdHJlcnJvcihlcnJubykpOwoJ
CXJldHVybiBFWElUX0ZBSUxVUkU7Cgl9CiAgICBwcmludGYoIlN1Y2Nlc3Nm
dWx5IGF0dGFjaGVkIHRoZSBwcm9ncmFtIHRvIEJQRl9DR1JPVVBfSU5FVF9T
T0NLX0NSRUFURVxuIik7CiAgICByZXR1cm4gMDsKfQo=

--00000000000032358e05c03b2dcf--
