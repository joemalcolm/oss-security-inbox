X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/27
Message-ID: <48ce2cfe-1f4f-4083-b4f8-c2486960668f@apache.org>
Date: Tue, 20 Oct 2026 14:47:15 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-101356: Apache Tomcat: HTTP/2 request/response mix-up after error during async processing
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.22 through 11.0.26
- Apache Tomcat 10.1.55 through 10.1.60
- Apache Tomcat 9.0.118 through 9.0.122

Description:

Incorrect object recycling and re-use vulnerability in Apache Tomcat 
affecting HTTP/2 processing of asynchronous servlets can trigger request 
and/or response mix-up between users.



This issue affects Apache Tomcat: from 11.0.22 through 11.0.26, from 
10.1.55 through 10.1.60, from 9.0.118 through 9.0.122.



Users are recommended to upgrade to version 11.0.27, 10.1.61 or 9.0.123, 
which fixes the issue.

References:

https://lists.apache.org/thread.html/d1xjt7bbjqw7y7n5mcb4fm815hpfgc27
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-101356
