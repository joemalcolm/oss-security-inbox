X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/8
Message-ID: <5fe7a2fb-786f-8f60-9bc6-d6846ea42b89@apache.org>
Date: Sun, 26 Apr 2026 18:09:00 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40473: Apache Camel: Camel-Mina: Unsafe Deserialization in MinaConverter.toObjectInput() via TCP/UDP 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-mina) 3.0.0 before 4.14.6
- Apache Camel (org.apache.camel:camel-mina) 4.15.0 before 4.18.2
- Apache Camel (org.apache.camel:camel-mina) 4.19.0 before 4.20.0

Description:

The camel-mina component's MinaConverter.toObjectInput(IoBuffer) type converter wraps an IoBuffer in a java.io.ObjectInputStream without applying any ObjectInputFilter or class-loading restrictions. When a Camel route uses camel-mina as a TCP or UDP consumer and requests conversion to ObjectInput (for example via getBody(ObjectInput.class) or @Body ObjectInput), an attacker sending a crafted serialized Java object over the network to the MINA consumer port can trigger arbitrary code execution in the context of the application during readObject().

This issue affects Apache Camel: from 3.0.0 before 4.14.6, from 4.15.0 before 4.18.2, from 4.19.0 before 4.20.0.

Users are recommended to upgrade to version 4.20.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.6. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.2.

This issue is being tracked as CAMEL-23319 

Credit:

Venkatraman Kumar from Securin (finder)

References:

https://camel.apache.org/security/CVE-2026-40473.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40473
https://issues.apache.org/jira/browse/CAMEL-23319

