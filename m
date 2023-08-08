Received: (qmail 5816 invoked by uid 550); 8 Aug 2023 18:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5507 invoked from network); 8 Aug 2023 18:00:16 -0000
Date: Tue, 8 Aug 2023 20:00:09 +0200
From: Solar Designer <solar@openwall.com>
To: "Xen. org security team" <security@xen.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20230808180009.GA20736@openwall.com>
References: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1qQWG3-0005s9-Ra@xenbits.xenproject.org>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 433 v3 (CVE-2023-20593) - x86/AMD: Zenbleed

On Mon, Jul 31, 2023 at 05:00:35PM +0000, Xen. org security team wrote:
> The patch provided with earlier versions was buggy.  It unintentionally
> disable more bits than expected in the control register.  The contents of this
> register is not generally known, so the effects on the system are unknown.
> 
> A patch correcting this error has been committed and backported to all stable
> trees which got the XSA-433 fix originally.  Additionally, it is attached to
> this advisory as xsa433-bugfix.patch, and applicable to all branches in this
> form.

where xsa433-bugfix.patch includes this description:

> This line:
> 
> 	val &= ~chickenbit;
> 
> ends up truncating val to 32 bits, and turning off various errata workarounds
> in Zen2 systems.

and that patch then corrects the truncation by changing the type of the
chickenbit variable to 64-bit.  The context is:

+	/*
+	 * Microcode is the preferred mitigation, in terms of performance.
+	 * However, without microcode, this chickenbit (specific to the Zen2
+	 * uarch) disables Floating Point Mov-Elimination to mitigate the
+	 * issue.
+	 */
+	val &= ~chickenbit;
+	if (sig->rev < good_rev)
+		val |= chickenbit;

This leaves me wondering: why have this line at all?  I understand Xen
wanting to enable the chicken bit on vulnerable CPUs, but why disable it
on other AMD CPUs?  If someone or something had enabled the bit, that's
probably intentional, and even if not it probably shouldn't be Xen's
business to alter CPU behavior beyond what's necessary for Xen itself to
work reliably and securely.

Am I missing something?

Alexander
