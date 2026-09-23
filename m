X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/30
Message-ID: <b9a4074b-5b38-4e48-9e25-1039539a39f8@apache.org>
Date: Wed, 23 Sep 2026 12:33:21 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87022: Apache Tomcat: WebSocket message smuggling with per-message-deflate
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.0.M1 through 9.0.121
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.56 through 7.0.109

Description:

Improper handling of length parameter inconsistency vulnerability in 
Apache Tomcat allows WebSocket message smuggling when 
per-message-deflate is used.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.59, from 9.0.0.M1 through 9.0.121.



The following versions were EOS at the time the CVE was created but are 
known to be affected: from 8.5.0 through 8.5.100, from 7.0.56 through 
7.0.109. Other unsupported versions may also be affected.



Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.1.22, 
which fix the issue.

Credit:

krsecurity(kongr) (finder)

References:

https://lists.apache.org/thread/ypvlkjqsq0480fnk9jm6h9qllddwlw4w
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-87022
