X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/9
Message-ID: <9af91dd6-9a83-ee5b-a01c-9bacbf3f57ec@apache.org>
Date: Thu, 06 Aug 2026 14:04:48 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-32327: Apache Portable Runtime Utility: apr-util XML stack recursion crash 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Portable Runtime Utility (APR-util) through 1.6.3

Description:

A bug in APR-util version 1.6.3 (and earlier) allows a stack recursion attack against any library consumer which parses XML from untrusted sources and uses the apr_xml_quote_elem() function.

Users are recommended to upgrade to version 1.6.4, which fixes this issue.

Credit:

Younghyo Cho @ CISLab, SeoulTech (finder)
4ra1n, pyn3rd and unam4 (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-32327

Timeline:

2026-03-07: Report received
2026-08-06: fixed in 1.6.x by r1936815

