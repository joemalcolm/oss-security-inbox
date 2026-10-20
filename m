X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/25
Message-ID: <1670a935-1a33-4846-9d41-1641785e930d@apache.org>
Date: Tue, 20 Oct 2026 14:45:03 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-93446: Apache Tomcat: Possible TLS 1.3 connection failures
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M21 through 11.0.26
- Apache Tomcat 10.1.25 through 10.1.60
- Apache Tomcat 9.0.90 through 9.0.122

Description:

Incomplete cleanup vulnerability in Apache Tomcat could cause TLS 1.3 
connections to fail intermittently.



This issue affects Apache Tomcat: from 11.0.0-M21 through 11.0.26, from 
10.1.25 through 10.1.60, from 9.0.90 through 9.0.122.



Users are recommended to upgrade to version 11.0.27, 10.1.61 or 9.0.123, 
which fix the issue.

Credit:

FHMTT (https://github.com/FHMTT) (finder)

References:

https://lists.apache.org/thread.html/zh87okr5qspv4byzfpy2w6dqrokrnxzw
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-93446
