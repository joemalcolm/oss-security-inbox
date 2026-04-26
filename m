X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/26/6
Message-ID: <49dfc5e2-8fc5-7c90-bc1f-f3928f576e7a@apache.org>
Date: Sun, 26 Apr 2026 18:08:09 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40048: Apache Camel: Camel-PQC: Unsafe Deserialization from FileBasedKeyLifecycleManager 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel (org.apache.camel:camel-pqc) 4.19.0 before 4.20.0
- Apache Camel (org.apache.camel:camel-pqc) 4.18.0 before 4.18.2

Description:

The Camel-PQC FileBasedKeyLifecycleManager class deserializes the contents of `<keyId>.key` files in the configured key directory using java.io.ObjectInputStream without applying any ObjectInputFilter or class-loading restrictions. The cast to `java.security.KeyPair` is evaluated only after `readObject()` has already returned, so any `readObject()` side effects in the deserialized object run before the type check. An attacker who can write to the key directory used by a Camel application — for example through a path traversal into the directory, misconfigured filesystem permissions on the volume where keys are stored, a compromised key provisioning pipeline, or a symlink attack — can place a crafted serialized Java object that, when deserialized during normal key lifecycle operations, results in arbitrary code execution in the context of the application.

This issue affects Apache Camel: from 4.19.0 before 4.20.0, from 4.18.0 before 4.18.2.

Users are recommended to upgrade to version 4.20.0, which fixes the issue by replacing java.io.ObjectInputStream-based key and metadata storage with standard PKCS#8 (private key) / X.509 SubjectPublicKeyInfo (public key) Base64 JSON encoding. For users on the 4.18.x LTS releases stream, upgrade to 4.18.2.

This issue is being tracked as CAMEL-23200 

Credit:

Andrea Cosentino from ASF (finder)
Venkatraman Kumar from Securin (finder)

References:

https://camel.apache.org/security/CVE-2026-40048.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-40048
https://issues.apache.org/jira/browse/CAMEL-23200

