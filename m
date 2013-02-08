X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/02/08/5
Message-ID: <20130208180656.GQ3397@redhat.com>
Date: Fri, 8 Feb 2013 11:06:56 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: XSS flaws fixed in ganglia
Content-Type: text/plain; charset=utf-8

A number of XSS issues were fixed in ganglia's web ui:

https://github.com/ganglia/ganglia-web/commit/31d348947419058c43b8dfcd062e2988abd5058e
https://bugzilla.redhat.com/show_bug.cgi?id=892823

I think one CVE would cover all of these since they were fixed at the
same time, in the same commit.

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
