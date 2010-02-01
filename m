X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/02/01/6
Message-ID: <1604636191.772261265058586359.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 1 Feb 2010 16:09:46 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- Squid -- SQUID-2010_1.txt
Content-Type: text/plain; charset=utf-8


----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hi Josh, Steve, vendors,
> 
>    Squid upstream has released updated versions fixing DoS
> when processing specially crafted DNS packets [1].
> 
>  From the upstream advisory:
> 
> "This problem allows any trusted client or external server who can
>   determine the squid receiving port to perform a short-term denial
>   of service attack on the Squid service."
> 
> Could you allocate a CVE id for this? (can't find one in
> SQUID-2010_1.txt).
> 
> Thanks && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
> 
> [1] http://www.squid-cache.org/Advisories/SQUID-2010_1.txt

Please use CVE-2010-0308 for this.

Thanks.

-- 
    JB
