X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/2
Message-ID: <7322af13-bcf7-45a4-aa9f-122e9449a128@apache.org>
Date: Tue, 25 Aug 2026 22:47:40 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65183: Apache Tomcat: TOCTOU when setting specific permissions for Unix Domain Sockets
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.42 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100 unaffected
- Apache Tomcat 7.0.0 through 7.0.109 unaffected

Description:

Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability in 
Apache Tomcat when creating unix domain sockets allows an unauthorised 
local user to access the unix domain socket.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.42 through 9.0.120.



Users are recommended to upgrade to version 11.0.25, 10.1.58, 9.0.121, 
which fixes the issue.

References:

https://lists.apache.org/thread/748o4st6d5dk6n3l7tgzo5yl68gg05c0
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65183
