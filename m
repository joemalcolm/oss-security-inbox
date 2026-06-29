X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/15
Message-ID: <7ca1409f-5dec-8283-e35b-fd064b4980b6@apache.org>
Date: Mon, 29 Jun 2026 18:45:04 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-54475: Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ: Temporary destination ownership takeover 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.8
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before 6.2.7
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.8
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.7

Description:

Missing Authorization vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ.

Apache ActiveMQ Classic temporary destinations are expected to be isolated to the connection that created them. The isolation can be broken as this is only checked in the client, allowing a different connection to consume from another connection's temporary
destination.
This issue affects Apache ActiveMQ Broker: before 5.19.8, from 6.0.0 before 6.2.7; Apache ActiveMQ All: before 5.19.8, from 6.0.0 before 6.2.7; Apache ActiveMQ: before 5.19.8, from 6.0.0 before 6.2.7.

Users are recommended to upgrade to version 6.2.7, which fixes the issue.

Credit:

Leon Johnson (github: lokerxx) (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-54475

