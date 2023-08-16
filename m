Received: (qmail 17557 invoked by uid 550); 16 Aug 2023 16:42:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16308 invoked from network); 16 Aug 2023 16:41:43 -0000
Date: Wed, 16 Aug 2023 18:41:34 +0200
From: Solar Designer <solar@openwall.com>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: "Xen. org security team" <security@xen.org>,
	oss-security@lists.openwall.com
Message-ID: <20230816164134.GA8851@openwall.com>
References: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org> <20230808180009.GA20736@openwall.com> <240c8fa4-2872-0584-3cfd-7648ea4dc0eb@citrix.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <240c8fa4-2872-0584-3cfd-7648ea4dc0eb@citrix.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) - x86/AMD: Zenbleed

On Tue, Aug 08, 2023 at 07:18:51PM +0100, Andrew Cooper wrote:
> On 08/08/2023 7:00 pm, Solar Designer wrote:
> > +	/*
> > +	 * Microcode is the preferred mitigation, in terms of performance.
> > +	 * However, without microcode, this chickenbit (specific to the Zen2
> > +	 * uarch) disables Floating Point Mov-Elimination to mitigate the
> > +	 * issue.
> > +	 */
> > +	val &= ~chickenbit;
> > +	if (sig->rev < good_rev)
> > +		val |= chickenbit;
> >
> > This leaves me wondering: why have this line at all?  I understand Xen
> > wanting to enable the chicken bit on vulnerable CPUs, but why disable it
> > on other AMD CPUs?  If someone or something had enabled the bit, that's
> > probably intentional, and even if not it probably shouldn't be Xen's
> > business to alter CPU behavior beyond what's necessary for Xen itself to
> > work reliably and securely.
> >
> > Am I missing something?
> 
> There is an earlier exit in this function for any non-Zen2 system.
> 
> So here, we are strictly on Zen2 (all vulnerable), and either have good
> microcode or not.
> 
> The microcode fix is far more performant than the chickenbit.

Sure, but that's orthogonal to my concern, which was about areas of
responsibility and control (such as sysadmin vs. tools).

Anyway, it was pointed out to me off-list that Linux kernel does the
same thing, also explicitly disabling chickenbit when deemed safe:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=522b1d69219d8f083173819fde04f994aa051a98

+	if (!cpu_has_zenbleed_microcode()) {
+		pr_notice_once("Zenbleed: please update your microcode for the most optimal fix\n");
+		msr_set_bit(MSR_AMD64_DE_CFG, MSR_AMD64_DE_CFG_ZEN2_FP_BACKUP_FIX_BIT);
+	} else {
+		msr_clear_bit(MSR_AMD64_DE_CFG, MSR_AMD64_DE_CFG_ZEN2_FP_BACKUP_FIX_BIT);
+	}

So at least it's a consistent approach by these two projects, and a
reason for Xen to be doing it this way.

Alexander
