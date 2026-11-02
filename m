X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/11
Message-ID: <913c5a36-d757-3c2a-e6d5-b1a281a1444c@apache.org>
Date: Mon, 02 Nov 2026 12:40:59 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-114364: Apache Syncope: SQL injection via unsanitized opEvent in Audit Events search 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.8
- Apache Syncope 4.1.0-M0 through 4.1.3

Description:

Improper neutralization of special elements used in an SQL command ('SQL injection') vulnerability in Apache Syncope.



This CVE covers an incomplete fix for CVE-2026-77051: an administrator with adequate entitlements can achieve execution of arbitrary SQL via stacked queries, leveraging unsanitized opEvent parameters.
Reference: https://cve.org/CVERecord?id=CVE-2026-77051

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.8, from 4.1.0-M0 through 4.1.3.



Users are recommended to upgrade to version 4.0.9 / 4.1.4, which fix this issue.

Credit:

Alex Palinkash (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-114364

