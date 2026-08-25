X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/8
Message-ID: <c0f971b1-1c01-4252-8bd5-f7974cf4e299@apache.org>
Date: Tue, 25 Aug 2026 22:59:57 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68569: Apache Tomcat: Principal lookup can fail open in some cases
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 70.109
- Apache Tomcat before 7.0.0 unknown

Description:

Improper Authentication vulnerability in Apache Tomcat meant that in 
some circumstances (e.g. CLIENT-CERT, SPNEGO) that a user would be 
authenticated even if the user did not exist in the DataSourceRealm.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120.







The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.0 through 
7.0.109. Other unsupported versions may also be affected.







Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

References:

https://lists.apache.org/thread/8robqo76q0osxgw0b5lcwgz0hcf9h4zc
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68569
