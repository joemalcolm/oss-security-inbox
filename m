X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["17354" "Saturday" "19" "June" "2021" "16:40:53" "+0200" "Norbert Slusarek" "nslusarek@gmx.net" nil "455" "[oss-security] CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation" nil nil nil "6" nil nil (number mark "U       nslusarek@gm Jun 19  455/17354 " thread-indent "\"[oss-security] CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8059 invoked by uid 550); 19 Jun 2021 14:41:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8041 invoked from network); 19 Jun 2021 14:41:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1624113653;
	bh=c5uayc3VIEnZv1cp/enDLc3l43+BVbeki8rhF9KhbHQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
	b=WrLTqGgFd2LJPOPO6NswXWswbsUcGj0j0ej8C9k4tgn406ohiEroozNethaNkW/ut
	 PIzql4nKY9i+Od6CJimXrsGtYIkgficvem3jTFx5ysq38x2w+Z8qRyVrg7as3yRdHY
	 wrwbFzlEYyk4U5H1unyCsck4rou5RC/4O54ms32A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
MIME-Version: 1.0
Message-ID: <trinity-2ae31df0-82cc-4381-9124-4b24e0bdeb45-1624113653558@3c-app-gmx-bs01>
From: Norbert Slusarek <nslusarek@gmx.net>
To: oss-security@lists.openwall.com
Cc: Oliver Hartkopp <socketcan@hartkopp.net>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Thadeu Lima de Souza Cascardo
 <cascardo@canonical.com>
Content-Type: multipart/mixed;
 boundary=rekceb-1912f611-e16c-4b85-8184-cfdc1056e173
Date: Sat, 19 Jun 2021 16:40:53 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:ZyZhZ7uD7euBcorvSz4GQFCI+X8D+bVU/i1UhXclUxMNsTm54iYcQ3BOSmbQC4bAKh8i3
 UoJXAQiwrx6FfuzoMx8MnFtQNE9crJYWKavCDZ4TN60c5SNYhYgo88yXH81/fbTnIjYckAUwzMzE
 xrew/Ylc+0B4nYVrRUUEILJfhYmV8qdY2UKkuEQ474r725PRrHF49cBr2e2GA7mHzgYpxyxG7bV2
 qRku2F+OZagLYWJCDcfupSmIMzKEByUj17kkdzrSCLuUi8tZAEAJad2ghKxuYPKCSmP626tdKJ+N
 nY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:2wdGU+aSGOw=:ZDCZaLZfBbv/0uVULoSAma
 zYWJnleCDkv/TG6dvU9c7X/wpT+Uv601a+b+iu3PVLB62o6NAwvGb9jfjS0qp1oIrMeSSl85b
 Ng4p5x+aq5eO2qhzsPOLMvliDIvEx3jYHZw+Z4Fe8wx9Z2WjuI1oo5u3QE3/WpC5iCAFIbGoK
 mHWXhwyjadi9RAA3fDmQCl3nJjAuO/kz7454IDlEzX2NeUsoBhnKeWaqAfPv6jt0+k+OCYAlB
 O1JdX0dnahO63aJVKjiqGyGN+/Tntq0Wy/40R+RZ6mYDbgg83pYdkaYtwOtl5r10OjQ/F+ePb
 6uE3dZm430bULoJ8Lba+V61gAhjHGJ8L+e3+yGHO/f+WfyYNi225Oc9MvZtQBTv+pWPPmGq6+
 hH8G/naNJi8f2KPOsdcNSZAIGf2wOI5yhFuWy6TaTNHmXZj74yTpFgQQCJ4bmOketoQUCyEjM
 0Na282OFuspSYic1b8x4vmFi+6SVfg40EZ8B0Eh5W9Tu481TPfECuqdYy3Aj7guvsELDid6lk
 S4flM5DigBEXHkcjFahQkcyDySvO7BdTmwp+DKYRrki3gSZZQ3uFwIgzxvBPzvTh/6B/3EyUL
 KuvRadZ+eGWwT3zqP5lghDBd/0hNjJWu3Dym84/ZNa1mWXg3ZBoIuiunyObA8D/tjlX+M8e9j
 v7VMQbQYThqqPwpL5hGFd7k6qckqq1nCoPtF/g7+XM4M1FHmsc5PfOTw9DMsOx+o/pxiLUFO/
 zqS8r0TIJhJuFdDqm5rDh9JQGZjITKlsquGA2o9QPJC5gdrtVcxvuF574D8mcm7SVSiHUlinY
 vnKXdrPqTei8O5fvjqM9EPpse8Z9Q==
Subject: [oss-security] CVE-2021-3609: Race condition in net/can/bcm.c leads to local
 privilege escalation

--rekceb-1912f611-e16c-4b85-8184-cfdc1056e173
Content-Type: text/plain; charset=UTF-8

Hello,

this is an announcement for the recently reported bug (CVE-2021-3609)
in the CAN BCM networking protocol in the Linux kernel ranging from
version 2.6.25 to mainline 5.13-rc6.
The vulnerability is a race condition in net/can/bcm.c allowing for local
privilege escalation to root. The issue was initially reported by syzbot and
proven to be exploitable by Norbert Slusarek.

The CAN BCM networking protocol allows to register a CAN message receiver for a
specified socket. The function bcm_rx_handler() is run for incoming CAN messages.
Simultaneously to running this function, the socket can be closed and
bcm_release() will be called. Inside bcm_release(), struct bcm_op and
struct bcm_sock are freed while bcm_rx_handler() is still running,
finally leading to multiple use-after-free's.

Reproduction
------------

- setup unprivileged user namespace
- setup vcan network interface
- open two CAN BCM sockets and connect each to the interface
- call sendmsg() on socket 1 with RX_SETUP to setup CAN receiver
- call sendmsg() on socket 2 to send message to socket 1

Here comes the race condition:

- bcm_rx_handler() is run automatically for socket 1 to receive the message
- call close() -> bcm_release() on socket 1 to free struct bcm_op and struct bcm_sock

=> bcm_rx_handler() is still running and will access struct bcm_op and struct
   bcm_sock which were previously freed

Exploitation
------------

My exploitation attempt concentrates on kernels with version >= 5.4-rc1
since commit bf74aa86e111 ("can: bcm: switch timer to HRTIMER_MODE_SOFT and
remove hrtimer_tasklet"). I didn't investigate into exploiting kernels older
than 5.4-rc1 which used tasklets, nevertheless exploitation on older kernels
looks feasible as well. My specific exploitation approach was adjusted to work
with Ubuntu 20.04.02 LTS but other known distributions could also be targeted.

More exploitation details can be found at

https://github.com/nrb547/kernel-exploitation/blob/main/cve-2021-3609/cve-2021-3609.md

or in the attachments (plain text and attached image).

Regards,
Norbert Slusarek
--rekceb-1912f611-e16c-4b85-8184-cfdc1056e173
Content-Type: application/octet-stream
Content-Disposition: attachment; filename=cve-2021-3609-exploitation
Content-Transfer-Encoding: quoted-printable

CVE-2021-3609: CAN BCM local privilege escalation=0A=
--------------------------------------------------=0A=
=0A=
This article is about a vulnerability in the Linux kernel labeled CVE-2021-=
3609. The issue=0A=
was initially reported by syzbot. The vulnerable part of the kernel was the=
 CAN BCM networking=0A=
protocol in the CAN networking subsystem ranging from kernel version 2.6.25=
 to 5.13-rc6.=0A=
In the following, I am going to cover the vulnerability and my exploitation=
 approach for=0A=
kernel version >=3D 5.4 which led to successful local privilege escalation =
to root.=0A=
=0A=
Vulnerability=0A=
-------------=0A=
=0A=
The vulnerability is a race condition which lets us free struct bcm_op and =
struct bcm_sock=0A=
in bcm_release() while still being used in bcm_rx_handler().=0A=
=0A=
struct bcm_op is a structure which can be allocated by sending a message on=
 a CAN BCM socket with=0A=
the opcode RX_SETUP. It is used to setup either specific transmission or re=
ception of CAN messages.=0A=
In this particular case, we allocate an operation in bcm_rx_setup() to rece=
ive messages.=0A=
=0A=
static int bcm_rx_setup(struct bcm_msg_head *msg_head, struct msghdr *msg,=
=0A=
                        int ifindex, struct sock *sk)=0A=
{=0A=
	...=0A=
=0A=
        /* check the given can_id */=0A=
        op =3D bcm_find_op(&bo->rx_ops, msg_head, ifindex);=0A=
        if (op) {=0A=
                /* update existing BCM operation */=0A=
=0A=
		... update struct members of op ...=0A=
=0A=
                /* Only an update -> do not call can_rx_register() */=0A=
                do_rx_register =3D 0;=0A=
=0A=
        } else {=0A=
                /* insert new BCM operation for the given can_id */=0A=
                op =3D kzalloc(OPSIZ, GFP_KERNEL);=0A=
=0A=
		... initialization of op ...=0A=
=0A=
		do_rx_register =3D 1;						[1]=0A=
=0A=
	}=0A=
=0A=
	...=0A=
=0A=
        /* now we can register for can_ids, if we added a new bcm_op */=0A=
        if (do_rx_register) {=0A=
                if (ifindex) {=0A=
                        struct net_device *dev;=0A=
=0A=
                        dev =3D dev_get_by_index(sock_net(sk), ifindex);=0A=
                        if (dev) {=0A=
                                err =3D can_rx_register(sock_net(sk), dev,	=
[2]=0A=
                                                      op->can_id,=0A=
                                                      REGMASK(op->can_id),=
=0A=
                                                      bcm_rx_handler, op,=
=0A=
                                                      "bcm", sk);=0A=
=0A=
                                op->rx_reg_dev =3D dev;=0A=
                                dev_put(dev);=0A=
                        }=0A=
	...=0A=
}=0A=
=0A=
The excerpt above makes it clear that we have to specifically allocate a ne=
w struct bcm_op [1] in=0A=
order to register a new CAN receiver. At [2], we register such for our user=
-controlled network=0A=
interface specified with ifindex. Notice that bcm_rx_handler is passed as a=
n argument which means=0A=
that this function will be called on message receival.=0A=
=0A=
Now we have to send a CAN message from another CAN BCM socket which will be=
 broadcasted to all=0A=
sockets on this network interface. In total, we have one socket for recepti=
on (this is the one we are=0A=
going to exploit) and another one for transmission. Because we registered t=
he first socket with=0A=
RX_SETUP, we can receive the incoming message.=0A=
Interestingly enough, TX_SETUP for our sending socket is not required as we=
 already specify the=0A=
network interface in connect().=0A=
=0A=
At this point, we have a message incoming so bcm_rx_handler() is called. At=
 the same time, we=0A=
close the socket and bcm_release() is run in parallel to our receive handle=
r.=0A=
=0A=
static int bcm_release(struct socket *sock)=0A=
{=0A=
	...=0A=
=0A=
        /* remove bcm_ops, timer, rx_unregister(), etc. */=0A=
=0A=
        unregister_netdevice_notifier(&bo->notifier);=0A=
=0A=
        lock_sock(sk);							[1]=0A=
=0A=
        list_for_each_entry_safe(op, next, &bo->tx_ops, list)=0A=
                bcm_remove_op(op);=0A=
=0A=
        list_for_each_entry_safe(op, next, &bo->rx_ops, list) {=0A=
                /*=0A=
                 * Don't care if we're bound or not (due to netdev problems=
)=0A=
                 * can_rx_unregister() is always a save thing to do here.=
=0A=
                 */=0A=
                if (op->ifindex) {=0A=
                        /*=0A=
                         * Only remove subscriptions that had not=0A=
                         * been removed due to NETDEV_UNREGISTER=0A=
                         * in bcm_notifier()=0A=
                         */=0A=
                        if (op->rx_reg_dev) {=0A=
                                struct net_device *dev;=0A=
=0A=
                                dev =3D dev_get_by_index(net, op->ifindex);=
=0A=
                                if (dev) {=0A=
                                        bcm_rx_unreg(dev, op);=0A=
                                        dev_put(dev);=0A=
                                }=0A=
                        }=0A=
                }=0A=
	...=0A=
=0A=
                bcm_remove_op(op);					[2]=0A=
        }=0A=
=0A=
	...=0A=
=0A=
        sock_orphan(sk);=0A=
        sock->sk =3D NULL;=0A=
=0A=
        release_sock(sk);=0A=
        sock_put(sk);							[3]=0A=
=0A=
	return 0;=0A=
}=0A=
=0A=
In bcm_release(), we take the lock [1]. One might ask themselves, why do we=
 have a race condition if=0A=
we take a lock before accessing the socket? It's because there is no simila=
r locking in=0A=
bcm_rx_handler() which would effectively hang bcm_release() to wait for bcm=
_rx_handler() to finish its work.=0A=
Although, the patch for this bug does not take a lock in bcm_rx_handler().=
=0A=
Instead, we are under a so-called RCU read lock which is invoked in CAN rec=
eiver code before=0A=
bcm_rx_handler(). For this reason, the patch adds a call to synchronize_rcu=
() right before [2]=0A=
in order to wait for all RCU dependent operations to finish before complete=
ly closing the socket.=0A=
I won't go into detail about how RCU works, but I'm leaving you a link at t=
he bottom of this article.=0A=
=0A=
Because there was no synchronizing feature prior the patch, we simply free =
struct bcm_op at [2] and=0A=
decrease the refcount of the socket. Finally, struct bcm_sock will also be =
freed because refcount=0A=
will reach 0.=0A=
=0A=
Exploitation=0A=
------------=0A=
=0A=
So now we are still in bcm_rx_handler(), but how do we want to exploit this=
? After many trials, I've=0A=
found it particularly hard to exploit any of the use-after-free's within bc=
m_rx_handler(). This is=0A=
due to bcm_rx_handler() executing fast which means that it's tricky to over=
write struct bcm_op with=0A=
heap spraying. In contrast to my previous CAN ISOTP exploit, it looks to me=
 that there is no good=0A=
opportunity to halt execution within bcm_rx_handler() and make it more reli=
able.=0A=
Instead, I focus on another approach which I will explain in the following.=
=0A=
=0A=
This particular code in bcm_rx_setup() turned out to be useful:=0A=
=0A=
if (op->flags & SETTIMER) {=0A=
=0A=
	/* set timer value */=0A=
	op->ival1 =3D msg_head->ival1;=0A=
	op->ival2 =3D msg_head->ival2;=0A=
	op->kt_ival1 =3D bcm_timeval_to_ktime(msg_head->ival1);=0A=
	op->kt_ival2 =3D bcm_timeval_to_ktime(msg_head->ival2);=0A=
	...=0A=
}=0A=
=0A=
When we allocate a new struct bcm_op, we can specify the flag SETTIMER and =
setup a timer. If the=0A=
timer is started, bcm_rx_timeout_handler() will be called once the user-con=
trolled time value=0A=
op->kt_ival1 has passed.=0A=
=0A=
At the end of bcm_rx_handler(), we have a call to bcm_rx_starttimer() which=
 will start this timer.=0A=
=0A=
/*=0A=
 * bcm_rx_starttimer - enable timeout monitoring for CAN frame reception=0A=
 */=0A=
static void bcm_rx_starttimer(struct bcm_op *op)=0A=
{=0A=
        if (op->flags & RX_NO_AUTOTIMER)=0A=
                return;=0A=
=0A=
        if (op->kt_ival1)							[1]=0A=
                hrtimer_start(&op->timer, op->kt_ival1, HRTIMER_MODE_REL_SO=
FT);=0A=
}=0A=
=0A=
If we set a timer in bcm_rx_setup(), it will be started and run for op->kt_=
ival1 which is=0A=
controlled by the user.=0A=
In my case, I have set the timer to expire after one second, so bcm_rx_time=
out_handler() will be=0A=
called one second after hrtimer_start() in bcm_rx_starttimer().=0A=
This allowed me to have a sufficient time frame of one second in which I ca=
n perform a=0A=
reliable heap spray.=0A=
=0A=
For the heap spray, I use the already known technique with setxattr() and u=
serfaultfd() which was=0A=
described well by Vitaly Nikolenko. You can find a link to his article at t=
he bottom.=0A=
=0A=
I didn't want to heap spray struct bcm_op because it is heavily used in bcm=
_rx_handler() where a=0A=
reliable heap spray is hard. Instead, I hope that during the time span of r=
unning bcm_rx_handler()=0A=
the freed struct bcm_op won't be overwritten until I start the timer in bcm=
_rx_starttimer().=0A=
This approach sort of works because bcm_rx_handler() runs fast so there is =
not much time in which=0A=
the freed struct bcm_op could be overwritten.=0A=
=0A=
Back to bcm_rx_timeout_handler(), struct bcm_sock has a few function pointe=
rs which I could=0A=
overwrite with my heap spray. I decided to use the sk_data_ready() pointer =
which is called in the=0A=
following call path:=0A=
=0A=
bcm_rx_timeout_handler() -> bcm_send_to_user() -> sock_queue_rcv_skb() -> _=
_sock_queue_rcv_skb() ->=0A=
sk->sk_data_ready(sk)=0A=
=0A=
At this point, the sk->sk_data_ready(sk) pointer will be called and we end =
up with arbitrary kernel=0A=
execution. Because the function is called with the parameter sk (struct soc=
k *),=0A=
the address of our heap sprayed socket will be stored in the RDI register.=
=0A=
This allows me to perform a stack pivot to the beginning of the socket stru=
cture and start=0A=
executing ROP gadgets.=0A=
=0A=
struct bcm_sock is 872 bytes big on my system which means that it is alloca=
ted in the generic=0A=
kmalloc-1024 SLAB cache. Because struct bcm_sock does not fill all 1024 byt=
es, I have 152 unused=0A=
bytes (1024 - 872) which I can use to construct a ROP chain.=0A=
=0A=
[The attached image is useful here]=0A=
=0A=
The extended ROP chain will overwrite a kernel address where modprobe_path =
is stored. I've already=0A=
used this technique in my CAN ISOTP exploit (article available on my github=
) and it's explained well=0A=
by lkmidas in his article. Check it out in the link at the bottom.=0A=
=0A=
One problem I've stumbled upon during exploitation was that I couldn't jump=
 to do_task_dead() to=0A=
halt my hijacked kernel thread. Shortly after, I noticed what the issue was=
:=0A=
bcm_rx_timeout_handler() is executed by task swapper with PID 0.=0A=
I obviously can't kill task with PID 0, so I had to figure out another way =
to fixate the system=0A=
after executing the ROP chain. Looking at the kernel panic logs which revea=
l registers, I noticed=0A=
that the register RBP stored an address similar to RSP.=0A=
Notice that I had to change RSP by performing a stack pivot to abandon the =
actual kernel stack for my=0A=
own malicious one.=0A=
The RBP register wasn't touched during execution of the ROP gadgets, so I c=
ould use it to move back=0A=
to the old kernel stack. Even if RBP would change during the ROP execution,=
 I could save the=0A=
contents of RBP to another register and restore the kernel stack from this =
register instead.=0A=
=0A=
So after executing ROP gadgets, I can basically reverse the stack pivot by =
moving RBP into RSP,=0A=
then I pop one element off the stack and return back to __sock_queue_rcv_sk=
b(). I also set RAX to 0=0A=
for a clean return without errors.=0A=
=0A=
*rop++ =3D 0xffffffff81087bc3 + kaslr_offset; /* xor rax, rax ; ret */ /* r=
eturn value */=0A=
*rop++ =3D 0xffffffff81087b0c + kaslr_offset; /* mov rsp, rbp ; pop rbp ; r=
et */=0A=
=0A=
Finally, all is left is to execute /tmp/dummy which in turn runs /tmp/x wit=
h root privileges=0A=
and the unprivileged user is added to /etc/sudoers without password.=0A=
Local privilege escalation is done.=0A=
=0A=
Getting the KASLR offset=0A=
------------------------=0A=
=0A=
In case we run on a system with KASLR enabled, we need to know the KASLR of=
fset in order to return=0A=
to valid kernel addresses in the ROP chain. On Ubuntu 20.04.02 LTS, I was a=
ble to retrieve a kernel=0A=
text address from a warning in dmesg.=0A=
If the target machine is 32-bit and KASLR is enabled, you could try CVE-202=
1-34693 which is an=0A=
infoleak of 4 bytes in struct bcm_msg_head. You can find a link to the PoC =
at the bottom.=0A=
=0A=
Combining everything together=0A=
-----------------------------=0A=
=0A=
At this place, I covered all the steps which now have to be combined. The f=
ollowing sequence is used=0A=
in my exploit:=0A=
=0A=
- retrieve kernel text address for KASLR offset in dmesg=0A=
	- on 32-bit systems CVE-2021-34693 can be used=0A=
- setup user namespace=0A=
- setup vcan network interface=0A=
- open two CAN BCM sockets and connect each to the interface=0A=
- call sendmsg() on socket 1 with RX_SETUP, flag SETTIMER and time interval=
 of one second=0A=
  to allocate struct bcm_op=0A=
- call sendmsg() on socket 2 to send message to socket 1=0A=
=0A=
At the same time:=0A=
- bcm_rx_handler() is run in a softirq=0A=
	- bcm_rx_starttimer() starts the timer=0A=
- close socket 1 -> bcm_release() -> free struct bcm_op and struct bcm_sock=
=0A=
=0A=
- heap spray struct bcm_sock with the malicious buffer=0A=
- bcm_rx_timeout_handler() is run after 1 second due to bcm_rx_starttimer()=
=0A=
- overwritten sk->sk_data_ready(sk) is executed, jump to beginning of struc=
t bcm_sock=0A=
- within struct bcm_sock, move to the end of struct bcm_sock and start exec=
uting the extended ROP=0A=
  chain=0A=
- overwrite modprobe_path and return back to __queue_sock_rcv_skb()=0A=
=0A=
- run /tmp/dummy so /tmp/x will be run by root -> unprivileged user is adde=
d to /etc/sudoers without=0A=
  password=0A=
=0A=
Notice=0A=
------=0A=
=0A=
Investigating into a syzbot report to find its root cause and prove exploit=
ability was a great=0A=
opportunity which taught me a couple of useful tricks. If you have any ques=
tions, send me an=0A=
e-mail (nslusarek@gmx.net).=0A=
=0A=
Also, I'm currently looking for job and internship opportunities in infosec=
 in Germany/Europe.=0A=
In case you are interested, please reach out to me via e-mail.=0A=
=0A=
References=0A=
----------=0A=
=0A=
https://www.kernel.org/doc/Documentation/RCU/whatisRCU.txt=0A=
https://duasynt.com/blog/linux-kernel-heap-spray=0A=
https://lkmidas.github.io/posts/20210223-linux-kernel-pwn-modprobe/=0A=
https://github.com/nrb547/kernel-exploitation/tree/main/cve-2021-34693=0A=

--rekceb-1912f611-e16c-4b85-8184-cfdc1056e173--

