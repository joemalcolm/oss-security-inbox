X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/21/19
Message-ID: <20111121175119.GB7800@dhcp-25-225.brq.redhat.com>
Date: Mon, 21 Nov 2011 18:51:19 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2011-4110 kernel: keys: NULL pointer deref in the user-defined key type
Content-Type: text/plain; charset=utf-8

There is a NULL pointer deref in the user-defined key type whereby
updating a negative key into a fully instantiated key will cause
an oops to occur when the code attempts to free the non-existent
old payload.

Upstream commit:
9f35a33b8d06263a165efe3541d9aa0cdbd70b3b

References:
https://lkml.org/lkml/2011/11/15/363
https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2011-4110

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
