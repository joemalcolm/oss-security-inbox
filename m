X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/24
Message-ID: <6f751d4a-ce6f-43f1-8828-2a92651c3700@apache.org>
Date: Tue, 20 Oct 2026 14:43:57 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-88041: Apache Tomcat: HTTP/2 trailer header cross-contamination
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M23 through 11.0.26
- Apache Tomcat 10.1.27 through 10.1.60
- Apache Tomcat 9.0.92 through 9.0.122

Description:

Incomplete cleanup vulnerability in Apache Tomcat allowed an trailer 
information from a previous request to leak into a subsequent request.



This issue affects Apache Tomcat: from 11.0.0-M23 through 11.0.26, from 
10.1.27 through 10.1.60, from 9.0.92 through 9.0.122.



Users are recommended to upgrade to version 11.0.27, 10.1.61 or 9.0.123, 
which fix the issue.

Credit:

Wentao He (finder)

References:

https://lists.apache.org/thread.html/dnmm9l3byytg3l66nk1jrqfrl7jty7n1
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-88041
