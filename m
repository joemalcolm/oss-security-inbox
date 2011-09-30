X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/09/30/5
Message-ID: <194b0fad-7580-4425-b474-9487cf6f3475@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 30 Sep 2011 11:05:32 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: security@...ntu.com, coley@...us.mitre.org
Subject: Re: CVE Request: samba, cifs-utils
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> Hello,
> 
> I don't think this ever got a CVE:
> 
> https://bugzilla.samba.org/show_bug.cgi?id=7179
> 
> http://git.samba.org/?p=cifs-utils.git;a=commitdiff;h=810f7e4e0f2dbcbee0294d9b371071cb08268200
> 
> 
> When mount.cifs is setuid, unprivileged users can kill it, resulting in a
> denial of service from a stale lock file.
> 

Please use CVE-2011-3585.

Thanks.

-- 
    JB
