Received: (qmail 3876 invoked by uid 550); 6 Sep 2024 11:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24536 invoked from network); 6 Sep 2024 10:30:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ellerman.id.au;
	s=201909; t=1725618601;
	bh=C+7VKlBLUM+gRO+v7q/DNa240NdaVdhGABTToZbBcJU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=QtbQzhfdU9KrOkcN98cSlcIJQfPgPXyEPQ5R31cuNvxQX5Cowen108ylCMHKzzzD2
	 R1ChFXF5cJghBNCtJMq6c4AkOIO1oQXYCvfKnyT45ZxEe9mteF4mUe4fyrrzC7iF7t
	 4T1sRJHlCiwWkLOM6OmMINKchQnFOhgSe4IOKR/HcWrilvcpGklvZtAXEAk+qMEo/W
	 teZG8oLkZb+z82p3cehLGbFXCcLFLAqhC+/c8N4ObzBvWaxpbvdpyJqdh3ZnZRpn8O
	 Fjk1ehBx18I/9cJ4y82g6rW90ug3yBzlDyUamMtKkiPX8S4NRD0aqGIHWJjNN+m+6T
	 iyHNSo0bF4y6w==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com
Cc: 2639161967 <2639161967@qq.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Nicholas Piggin <npiggin@gmail.com>,
 linuxppc-dev@lists.ozlabs.org
In-Reply-To: <20240902133435.GA29502@openwall.com>
References: <tencent_BB0764F9635412BA90A36B3B19EDEEF09905@qq.com>
 <20240902133435.GA29502@openwall.com>
Date: Fri, 06 Sep 2024 20:29:59 +1000
Message-ID: <87wmjp3wig.fsf@mail.lhotse>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Linux kernel: memory leak in
 arch/powerpc/platforms/powernv/opal-irqchip.c: opal_event_init()

Solar Designer <solar@openwall.com> writes:
> Hi,
>
> This bug report is misaddressed.  Per upstream's preference and common
> sense (given how many issue reports there are against the Linux kernel),
> most Linux kernel (maybe-)issues should first be reported to Linux
> kernel maintainers/lists or (if you're reasonably sure of significant
> security relevance) to the Linux kernel security team, and only then (if
> relevant) maybe also to general security lists.  Occasional exceptions
> exist, such as for publicly exploited issues, but if you're new to this
> chances are that you should play by the rules, not claim an exception.

This was also reported to security@kernel.org, and I replied saying
there was no real security impact and that it should be reported to
linuxppc-dev@lists.ozlabs.org.

> On Mon, Sep 02, 2024 at 09:54:52AM +0800, 2639161967 wrote:
>> in the newest linux release version, in&nbsp;/arch/powerpc/platforms/powernv/opal-irqchip.c&nbsp;file , the&nbsp;
>> opal_event_init function, the variable "name"defined in line 270, and is alloced memory in line 274 or 276, but not free, cause many times memory leak, and most old release versions have the problem.
>
> The code in question is:
>
> int __init opal_event_init(void)
> {
> [...]
> 	/* Install interrupt handlers */
> 	for (i = 0; i < opal_irq_count; i++) {
> 		struct resource *r = &opal_irqs[i];
> 		const char *name;
>
> 		/* Prefix name */
> 		if (r->name && strlen(r->name))
> 			name = kasprintf(GFP_KERNEL, "opal-%s", r->name);
> 		else
> 			name = kasprintf(GFP_KERNEL, "opal");
>
> 		if (!name)
> 			continue;
> 		/* Install interrupt handler */
> 		rc = request_irq(r->start, opal_interrupt, r->flags & IRQD_TRIGGER_MASK,
> 				 name, NULL);
> 		if (rc) {
> 			pr_warn("Error %d requesting OPAL irq %d\n", rc, (int)r->start);
> 			continue;
> 		}
> 	}
...
>
> I'm CC'ing this to some maintainers in case they want to add to the "if
> (rc) {" block, if only to silence static analysis tools, but other than
> that I see nothing to do on this report.

If the request_irq() fails it's either some sort of firmware
misconfiguration, or ENOMEM, both which are possibly fatal to the
machine.

But still, it would be reasonable to kfree() name in the error path, as
you say if only to keep the static analysis clean.

Thanks for looking at it and sorry for the noise on your lists.

cheers
