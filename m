X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/04/16/13
Message-ID: <20090416174722.GI4100@redhat.com>
Date: Thu, 16 Apr 2009 11:47:22 -0600
From: Vincent Danen <vdanen@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2009-1189: invalid fix for CVE-2008-3834 (dbus)
Content-Type: text/plain; charset=utf-8

It came to our attention that a previous security fix for dbus
(CVE-2008-3834) didn't actually fix the security issue in question.

https://bugs.freedesktop.org/show_bug.cgi?id=17803

As a result, we've assigned CVE-2009-1189 to the issue.

-- 
Vincent Danen / Red Hat Security Response Team 
