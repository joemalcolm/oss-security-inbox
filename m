X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Friday" "4" "September" "2020" "09:36:03" "+0200" "Solar Designer" "solar@openwall.com" "<20200904073603.GA21152@openwall.com>" "54" "Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil "9" "2020090407:36:03" "[oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" (number mark "U       solar@openwa Sep  4   54/2153  " thread-indent "\"Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability\"\n") "<CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>" ("<CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11266 invoked by uid 550); 4 Sep 2020 07:36:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10061 invoked from network); 4 Sep 2020 07:36:16 -0000
Date: Fri, 4 Sep 2020 09:36:03 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Or Cohen <orcohen@paloaltonetworks.com>,
	Nadav Markus <nmarkus@paloaltonetworks.com>,
	Eric Dumazet <edumazet@google.com>
Message-ID: <20200904073603.GA21152@openwall.com>
References: <CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM6JnLfDLbZA1Ky+UDjcA8XOrbAqazh4YQgH8Ur9pyhjBA2nQQ@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2020-14386: Linux kernel: af_packet.c vulnerability

On Thu, Sep 03, 2020 at 08:16:15PM +0300, Or Cohen wrote:
> I discovered the vulnerability while auditing the 5.7 kernel sources.
> 
> The bug occurs in tpacket_rcv function, when calculating the netoff
> variable (unsigned short), po->tp_reserve (unsigned int) is added to
> it which can overflow netoff so it gets a small value.
> 
> macoff is calculated using: "macoff = netoff - maclen", we can control
> macoff so it will receive a small value (specifically, smaller then
> sizeof(struct virtio_net_hdr)).
> 
> Later, when running the following code:
> ...
> if (do_vnet &&
>    virtio_net_hdr_from_skb(skb, h.raw + macoff -
> sizeof(struct virtio_net_hdr),
> ...
> 
> If do_vnet is set, and because macoff < sizeof(struct virtio_net_hdr)
> a pointer to a memory area before the h.raw buffer will be sent to
> virtio_net_hdr_from_skb. This can lead to an out-of-bounds write of
> 1-10 bytes, controlled by the user.
> 
> The h.raw buffer is allocated in alloc_pg_vec and it's size is
> controlled by the user.
> 
> The stack trace is as follows at the time of the crash: ( linux v5.7 )
> 
> #0  memset_erms () at arch/x86/lib/memset_64.S:66
> #1  0xffffffff831934a6 in virtio_net_hdr_from_skb

In the proposed patch you have:

Fixes: 8913336a7e8d ("packet: add PACKET_RESERVE sockopt")

That commit was in July 2008.

While this is technically correct, it can be misleading, so I am posting
the below clarification/excerpt from the discussion on linux-distros:

> On Wed, Sep 2, 2020 at 4:47 PM Eric Dumazet <edumazet@google.com> wrote:
> > At the time of commit 8913336a7e8d  virtio_net was not there yet.

On Wed, Sep 02, 2020 at 05:14:03PM +0300, Or Cohen wrote:
> This is the commit that introduced the feature and the arithmetic
> overflow exists there, which is the root cause of the bug.
> However, you are correct that it is probably not possible to trigger
> the memory corruption because virtio_net is not there.

I just looked into it some further, and it appears the bug was exposed
to the known way to trigger it with 58d19b19cd99 ("packet: vnet_hdr
support for tpacket_rcv") in February 2016, which first got into 4.6-rc1.

Alexander
