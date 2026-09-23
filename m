X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/29
Message-ID: <5a409f62-2a8b-4327-8351-46f6b29934bb@apache.org>
Date: Wed, 23 Sep 2026 12:32:02 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86350: Apache Tomcat: Regression in fix for CVE-2026-41293 can trigger request header mix-up
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.22 through 11.0.25
- Apache Tomcat 10.1.55 through 10.1.59
- Apache Tomcat 9.0.118 through 9.0.121

Description:

Inconsistent interpretation of HTTP/2 requests ('HTTP Request/Response 
smuggling') vulnerability in Apache Tomcat caused by a regression in fix 
for CVE-2026-41293 can trigger request header mix-up.



This issue affects Apache Tomcat: from 11.0.22 through 11.0.25, from 
10.1.55 through 10.1.59, from 9.0.118 through 9.0.121.



Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

Credit:

Jeppe Weikop (finder)

References:

https://lists.apache.org/thread/mss45z99lcdd5dtpgcn45dy82f3toswc
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86350
