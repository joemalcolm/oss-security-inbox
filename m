X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2402" "Saturday" "19" "June" "2021" "13:23:24" "-0300" "Thadeu Lima de Souza Cascardo" "cascardo@canonical.com" nil "60" "[oss-security] Re: CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation" nil nil nil "6" nil nil (number mark "U       cascardo@can Jun 19   60/2402  " thread-indent "\"[oss-security] Re: CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-3609: Race condition in net/can/bcm.c leads to local privilege escalation" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30320 invoked by uid 550); 19 Jun 2021 21:37:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28293 invoked from network); 19 Jun 2021 16:23:41 -0000
Date: Sat, 19 Jun 2021 13:23:24 -0300
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: oss-security@lists.openwall.com
Cc: Oliver Hartkopp <socketcan@hartkopp.net>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Norbert Slusarek <nslusarek@gmx.net>
Message-ID: <YM4Z/IKm2cxFrB8D@mussarela>
References: <trinity-2ae31df0-82cc-4381-9124-4b24e0bdeb45-1624113653558@3c-app-gmx-bs01>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <trinity-2ae31df0-82cc-4381-9124-4b24e0bdeb45-1624113653558@3c-app-gmx-bs01>
Subject: [oss-security] Re: CVE-2021-3609: Race condition in net/can/bcm.c leads to local
 privilege escalation

On Sat, Jun 19, 2021 at 04:40:53PM +0200, Norbert Slusarek wrote:
> Hello,
> 
> this is an announcement for the recently reported bug (CVE-2021-3609)
> in the CAN BCM networking protocol in the Linux kernel ranging from
> version 2.6.25 to mainline 5.13-rc6.
> The vulnerability is a race condition in net/can/bcm.c allowing for local
> privilege escalation to root. The issue was initially reported by syzbot and
> proven to be exploitable by Norbert Slusarek.
> 
> The CAN BCM networking protocol allows to register a CAN message receiver for a
> specified socket. The function bcm_rx_handler() is run for incoming CAN messages.
> Simultaneously to running this function, the socket can be closed and
> bcm_release() will be called. Inside bcm_release(), struct bcm_op and
> struct bcm_sock are freed while bcm_rx_handler() is still running,
> finally leading to multiple use-after-free's.
> 
> Reproduction
> ------------
> 
> - setup unprivileged user namespace
> - setup vcan network interface
> - open two CAN BCM sockets and connect each to the interface
> - call sendmsg() on socket 1 with RX_SETUP to setup CAN receiver
> - call sendmsg() on socket 2 to send message to socket 1
> 
> Here comes the race condition:
> 
> - bcm_rx_handler() is run automatically for socket 1 to receive the message
> - call close() -> bcm_release() on socket 1 to free struct bcm_op and struct bcm_sock
> 
> => bcm_rx_handler() is still running and will access struct bcm_op and struct
>    bcm_sock which were previously freed
> 
> Exploitation
> ------------
> 
> My exploitation attempt concentrates on kernels with version >= 5.4-rc1
> since commit bf74aa86e111 ("can: bcm: switch timer to HRTIMER_MODE_SOFT and
> remove hrtimer_tasklet"). I didn't investigate into exploiting kernels older
> than 5.4-rc1 which used tasklets, nevertheless exploitation on older kernels
> looks feasible as well. My specific exploitation approach was adjusted to work
> with Ubuntu 20.04.02 LTS but other known distributions could also be targeted.
> 
> More exploitation details can be found at
> 
> https://github.com/nrb547/kernel-exploitation/blob/main/cve-2021-3609/cve-2021-3609.md
> 
> or in the attachments (plain text and attached image).
> 
> Regards,
> Norbert Slusarek


And here is the proposed fix:

https://lore.kernel.org/netdev/20210619161813.2098382-1-cascardo@canonical.com/T/#u

Regards.
Thadeu Cascardo.
