X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/09/09/3
Message-ID: <20090909162315.27a4a299@redhat.com>
Date: Wed, 9 Sep 2009 16:23:15 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE Request -- PostgreSQL
Content-Type: text/plain; charset=utf-8

On Wed, 09 Sep 2009 16:08:10 +0200 Jan Lieskovsky <jlieskov@...hat.com>
wrote:

>    PostgreSQL upstream is on their security page
> mentioning three security issues, which lack CVE ids:
> 
> http://www.postgresql.org/support/security.html

Just a note: upstream page currently says the second issue is related
to CVE-2007-2138, but our maintainer also active upstream reports it
should say CVE-2007-6600.

https://bugzilla.redhat.com/show_bug.cgi?id=522085#c1

I can't confirm either atm, so just a heads-up to avoid possible
confusion related to CVE wording.

-- 
Tomas Hoger / Red Hat Security Response Team
