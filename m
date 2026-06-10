X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/13
Message-ID: <2d8faa44-6bb1-8490-ee53-7aa155112917@apache.org>
Date: Wed, 10 Jun 2026 16:40:39 +0000
From: Jacopo Cappellato <jacopoc@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50223: Apache OFBiz: DataResource Low-Privileged Authenticated FreeMarker Template Injection Leads to Remote Code Execution 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache OFBiz before 24.09.07

Description:

Improper Control of Generation of Code ('Code Injection') vulnerability in Apache OFBiz allows a low-privileged authenticated user with Content/DataResource editing privileges to perform template injection attacks that could lead to Remote Code Execution.

This issue affects Apache OFBiz: before 24.09.07.

Users are recommended to upgrade to version 24.09.07, which fixes the issue.

Credit:

yi (reporter)
Jongyeon Lee (reporter)

References:

https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50223

