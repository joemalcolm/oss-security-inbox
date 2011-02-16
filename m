X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/02/16/9
Message-ID: <1347860776.58325.1297863916185.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 16 Feb 2011 08:45:16 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request - kernel: s390 task_show_regs infoleak
Content-Type: text/plain; charset=utf-8



----- Original Message -----
> "task_show_regs used to be a debugging aid in the early bringup days of
> Linux on s390. /proc/<pid>/status is a world readable file, it is not a
> good idea to show the registers of a process. The only correct fix is to
> remove task_show_regs."
> 
> http://git.kernel.org/linus/261cd298a8c363d7985e3482946edb4bfedacf98
> https://bugzilla.redhat.com/677850
> 
> This does all the way back to 2.4.x.
> 

Please use CVE-2011-0710.

Thanks.

-- 
    JB
