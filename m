X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/21
Message-ID: <5bc8764c-bf9a-41da-8b2d-2cc67e6b84d1@apache.org>
Date: Mon, 29 Jun 2026 21:40:19 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53404: Apache Tomcat: Bad ornext processing in RewriteValve
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.22
- Apache Tomcat 10.1.0-M1 through 10.1.55
- Apache Tomcat 9.0.0.M1 through 9.0.118
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat before 8.0.0 unaffected

Description:

Always-Incorrect Control Flow Implementation vulnerability in Apache 
Tomcat's rewrite valve meant that if the first condition in an OR chain 
matched, subsequent non-OR conditions were skipped.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M1 through 10.1.55, from 9.0.0.M1 through 9.0.118, from 8.5.0 
through 8.5.100. Other versions that have reached end of support may 
also be affected.

Users are recommended to upgrade to version 11.0.23, 10.1.56 or 9.0.119, 
which fix the issue.

References:

https://lists.apache.org/thread/rdhpghgfskrdmw9hqzjgjrtw538smpmz
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53404
