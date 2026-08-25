X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/3
Message-ID: <b5443c21-9bf9-4d36-8f2e-e5ad039bffe6@apache.org>
Date: Tue, 25 Aug 2026 22:50:28 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65637: Apache Tomcat: HTTP/2 no-authority bypass of strict SNI validation - CVE-2026-32990 fix incomplete
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.20 through 11.0.24
- Apache Tomcat 10.1.53 through 10.1.57
- Apache Tomcat 9.0.115 through 9.0.120

Description:

Improper Input Validation vulnerability in Apache Tomcat due to 
incomplete fix for CVE-2026-32990.



This issue affects Apache Tomcat: from 11.0.20 through 11.0.24, from 
10.1.53 through 10.1.57, from 9.0.115 through 9.0.120.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

Credit:

Parag Ambildhuke (https://github.com/paragxa) (finder)

References:

https://lists.apache.org/thread/djog953z1ohsyt25bdvhfzbmsy22vgcj
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65637
