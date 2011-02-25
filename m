X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/25/1
Message-ID: <4D66F47D.2030604@redhat.com>
Date: Fri, 25 Feb 2011 08:14:53 +0800
From: Eugene Teo <eugene@...hat.com>
To: oss-security@...ts.openwall.com
CC: Kees Cook <kees@...ntu.com>
Subject: Re: CVE request: kernel: CAP_SYS_MODULE bypass via CAP_NET_ADMIN
Content-Type: text/plain; charset=utf-8

On 02/25/2011 07:54 AM, Kees Cook wrote:
> Hi,
>
> While not as bad as CVE-2010-4661 (unprivileged module loading)
> I'd like to get a CVE assigned for this issue for tracking purposes:
> https://lkml.org/lkml/2011/2/24/203
>
> Basically "ifconfig $module" will load any module as long as the process
> has CAP_NET_ADMIN (ignoring CAP_SYS_MODULE).

Please use CVE-2011-1019.

Eugene
-- 
Eugene Teo / Red Hat Security Response Team
