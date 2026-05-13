Received: (qmail 1229 invoked by uid 550); 13 May 2026 17:35:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30419 invoked from network); 13 May 2026 17:35:14 -0000
Date: Wed, 13 May 2026 19:35:10 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Hyunwoo Kim <imv4bel@gmail.com>
Message-ID: <20260513173510.GA8455@openwall.com>
References: <8733zvfucm.fsf@gentoo.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8733zvfucm.fsf@gentoo.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux kernel LPE ("fragnesia", copyfail 3.0)

Hi,

Here's analysis by the Dirty Frag researcher:

On Thu, May 14, 2026 at 12:45:31AM +0900, Hyunwoo Kim wrote:
> I'm attaching my current analysis, so if anyone could post it to oss-security on my behalf, I would greatly appreciate it.
> 
> Here is the analysis:
> 
> This vulnerability is a path that was accidentally activated _after_ the introduction of f4c50a4034e6 (2026-05-05), the patch for CVE-2026-43284 in the Dirty Frag chain.
> 
> In other words, the effective vulnerability window is from f4c50a4034e6 (2026-05-05) to upstream -- approximately 9 days.
> 
> Exploitation requires the attacker to have permission to create user namespaces, unless chained with a separate vulnerability.
> 
> Another important point: the patch[1] they attached addresses the skb_try_coalesce path, but does not resolve the vulnerability because it misses other variant paths.
> 
> For now, a patch[2] that also covers the currently-analyzed __pskb_copy_fclone path has been submitted. Once the additional analysis is finalized, a v2 patch may be submitted.
> 
> At least for the time being, I recommend keeping the Dirty Frag mitigation in place:
> ```
> sh -c "printf 'install esp4 /bin/false\ninstall esp6 /bin/false\ninstall rxrpc /bin/false\n' > /etc/modprobe.d/dirtyfrag.conf; rmmod esp4 esp6 rxrpc 2>/dev/null; echo 3 > /proc/sys/vm/drop_caches; true"
> ```
> 
> [1]: https://lore.kernel.org/all/20260513041635.1289541-1-vakzz@zellic.io/
> [2]: https://lore.kernel.org/all/agRfuVOeMI5pbHhY@v4bel/
> 
> 
> Best regards,
> Hyunwoo Kim

On Wed, May 13, 2026 at 11:59:37AM +0100, Sam James wrote:
> v12-security have disclosed "Fragnesia" [0]. Quoting their disclosure:

> > The exploit builds a 256-entry lookup table mapping each possible
> > keystream byte to its corresponding nonce, then iterates over a
> > payload, firing the splice/ULP race for each byte that needs changing.
> > It writes a small position-independent ELF stub
> > (setresuid/setresgid/execve /bin/sh) over the first 192 bytes of
> > /usr/bin/su in the page cache, then calls execve("/usr/bin/su") to
> > obtain a root shell. The page cache modification is not backed to
> > disk; the on-disk binary is untouched.

> // Fragnesia: universal Linux LPE

I hear that this specific exploit spawns the root shell while in a
namespace, so you don't get real root from that shell.  However,
/usr/bin/su remains replaced in the page cache, so if you separately run
that, you do get real root.  This can be misleading at first, but the
vulnerability and the exploit are for real.

Alexander
