X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/36
Message-ID: <2fc97292-884d-53cd-943a-3333ba14d1ab@apache.org>
Date: Mon, 23 Nov 2026 22:08:17 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-120502: Apache Jena: Excess memory allocation from malicious Thrift data 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Jena through 6.2.0

Description:

A vulnerability in Apache Jena can cause excess memory allocation from malicious Thrift data.



This issue affects Apache Jena: through 6.2.0.



Users are recommended to upgrade to version 6.3.0, which fixes the issue.

Credit:

Noriaki Iwasaki (finder)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-120502

