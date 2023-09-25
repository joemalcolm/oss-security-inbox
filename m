Received: (qmail 26080 invoked by uid 550); 25 Sep 2023 16:37:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25942 invoked from network); 25 Sep 2023 16:37:02 -0000
Date: Mon, 25 Sep 2023 18:36:52 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: "Xen. org security team" <security-team-members@xen.org>
Message-ID: <20230925163652.GA6750@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1qko5Z-0003cF-KD@xenbits.xenproject.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

Hi,

Thank you Xen security team for indirectly bringing the various CPU
issues in here.  This is very helpful, as your messages on them serve
two purposes at once - informing the community about issues fixed in Xen
(so directly on-topic here, with Xen being Open Source) and about the
CPU issues that typically also need to be mitigated by other projects.

On Mon, Sep 25, 2023 at 04:05:37PM +0000, Xen. org security team wrote:
>             Xen Security Advisory CVE-2023-20588 / XSA-439
> 
>              x86/AMD: Divide speculative information leak
> 
> ISSUE DESCRIPTION
> =================
> 
> In the Zen1 microarchitecure, there is one divider in the pipeline which
> services uops from both threads.  In the case of #DE, the latched result
> from the previous DIV to execute will be forwarded speculatively.
> 
> This is a covert channel that allows two threads to communicate without
> any system calls.  In also allows userspace to obtain the result of the
> most recent DIV instruction executed (even speculatively) in the core,
> which can be from a higher privilege context.
> 
> For more information, see:
>  * https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7008.html

The above link is wrong - it's for CVE-2023-20593 Zenbleed in Zen2.

The correct link for CVE-2023-20588, the DIV bug in Zen1, appears to be:

https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7007.html

While I am at it, here's the corresponding mitigation in Linux kernel:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=77245f1c3c6495521f6a3af082696ee2f8ce3921

> author	Borislav Petkov (AMD) <bp@alien8.de>	2023-08-05 00:06:43 +0200
> committer	Linus Torvalds <torvalds@linux-foundation.org>	2023-08-09 07:55:00 -0700
> 
> x86/CPU/AMD: Do not leak quotient data after a division by 0
> 
> Under certain circumstances, an integer division by 0 which faults, can
> leave stale quotient data from a previous division operation on Zen1
> microarchitectures.
> 
> Do a dummy division 0/1 before returning from the #DE exception handler
> in order to avoid any leaks of potentially sensitive data.
> 
> Signed-off-by: Borislav Petkov (AMD) <bp@alien8.de>
> Cc: <stable@kernel.org>
> Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Alexander
