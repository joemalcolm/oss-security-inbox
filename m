X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/4
Message-ID: <e4be6079-cb69-e53f-5345-7d074bf0a3f9@apache.org>
Date: Sun, 05 Jul 2026 12:05:27 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-42527: Apache Camel: Permissive default ObjectInputFilter pattern admits java.net.** and enables DNS-based information disclosure 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel) 4.14.0 before 4.14.8
- Apache Camel (org.apache.camel:camel) 4.15.0 before 4.18.3
- Apache Camel (org.apache.camel:camel) 4.19.0 before 4.21.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel.

The default ObjectInputFilter pattern shipped with several Apache Camel components for defense-in-depth deserialization filtering ('java.**;javax.**;org.apache.camel.**;!*', or the no-'javax.**' variant in the aggregation-repository components) uses a recursive 'java.**' glob that admits classes whose hashCode/equals/readObject methods perform network I/O, notably java.net.URL and java.net.InetAddress. When an attacker can deliver a Java-serialized payload to an affected Camel consumer, deserialization of a HashMap (or any collection that calls hashCode on its elements) containing java.net.URL keys causes the JVM to issue DNS queries to the attacker-supplied host during the deserialization side-effect. The class-level filter check passes because the resulting object's class (HashMap) is allow-listed; the DNS query is observable on an attacker-controlled DNS server, providing an out-of-band side channel. The exposure is highest on the camel-jms family because JmsBinding.extractBodyFromJms invokes ObjectMessage.getObject() unconditionally when mapJmsMessage=true (default). Affected components: camel-jms, camel-sjms, camel-amqp, camel-mina, camel-netty, camel-netty-http, camel-vertx-http, camel-infinispan, and the aggregation repository components camel-leveldb, camel-cassandraql, camel-consul, camel-sql (JDBC aggregation repository).
This issue affects Apache Camel: from 4.14.0 before 4.14.8, from 4.15.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to a version that contains the CAMEL-23372 fix once available: 4.21.0 for the 4.21.x line, 4.18.3 for the 4.18.x line, and 4.14.8 for the 4.14.x line. For deployments that cannot upgrade immediately, configure a JMS-provider-side allow-list (Apache ActiveMQ Artemis 'deserializationAllowList' / 'deserializationDenyList', Apache ActiveMQ Classic 'org.apache.activemq.SERIALIZABLE_PACKAGES') as the primary mitigation, and/or override the in-code default via the endpoint-level 'deserializationFilter' option or the JVM-wide '-Djdk.serialFilter' system property with an explicit deny: '!java.net.**;java.**;javax.**;org.apache.camel.**;!*' (or '!java.net.**;java.**;org.apache.camel.**;!*' for the aggregation-repository components, which do not include javax.**).

Credit:

Venkatraman Kumar from Securin (finder)
Yu Bao from Paypal (finder)

References:

https://camel.apache.org/security/CVE-2026-42527.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-42527

