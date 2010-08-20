X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/20/10
Message-ID: <2009623087.1101371282325492735.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 20 Aug 2010 13:31:32 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Request: SLiM insecure PATH assignment
Content-Type: text/plain; charset=utf-8


----- "Niels Heinen" <niels@...eBSD.org> wrote:

> Hi all,
> 
> SLiM versions prior to 1.3.1 assigned logged on users a predefined
> PATH
> which included './'. This allowed unintentional code execution (e.g.
> planted binary) and has been fixed by the developers in version
> 1.3.2.
> 
> Can you allocate a CVE number for this one?
> 

Looks like the fix is here:
http://svn.berlios.de/wsvn/slim?op=comp&compare[]=/@...&compare[]=/@171

Please use CVE-2010-2945

Thanks.

-- 
    JB
