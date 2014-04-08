X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/04/08/5
Message-ID: <5343F496.7040507@redhat.com>
Date: Tue, 08 Apr 2014 18:37:34 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: jbigkit security flaw
Content-Type: text/plain; charset=utf-8

Hi All,

Florian Weimer of Red Hat Product Security Team found a stack-based
buffer overflow flaw in the libjbig library (part of jbigkit).  A
specially-crafted image file read by libjbig could be used to cause a
program linked to libjbig to crash or, potentially, to execute
arbitrary code.

This issue has been assigned CVE-2013-6369.

References:

https://bugzilla.redhat.com/show_bug.cgi?id=1032273
https://www.cl.cam.ac.uk/~mgk25/jbigkit/CHANGES



-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
