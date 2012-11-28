X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/11/28/1
Message-ID: <50B5A526.5060303@redhat.com>
Date: Wed, 28 Nov 2012 11:16:14 +0530
From: Huzaifa Sidhpurwala <huzaifas@...hat.com>
To: oss-security@...ts.openwall.com
Subject: libtiff: Stack based buffer overflow when handling DOTRANGE tags
Content-Type: text/plain; charset=utf-8

Hi All,

I found a stack-based buffer overflow in the way libtiff handled
DOTRANGE tags. An attacker could use this flaw to create a specially-
crafted TIFF file that, when opened, would cause an application linked
against libtiff to crash or, possibly, execute arbitrary code.

This issue is fixed in libtiff-4.0.2

We have assigned CVE-2012-5581 to this issue.

Reference:
https://bugzilla.redhat.com/show_bug.cgi?id=867235



-- 
Huzaifa Sidhpurwala / Red Hat Security Response Team
