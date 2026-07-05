X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/05/13
Message-ID: <e93028d6-c1bd-a4b4-d4c5-f0730ec8d498@apache.org>
Date: Sun, 05 Jul 2026 11:57:59 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46590: Apache Camel: Camel-PQC: The HashiCorp Vault and AWS Secrets Manager key-lifecycle managers deserialize persisted key metadata with java.io.ObjectInputStream and no ObjectInputFilter (incomplete remediation of CVE-2026-40048) 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-pqc) 4.18.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-pqc) 4.19.0 before 4.21.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel PQC component.

The camel-pqc component persists post-quantum key metadata (KeyMetadata) through pluggable KeyLifecycleManager implementations. HashicorpVaultKeyLifecycleManager and AwsSecretsManagerKeyLifecycleManager read that metadata back from the configured secret backend by deserializing a Base64-wrapped value with a raw java.io.ObjectInputStream.readObject() and no ObjectInputFilter or class allow-list; the cast to KeyMetadata happens only after readObject() returns, so any readObject() side effects in a crafted object run before the type check. The same unfiltered legacy-migration read also remained in FileBasedKeyLifecycleManager (for the stored KeyPair and KeyMetadata). A principal who can write to the operator-controlled backend that holds these values - the HashiCorp Vault KV path, or the AWS Secrets Manager secret (requiring a Vault token or secretsmanager:PutSecretValue) - could store a crafted serialized object that is deserialized during normal key-lifecycle operations, potentially leading to code execution in the context of the application that manages the keys. This is an incomplete-remediation follow-on to CVE-2026-40048 (CAMEL-23200), which changed FileBasedKeyLifecycleManager to store metadata as JSON / PKCS#8 / X.509 but did not add an ObjectInputFilter, did not cover the Vault and AWS sibling managers, and left FileBasedKeyLifecycleManager's own legacy-migration deserialization unfiltered.
This issue affects Apache Camel: from 4.18.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.18.x LTS releases stream, then they are suggested to upgrade to 4.18.3. For deployments that cannot upgrade immediately, restrict write access to the key backend so that only the application's own identity can write the camel-pqc secrets (least-privilege HashiCorp Vault policies and secretsmanager:PutSecretValue IAM), and keep the PQC key material in a backend separate from any data that less-trusted principals can write.

Credit:

Yu Bao from Paypal (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-46590.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46590

