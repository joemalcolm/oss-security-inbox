X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/10/10
Message-ID: <4F0CAB52.4020601@redhat.com>
Date: Tue, 10 Jan 2012 14:19:14 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Xi Wang <xi.wang@...il.com>
Subject: Re: CVE request: kernel: xfs heap overflow
Content-Type: text/plain; charset=utf-8

On 01/10/2012 11:57 AM, Xi Wang wrote:
> Commit ef14f0c1578dce4b688726eb2603e50b62d6665a introduced an integer
> overflow in the ACL handling code, which could further lead to
> heap-based buffer overflow via a crafted filesystem.
>
> Upstream commits:
> http://git.kernel.org/linus/fa8b18edd752a8b4e9d1ee2cd615b82c93cf8bba
> http://git.kernel.org/linus/093019cf1b18dd31b2c3b77acce4e000e2cbc9ce
>
> Both commits are needed to fix the vulnerability.
>
> The vulnerability seems to first appear in 2.6.32-rc1.  3.2 contains
> only the first commit.
>
> - xi
Do you need a CVE for this?

-- 

-- Kurt Seifried / Red Hat Security Response Team

