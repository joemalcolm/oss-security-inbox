X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/12
Message-ID: <1b830088-787a-f809-b48a-c05bcec54d37@apache.org>
Date: Thu, 06 Aug 2026 14:06:24 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34502: Apache Portable Runtime Utility: Heap buffer overflow in APR memcached client 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Portable Runtime Utility 1.3.0 through 1.6.3

Description:

Heap-based Buffer Overflow vulnerability in Apache Portable Runtime Utility memcached client

This issue affects Apache Portable Runtime Utility: from 1.3.0 through 1.6.3.

Credit:

Elhanan Haenel (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34502

Timeline:

2026-03-27: reported
2026-08-06: fixed in 1.6.x by r1936813

