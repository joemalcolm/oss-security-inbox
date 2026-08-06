X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/11
Message-ID: <37a82793-aa26-e2ef-c0dd-ab34b6356c79@apache.org>
Date: Thu, 06 Aug 2026 14:06:11 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34501: Apache Portable Runtime Utility: Heap buffer overflow in APR redis client 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Portable Runtime Utility 1.6.0 through 1.6.3

Description:

Heap-based Buffer Overflow vulnerability in Apache Portable Runtime Utility redis client.

This issue affects Apache Portable Runtime Utility: from 1.6.0 through 1.6.3.

Users are recommended to upgrade to version 1.6.4, which fixes the issue.

Credit:

Elhanan Haenel (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34501

Timeline:

2026-03-27: reported
2026-08-06: fixed in 1.6.x by r1936810

