X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/06/8
Message-ID: <1722500202.417931291670152341.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 6 Dec 2010 16:15:52 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Ulrik Persson <ddefrostt@...il.com>, Hans de Goede <hdegoede@...hat.com>, Stanislav Ochotnicky <sochotnicky@...hat.com>, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- Xfig: Stack-based buffer overflow by processing FIG image with crafted color definition
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-4262

Thanks.

-- 
    JB


----- "Jan Lieskovsky" <jlieskov@...hat.com> wrote:

> Hello Josh, Steve, vendors,
> 
>    the Team of Underground Stockholm researchers reported:
>    [1] https://bugzilla.redhat.com/show_bug.cgi?id=657981
> 
>    i.e:
> 
>    A stack-based buffer overflow flaw was found in
>    the way Xfig processed certain FIG images. A remote
>    attacker could create a FIG image with specially-crafted
>    color definition, and trick the local, unsuspecting
>    user into opening it, which could lead to xfig executable
>    crash or, potentially, arbitrary code execution with
>    the privileges of the user running the executable.
> 
>    Public PoC:
>    [2] https://bugzilla.redhat.com/attachment.cgi?id=463393
> 
>    Flaw severity note:
>    On systems with compile time buffer checks (FORTIFY_SOURCE)
>    feature enabled, the impact of this flaw is mitigated to
>    be only crash.
> 
> Could you allocate CVE id for this?
> 
> Thanks && Regards, Jan.
> --
> Jan iankko Lieskovsky / Red Hat Security Response Team
