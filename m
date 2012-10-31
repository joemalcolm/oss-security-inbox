X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/10/31/4
Message-ID: <20121031143119.GS13903@dhcp-25-225.brq.redhat.com>
Date: Wed, 31 Oct 2012 15:31:20 +0100
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE Request -- kernel: net: divide by zero in tcp algorithm illinois
Content-Type: text/plain; charset=utf-8

Description of the problem:
Reading TCP stats when using TCP Illinois congestion control algorithm
can cause a divide by zero kernel oops.

An unprivileged local user could use this flaw to crash the system.

Proposed upstream patch:
http://thread.gmane.org/gmane.linux.network/247871

Acknowledgements:

This issue was discovered by Rodrigo Freire of Red Hat.

References:
https://bugzilla.redhat.com/show_bug.cgi?id=871848
http://thread.gmane.org/gmane.linux.network/247871

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team
