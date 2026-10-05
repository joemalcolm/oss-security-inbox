X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/2
Message-ID: <398eff63-9d36-4e1a-a5c4-71b508183caf@gmail.com>
Date: Sun, 4 Oct 2026 20:03:13 -0400
From: Demi Marie Obenour <demiobenour@...il.com>
To: oss-security@...ts.openwall.com, Jan Schaumann <jschauma@...meister.org>
Subject: Re: cloud computing provider disclosures
Content-Type: text/plain; charset=utf-8

On 10/4/26 18:56, Jan Schaumann wrote:
> Hello,
> 
> I was wondering whether it might make sense to
> establish a disclosure list for cloud computing /
> virtual private server hosting providers.
> 
> The reason that I think this might make sense is that
> not every cloud computing provider necessarily offers
> their own OS / Linux distribution, and thus may not be
> qualified for membership on distros@.
> 
> At the same time there are vulnerabilities that
> directly and significantly impact cloud computing
> providers such that the internet would benefit from
> them being able to mitigate prior to disclosure on
> e.g., oss-security@.
> 
> An obvious example might be disclosure of VM escapes,
> which disproportionally impacts such service
> providers.
> 
> Another option might be to grant cloud computing
> providers membership on distros@ even if they do not
> offer their own custom Linux distribution.
> 
> What do people think?
> 
> -Jan

- Xen Project already has its own predisclosure list.
- KVM (sadly) falls under the Linux kernel security process.
- Cloud Hypervisor and QEMU have their own processes.
- Not sure about Firecracker.

Not sure if a centralized one makes sense, unless there
are individual components used by many providers that
don't fall into one of the above categories.
-- 
Sincerely,
Demi Marie Obenour (she/her/hers)


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (834 bytes)
