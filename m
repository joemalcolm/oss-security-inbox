X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/10
Message-ID: <23644412-7eef-b3cc-5a8d-41e52806cc9e@apache.org>
Date: Sun, 26 Apr 2026 18:09:56 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40860: Apache Camel: Unsafe Deserialization of JMS ObjectMessage in camel-jms, camel-sjms, camel-sjms2 and camel-amqp 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-jms) 3.0.0 before 4.14.7
- Apache Camel (org.apache.camel:camel-jms) 4.15.0 before 4.18.2
- Apache Camel (org.apache.camel:camel-jms) 4.19.0 before 4.20.0

Description:

JmsBinding.extractBodyFromJms() in camel-jms, and the equivalent JmsBinding class in camel-sjms, deserialized the payload of incoming JMS ObjectMessage values via javax.jms.ObjectMessage.getObject() without applying any ObjectInputFilter, class allowlist or class denylist. Because this code path is reached whenever the mapJmsMessage option is enabled (the default) and Camel acts as a JMS consumer, an attacker able to publish a crafted ObjectMessage to a queue or topic consumed by a Camel application could achieve remote code execution when a deserialization gadget chain was present on the classpath. The same handling was reached transitively through camel-sjms2 (whose Sjms2Endpoint extends SjmsEndpoint) and through camel-amqp (whose AMQPJmsBinding extends JmsBinding), and by other JMS-family components built on JmsComponent such as camel-activemq and camel-activemq6.

This issue affects Apache Camel: from 3.0.0 before 4.14.7, from 4.15.0 before 4.18.2, from 4.19.0 before 4.20.0.

Users are recommended to upgrade to version 4.20.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.7. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.2.

This issue is being tracked as CAMEL-23321 

Credit:

Venkatraman Kumar from Securin (finder)

References:

https://camel.apache.org/security/CVE-2026-40860.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40860
https://issues.apache.org/jira/browse/CAMEL-23321

