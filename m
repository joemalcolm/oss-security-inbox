X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/12
Message-ID: <7e82b4ee-0f80-5683-13a8-37190a15ae1e@apache.org>
Date: Thu, 20 Aug 2026 14:21:18 +0000
From: Charles Zhang <dockerzhang@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63038: Apache InLong: SQL Injection via String Concatenation Vulnerability Report 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache InLong 2.0.0 before 2.4.0

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache InLong. This allows an attacker to inject arbitrary SQL code through the
dbName, tableName, schemaName, and username parameters. 

This issue affects Apache InLong: from 2.0.0 before 2.4.0.



Users are advised to upgrade to Apache InLong's  2.4.0 or cherry-pick [1] to solve it.

[1]  https://github.com/apache/inlong/issues/12135 .

Credit:

zhaokaifei (finder)

References:

https://inlong.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-63038

