X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/31
Message-ID: <4e28d39a-4dc7-45af-bfc6-3c5151607ee8@apache.org>
Date: Wed, 23 Sep 2026 13:25:46 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86243: Apache Tomcat Native: DoS via TLS handshake
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat Native 2.0.0 through 2.0.15
- Apache Tomcat Native 1.3.0 through 1.3.8

Description:

Buffer over-read vulnerability in Apache Tomcat Native during the TLS 
handshake permits a malicious user to trigger a DoS via a JVM crash.



This issue affects Apache Tomcat Native: from 2.0.0 through 2.0.15, from 
1.3.0 through 1.3.8. Earlier, unsupported versions may also be affected.



Users are recommended to upgrade to version 1.3.9 or 2.0.16, which fix 
the issue.

References:

https://lists.apache.org/thread/8p4jf02w54m22x0cwpq2x53w3ov8o557
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86243
