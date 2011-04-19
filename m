X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/19/3
Message-ID: <4DADB653.6010708@redhat.com>
Date: Tue, 19 Apr 2011 18:20:35 +0200
From: Jan Lieskovsky <jlieskov@...hat.com>
To: oss-security@...ts.openwall.com
CC: "Steven M. Christey" <coley@...us.mitre.org>, Gerlof Langeveld <gerlof@...omputing.nl>
Subject: Re: CVE Request -- atop: Symlink attacks via process accounting file
Content-Type: text/plain; charset=utf-8

Jan Lieskovsky wrote:
> 
> Hello Josh, Steve, vendors,
> 
>   atop v1.23 and earlier created process accounting file 
> (/tmp/atop.d/atop.acct)
> in an insecure way. A local attacker could use this flaw to conduct symlink
> attacks (e.g. overwrite arbitrary system files).

Looked more into this issue and seems it may not be possible to misuse this
issue. The steps are below:

tmp]# mkdir /etc/hello
tmp]# ln -s /etc/hello atop.d
tmp]# service atop start
Starting atop: [  OK  ]

But atop detects the /tmp/atop.d directory already exists (/var/log/atop/atop.log contains):
warning: no process exit detection (can not create directory /tmp/atop.d)

So doesn't seem to be exploitable => taking the CVE request back, no CVE needed.

Should have checked this earlier, sorry for the noise.

Regards, Jan.
--
Jan iankko Lieskovsky / Red Hat Security Response Team

> 
> References:
> [1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=622794
> [2] http://secunia.com/advisories/44175/
> [3] https://bugzilla.redhat.com/show_bug.cgi?id=697848
> 
> Could you allocate a CVE id for this?
> 
> Thanks && Regards, Jan.
> -- 
> Jan iankko Lieskovsky / Red Hat Security Response Team
> 
> 

