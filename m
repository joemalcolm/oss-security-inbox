X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/28
Message-ID: <6378613f-b125-4c0a-8302-0084b745d7a0@apache.org>
Date: Wed, 23 Sep 2026 12:30:03 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86248: Apache Tomcat: Fix for CVE-2026-34500 was incomplete. OCSP checks sometimes soft-fail with FFM even when soft-fail is disabled
Content-Type: text/plain; charset=utf-8

Severity: moderate

Affected versions:

- Apache Tomcat 11.0.0-M14 through 11.0.25
- Apache Tomcat 10.1.22 through 10.1.59
- Apache Tomcat 9.0.92 through 9.0.121

Description:

CLIENT_CERT authentication does not fail as expected for some scenarios 
when soft fail is disabled vulnerability in Apache Tomcat.



This issue affects Apache Tomcat: from 11.0.0-M14 through 11.0.25, from 
10.1.22 through 10.1.59, from 9.0.92 through 9.0.121.



Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

Credit:

Mike Read (github.com/Michael-JRead) (finder)

References:

https://lists.apache.org/thread/nmkmjp9l53y8h3oc4n8fc0bkw9dv15sk
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86248
