X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/23/6
Message-ID: <c415be0d-df29-bc84-a358-fadf9ba562a7@apache.org>
Date: Thu, 23 Apr 2026 17:04:42 +0000
From: "Christopher L. Shannon" <cshannon@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41044: Apache ActiveMQ, Apache ActiveMQ Broker, Apache ActiveMQ All: Authenticated user can perform RCE via DestinationView MBean exposed by Jolokia 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache ActiveMQ (org.apache.activemq:apache-activemq) before 5.19.6
- Apache ActiveMQ (org.apache.activemq:apache-activemq) 6.0.0 before 6.2.5
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) before 5.19.6
- Apache ActiveMQ Broker (org.apache.activemq:activemq-broker) 6.0.0 before 6.2.5
- Apache ActiveMQ All (org.apache.activemq:activemq-all) before 5.19.6
- Apache ActiveMQ All (org.apache.activemq:activemq-all) 6.0.0 before 6.2.5

Description:

Improper Input Validation, Improper Control of Generation of Code ('Code Injection') vulnerability in Apache ActiveMQ, Apache ActiveMQ Broker, Apache ActiveMQ All.

An authenticated attacker can use the admin web console page to construct a malicious broker name that bypasses name validation to include an xbean binding that can be later used by a VM transport to load a remote Spring XML application.
The attacker can then use the DestinationView mbean to send a message to trigger a VM transport creation that will reference this malicious broker name which can lead to loading the malicious Spring XML context file.


Because Spring's ResourceXmlApplicationContext instantiates all singleton beans before the BrokerService validates the configuration, arbitrary code execution occurs on the broker's JVM through bean factory methods such as Runtime.exec().

This issue affects Apache ActiveMQ: before 5.19.6, from 6.0.0 before 6.2.5; Apache ActiveMQ Broker: before 5.19.6, from 6.0.0 before 6.2.5; Apache ActiveMQ All: before 5.19.6, from 6.0.0 before 6.2.5.

Users are recommended to upgrade to version 6.2.5 or 5.19.6, which fixes the issue.

Credit:

jsjcw (finder)

References:

https://activemq.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41044

