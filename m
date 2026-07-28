X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/28/25
Message-ID: <d7f4fc56-f35b-4fef-9ae1-d53f2d8dc33a@apache.org>
Date: Tue, 28 Jul 2026 15:29:52 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66299: Apache Tomcat: DoS via WebSocket chat example
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M20 through 11.0.24
- Apache Tomcat 10.1.24 through 10.1.57
- Apache Tomcat 9.0.89 through 9.0.120
- Apache Tomcat through 8.5.100 unaffected

Description:

Uncontrolled Resource Consumption vulnerability in Apache Tomcat's 
WebSocket chat example.

This issue affects Apache Tomcat: from 11.0.0-M20 through 11.0.24, from 
10.1.24 through 10.1.57, from 9.0.89 through 9.0.120. Users who have 
followed the security guidance to remove the examples web application 
are not affected by this issue.

Users are recommended to remove the examples web application or to 
upgrade to version 11.0.25, 10.1.58 or 9.0.121 (when released), which 
fix the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/8owczcc1o8qw1rxmg9gvfk4w2jnh4l5k
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66299
