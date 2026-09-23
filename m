X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/32
Message-ID: <1ba066f5-a01f-4877-a92e-48fd7536ffc1@apache.org>
Date: Wed, 23 Sep 2026 13:27:11 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86246: Apache Tomcat Native: Insecure OpenSSL options enabled
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat Native 2.0.0 through 2.0.15
- Apache Tomcat Native 1.3.0 through 1.3.8

Description:

Initialization of a resource with an insecure default vulnerability in 
Apache Tomcat Native enabled insecure options by default  including 
ALLOW_CLIENT_RENEGOTIATION, NO_EXTENDED_MASTER_SECRET, 
IGNORE_UNEXPECTED_EOF and ALLOW_NO_DHE_KEX.



This issue affects Apache Tomcat Native: from 2.0.0 through 2.0.15, from 
1.3.0 through 1.3.8. Earlier unsupported versions may also be affected.



Users are recommended to upgrade to version 2.0.16 or 1.3.9, which fix 
the issue.

References:

https://lists.apache.org/thread/dgyvfwb24nbk45ptvlhdyhdhl5o7k5ol
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86246
