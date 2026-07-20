X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/8
Message-ID: <afd925e4-6c6f-f26a-e6c5-4502dabd6ec9@apache.org>
Date: Mon, 20 Jul 2026 09:20:38 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-57308: Apache Syncope: SQL injection vulnerability in Audit Events search 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.6
- Apache Syncope 4.1.0-M0 through 4.1.1

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL Injection') vulnerability in Apache Syncope.

An administrator with adequate entitlements can achieve execution of arbitrary SQL via stacked queries, leveraging unsanitized sort parameters.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.6, from 4.1.0-M0 through 4.1.1.


Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue.

Credit:

Lennart Hostettler (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-57308

