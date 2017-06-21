X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/21/15
Message-ID: <cbf49fff-2cd8-cb8c-59b8-07c2b7c37b0f@redhat.com>
Date: Wed, 21 Jun 2017 10:22:20 -0600
From: Jeff Law <law@...hat.com>
To: oss-security@...ts.openwall.com, Agostino Sarubbo <ago@...too.org>
Subject: Re: Qualys Security Advisory - The Stack Clash
Content-Type: text/plain; charset=utf-8

On 06/21/2017 04:46 AM, Agostino Sarubbo wrote:
> On Monday 19 June 2017 08:28:43 Qualys Security Advisory wrote:
>> III. Solutions
>> - Recompile all userland code (ld.so, libraries, binaries) with GCC's
>>   "-fstack-check" option, which prevents the stack-pointer from moving
>>   into another memory region without accessing the stack guard-page (it
>>   writes one word to every 4KB page allocated on the stack).
> 
> For the record, Gentoo Hardened enables by default -fstack-check=specific
And if you were to look at the generated code, you'll see that it
happily skips 2-3 pages of probes in prologues as well as within alloca
spaces.  It's a false sense of security.

jeff

