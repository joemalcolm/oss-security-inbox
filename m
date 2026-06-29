X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/11
Message-ID: <e28cb6eb-fb13-3841-3088-9032930b611f@apache.org>
Date: Mon, 29 Jun 2026 18:35:33 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50750: Apache ActiveMQ Broker, Apache ActiveMQ, Apache ActiveMQ All: Pre-authentication OpenWire DoS following fix for CVE-2026-49270 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 5.19.7 before 5.19.8
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.2.6 before 6.2.7
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 5.19.7 before 5.19.8
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.2.6 before 6.2.7
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 5.19.7 before 5.19.8
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.2.6 before 6.2.7

Description:

Denial of Service via Out of Memory vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ, Apache ActiveMQ All.

Following the fix for  CVE-2026-49270 an unauthenticated attacker can now cause broker OOM by sending an repeated BrokerInfo commands without sending a ConnectionInfo, until the broker will crash with OOM.
This issue affects Apache ActiveMQ Broker: from 5.19.7 before 5.19.8, from 6.2.6 before 6.2.7; Apache ActiveMQ: from 5.19.7 before 5.19.8, from 6.2.6 before 6.2.7; Apache ActiveMQ All: from 5.19.7 before 5.19.8, from 6.2.6 before 6.2.7.

Users are recommended to upgrade to version 6.2.7, which fixes the issue.

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50750

