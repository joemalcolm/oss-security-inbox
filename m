X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/27/6
Message-ID: <a8f60af3-3ec5-40b3-84b2-262c497b0381@thirddimension.net>
Date: Mon, 27 Jul 2026 12:51:41 -0400
From: Reid Sutherland <reid@...rddimension.net>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: KVM: Merge branch 'kvm-chainsaw' into HEAD
Content-Type: text/plain; charset=utf-8

On 2026-07-27 12:25 p.m., Solar Designer wrote:
> On Mon, Jul 27, 2026 at 09:46:12AM -0400, Reid Sutherland wrote:
>> For your information.
>>
>> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=a204badd8432f93b7e862e7dac6db0fe3d65f370
> Thanks, but can you please explain why exactly you think this is
> noteworthy for oss-security?
>
> I see there's a recent Phoronix story:
>
> https://www.phoronix.com/news/KVM-Chainsaw-Linux-7.3
>
> and the patch series had been tracked and archived by LWN.
>
> This is definitely noteworthy for KVM project development, but even
> seeing all those other resources, I do not see why bring this in here?


Core changes to virtualization should receive examination. Changing data 
structures around because they're too big.. it's concerning, following 
that patch is tricky because of its size. Would feel better about it if 
changes like this were passed through a reliable LLM, but even that 
requires relevant experience.  And naming it chainsaw, what purpose does 
that serve?  I have very little trust.


> In general, posting a link without explanation is inappropriate here.


The 16+ year local root vulnerabilities in the kernel is enough of a 
bruising to be extra cautious.


