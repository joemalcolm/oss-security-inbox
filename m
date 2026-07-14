X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/14/8
Message-ID: <ce255d21-9f68-400c-96cf-8c2504189ebd@apache.org>
Date: Tue, 14 Jul 2026 09:25:57 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59084: Apache Tomcat: EncryptInterceptor requirements not clearly documented
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.23
- Apache Tomcat 10.1.0-M1 through 10.1.56
- Apache Tomcat 9.0.13 through 9.0.119
- Apache Tomcat 8.5.38 through 8.5.100
- Apache Tomcat 7.0.100 through 7.0.109

Description:

Insufficient Technical Documentation vulnerability in Apache Tomcat 
since the requirements to securely configure the EncryptInterceptor were 
not clearly documented.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.23, from 
10.1.0-M1 through 10.1.56, from 9.0.13 through 9.0.119, from 8.5.38 
through 8.5.100, from 7.0.100 through 7.0.109. Other versions that have 
reached end of support may also be affected.

Users are recommended to upgrade to version 11.0.24, 10.1.57 or 9.0.120 
which fix the issue.

Credit:

NDIx (reporter)

References:

https://lists.apache.org/thread/7w9746ootcxo0gvx26xjpw80l31f1qw7
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-59084
