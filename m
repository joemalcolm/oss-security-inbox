X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/11/01/4
Message-ID: <513033065.779981288644931845.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 1 Nov 2010 16:55:31 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: Proftpd pre-authentication buffer overflow in Telnet code
Content-Type: text/plain; charset=utf-8


----- "Florian Weimer" <fw@...eb.enyo.de> wrote:

> I haven't seen a CVE/patch/discussion for this issue yet:
> 
> | 1.3.3c
> | ---------
> | 
> |   + Fixed Telnet IAC stack overflow vulnerability (ZDI-CAN-925)
> 
> <http://proftpd.org/docs/RELEASE_NOTES-1.3.3c>

I'm not assigning this an ID at this time. We'll see if it already has one.

> 
> This:
> 
> |  + Fixed directory traversal bug in mod_site_misc
> 
> is <http://bugs.proftpd.org/show_bug.cgi?id=3519> and also seems to
> lack a CVE assignment.

Use CVE-2010-3867

> 
> I don't know yet if the following is a security fix:
> 
> |  + Fixed SQLite authentications using "SQLAuthType Backend"

Even if it is, I have no idea what sort of flaw this would be. Does anyone
else know?

Thanks.

-- 
    JB
