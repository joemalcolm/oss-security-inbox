X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/12
Message-ID: <ddb4f4cd-5131-4a17-4701-c302b9568256@apache.org>
Date: Tue, 08 Sep 2026 14:26:48 +0000
From: Matt Pavlovich <mattrpav@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74761: Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ: Spoofing of RemoveSubscription clientId 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before 6.3.2
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.11
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.3.2
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.11
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.3.2
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.11

Description:

Improper input validation in TopicRegion in Apache ActiveMQ, Apache ActiveMQ Broker, and Apache ActiveMQ All on all platforms.




An authenticated client can spoof clientId when removing a durable topic subscription.



This issue affects Apache ActiveMQ Broker: before 5.19.11, from 6.0.0 before 6.3.2; Apache ActiveMQ All: before 5.19.11, from 6.0.0 before 6.3.2; Apache ActiveMQ: before 5.19.11, from 6.0.0 before 6.3.2.



Users are recommended to upgrade to version 6.3.2 or 5.19.11 which fixes the issue.

Credit:

Wanxin Yin <yhellow123456@...il.com> (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74761

