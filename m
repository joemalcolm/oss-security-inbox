X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/09/6
Message-ID: <52CED0B7.1020609@redhat.com>
Date: Thu, 09 Jan 2014 17:39:19 +0100
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: tmux local denial of service (2009)
Content-Type: text/plain; charset=utf-8

Alexander Wirt discovered that local users can block other users from 
using tmux by creating suitably named directories in /tmp:

<http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=529082>

This is a minor local denial of service issue.  This was reported 
publicly in 2009, so it receive an ID for that year.

Corresponding Red Hat bug:

<https://bugzilla.redhat.com/show_bug.cgi?id=1036136>

-- 
Florian Weimer / Red Hat Product Security Team
