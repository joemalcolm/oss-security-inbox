X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/21/10
Message-ID: <48377916.247941285096927792.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 21 Sep 2010 15:22:07 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: Minor security flaw with pam_xauth
Content-Type: text/plain; charset=utf-8

----- "Josh Bressers" <bressers@...hat.com> wrote:
> 
> > The same commit also introduces previously-missing privilege switching
> > into pam_env and pam_mail.  Unfortunately, this pam_env and pam_mail
> > fix is incomplete: it only switches the fsuid (should also switch fsgid
> > (or egid) and groups), and it fails to check the return value from
> > setfsuid() (doing so would require duplicate calls to setfsuid(), like
> > we do in libtcb, or switching of euid instead - yet it is desirable).
> > 
> 
> This one is a bit on the tricky side. I'm going to call it "improper
> setfsuid use" so we can use just one CVE instead of two (as the flaws
> are
> related):
> 
> Use CVE-2010-3430
> 

MITRE votes for two, so here goes:

Let's use CVE-2010-3430 for the missing setfsgid.

Use CVE-2010-3431 for the missing return checks on setfsuid.

Thanks Steve.

-- 
    JB
