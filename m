X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/9
Message-ID: <a789b0c8-0835-fcea-b5d5-3a9314a9a07f@apache.org>
Date: Fri, 24 Jul 2026 10:53:22 +0000
From: Colm O hEigeartaigh <coheigea@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66143: Apache Neethi: Missing global alternative-output budget across policy computation paths 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Neethi (org.apache.neethi:neethi) before 3.2.3

Description:

It is possible to bypass the maximum number of normalized policy alternatives that was introduced in Apache Neethi 3.2.2 via certain crafted policies, which may lead to a denial of service attack via resource consumption. Users are recommended to upgrade to version 3.2.3, which fixes this issue.

Credit:

Reported by LTSHFWJT (finder)

References:

https://ws.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66143

