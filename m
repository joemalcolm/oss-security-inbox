X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/23/5
Message-ID: <e82c874e-45d4-cea3-7b93-b67b69c09901@apache.org>
Date: Thu, 23 Apr 2026 17:03:58 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41043: Apache ActiveMQ, Apache ActiveMQ Web: ActiveMQ Web Console -  XSS vulnerability when browsing queues 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.6
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.5
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) before 5.19.6
- Apache ActiveMQ Web (org.apache.activemq:activemq-web) 6.0.0 before 6.2.5

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic XSS) vulnerability in Apache ActiveMQ, Apache ActiveMQ Web.

An authenticated attacker can show malicious content when browsing queues in the web console by overriding the content type to be HTML (instead of XML) and by injecting HTML into a JMS selector field.

This issue affects Apache ActiveMQ: before 5.19.6, from 6.0.0 before 6.2.5; Apache ActiveMQ Web: before 5.19.6, from 6.0.0 before 6.2.5.

Users are recommended to upgrade to version 6.2.5 or 5.19.6, which fixes the issue.

Credit:

Khaled Alshammri (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41043

