X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/01/31/1
Message-ID: <52EAE85A.40904@redhat.com>
Date: Fri, 31 Jan 2014 11:03:38 +1100
From: Garth Mollett <gmollett@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2013-6393 / libyaml buffer overflow
Content-Type: text/plain; charset=utf-8

Florian Weimer of the Red Hat Product Security Team discovered a heap
based buffer overflow due to integer misuse maybe triggered when parsing
large yaml documents.

This issue has been assigned CVE-2013-6393.

https://bugzilla.redhat.com/show_bug.cgi?id=1033990

-- 
Garth Mollett / Red Hat Security Response Team



Download attachment "signature.asc" of type "application/pgp-signature" (474 bytes)
