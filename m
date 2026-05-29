Received: (qmail 9421 invoked by uid 550); 29 May 2026 06:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9237 invoked from network); 29 May 2026 06:57:24 -0000
Date: Fri, 29 May 2026 08:57:13 +0200
From: Solar Designer <solar@openwall.com>
To: =?utf-8?B?UHLDqW5vbT8=?= Ahmed <ahmedabdelmoumen05@gmail.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20260529065713.GA12793@openwall.com>
References: <CAN+TWHTGkGZu4vdbkMY8F-EDe3m8ScBctW-fdtfcpGbj192SyA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAN+TWHTGkGZu4vdbkMY8F-EDe3m8ScBctW-fdtfcpGbj192SyA@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux: DMA-after-unmap race in ZCRX via netif_rxq_cleanup_unlease() ordering inversion (netkit + page_pool)

Hi Ahmed,

Your message was CC'ed to oss-security and Linux kernel lists.  Please
don't ever do that, it is explicitly against our content guidelines:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security). If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings. You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

Luckily, this problem isn't happening in this case yet, but it may.

I've removed the CC's now, and ask anyone else replying to do the same.

I actually think your report should have been sent to the subsystem
maintainers and Linux kernel lists only.  Not to the kernel security
team because you're making this public right away anyway, the issue
doesn't appear to be severe, and they are flooded with reports already.
Not to oss-security because the issue does not stand out from the
hundreds of other kernel bugs/CVEs.

We do want to handle some Linux kernel issues specially, such as the
recent series of page cache corruption bugs that were commonly exposed
on distros and provably allowed for reliable local root exploits.  But
with so many kernel issues, these are exceptions and not the rule.

Another detail (actually pointed out to me off-list in response to your
posting) is that if you only confirmed an issue against an -rc kernel,
like you wrote here, then it may not be oss-security material unless it
also applies to released kernel versions.  I don't see you mention the
oldest affected kernel version (but I do suspect the issue existed for a
few kernel releases).

On Wed, May 27, 2026 at 11:53:45PM +0100, Prénom? Ahmed wrote:
> The bug is reachable with `CAP_NET_ADMIN` (common in container
> environments) when using netkit with ZCRX.

>    - *Potential:* NIC DMA write to physical address 0 (or stale mappings
>    with lazy IOMMU) leading to memory corruption.
>    - *Requirements:* CAP_NET_ADMIN + netkit queue leasing + ZCRX installed
>    on the leased queue.
>    - *Current Status:* No runtime PoC or crash reproduction yet. The race
>    window exists in theory but its practical exploitability needs confirmation.

The previous time a ZCRX issue was brought in here (also AI-generated
and overstated):

https://www.openwall.com/lists/oss-security/2026/05/03/7

Brad Spengler pointed out this:

https://x.com/spendergrsec/status/2051323307564167621

"the io_register_zcrx_ifq() case does a CAP_NET_ADMIN test against
the init namespace, so wouldn't be reachable by unpriv userns"

I don't see io_register_zcrx_ifq() in latest mainline, but there is:

int io_register_zcrx(struct io_ring_ctx *ctx,
                     struct io_uring_zcrx_ifq_reg __user *arg)
{
	struct io_uring_zcrx_area_reg area;
	struct io_uring_zcrx_ifq_reg reg;
	struct io_uring_region_desc rd;
	struct io_zcrx_ifq *ifq;
	int ret;
	u32 id;

	/*
	 * 1. Interface queue allocation.
	 * 2. It can observe data destined for sockets of other tasks.
	 */
	if (!capable(CAP_NET_ADMIN))
		return -EPERM;

Ahmed, does this apply to (non-)exposure of your finding?  That it is
limited to tasks with CAP_NET_ADMIN on host (not in a container), which
means the host root user and (it's a stretch) tasks that have or retain
this capability without full root access (I'm not aware of any).  Pretty
much not a security issue, then?

> Proposed Fix[image: image.png]

Patch as picture?  This could as well be a rickroll.

> I am happy to provide more details or assist with testing.

Ahmed offered this additional detail off-list with permission to post it:

On Fri, May 29, 2026 at 02:21:19AM +0100, Prénom? Ahmed wrote:
> Actually the bug is straightforward! DMA is unmapped while NAPI is still
> running on another CPU. If NAPI touches a descriptor after the unmap, it
> writes to address 0. Worst case that is physical memory corruption and a
> local privilege escalation.
> 
> I traced the teardown path via ftrace/kprobes and confirmed the race window
> opens. I did not win the race no because ut depends on hardware and time
> but the ordering inversion is runtime-confirmed, not just a source-level
> observation.
> 
> Jakub has already reviewed it and proposed a fix. Happy to answer any
> technical questions.

I'm not getting deep into this specific issue.  My role here is to
ensure that on oss-security we get precisely what's worthy of being in
here, and not arbitrary 1% of Linux kernel maybe-security-or-not bugs.
I'd appreciate your assistance with that going forward.

Thanks,

Alexander
