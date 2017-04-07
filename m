X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/04/07/5
Message-ID: <338143b2-aa57-b6eb-61d2-856bac151c2d@redhat.com>
Date: Fri, 7 Apr 2017 20:01:44 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: libxslt math.random issue
Content-Type: text/plain; charset=utf-8

On 04/07/2017 07:50 PM, Frank Ch. Eigler wrote:
>
> Florian Weimer wrote:
>
>> FWIW, why is glibc not doing srand(RANDOMVECTOR) during startup... :/
>>
>> The C standard does not allow it.
>>
>> ”
>> If rand is called before any calls to srand have been made, the same
>> sequence shall be generated as when srand is first called with a seed
>> value of 1.
>> ”
>
> Yes, but that does not imply that srand(1) needs to resolve to a
> build-constant value.

Sorry, I don't understand.  The standard also says, “If srand() is then 
called with the same seed value, the sequence of pseudo-random numbers 
shall be repeated.”

The sequences is *required* to be deterministic, and this is deliberate.

Thanks,
Florian
