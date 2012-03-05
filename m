X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/03/05/22
Message-ID: <4F553917.2010106@redhat.com>
Date: Mon, 05 Mar 2012 15:07:19 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: oss-security@...ts.openwall.com
CC: Marc Deslauriers <marc.deslauriers@...onical.com>, coley@...us.mitre.org, security@...ntu.com
Subject: Re: CVE Request: lightdm
Content-Type: text/plain; charset=utf-8

On 03/05/2012 05:54 AM, Marc Deslauriers wrote:
> Could we please get a CVE assigned to the following issue:
> 
> lightdm leaks file descriptors to child processes. A local attacker can use this to bypass
> intended permissions and write to the log file, cause a denial of service, or possibly
> have another unknown impact.
> 
> Bug:
> https://bugs.launchpad.net/ubuntu/+source/lightdm/+bug/927060
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=658678
> 
> Thanks,
> 
> Marc.
> 
> 

Please use CVE-2012-1111 for this issue.

-- 
Kurt Seifried Red Hat Security Response Team (SRT)
