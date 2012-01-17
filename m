X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/01/17/11
Message-ID: <4F15E239.9010105@redhat.com>
Date: Tue, 17 Jan 2012 14:03:53 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Marc Deslauriers <marc.deslauriers@...onical.com>, coley@...us.mitre.org, security@...ntu.com
Subject: Re: CVE Request: overlayfs
Content-Type: text/plain; charset=utf-8

On 01/17/2012 10:55 AM, Marc Deslauriers wrote:
> Could we please get a CVE assigned to the following issue:
>
> overlayfs, as used in the Ubuntu kernel, doesn't perform required inode
> security checks, bypassing intended security restrictions.
>
> Bug:
> https://bugs.launchpad.net/ubuntu/+source/linux/+bug/915941
>
> Upstream source:
> git://git.kernel.org/pub/scm/linux/kernel/git/mszeredi/vfs.git
>
> Thanks,
>
> Marc.
>
>
Please use CVE-2012-0055 for this issue.

-- 

-- Kurt Seifried / Red Hat Security Response Team

