X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/9
Message-ID: <a6c17ec3-2bdb-27fb-fef5-0d8046d99733@apache.org>
Date: Sun, 26 Apr 2026 18:09:28 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40858: Apache Camel: Camel-Infinispan: Unsafe Deserialization in Remote Aggregation Repository 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-infinispan) 4.0.0 before 4.14.7
- Apache Camel (org.apache.camel:camel-infinispan) 4.15.0 before 4.18.2
- Apache Camel (org.apache.camel:camel-infinispan) 4.19.0 before 4.20.0

Description:

The camel-infinispan component's ProtoStream-based remote aggregation repository deserializes data read from a remote Infinispan cache using java.io.ObjectInputStream without applying any ObjectInputFilter. An attacker who can write to the Infinispan cache used by a Camel application can inject a crafted serialized Java object that, when read during normal aggregation repository operations such as get or recover, results in arbitrary code execution in the context of the application.

This issue affects Apache Camel: from 4.0.0 before 4.14.7, from 4.15.0 before 4.18.2, from 4.19.0 before 4.20.0.

Users are recommended to upgrade to version 4.20.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.7. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.2.

The JIRA ticket:  https://issues.apache.org/jira/browse/CAMEL-23322  refers to the various commits that resolved the issue, and have more details. This issue follows the same class of vulnerability previously addressed in CVE-2024-22369, CVE-2024-23114 and CVE-2026-25747.

This issue is being tracked as CAMEL-23322 

Credit:

Feng Ning from Innora Pte. Ltd. (finder)

References:

https://camel.apache.org/security/CVE-2026-40858.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40858
https://issues.apache.org/jira/browse/CAMEL-23322

