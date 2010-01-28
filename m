X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/01/28/3
Message-ID: <945089069.423521264686156478.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 28 Jan 2010 08:42:36 -0500 (EST)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE id request: maildrop
Content-Type: text/plain; charset=utf-8

----- "Steffen Joeris" <steffen.joeris@...lelinux.de> wrote:
> 
> Christoph Anton Mitterer discovered that maildrop, a mail delivery agent
> with filtering abilities, is prone to a privilege escalation issue that
> grants a user root group privileges.
> 
> 
> The issue occurs when invoking maildrop -d, which keeps the root group
> privileges on the mailbox rather than changing them to the users gid.

> [0]: http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=564601

Use CVE-2010-0301.

Thanks.

-- 
    JB
