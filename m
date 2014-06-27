X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/06/27/7
Message-ID: <CAFkuX4uVRjCzc7Q4m0Drt56yJj2iNtg77d0vYX+GM1n_LpSFfw@mail.gmail.com>
Date: Fri, 27 Jun 2014 01:34:25 -0600
From: "Don A. Bailey" <donb@...uritymouse.com>
To: Eddie Chapman <eddie@...k.net>
Cc: oss-security@...ts.openwall.com
Subject: Re: LMS-2014-06-16-5: Linux Kernel LZ4
Content-Type: text/plain; charset=utf-8

Thanks, Eddie. Good catch. Template fail.

D



On Fri, Jun 27, 2014 at 1:26 AM, Eddie Chapman <eddie@...k.net> wrote:

> On 26/06/14 19:57, Don A. Bailey wrote:
>
>> Vulnerability Scope:
>> All versions of the Linux kernel (3x/2x) with LZ4 support (lib/lz4).
>>
>
> I think it's worth pointing out that the Linux kernel only introduced LZ4
> support in 3.11. This is why from the new kernel.org stable releases
> yesterday, only 3.14.9 and 3.15.2 contain the LZ4 patch. 3.10.45 and 3.4.95
> don't.
>
> Eddie
>

