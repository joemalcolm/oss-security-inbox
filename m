X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/08/10
Message-ID: <20090408182315.GA19549@redhat.com>
Date: Wed, 8 Apr 2009 12:23:15 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2008-5519: mod_jk session information leak vulnerability
Content-Type: text/plain; charset=utf-8

Just a heads up for those of you shipping mod_jk.  There is a session
leak vulnerability where, in certain circumstances, client A can get the
responses intended for client B.

This was fixed upstream in version 1.2.27 but the security ramifications
weren't known at that point.

https://bugzilla.redhat.com/show_bug.cgi?id=490201

Our bug has a few more details.

http://svn.eu.apache.org/viewvc?view=rev&revision=702540

This is the upstream fix for the issue.

The issue has the CVE name CVE-2008-5519.

-- 
Vincent Danen / Red Hat Security Response Team 
