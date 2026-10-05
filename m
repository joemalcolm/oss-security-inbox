X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/05/14
Message-ID: <asOd-W8IsF9rt9Vt@netmeister.org>
Date: Mon, 5 Oct 2026 08:54:17 -0400
From: Jan Schaumann <jschauma@...meister.org>
To: oss-security@...ts.openwall.com
Subject: Re: cloud computing provider disclosures
Content-Type: text/plain; charset=utf-8

Demi Marie Obenour <demiobenour@...il.com> wrote:
> On 10/4/26 18:56, Jan Schaumann wrote:

> > I was wondering whether it might make sense to
> > establish a disclosure list for cloud computing /
> > virtual private server hosting providers.

> - Xen Project already has its own predisclosure list.
> - KVM (sadly) falls under the Linux kernel security process.
> - Cloud Hypervisor and QEMU have their own processes.
> - Not sure about Firecracker.

I think this somewhat helps make my point: cloud
compute providers may use several of those, but not
consistently (or at all) receive advanced
notifications.

Centralizing this (with, agreed, some definitions of
who qualifies to be determined) would also make it
easier for researchers to responsibly disclose.

The linux kernel disclosure path is currently rather
suboptimal, with urgent and actionable vulnerabilities
easily getting buried under hundreds of non-actionable
or non-urgent fixes.


Having said that, while I'm sympathetic to Aaron's
points (minimize likelihood of possible leaks;
providers ought to be able to act quickly), having
even a few days to get your ducks in a row before
the hype circus kicks off of some social media and
company blog post would indeed be nice.

-Jan
