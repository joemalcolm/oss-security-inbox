X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/10/08/1
Message-ID: <20101008015133.GK1955@redhat.com>
Date: Thu, 7 Oct 2010 19:51:33 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: qpidd SSL connection DoS (CVE-2010-3083)
Content-Type: text/plain; charset=utf-8

Just a heads up for anyone that ships qpid.  About a year and a half
ago a blocking condition was found with SSL connections to qpidd, but I
don't think upstream really thought about the security implications.

It was fixed upstream in July 2009.

The details are in our bug:
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2010-3083

-- 
Vincent Danen / Red Hat Security Response Team 
