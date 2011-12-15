X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/12/15/2
Message-ID: <4EEA1D6A.3060905@redhat.com>
Date: Thu, 15 Dec 2011 09:16:42 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Eugene Teo <eugene@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request - kernel: perf, powerpc: Handle events that raise an exception without overflowing
Content-Type: text/plain; charset=utf-8

On 12/15/2011 02:03 AM, Eugene Teo wrote:
> This does not affect the upstream kernel as it is already fixed. This is
> an issue that was introduced when fixing https://bugzilla.redhat.com/740465.
>
> A PMC is 32 bits (ie an int). When we pass it around as an unsigned
> long, we need to cast it before doing the comparison. Using perf on
> power machine with a local, unprivileged user account can cause a denial
> of service.
>
> Upstream commit:
> http://git.kernel.org/linus/0837e3242c73566fc1c0196b4ec61779c25ffc93
>
> Reference:
> https://bugzilla.redhat.com/767914
>
> Thanks, Eugene
Please use CVE-2011-4611 for this issue.

-- 

-Kurt Seifried / Red Hat Security Response Team

