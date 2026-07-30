X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/30/7
Message-ID: <23356991-8e9b-4aa2-9dfc-6fab6d910b9a@apache.org>
Date: Thu, 30 Jul 2026 09:21:53 +0000
From: Daniel Gaspar <dpgaspar@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-23985: Apache Superset: Regular Expression Denial of Service (ReDoS) in SQL Parser 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Superset before 6.0.0

Description:

A Regular Expression Denial of Service (ReDoS) vulnerability exists in Apache Superset versions 1.5.0 through 5.0.0. The vulnerability is located in the sql_parse.py component, specifically within the SQL_REGEX used for parsing SQL statements in the sqlparse library integration.
The affected regular expression contains overlapping disjunctions that share a common outer quantifier. An authenticated attacker can exploit this by sending a maliciously crafted input string (specifically a long sequence of backslashes or similar characters) to endpoints that process SQL queries

This issue affects Apache Superset: before 6.0.0.

Users are recommended to upgrade to version 6.0.0, which fixes the issue. 

Workarounds:
● WAF Rules: Implement Web Application Firewall (WAF) rules to detect and block
requests containing excessively long sequences of backslashes or suspicious repeated
patterns in the queries.extras.where parameter.
● Rate Limiting: Ensure strict rate limiting is applied to the /api/v1/chart/data endpoint to
reduce the impact of potential attacks.

Credit:

Trung Đức Lê (reporter)
Beto de Almeida (remediation developer)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-23985

