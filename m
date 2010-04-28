X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/04/28/3
Message-ID: <1626485214.2005361272413617045.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 27 Apr 2010 20:13:37 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security@...ts.openwall.com
Cc: soc@...cert.gov, cert@...ora.fi, websecurity@...appsec.org, owasp-helsinki@...ts.owasp.org, cert@...t.org, "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: wafp insecure temporary directory
Content-Type: text/plain; charset=utf-8


----- "Henri Salo" <henri@...v.fi> wrote:

> Wafp creates a temporary directory to predictable path and name. This
> allows a local attacker to create a denial of service condition and
> discloses sensitive information to unprivileged users. This also reduces
> usability of this software, because one can't run more than one wafp-
> instances at the same time. This issue can also be leveraged to delete
> arbitrary files or directories via a symlink attack.
> 
> I notified the project:
> http://code.google.com/p/webapplicationfingerprinter/issues/detail?id=8
> 
> Can I get CVE-identifier for this issue?
> 

Please use CVE-2010-1438.

Thanks.

-- 
    JB
