X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/26
Message-ID: <0c2df1c8-9881-4a7c-a4b4-706b43d0e93b@apache.org>
Date: Wed, 23 Sep 2026 12:26:59 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78437: Apache Tomcat: HTTP/2 DoS via malformed request
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.19 through 11.0.25
- Apache Tomcat 10.1.53 through 10.1.59
- Apache Tomcat 9.0.116 through 9.0.121
- Apache Tomcat through 8.5.100 unaffected

Description:

Incomplete cleanup vulnerability in Apache Tomcat allows a malformed 
request to potentially (depends on timing) cause one request from 
another user to fail.



This issue affects Apache Tomcat: from 11.0.19 through 11.0.25, from 
10.1.53 through 10.1.59, from 9.0.116 through 9.0.121.



Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

References:

https://lists.apache.org/thread/qkmsos3s8chn5053qr466rzwv6sk5gjg
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78437
