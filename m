X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/25
Message-ID: <11724fdb-7fac-4205-9614-da6edd30522c@apache.org>
Date: Mon, 29 Jun 2026 21:46:30 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55956: Apache Tomcat: Security constraints for default servlet ignored method
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.22
- Apache Tomcat 10.1.0-M1 through 10.1.55
- Apache Tomcat 9.0.0.M1 through 9.0.118
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown

Description:

Improper Authorization vulnerability in Apache Tomcat leads to security 
constraints specified for the default servlet ignoring any method or 
method omission configured as part of the constraint.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M1 through 10.1.55, from 9.0.0.M1 through 9.0.118, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109. Other versions that have 
reached end of support may also be affected.

Users are recommended to upgrade to version 11.0.23, 10.1.56 or 9.0.119, 
which fix the issue.

Credit:

j0hndo (dohyun4466@...il.com) (finder)

References:

https://lists.apache.org/thread/dcjdcnnnww9hhdm016hr0l7hpw1bzjfp
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55956
