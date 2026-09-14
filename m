X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/14
Message-ID: <e8ba31b5-1fc9-da28-bc2d-e5389f594eba@apache.org>
Date: Mon, 14 Sep 2026 08:29:30 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77051: Apache Syncope: SQL injection via unsanitized entityKey and opEvent in Audit Events search 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-persistence-jpa) 4.1.0-M0 through 4.1.2

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache Syncope.





An administrator with adequate entitlements can achieve execution of arbitrary SQL via stacked queries, leveraging unsanitized entityKey and opEvent parameters.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)
Ho1aAs (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77051

