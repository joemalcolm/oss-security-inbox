X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/06/10
Message-ID: <7dfeb462-3cc8-6c87-8b25-4a0bf2b34902@apache.org>
Date: Thu, 06 Aug 2026 14:05:55 +0000
From: Eric Covener <covener@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-34191: Apache Portable Runtime Utility: SQL Injection in apr_dbd_oracle 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Portable Runtime Utility 1.6.0 through 1.6.3

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache Portable Runtime Utility via apr_dbd_oracle provider.

This issue affects Apache Portable Runtime Utility: from 1.6.0 through 1.6.3

Credit:

Elhanan Haenel (finder)

References:

https://apr.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-34191

Timeline:

2026-03-24: reported
2026-08-06: fixed in 1.6.x by r1936817

