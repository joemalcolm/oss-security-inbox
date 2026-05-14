Received: (qmail 3479 invoked by uid 550); 14 May 2026 03:26:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3460 invoked from network); 14 May 2026 03:26:06 -0000
Date: Wed, 13 May 2026 23:25:57 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <agVAxc-23YmNDzN8@netmeister.org>
References: <8733zvfucm.fsf@gentoo.org>
 <20260513173510.GA8455@openwall.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260513173510.GA8455@openwall.com>
Subject: Re: [oss-security] Linux kernel LPE ("fragnesia", copyfail 3.0)

Solar Designer <solar@openwall.com> wrote:

> On Thu, May 14, 2026 at 12:45:31AM +0900, Hyunwoo Kim wrote:

> > This vulnerability is a path that was accidentally activated _after_ the introduction of f4c50a4034e6 (2026-05-05), the patch for CVE-2026-43284 in the Dirty Frag chain.
> > 
> > In other words, the effective vulnerability window is from f4c50a4034e6 (2026-05-05) to upstream -- approximately 9 days.

https://github.com/v12-security/pocs/tree/main/fragnesia
claims "All versions affected by dirtyfrag are
affected." and simultaneously "Any versions without
this patch:
https://lists.openwall.net/netdev/2026/05/13/79, so
Linux kernels before May 13 2026."

This reads to me as different from Hyunwoo's analysis.

Is there consensus on which is correct?


> On Wed, May 13, 2026 at 11:59:37AM +0100, Sam James wrote:
> > v12-security have disclosed "Fragnesia" [0]. Quoting their disclosure:

Am I correct in my understanding that this
"disclosure" was done solely by dropping the code on
GitHub, with no advance notification to the Linux
kernel or distros?  Does that seem reasonable because
it's adjacent to the vulnerability whose coattails it
rides?

I understand that the realistic utility of embargoes
is currently shrinking dramatically, but this "drop it
while it's hot" approach to seemingly promote yet
another AI vulnerability discovery service is a trend
I can't abide.

-Jan
