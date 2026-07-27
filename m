X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/1
Message-ID: <87wlugjjun.fsf@gentoo.org>
Date: Mon, 27 Jul 2026 20:47:12 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: KVM: Merge branch 'kvm-chainsaw' into HEAD
Content-Type: text/plain; charset=utf-8

Reid Sutherland <reid@...rddimension.net> writes:

> On 2026-07-27 12:25 p.m., Solar Designer wrote:
>> On Mon, Jul 27, 2026 at 09:46:12AM -0400, Reid Sutherland wrote:
>>> For your information.
>>>
>>> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=a204badd8432f93b7e862e7dac6db0fe3d65f370
>> Thanks, but can you please explain why exactly you think this is
>> noteworthy for oss-security?
>>
>> I see there's a recent Phoronix story:
>>
>> https://www.phoronix.com/news/KVM-Chainsaw-Linux-7.3
>>
>> and the patch series had been tracked and archived by LWN.
>>
>> This is definitely noteworthy for KVM project development, but even
>> seeing all those other resources, I do not see why bring this in here?
>
>
> Core changes to virtualization should receive examination. Changing
> data structures around because they're too big.. it's concerning,
> following that patch is tricky because of its size. Would feel better
> about it if changes like this were passed through a reliable LLM, but
> even that requires relevant experience.  And naming it chainsaw, what
> purpose does that serve?  I have very little trust.

Paolo has been a maintainer for a long time and in FOSS even longer than
that. Big refactoring can introduce bugs but I've no reason to doubt him
and I don't really see why this change is any different from any other
refactoring.

>
>
>> In general, posting a link without explanation is inappropriate here.
>
>
> The 16+ year local root vulnerabilities in the kernel is enough of a
> bruising to be extra cautious.

This could be used to post all sorts of large kernel changes here,
though, and I don't think we want to do that.

Now, with regard to what you said above: I don't particularly want to
encourage people to just put things into an LLM and see what they say,
but if you were to ask an LLM, find it had something useful to say (and
you're qualified to assess that), then sharing it here might be
appropriate depending on context.

thanks,
sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
