X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/09/11/2
Message-ID: <504F0AA6.5000509@redhat.com>
Date: Tue, 11 Sep 2012 15:25:50 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2012-4405 ghostscript, argyllcms: Array index error leading to heap-based bufer OOB write
Content-Type: text/plain; charset=utf-8

Hi All,

An array index error leading to heap-based buffer out-of-buffer bounds
write flaw was found in the way International Color Consortium (ICC)
Format library (aka icclib) as used in Ghostscript and Argyll Color
Management System computed dimensional increment through the clut based
on the count of input channels.

This issue was reported by Marc Schönefeld

It seems that the upstream version of ghostscript no longer uses
embedded icclib so they are not affected.

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=854227
Patch: https://bugzilla.redhat.com/attachment.cgi?id=609986


-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
