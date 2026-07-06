X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/14
Message-ID: <f289ccbd-c594-ca0c-b76c-304d49967e09@apache.org>
Date: Mon, 06 Jul 2026 08:15:00 +0000
From: Andrea Cosentino <acosentino@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-43867: Apache Camel: Camel-PQC: The AWS Secrets Manager key-lifecycle manager deserializes persisted key metadata with java.io.ObjectInputStream and no ObjectInputFilter 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel (org.apache.camel:camel-pqc) 4.18.0 before 4.18.3
- Apache Camel (org.apache.camel:camel-pqc) 4.19.0 before 4.21.0

Description:

Deserialization of Untrusted Data vulnerability in Apache Camel PQC Component.

The camel-pqc component persists post-quantum key metadata (KeyMetadata) through pluggable KeyLifecycleManager implementations. AwsSecretsManagerKeyLifecycleManager.deserializeMetadata() reads that metadata back from the configured AWS Secrets Manager secret by Base64-decoding the stored value and deserializing it with a raw java.io.ObjectInputStream.readObject() and no ObjectInputFilter or class allow-list; the cast to KeyMetadata happens only after readObject() returns, so any readObject() side effects in a crafted object run before the type check. A principal who can write to the AWS Secrets Manager secret that holds this metadata (requiring secretsmanager:PutSecretValue on that secret) could store a crafted serialized object that is deserialized during normal key-lifecycle operations, potentially leading to code execution in the context of the application that manages the keys. This is the same underlying defect, in the same code path and remediated by the same fix, as CVE-2026-46590, which was reported independently and additionally covers the HashiCorp Vault and file-based sibling managers; both are incomplete-remediation follow-ons to CVE-2026-40048 (CAMEL-23200).
This issue affects Apache Camel: from 4.18.0 before 4.18.3, from 4.19.0 before 4.21.0.

Users are recommended to upgrade to version 4.21.0, which fixes the issue. If users are on the 4.18.x LTS releases stream, then they are suggested to upgrade to 4.18.3. For deployments that cannot upgrade immediately, restrict write access to the AWS Secrets Manager secret that holds the camel-pqc key metadata so that only the application’s own identity holds secretsmanager:PutSecretValue on it (least-privilege IAM), and keep the PQC key material in a secret separate from any data that less-trusted principals can write.

Credit:

Venkatraman Kumar from Securin (finder)
Andrea Cosentino (remediation developer)

References:

https://camel.apache.org/security/CVE-2026-43867.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-43867

