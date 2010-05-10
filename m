X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/05/10/2
Message-ID: <20100510120014.4cd3b4e5@redhat.com>
Date: Mon, 10 May 2010 12:00:14 +0200
From: Tomas Hoger <thoger@...hat.com>
To: oss-security@...ts.openwall.com
Cc: oeriksson@...driva.com
Subject: Re: A mysql flaw.
Content-Type: text/plain; charset=utf-8

On Fri, 7 May 2010 12:35:26 +0200 Oden Eriksson wrote:

> With the mysql-5.1.46 release they fixed a security issue

It seems 5.1.46 also fixes:
  http://bugs.mysql.com/bug.php?id=40980

Which is another sequel to the DATA/INDEX DIRECTORY issues like
CVE-2008-2079, CVE-2008-4098, CVE-2008-7247 or CVE-2009-4030.

-- 
Tomas Hoger / Red Hat Security Response Team
