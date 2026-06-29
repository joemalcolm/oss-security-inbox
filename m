X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/23
Message-ID: <e389fc56-2a5b-40d9-a46d-479d0e526e55@apache.org>
Date: Mon, 29 Jun 2026 21:42:51 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55276: Apache Tomcat: Logged effective web.xml is incomplete
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
Tomcat meant that special roles and empty authorisation constraints were 
not included when the effective web.xml was logged.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M1 through 10.1.55, from 9.0.0.M1 through 9.0.118, from 8.5.0 
through 8.5.100. Other versions that have reached end of support may 
also be affected.

Users are recommended to upgrade to version 11.0.23, 10.1.56 or 9.0.119 
which fixes the issue.

References:

https://lists.apache.org/thread/jy09xjlzn6r2qwvqoph8vcmf959yq68v
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55276
