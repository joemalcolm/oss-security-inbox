X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/24
Message-ID: <fb4c00b6-2c0c-43a5-af72-b66f7d1d42f3@apache.org>
Date: Mon, 29 Jun 2026 21:45:03 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55955: Apache Tomcat: EncryptInterceptor not protected against replay attacks
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.22
- Apache Tomcat 10.1.0-M1 through 10.1.55
- Apache Tomcat 9.0.13 through 9.0.118
- Apache Tomcat 8.5.38 through 8.5.100
- Apache Tomcat 7.0.100 through 7.0.109

Description:

Improper Authentication vulnerability in Apache Tomcat allowed a replay 
attack against the EncryptionInterceptor in the cluster component.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M1 through 10.1.55, from 9.0.13 through 9.0.18, from 8.5.38 
through 8.5.100, from 7.0.100 through 7.0.109.

Users are recommended to upgrade to version 11.0.23, 10.1.56, 9.0.119, 
which fixes the issue.

References:

https://lists.apache.org/thread/g4p5sf45p3f9r011pwqs9r54yd64s106
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55955
