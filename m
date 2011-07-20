X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/20/18
Message-ID: <1707635281.1473034.1311191528928.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Wed, 20 Jul 2011 15:52:08 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: kernel: arbitrary kernel read in xtensa
Content-Type: text/plain; charset=utf-8

Please use CVE-2011-2707.

Thanks.

-- 
    JB

----- Original Message -----
> Not sure if any distributions support xtensa, but regardless:
> 
> Due to a failure to check user pointers passed to a ptrace_setxregs
> request, it is possible for a local unprivileged user to read
> arbitrary kernel memory [1].
> 
> -Dan
> 
> [1] http://marc.info/?l=linux-kernel&m=131008344912672&w=2
