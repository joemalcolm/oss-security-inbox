X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/07/6
Message-ID: <1603908540.1609841283885076412.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 7 Sep 2010 14:44:36 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- Bip -- Remote Dos (crash) by exchanging user credentials
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-3071

Thanks.

-- 
    JB


----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hello Steve, vendors,
> 
>    A denial of service flaw was found in the way Bip IRC Bouncer
> exchanged user credentials by initiating the IRC protocol session.
> A remote, unauthenticated user could send a specially crafted
> connection request, leading to bip daemon crash (NULL pointer
> dereference)
> 
> References:
>    [1] http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=595409
>    [2] https://bugzilla.redhat.com/show_bug.cgi?id=630437
> 
> Could you allocate CVE id for this one?
> 
> Thanks && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
