X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/16
Message-Id: <846B73EA-85C4-4C0B-AA35-FCE2B7EA8409@dwheeler.com>
Date: Wed, 22 Jul 2026 15:11:59 -0400
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: oss-security@...ts.openwall.com
Subject: Re: 432 Linux kernel CVEs
Content-Type: text/plain; charset=utf-8

First, a caveat: I work for the Linux Foundation, but I am *not* involved
in Linux kernel CVE assignments. So I'm speaking *ONLY* for myself.

> Steffen Nurpmeso <steffen@...oden.eu> quotes:
> 
> |As observed on social media[1], the Linux kernel
> |published 432 CVEs between 2026-07-19T09:09 and
> |2026-07-20T16:27 (in addition to the >40 other CVEs
> |already published this month alone):

Yes. That's expected. As noted earlier, the Linux kernel is used in everything
from supercomputers to watches to smartphones to TVs to laptops.
They don't assign CVEs to comment typos, but if they can't be certain
whether or not it's a vulnerability, they conservatively presume it is.
As they state, it's difficult to be *sure* some bugs aren't vulnerabilities when
the program is central to security & run in so many widely-different circustances.

Obviously not everyone agrees with this policy, but
please note that there *are* arguments for it.
What's more, AI is becoming really good at turning "minor bugs" into vulnerabilities,
making this a stronger argument nowadays.

On Jul 21, 2026, at 11:27 PM, Peter Gutmann <pgut001@...auckland.ac.nz> wrote:
> Yup.  So without analysing every single one you can't really tell whether it
> matters or not.  And if you're on something other than an x64 or Raspbian
> distro, so very popular ones, you're probably not going to get an update any
> time soon, if ever, anyway - the oldest kernel I'm running on a still-
> currently-sold system is, let's see, "GNU/Linux 4.9.337-38".

That's true regardless. How can the Linux kernel developers *possibly*
know your specific system's circumstance to determine if something is
a vulnerability in your specific case?

That's an argument *for* what they're doing.

>> What i know for sure is that being a patch pumpkin and being responsible for
>> several linux kernel series is surely a hard thing to do.
> 
> This is why so many systems are on "it's finally working, never touch this
> again" kernels, they're often running on SoCs with a pile of special-case
> peripherals that require extensive custom support so they never get updated
> once they've been made mostly functional.

There are many systems like that, it's true. Such systems are *guaranteed*
to quickly become vulnerable unless they have no connection to the
outside world (directly or indirectly), whether they use Linux, *BSDs,
or just about anything else. Badly-designed systems may be common,
but that doesn't make them *wise*.

A "can't update" system is an insecure system. Period. Full stop. The end.
The only thing not yet known is *exactly* why it's insecure.

The EU Cyber Resilience Act (CRA) will make many of
those devices illegal to sell in the EU. See the
CRA text https://eur-lex.europa.eu/eli/reg/2024/2847/oj/eng#anx_I
Annex I(1)(2)(a) which says, "products with digital elements shall: (a)
be made available on the market without known exploitable vulnerabilities;"
If you can't fix exploitable vulnerabilities, you're in trouble.
Anyone who argues "kernels never have vulnerabilities" have completely
lost touch with reality. Kernel developers *do* try, but it's not easy.

There is a VERY VERY SIMPLE way to not have this problem:
be ready to update your kernel. If you sell a product with a kernel in it,
have a process ready to update the kernel. That's true for Linux & anything else.
The Linux kernel already supports many special-case peripherals; the way to
get those drivers into the kernel is well-known. Most products who say they're
extraordinarily special, and eventually change their mind, turn out to be not so special.

Plan for updates. If you do, it's no big deal. Many companies have changed their
processes so that they *can* update kernels in a responsible way.
The Linux kernel's policy for security is quite clear: the kernel devs create
fixes for vulnerabilities, and the job of downstream is to keep up to date.
The Linux kernel takes *extreme* steps to ensure that upgrading doesn't interfere
with functionality, *specifically* so that you can keep upgrading.

If it is *vitally* important that your kernel *never* need to updated *ever*,
then a traditional kernel like Linux, *BSD, MacOS, iOS, or Windows is
NOT what you're looking for. What you need is a formally-proved kernel.
One such formally-proved kernel is seL4: https://sel4.systems/
However, while seL4 is great if you need a formally-proven kernel, you trade
away a *lot* of functionality for those proofs. Most people have decided that
"update whenever vulnerabilities are found" is a better trade for their circumstance
than "I've proved there are not vulnerabilities"; your circumstance many be different.

Again:  A "can't update" system is an insecure system. If that's what you're doing,
then the poison has been swallowed; we just don't know how long it takes to be fatal.

--- David A. Wheeler

