X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/19/6
Message-ID: <a22ea2ff-ff89-ffcb-0621-43c627e68def@apache.org>
Date: Mon, 19 Oct 2026 22:24:52 +0000
From: Adam Reeve <areeve@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-92287: Apache Arrow C++, PyArrow: Parquet file-controlled KMS URL is forwarded to pluggable KmsClient that skips host validation 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Arrow C++ 4.0.0 before 26.0.0
- Apache Arrow C++ 26.0.0 unaffected
- PyArrow 8.0.0 before 26.0.0
- PyArrow 26.0.0 unaffected

Description:

Pass-through of unvalidated KMS URLs to KMS clients in Apache C++ Parquet and PyArrow versions 4.0.0 to 25.0.1.




This affects users who read Parquet files and configure Parquet decryption properties with a KmsClient implementation.




On the reader side, the KMS URL can be application-controlled (specified in the KmsConnectionConfig) or file-controlled.
If the user does not leverage application control for this parameter, a file-controlled KMS URL is forwarded to a pluggable KmsClient implementation. 
If the KMS implementation does not perform host validation and makes use of the provided KMS URL, a KMS token can be sent to a malicious host set by an attacker in the file. 




Users are recommended to upgrade to version 26.0.0, which disables this behavior by default and requires that users opt-in to it by enabling the read_kms_url flag in the DecryptionConfiguration. Users of affected versions are recommended to either specify the KMS URL in the KmsConnectionConfig when reading files, or ensure any KmsClient implementations validate received KMS URLs. Users that opt-in to file-controlled KMS URLs in version 26.0.0 and later must ensure KmsClients validate KMS URLs.

Credit:

n0mi1k (finder)

References:

https://github.com/apache/arrow/issues/51349
https://arrow.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-92287

