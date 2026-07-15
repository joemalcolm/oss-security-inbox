X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/15/3
Message-ID: <b403909c-c673-06a7-d887-85bd4878de13@apache.org>
Date: Wed, 15 Jul 2026 05:21:11 +0000
From: Terence Monteiro <terencemo@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57821: Apache Fineract: Office list: SQL Injection via Subquery in orderBy 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Fineract through 1.14.0
- Apache Fineract 1.15.0 unaffected

Description:

A SQL Injection vulnerability exists in Apache Fineract's Office Search API (GET /api/v1/offices) in versions up to and including 1.14.0. The orderBy request parameter is concatenated into a SQL query without sufficient validation, allowing an authenticated user with permission to view offices to inject arbitrary SQL via a crafted orderBy value. This is a bypass of the ColumnValidator fix introduced for CVE-2024-32838, which does not detect bare subqueries in the ORDER BY position. This can be leveraged to perform time-based blind SQL injection for data exfiltration. Because the injected query blocks the database connection for its full duration, concurrent exploitation can exhaust the application's database connection pool, resulting in denial of service for other users. Users are recommended to upgrade to a version containing the fix.

Credit:

Venkatraman Kumar (@r3dw0lfsec) at Securin (finder)
Terence Monteiro (@terencemo) (remediation developer)
Ádám Sághy (@adamsaghy) (remediation reviewer)

References:

https://github.com/apache/fineract/pull/6048
https://fineract.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57821

