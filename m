X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/05/3
Message-ID: <806642806.70691288986618217.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Fri, 5 Nov 2010 15:50:18 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE request: kernel: logic error in INET_DIAG bytecode auditing
Content-Type: text/plain; charset=utf-8


----- "Nelson Elhage" <nelhage@...lice.com> wrote:

> INET_DIAG is inconsistent about how it looks up the bytecode contained
> in a
> netlink message, making it possible for a user to cause the kernel to
> execute
> unaudited INET_DIAG bytecode.
> 
> This can be abused to make the kernel enter an infinite loop, and
> possibly other
> consequences, although I haven't thought of anything else
> interesting.
> 
> Reference:
> http://www.spinics.net/lists/netdev/msg145899.html
> 

Please use CVE-2010-3880.

Thanks.

-- 
    JB
