Received: (qmail 23911 invoked by uid 550); 21 May 2026 18:06:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23593 invoked from network); 21 May 2026 18:06:46 -0000
Date: Thu, 21 May 2026 20:06:41 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Hyunwoo Kim <imv4bel@gmail.com>,
	Sultan Alsawaf <sultan@kerneltoast.com>
Message-ID: <20260521180641.GA29282@openwall.com>
References: <agXllSDnfFBIo7xh@eldamar.lan> <ag8-rm91DYcl7uxz@v4bel>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ag8-rm91DYcl7uxz@v4bel>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux =?utf-8?Q?kernel?=
	=?utf-8?Q?=3A_Dirty_Frag_variants_=E2=80=94?= fix merged into netdev

Hi,

On Fri, May 22, 2026 at 02:19:42AM +0900, Hyunwoo Kim wrote:
> With the help of several maintainers and developers, a v5 patch
> resolving the "publicly disclosed" Dirty Frag variants other than the
> CVE-2026-46300 (fragnesia) variant has been merged into netdev:
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=48f6a5356a33dd78e7144ae1faef95ffc990aae0
> 
> Separately, the patch resolving CVE-2026-46300 alone has been split
> into its own patch:
> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=f84eca5817390257cef78013d0112481c503b4a3

Thank you very much Hyunwoo Kim for staying on top of this and focusing
on fixing the issues.  Such a contrast from what some others are doing.

> This 48f6a5356a33 patch addresses four "publicly disclosed" variants:
> 
> 1. https://lore.kernel.org/all/agRhFtawP06hWyRa@v4bel/  (2026-05-13)
> 2. https://lore.kernel.org/all/agSx78pXBFCdn08p@v4bel/  (2026-05-13)
> 3. https://lore.kernel.org/all/agVpIsaSherjHTYg@sultan-box/  (2026-05-14)

Variant 3 above was found (and exploit generated) by Sultan Alsawaf, my
colleague at CIQ, with use of "Claude Opus 4.6 (1M context)" with "hands
tied since we didn't yet have the cybersecurity bypass." (the quotes are
in Sultan's words)

> 4. https://github.com/v12-security/pocs/tree/main/fragnesia-5db89c99566fc  (2026-05-15)
> 
> Note that the fourth PoC was confirmed to be blocked as well by the v3
> fix (skb_gro_receive) [1] that resolves the third PoC,

This matches Sultan's analysis.  It may be that the rediscovery by V12
was based on Sultan's public posting on the issue (including exploit).
I called them out on this in their Twitter thread and got no reply.

> and the v4 [2] and v5 [3] changes address potential issues.
> 
> As long as the in-place path in esp remains, further variants of this
> kind are expected to be found in the esp module. As mentioned
> previously, I recommend keeping the mitigation in place for the time
> being.

As a maybe better mitigation, can we somehow make in-place / zero-copy
runtime configurable, and not only for esp?

> This patch has been verified against various selftests and stress
> tests without issues, but it would be appreciated if distro
> maintainers could additionally test whether this patch introduces any
> regressions.
> 
> 
> Best regards,
> Hyunwoo Kim
> 
> 
> [1]: https://lore.kernel.org/all/agW4vC0r8QOUKtRT@v4bel/
> [2]: https://lore.kernel.org/all/aga1VyHpHaUhnGZa@v4bel/
> [3]: https://lore.kernel.org/all/ageeJfJHwgzmKXbh@v4bel/

Thanks again,

Alexander
