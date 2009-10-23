X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/10/23/11
Message-ID: <1917268567.999661256328718470.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 23 Oct 2009 16:11:58 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- alienarena - 7.31
Content-Type: text/plain; charset=utf-8

Please use CVE-2009-3637.

Thanks.

-- 
    JB


----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hello Steve, vendors,
> 
>    remotely exploitable buffer overflow flaw by processing
> specially-crafted UDP reply from game
> server (leading to arbitrary code execution) was fixed in latest
> upstream alienarena-7.31
> release.
> 
> References:
> -----------
> http://www.ngssoftware.com/brochures/Anonymous.Remote.Arbitrary.Code.Execution.in.Alien.Arena.pdf
> (More descriptive issue details)
> http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=552038 (Original
> source)
> http://icculus.org/alienarena/changelogs/7.31.txt (Revisions 1390 and
> 1391).
> 
> Upstream patch:
> ---------------
> http://svn.icculus.org/alienarena/trunk/source/client/menu.c?r1=1383&r2=1391
> (Merged change of 1390 and 1391)
> 
> Could you allocate a CVE identifier?
> 
> Thanks && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
