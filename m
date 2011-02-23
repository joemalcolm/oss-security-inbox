X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/23/21
Message-ID: <913844253.189413.1298487178820.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 23 Feb 2011 13:52:58 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: Corrupted LDM partition table issues
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-1012.

Thanks.

-- 
    JB


----- Original Message -----
> Reported by Timo Warns, "The kernel automatically evaluates partition
> tables of storage devices. The code for evaluating LDM partitions (in
> fs/partitions/ldm.c) contains a bug that causes a kernel oops on
> certain
> corrupted LDM partitions. A kernel subsystem seems to crash, because,
> after the oops, the kernel no longer recognizes newly connected
> storage
> devices."
> 
> http://www.spinics.net/lists/mm-commits/msg82429.html
> 
> This should affect kernels version v2.6.27-rc1 and above. Of course,
> CONFIG_LDM_PARTITION needs to be set.
> 
> Thanks, Eugene
> --
> Eugene Teo / Red Hat Security Response Team
