X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/9
Message-ID: <ca9e1874-a6a3-40a2-9231-fede32a905b6@apache.org>
Date: Tue, 25 Aug 2026 23:01:11 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68763: Apache Tomcat: DoS via allocation leak in HTTP/2 backlog tracking when a stream is reset
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.39 through 9.0.120
- Apache Tomcat 8.5.59 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Uncontrolled Resource Consumption vulnerability in Apache Tomcat via an 
allocation leak in the HTTP/2 backlog tracking when a stream is reset



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.39 through 9.0.120.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.59 through 8.5.100. Other unsupported 
versions may also be affected.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

Credit:

Zhen Kong (finder)

References:

https://lists.apache.org/thread/tv51ty39ppv41v04hdtkp9dp7tg02nzl
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68763
