X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/27/7
Message-ID: <2bfaa7a5-7d7d-2a43-7a63-252d74db5b03@apache.org>
Date: Mon, 27 Jul 2026 17:17:52 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59878: Apache ActiveMQ AMQP, Apache ActiveMQ, Apache ActiveMQ All: AMQP NIO negative frame size validation bypass leading to DoS 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache ActiveMQ AMQP (org.apache.activemq:activemq-amqp) before 5.19.9
- Apache ActiveMQ AMQP (org.apache.activemq:activemq-amqp) 6.0.0 before 6.2.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.9
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.8
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.9
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.8

Description:

Improper Input Validation vulnerability in Apache ActiveMQ AMQP, Apache ActiveMQ, Apache ActiveMQ All.

A remote unauthenticated peer that can reach an exposed AMQP NIO connector can trigger denial-of-service behavior by sending a frame size value. This cause the NIO threads to die and if done rapidly enough can lead to exhaustion of the NIO thread pool denying service to other connections.
This issue affects Apache ActiveMQ AMQP: before 5.19.9, from 6.0.0 before 6.2.8; Apache ActiveMQ: before 5.19.9, from 6.0.0 before 6.2.8; Apache ActiveMQ All: before 5.19.9, from 6.0.0 before 6.2.8.

Users are recommended to upgrade to version 5.19.9, 6.2.8, or 6.3.0 which fixes the issue.

Credit:

zx (Jace) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59878

