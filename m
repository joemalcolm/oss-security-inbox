X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/01/17/4
Message-Id: <0D9C0CEE-95B6-4017-B15B-85A47CA67701@oracle.com>
Date: Fri, 17 Jan 2020 14:50:33 +0000
From: John Haxby <john.haxby@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Re: Some AMD cpus with RDRAND fail to produce random numbers after suspend/resume
Content-Type: text/plain; charset=utf-8



> On 17 Jan 2020, at 08:10, Sven Schwedas <sven.schwedas@....at> wrote:
> 
> On 17.01.20 05:21, Jeffrey Walton wrote:
>> I agree with Lennart Poettering. This seems CVE worthy given RDRAND is
>> often used to get the kernel generator (and other userland generators)
>> in good working order.
> 
> From my understanding it's harmless as far as linux's kernel generator
> is concerned, as it's just xor'd to other entropy sources?
> 
> CVEs should only be needed on a case-by-case basis for userland
> generators that aren't properly engineered.

Actually, the kernel does use rdrand directly for cases where a strong CPRNG not required.  Whether some of those cases result in an exploitable bug I wouldn't like to say.

jch

Download attachment "signature.asc" of type "application/pgp-signature" (269 bytes)
