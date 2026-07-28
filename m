X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/5
Message-ID: <69b53bb7-fe8f-4d9d-9a38-99cd65c52aa6@thirddimension.net>
Date: Tue, 28 Jul 2026 02:57:25 -0400
From: Reid Sutherland <reid@...rddimension.net>
To: oss-security@...ts.openwall.com
Subject: Re: Linux kernel: KVM: Merge branch 'kvm-chainsaw' into HEAD
Content-Type: text/plain; charset=utf-8

On 2026-07-27 3:47 p.m., Sam James wrote:
> Reid Sutherland <reid@...rddimension.net> writes:
>
>> On 2026-07-27 12:25 p.m., Solar Designer wrote:
>>> On Mon, Jul 27, 2026 at 09:46:12AM -0400, Reid Sutherland wrote:
>>>> For your information.
>>>>
>>>> https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=a204badd8432f93b7e862e7dac6db0fe3d65f370
>>> Thanks, but can you please explain why exactly you think this is
>>> noteworthy for oss-security?
>>>
>>> I see there's a recent Phoronix story:
>>>
>>> https://www.phoronix.com/news/KVM-Chainsaw-Linux-7.3
>>>
>>> and the patch series had been tracked and archived by LWN.
>>>
>>> This is definitely noteworthy for KVM project development, but even
>>> seeing all those other resources, I do not see why bring this in here?
>>
>> Core changes to virtualization should receive examination. Changing
>> data structures around because they're too big.. it's concerning,
>> following that patch is tricky because of its size. Would feel better
>> about it if changes like this were passed through a reliable LLM, but
>> even that requires relevant experience.  And naming it chainsaw, what
>> purpose does that serve?  I have very little trust.
> Paolo has been a maintainer for a long time and in FOSS even longer than
> that. Big refactoring can introduce bugs but I've no reason to doubt him
> and I don't really see why this change is any different from any other
> refactoring.


The refactor doesn't seem necessary, the original data structure appears 
to be fine, now we have surface risk for something that doesn't solve a 
bug or implement a feature.

I don't care what someone's street cred is, it's their result.

>>
>>> In general, posting a link without explanation is inappropriate here.
>>
>> The 16+ year local root vulnerabilities in the kernel is enough of a
>> bruising to be extra cautious.
> This could be used to post all sorts of large kernel changes here,
> though, and I don't think we want to do that.
>
> Now, with regard to what you said above: I don't particularly want to
> encourage people to just put things into an LLM and see what they say,
> but if you were to ask an LLM, find it had something useful to say (and
> you're qualified to assess that), then sharing it here might be
> appropriate depending on context.


Again, steering an LLM to properly search for bugs in C is for the 
experienced.  If you have a problem with LLMs, you're fighting the 
calculator.  It's very clear that LLMs are finding bugs that have gone 
undiscovered for almost two decades.


