X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/09/30/6
Message-ID: <1934018180.985531222802880986.JavaMail.root@zmail01.collab.prod.int.phx2.redhat.com>
Date: Tue, 30 Sep 2008 15:28:01 -0400 (EDT)
From: Josh Bressers <bressers@...hat.com>
To: oss-security <oss-security@...ts.openwall.com>
Cc: coley@...re.org, berrange@...hat.com
Subject: CVE Request (xen)
Content-Type: text/plain; charset=utf-8

Hello,

This xen issue was just brought to our attention:
https://bugzilla.redhat.com/show_bug.cgi?id=464817
https://bugzilla.redhat.com/show_bug.cgi?id=464818

http://lists.xensource.com/archives/html/xen-devel/2008-09/msg00992.html

It seems that a xen guest can write some data into the xenstore that is
later read by libvirt (and possibly other things), which could cause
troubles for the Xen admin.

Thanks.

-- 
    JB
