X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/2
Message-ID: <370bada4-316e-9f4d-5cf0-c82b5b842b5b@apache.org>
Date: Sun, 26 Apr 2026 18:05:21 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-27172: Apache Camel: Unsafe Java deserialization in camel-consul ConsulRegistry allows arbitrary code execution via malicious values read from the Consul KV store 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-consul) 3.0.0 before 4.14.6
- Apache Camel (org.apache.camel:camel-consul) 4.15.0 before 4.18.1

Description:

The ConsulRegistry in the camel-consul component (class org.apache.camel.component.consul.ConsulRegistry and its inner ConsulRegistryUtils.deserialize method) read Java-serialized values from the Consul KV store and passed them to ObjectInputStream.readObject() without configuring an ObjectInputFilter. An attacker who can write to the Consul KV store backing a Camel ConsulRegistry instance could inject a malicious serialized Java object that is deserialized the next time Camel performs a lookup against that registry, leading to arbitrary code execution in the Camel process. The issue mirrors the class of vulnerability already addressed for other Camel components in CVE-2024-22369, CVE-2024-23114 and CVE-2026-25747, and was overlooked during the original remediation of those CVEs.

This issue affects Apache Camel: from 3.0.0 before 4.14.6, from 4.15.0 before 4.18.1.

Users are recommended to upgrade to version 4.19.0, which fixes the issue. If users are on the 4.14.x LTS releases stream, then they are suggested to upgrade to 4.14.6. If users are on the 4.18.x releases stream, then they are suggested to upgrade to 4.18.1.

This issue is being tracked as CAMEL-23029 

Credit:

Andrea Cosentino from Apache Software Foundation (finder)
Andrea Cosentino from Apache Software Foundation (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-27172.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-27172
https://issues.apache.org/jira/browse/CAMEL-23029

