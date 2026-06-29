X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/13
Message-ID: <58898902-a3f8-3276-7372-d618bd2d7b92@apache.org>
Date: Mon, 29 Jun 2026 18:42:12 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53916: Apache ActiveMQ, Apache ActiveMQ All, Apache ActiveMQ Stomp: Unbounded header buffer in STOMP NIO codec 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.7
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.8
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.7
- Apache ActiveMQ Stomp (org.apache.activemq:activemq-stomp) before 5.19.8
- Apache ActiveMQ Stomp (org.apache.activemq:activemq-stomp) 6.0.0 before 6.2.7

Description:

Memory Allocation with Excessive Size Value vulnerability in Apache ActiveMQ, Apache ActiveMQ All, Apache ActiveMQ Stomp.


An unauthenticated client that opens a STOMP NIO connection can send header bytes that never terminate which makes the broker buffer them without limit, exhausting the JVM heap. 
This issue affects Apache ActiveMQ: before 5.19.8, from 6.0.0 before 6.2.7; Apache ActiveMQ All: before 5.19.8, from 6.0.0 before 6.2.7; Apache ActiveMQ Stomp: before 5.19.8, from 6.0.0 before 6.2.7.

Users are recommended to upgrade to version 6.2.7 or 5.19.8, which fixes the issue.

Credit:

tonghuaroot (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53916

