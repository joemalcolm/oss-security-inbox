X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/09/17/5
Message-ID: <5f571403-9a7f-2967-737d-e8b754c288d8@thomas-ward.net>
Date: Tue, 17 Sep 2019 14:57:34 -0400
From: Thomas Ward <teward@...mas-ward.net>
To: oss-security@...ts.openwall.com, Alyssa Ross <hi@...ssa.is>, Hanno Böck <hanno@...eck.de>
Subject: Re: OpenDMARC buffer overflows
Content-Type: text/plain; charset=utf-8

On 9/17/19 2:20 PM, Alyssa Ross wrote:
> Hanno Böck <hanno@...eck.de> writes:
>
>> In light of the recent OpenDMARC issue I had a look at their Github PR
>> tracker. This one
>> https://github.com/trusteddomainproject/OpenDMARC/pull/45
>> caught my attention.
> So a signature bypass, a buffer overflow, and no activity in years
> despite vulnerabilities having been reported months ago?
>
> Certainly doesn't look like software that people should be relying on
> for security...

... which is why I think distros are distro-patching it, like Scott 
Kitterman is doing for Debian.

I have a host of other detections in line with OpenDMARC for detecting 
invalid message structure, though, but it's definitely concerning to see 
something like this - one of the few DMARC checkers that actually exists 
in the OSS world - to be so behind from a Security perspective...


