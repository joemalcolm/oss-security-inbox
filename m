X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/27/8
Message-ID: <efba3ac0-ad81-0238-589a-ea4253b29a97@apache.org>
Date: Mon, 27 Jul 2026 17:18:11 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61487: Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ: Authorization bypass via temporary composite destinations 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.9
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before 6.2.8
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.9
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.9
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.8

Description:

Improper Authorization vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ.

 An authenticated low-privilege user can bypass a per-destination
write ACL by sending to an ActiveMQ temporary composite destination whose physical name is a
comma-separated composite of real queues. This allows publishing messages to any of the destinations in the list without proper write ACL permissions because the authorization check is bypassed due to the composite destination being marked as temporary.
This issue affects Apache ActiveMQ Broker: before 5.19.9, from 6.0.0 before 6.2.8; Apache ActiveMQ All: before 5.19.9, from 6.0.0 before 6.2.8; Apache ActiveMQ: before 5.19.9, from 6.0.0 before 6.2.8.

Users are recommended to upgrade to version 5.19.9, 6.2.8 or 6.3.0, which fixes the issue.

Credit:

Claude and Ada Logics (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-61487

