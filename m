X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/9
Message-ID: <45a08d16-434e-0f1e-9fc6-c391262eacf3@apache.org>
Date: Mon, 29 Jun 2026 18:29:26 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49877: Apache ActiveMQ: Authenticated web users retain admin access by default in the Web Console 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.7

Description:

Improper Authorization vulnerability in Apache ActiveMQ.

An authenticated low-privilege Web Console user by default can access /admin/* paths in the Web Console. The default Jetty settings incorrectly did not limit those paths to only admins.
This issue affects Apache ActiveMQ: before 5.19.8, from 6.0.0 before 6.2.7.

Users are recommended to upgrade to version 6.2.7 or 5.19.8, which fixes the issue.

Credit:

Leon Johnson (github: lokerxx) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49877

