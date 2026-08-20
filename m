X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/13
Message-ID: <e940fcf4-fb94-2ff5-3755-be38e67e2ccf@apache.org>
Date: Thu, 20 Aug 2026 14:21:22 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63039: Apache InLong: SQL Injection via Unvalidated MyBatis Dollar-Sign Interpolation in AuditAlertRuleService 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache InLong. This allows an attacker to inject the string value into
the SQL statement, enabling SQL injection.


This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/pull/12080 .

Credit:

Andrea Cosentino (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63039

