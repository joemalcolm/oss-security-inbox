X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/19
Message-ID: <057d5fb9-d39b-4ab0-af98-c4a4b9e5f6bc@apache.org>
Date: Wed, 23 Sep 2026 12:10:20 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73581: Apache Tomcat: OpenSSL and OpenSSL-FFM TLS implementations ignore CRLs when certificate uses a keystore
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.0.M1 through 9.0.121
- Apache Tomcat 8.5.0 through 8.50.100
- Apache Tomcat through 8.5.0 unaffected

Description:

Improper Check for Certificate Revocation vulnerability in Apache 
Tomcat. Both the OpenSSL and OpenSSL-FFM TLS implementations ignore CRLs 
when certificate uses a keystore.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.58, from 9.0.0-M1 through 9.0.121.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100. Other unsupported 
versions may also be affected.



Users are recommended to upgrade to version 11.0.26, 10.1.59, 9.0.122, 
which fixes the issue.

Credit:

arpitjain099 (https://github.com/arpitjain099) (finder)

References:

https://lists.apache.org/thread/r0dj3h1pbn4wv96fhsfrnz3t6874t6do
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73581
