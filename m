X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/22
Message-ID: <7a9877a0-3b9d-467c-b7ff-efc7546da367@apache.org>
Date: Mon, 29 Jun 2026 21:41:35 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53434: Apache Tomcat: Invalid CRL configuration doesn't trigger failure for FFM Connector
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.22
- Apache Tomcat 10.1.0-M7 through 10.1.55
- Apache Tomcat 9.0.83 through 9.0.118
- Apache Tomcat through 9.0.82 unaffected

Description:

Detection of Error Condition Without Action vulnerability in Apache 
Tomcat when configuring CRLs for a FFM based connector.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M7 through 10.1.55, from 9.0.83 through 9.0.118.

Users are recommended to upgrade to version 11.0.23, 10.1.56 or 9.0.119, 
which fixes the issue.

References:

https://lists.apache.org/thread/x510lbq0sfrd1qyo7q3r1mpllgpdcosk
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53434
