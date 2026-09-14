X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/21
Message-ID: <141e79e8-c8fb-676c-d1ae-4e9498d17c59@apache.org>
Date: Mon, 14 Sep 2026 08:45:56 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82232: Apache Syncope: SQL injection via sort parameter in Task search 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 4.1.0-M0 through 4.1.2

Description:

Improper neutralization of special elements used in an SQL command ('SQL injection') vulnerability in Apache Syncope.



An administrator with adequate entitlements can achieve execution of arbitrary SQL via stacked queries, leveraging unsanitized sort clauses for Task search.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

Alon Galili (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82232

