X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/17/4
Message-ID: <4D81EB8F.50605@redhat.com>
Date: Thu, 17 Mar 2011 19:07:59 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Ludwig Nussel <ludwig.nussel@...e.de>, Lars Kurth <lars.kurth@....org>
Subject: Re: CVE Request: xen DoS
Content-Type: text/plain; charset=utf-8

On 03/17/2011 03:09 PM, Ludwig Nussel wrote:
> Hi,
>
> http://xenbits.xen.org/hg/staging/xen-unstable.hg/rev/c79aae866ad8
>
> Citing https://bugzilla.novell.com/show_bug.cgi?id=679344:
> "The problem is that a 64-bit guest can get one of its vcpus into
> non-kernel mode without first providing a valid non-kernel pagetable.
> The iret-into-userspace path has the right checks, but just setting the
> context on a fresh vcpu doesn't. :(  The observed failure mode is
> usually a hard lockup of the host."

Please use CVE-2011-1166.

Eugene
-- 
main(i) { putchar(182623909 >> (i-1) * 5&31|!!(i<7)<<6) && main(++i); }
