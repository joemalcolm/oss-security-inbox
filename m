X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/08/11
Message-ID: <CAE+PnUGpb1h16kRF+NJuHE54UfDTSaEa1+dOqmmx+xTmV8SxHw@mail.gmail.com>
Date: Tue, 8 Sep 2026 15:36:12 +0300
From: Gidon Gershinsky <gg5070@...il.com>
To: dev@...quet.apache.org, n0mi1k Security <nomilksec@...il.com>,  ASF Security <security@...che.org>, oss-security@...ts.openwall.com
Subject: CVE-2026-73334: Apache Parquet Hadoop: File-controlled KMS URL is forwarded to pluggable KmsClient that skips host validation
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Parquet Hadoop (org.apache.parquet.crypto.keytools:parquet-hadoop)
1.12 through 1.18.0

Description:

Potential vulnerability in the org.apache.parquet.crypto.keytools package
in Apache parquet-java, versions 1.12 to 1.18.0
This package helps users encrypt Parquet files via an envelope encryption
mechanism that wraps (encrypts) data keys via a Key Management Service
(KMS).
If an optional KMS URL parameter is set by the writer application, it is
stored in a file. On the reader side, the KMS URL can be
application-controlled, or file-controlled, or ignored. If a reader does
not leverage application control for this parameter, a file-controlled KMS
URL is forwarded to a pluggable KmsClient implementation.
If the pluggable implementation does not ignore the URL and does not
perform host validation, a KMS token can be sent to a malicious host
specified by an attacker in the file.

Mitigation:

Applications that make use of the KMS URL parameter are required, where
possible, to leverage the application control for this parameter when
reading files with any parquet-java version (1.12 and above). If
application control is not possible, users are required to validate the
file-controlled KMS URL and use authentication in their custom KmsClient
implementations.
Parquet-java version 1.18.1 disables file-controlled KMS URLs by default,
and introduces a new application parameter that allows them to be enabled.  The
documentation for the new parameter explicitly requires validating the KMS
URL and using authentication in custom KmsClient implementations.

Credit:

Reported by n0mi1k

References:

https://parquet.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73334

