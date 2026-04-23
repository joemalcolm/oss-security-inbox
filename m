X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/23/4
Message-ID: <b29ba633-d112-d91b-23a9-52b6db9867ab@apache.org>
Date: Thu, 23 Apr 2026 17:02:52 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40466: Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ: Possible bypass of CVE-2026-34197 via HTTP discovery second-stage URI 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.6
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before 6.2.5
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.6
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.5
- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.6
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.5

Description:

Improper Input Validation, Improper Control of Generation of Code ('Code Injection') vulnerability in Apache ActiveMQ Broker, Apache ActiveMQ All, Apache ActiveMQ.



An authenticated attacker may bypass the fix in CVE-2026-34197 by adding a connector using an HTTP Discovery transport via BrokerView.addNetworkConnector or BrokerView.addConnector through Jolokia if the activemq-http module is on the classpath.
A malicious HTTP endpoint can return a VM transport through the HTTP URI which will bypass the validation added in CVE-2026-34197. The attacker can then use the VM transport's brokerConfig parameter to load a remote Spring XML application context using ResourceXmlApplicationContext.
Because Spring's ResourceXmlApplicationContext instantiates all singleton beans before the BrokerService validates the configuration, arbitrary code execution occurs on the broker's JVM through bean factory methods such as Runtime.exec().


This issue affects Apache ActiveMQ Broker: before 5.19.6, from 6.0.0 before 6.2.5; Apache ActiveMQ All: before 5.19.6, from 6.0.0 before 6.2.5; Apache ActiveMQ: before 5.19.6, from 6.0.0 before 6.2.5.

Users are recommended to upgrade to version 5.19.6 or 6.2.5, which fixes the issue.

Credit:

Fatih Ersinadim (finder)
gggggggga (finder)

References:

https://activemq.apache.org/security-advisories.data/CVE-2026-34197-announcement.txt
https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40466

