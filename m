X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/15/2
Message-ID: <7643c126-8cbe-9abb-b2b5-b766bf051b89@apache.org>
Date: Wed, 15 Jul 2026 05:01:34 +0000
From: Terence Monteiro <terencemo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-56287: Apache Fineract: Boolean SQL Injection in Client Search API (orderBy parameter) leading to Local File Disclosure 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fineract 1.14.0
- Apache Fineract 1.15.0 unaffected

Description:

A boolean-based SQL Injection vulnerability exists in Apache Fineract's Client Search API (GET /api/v1/clients) in versions up to and including 1.14.0. The orderBy and sortOrder request parameters are concatenated into a SQL query without sufficient validation, allowing an authenticated user with permission to view clients to inject arbitrary SQL via a crafted orderBy value. This can be leveraged to perform blind boolean-based data extraction and, on MySQL/MariaDB, to disclose arbitrary files readable by the database process via the LOAD_FILE() function. Users are recommended to upgrade to a version containing the fix

Credit:

Anirudh Anand (finder)
Aman Sapra (reporter)
Terence Monteiro (@terencemo) (remediation developer)
Ádám Sághy (@adamsaghy) (remediation reviewer)

References:

https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-56287

