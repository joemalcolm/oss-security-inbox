X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/08/11/1
Message-ID: <20110811015232.GH1360@redhat.com>
Date: Wed, 10 Aug 2011 19:52:32 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2011-2907: authentication bypass in torque
Content-Type: text/plain; charset=utf-8

Just a heads up on a security flaw in torque that can makes it
vulnerable to an authorization bypass.

The gory details are available here:

http://www.clusterresources.com/pipermail/torqueusers/2011-August/013194.html
https://bugzilla.redhat.com/show_bug.cgi?id=713090

The long and short of it is that if you ship torque compiled with munge
support, you are not vulnerable.

This issue was assigned the name CVE-2011-2907.

-- 
Vincent Danen / Red Hat Security Response Team 
