X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/21
Message-ID: <c52d7db7-db45-48e9-81e6-ad0582a68fe1@apache.org>
Date: Tue, 20 Oct 2026 14:37:08 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74048: Apache Tomcat: OpenSSL-FFM FIPS failure does not prevent start-up
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M14 through 11.0.26
- Apache Tomcat 10.1.22 through 10.1.60
- Apache Tomcat 9.0.92 through 9.0.122

Description:

Not Failing Securely ('Failing Open') vulnerability in Apache Tomcat. If 
the OpenSSLLifecycleListener is configured to use FIPS mode but FIPS 
activation fails, Tomcat logs and error but continues to use JSSE in 
non-FIPS mode with the provided configuration.



This issue affects Apache Tomcat: from 11.0.0-M14 through 11.0.26, from 
10.1.22 through 10.1.60, from 9.0.92 through 9.0.122.



Users are recommended to upgrade to version 11.0.27, 10.1.61 or 9.0.123, 
which fix the issue.

Credit:

0xCc.zhang (finder)

References:

https://lists.apache.org/thread.html/v5ry0sx1c7x1wr5mx4cddj3p3mv1ho6m
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74048
