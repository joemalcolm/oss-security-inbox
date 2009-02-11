X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/11/1
Message-ID: <20090211183526.GB10133@redhat.com>
Date: Wed, 11 Feb 2009 11:35:26 -0700
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Cc: coley@...us.mitre.org
Subject: CVE request for proftpd
Content-Type: text/plain; charset=utf-8

An SQL injection vulnerability in proftpd was reported on bugtraq
yesterday that could allow a user to login to proftpd with any password
if they use mysql for authentication (and, presumably, postgresql).

References:

http://www.securityfocus.com/archive/1/500823/30/0/threaded
http://bugs.gentoo.org/show_bug.cgi?id=258450
http://bugs.proftpd.org/show_bug.cgi?id=3180
https://bugzilla.redhat.com/show_bug.cgi?id=485125

Could we get a CVE name assigned please?

Thanks.

-- 
Vincent Danen / Red Hat Security Response Team 
