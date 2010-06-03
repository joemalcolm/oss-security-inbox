X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/06/03/1
Message-ID: <173967552.1084241275589839498.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Thu, 3 Jun 2010 14:30:39 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: prewikka permission bug
Content-Type: text/plain; charset=utf-8

Please use CVE-2010-2058

Thanks.

-- 
    JB


----- "Stefan Behte" <craig@...too.org> wrote:

> Hi,
> 
> I couldn't find a CVE for this:
> 
> "The permissions on the prewikka.conf file are world readable and
> contain the sql database password used by prewikka. This update makes
> it
> readable just by the apache group."
> 
> https://dev.prelude-technologies.com/projects/prewikka/repository/revisions/17e38c310410be1b7811152172cda4438936063d
> 
> Redhat and Gentoo were affected, I'm not sure about others.
> 
> https://www.redhat.com/archives/fedora-package-announce/2009-April/msg00771.html
> 
> https://bugs.gentoo.org/show_bug.cgi?id=270056
> 
> 
> Best regards,
> 
> Stefan Behte
