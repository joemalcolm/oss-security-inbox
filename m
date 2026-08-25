X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/10
Message-ID: <5a5b0d3c-1787-4104-b271-4a389b50de0c@apache.org>
Date: Tue, 25 Aug 2026 23:02:30 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73180: Apache Tomcat: Authenticated WebSocket session survives end of HTTP session
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.43 through 7.0.109
- Apache Tomcat before 7.0.43 unaffected

Description:

Insufficient Session Expiration vulnerability in Apache Tomcat meant 
that if the session ID for an authenticated HTTP session was changed 
after a WebSocket connection had been established under that 
authenticated HTTP session, the WebSokcet session would not be closed as 
required by the Jakarta WebSocket specification when the HTTP session ended.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.43 through 
7.0.109. Other unsupported versions may also be affected.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

Credit:

0xCc.zhang (finder)

References:

https://lists.apache.org/thread/3j15vztszpyqss253mjq5v1kp7s6hooq
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73180
