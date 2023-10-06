Received: (qmail 1714 invoked by uid 550); 6 Oct 2023 22:18:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1538 invoked from network); 6 Oct 2023 22:18:35 -0000
Date: Sat, 7 Oct 2023 00:18:24 +0200
From: Solar Designer <solar@openwall.com>
To: Daniel Weber <daniel.weber@cispa.de>
Cc: oss-security@lists.openwall.com, fabian.thomas@cispa.de,
	lukas.gerlach@cispa.de, ruiyi.zhang@cispa.de,
	Michael Schwarz <michael.schwarz@cispa.de>
Message-ID: <20231006221824.GA14376@openwall.com>
References: <0fedc6a9-9be7-56f3-2ee0-0e07875b86ba@cispa.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0fedc6a9-9be7-56f3-2ee0-0e07875b86ba@cispa.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Meltdown-US / Meltdown 3a Remaining Leakage

Hello Daniel et al.,

Thank you very much for your research and for posting about it in here!

On Fri, Oct 06, 2023 at 12:07:17PM +0200, Daniel Weber wrote:
> we analyzed the remaining leakage of the "original" Meltdown attack 
> (Meltdown-US) (1) and the variant Meltdown 3a (2). We discovered that 
> the "original" Meltdown attack can be abused to infer the cache state of 
> memory pages that remain mapped despite KPTI. This allows an attacker to 
> monitor interrupt activity.

I assume you're talking specifically about Linux's KPTI.  Let's be
naming Linux explicitly, as this list isn't only about Linux.

In Linux, /proc/interrupts is generally world-readable.  So perhaps
that's something to fix first, since yes it's known to allow for
keystroke timing attacks.  Should be fixed in the kernel or/and chmod'ed
by the userland.  And then:

> 1) Preventing the Meltdown attack from leaking information about the 
> cache state can be achieved by marking the remaining memory pages, e.g., 
> the IDT, as uncacheable. This can be achieved by using a memory-type 
> range register (MTRR) or by modifying the corresponding page-table entries.

Alexander
