X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/09/02/1
Message-ID: <254f89c1-4e22-9920-273e-2bc4a3642dc3@apache.org>
Date: Sat, 02 Sep 2023 20:41:50 +0000
From: Marton Szasz <szaszm@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2023-41180: Apache NiFi MiNiFi C++: Incorrect Certificate Validation in InvokeHTTP for MiNiFi C++ 
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache NiFi MiNiFi C++ 0.13.0 through 0.14.0

Description:

Incorrect certificate validation in InvokeHTTP on Apache NiFi MiNiFi C++ versions 0.13 to 0.14 allows an intermediary to present a forged certificate during TLS handshake negotation. The Disable Peer Verification property of InvokeHTTP was effectively flipped,  disabling verification by default, when using HTTPS.

Mitigation: Set the Disable Peer Verification property of InvokeHTTP to true when using MiNiFi C++ versions 0.13.0 or 0.14.0. Upgrading to MiNiFi C++ 0.15.0 corrects the default behavior.

This issue is being tracked as MINIFICPP-2170 

Credit:

Ferenc Gerlits (finder)

References:

https://nifi.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-41180
https://issues.apache.org/jira/browse/MINIFICPP-2170

