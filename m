X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/26/5
Message-ID: <1443512040.1850561272309804241.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Mon, 26 Apr 2010 15:23:24 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley <coley@...re.org>
Subject: Re: CVE Request: cacti SQL injection in template_export
Content-Type: text/plain; charset=utf-8

----- "Thijs Kinkhorst" <thijs@...ian.org> wrote:
> 
> On Wednesday an SQL injection issue was announced on Full Disclosure by
> "Bonsai Information Security":
> http://seclists.org/fulldisclosure/2010/Apr/272, quoting:
> > 
> > A Vulnerability has been discovered in Cacti, which can be exploited by
> > any user to conduct SQL Injection attacks. Input passed via the
> > “export_item_id” parameter to “templates_export.php” script is not
> > properly sanitized before being used in a SQL query.
> 
> Upstream has issued a patch for this issue:
> http://www.cacti.net/downloads/patches/0.8.7e/sql_injection_template_export.patch
> (but no new release yet)
> 

Please use CVE-2010-1431 for this.

Thanks.

-- 
    JB
