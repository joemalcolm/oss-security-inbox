X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/37
Message-ID: <4a9664df-02bb-c3c7-7a2b-a06a5287a57f@apache.org>
Date: Mon, 23 Nov 2026 22:08:33 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-124324: Apache Jena Fuseki: SERVICE bypasses localhost-only administration controls 
Content-Type: text/plain; charset=utf-8

Severity: critical 

Affected versions:

- Apache Jena Fuseki through 6.2.0

Description:

A vulnerability in Apache Jena Fuseki allows SERVICE operations to bypass restrictions on administration operations.



This issue affects Apache Jena Fuseki: from through 6.2.0.



Users are recommended to upgrade to version 6.3.0, which fixes the issue.

Credit:

Abhishek Kushwaha (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-124324

