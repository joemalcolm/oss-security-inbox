X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/04/04/50
Message-ID: <1489200095.372119.1301944143949.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 4 Apr 2011 15:09:03 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: Hanno Böck <hanno@...eck.de>, coley <coley@...re.org>
Subject: Re: CVE request: roundcube < 0.5.1 CSRF
Content-Type: text/plain; charset=utf-8

Thanks for sorting this Jan.

> > http://trac.roundcube.net/wiki/Changelog
> >
> > two cross site request forgery, one additional issue fixed in 0.5.1:
> >
> > "Security: add optional referer check to prevent CSRF in GET
> > requests
> 
> Looks this one being just security hardening with the patches:
> [1] http://trac.roundcube.net/changeset/4503
> [2] http://trac.roundcube.net/changeset/4504
> 
> For the CSRF flaws:
> 
> > Security: protect login form submission from CSRF
> Patch: [3] http://trac.roundcube.net/changeset/4490

Use CVE-2011-1491 for the above.

> 
> > Security: prevent from relaying malicious requests through
> > modcss.inc"
> Patch: [4] http://trac.roundcube.net/changeset/4488
> 

Use CVE-2011-1492 for the above.

Thanks.

-- 
    JB
