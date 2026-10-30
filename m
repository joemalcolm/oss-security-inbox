X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/30/16
Message-ID: <617eac88-f30f-52be-b69f-cab08b3815a1@apache.org>
Date: Fri, 30 Oct 2026 16:13:54 +0000
From: Yash Mayya <yashmayya@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73322: Apache Pinot: Incorrect authorization in the single-stage query engine allows reading unauthorized dimension tables via lookup() 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Pinot 0.7.0 before 1.6.0

Description:

Incorrect Authorization vulnerability in the single-stage query engine of Apache Pinot.

When broker access control is enabled, the single-stage query engine authorizes only the table named in the query's FROM clause. The lookup() transform function identifies its dimension table with a string literal argument rather than through the FROM clause, so that table was never included in the authorization check. An authenticated user who is authorized for at least one table can therefore read columns from any dimension table in the cluster, including tables they have no access to, and can retrieve arbitrary rows of it by supplying primary key values directly. Per-principal row-level security filters configured on the dimension table are likewise not applied.

The multi-stage query engine is not affected.

This issue affects Apache Pinot: through 1.5.1

Users are recommended to upgrade to version [FIXED_VERSION], which fixes this issue.

Credit:

n0mi1k Security (finder)

References:

https://pinot.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-73322

