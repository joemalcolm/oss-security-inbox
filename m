X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/11/3
Message-ID: <CAH4rwT+ggCpPTqAOJgdm7LbiETMYuufvGXNLZh7VGooF-RLmrw@mail.gmail.com>
Date: Thu, 11 Dec 2014 11:15:44 +0530
From: Reno Robert <renorobert@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: PIE bypass using VDSO ASLR weakness
Content-Type: text/plain; charset=utf-8

Given that ASLR is not effective in VDSO and comes down to 11 quality bits
as per pax test making return-to-vdso feasible even for PIE binary, whether
this should be considered as a bug and CVE be assigned?

On Wed, Dec 10, 2014 at 2:25 AM, Daniel Micay <danielmicay@...il.com> wrote:

> On 09/12/14 10:33 AM, Reno Robert wrote:
> > Hi Daniel, COMPAT_VDSO is not enabled. Just that randomization is 20 bits
> > and same values are generated on repeated execution.
>
> Ah, I was testing against PaX ASLR :). Sorry for the noise.
>
>


-- 
Regards,
Reno Robert
http://v0ids3curity.blogspot.in/

