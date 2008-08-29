X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/08/29/2
Message-ID: <48B757E9.3040509@redhat.com>
Date: Fri, 29 Aug 2008 09:59:05 +0800
From: Eugene Teo <eteo@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2008-3525 kernel: missing capability checks in sbni_ioctl()
Content-Type: text/plain; charset=utf-8

I reported some bogus capability checks in the SBNI WAN driver. Proper
capability checks are required for the privileged operations.

This affects both 2.4 and 2.6 kernels. The proposed upstream commit is:
f2455eb176ac87081bbfc9a44b21c7cd2bc1967e.

I have allocated this CVE-2008-3525.

Thanks, Eugene
-- 
Eugene Teo / Red Hat Security Response Team
