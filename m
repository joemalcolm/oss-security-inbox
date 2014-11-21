X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/21/5
Message-ID: <546EB423.3080605@redhat.com>
Date: Fri, 21 Nov 2014 14:40:19 +1100
From: Murray McAllister <mmcallis@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: heap buffer overflow in PCRE
Content-Type: text/plain; charset=utf-8

On 11/21/2014 01:43 AM, Vasyl Kaigorodov wrote:
> Hello,
>
> Heap buffer overflow issue was reported [1] in PCRE when processing a
> specially crafted regular expression.
>
> Upstream patch for this:
> http://www.exim.org/viewvc/pcre2?view=rev&revision=154
> The next upstream release that will contain the above fix is likely to
> be around Feb/Mar next year (2015).
>
> Additional references:
> [1]: http://bugs.exim.org/show_bug.cgi?id=1546
> [2]: https://bugzilla.redhat.com/show_bug.cgi?id=1166147
>
> Can a CVE be assigned to this please?
>
> Thanks.
>

Morning,

If it was not already seen, http://bugs.exim.org/show_bug.cgi?id=1546#c8 
has "If you can, please reference CVE-2014-8964 as a CVE for this 
potential security
vulnerability."

I do not know who assigned it.

Cheers,

--
Murray McAllister / Red Hat Product Security
