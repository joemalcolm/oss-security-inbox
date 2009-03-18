X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/03/18/3
Message-ID: <Pine.GSO.4.51.0903172039120.17171@faron.mitre.org>
Date: Tue, 17 Mar 2009 20:39:33 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: "Steven M. Christey" <coley@...us.mitre.org>
Subject: Re: CVE request: kernel: inotify local DoS
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2009-0935
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2009-0935
Reference: MLIST:[linux-kernel] 20090131 [patch 03/43] inotify: clean up inotify_read and fix locking
Reference: URL:http://marc.info/?l=linux-kernel&m=123337123501681&w=2
Reference: MLIST:[oss-security] 20090306 CVE request: kernel: inotify local DoS
Reference: URL:http://www.openwall.com/lists/oss-security/2009/03/06/2
Reference: CONFIRM:https://bugzilla.redhat.com/show_bug.cgi?id=488935

The inotify_read function in the Linux kernel 2.6 before 2.6.29-rc3
allows local users to cause a denial of service (OOPS) via a read with
an invalid address to an inotify instance, which causes the device's
event list mutex to be unlocked twice and prevents proper
synchronization of a data structure for the inotify instance.

