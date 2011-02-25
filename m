X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/25/2
Message-ID: <4D66F488.5000809@redhat.com>
Date: Fri, 25 Feb 2011 08:15:04 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Kees Cook <kees@...ntu.com>
Subject: Re: CVE request: kernel: /proc/$pid/ leaks contents across setuid exec
Content-Type: text/plain; charset=utf-8

On 02/25/2011 07:57 AM, Kees Cook wrote:
> Hi,
>
> I'd like to get a CVE assigned for this information leak issue:
> https://lkml.org/lkml/2011/2/7/368
>
> Pre-opened file descriptors in /proc/$pid/ can bypass DAC allowing
> visibility into setuid process state, especially leaking ASLR offset.

Please use CVE-2011-1020.

Eugene
-- 
Eugene Teo / Red Hat Security Response Team
