X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/28/22
Message-ID: <6ff98b4c-c1fd-dbd3-2d31-ecfeee606a24@apache.org>
Date: Wed, 28 Oct 2026 20:20:12 +0000
From: Andrew Stitcher <astitcher@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105031: Apache Qpid Proton C: The OpenSSL TLS implementation adds a locally trusted certificate authority to the existing trusted system trust anchors. 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Qpid Proton C through 0.40.0

Description:

When using the OpenSSL TLS implementation, both the pn_ssl_domain_set_trusted_ca_db() & pn_tls_config_set_trusted_certs() APIs added to rather than replaced the default system trust anchors. Leading to potentially trusting unexpected peer certificates.



This can be worked around by setting the SSL_CERT_FILE environment variable for the application to /dev/null.



This issue does not affect the Win32 SChannel TLS implementation.



This issue affects Apache Qpid Proton C: through 0.40.0.



Users are recommended to upgrade to version 0.41.1, which fixes the issue.

This issue is being tracked as PROTON-2976 

References:

https://qpid.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105031
https://issues.apache.org/jira/browse/PROTON-2976

