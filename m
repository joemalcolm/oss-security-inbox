X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/11
Message-ID: <901a74be-b56b-9f71-e913-62a9557a61aa@apache.org>
Date: Thu, 20 Aug 2026 14:21:12 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63037: Apache InLong: Unauthenticated SQL injection in Manager OpenAPI audit alert rule list endpoint 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache InLong. This appears to allow SQL injection in the ORDER BY clause against the
Manager backend database.

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/issues/12079 .

Credit:

cat dg (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63037

