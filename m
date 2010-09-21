X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/21/12
Message-ID: <2025306004.256001285099367116.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 21 Sep 2010 16:02:47 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: Minor security flaw with pam_xauth
Content-Type: text/plain; charset=utf-8


----- "Solar Designer" <solar@...nwall.com> wrote:

> > Let's use CVE-2010-3430 for the missing setfsgid.
> 
> ...and the missing setgroups().
> 
> > Use CVE-2010-3431 for the missing return checks on setfsuid.
> 
> OK.  BTW, I think this is not exploitable on current kernels, at least
> not via RLIMIT_NPROC (it does not apply to fsuid), yet it is desirable to
> check the return value from such syscalls.
> 
> What about the completely missing privilege switching in pre-1.1.2 (the
> bug found by Sebastian)?  I don't recall if it already had a CVE id
> assigned or not.
> 

Ugh, this has gone south on me.

Since you have the best understanding of these, can you break them down
with reasonable explanations and I'll assign IDs to whatever still needs
them?

Thanks.

-- 
    JB
