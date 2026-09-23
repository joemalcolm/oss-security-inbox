X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/24
Message-ID: <9e74ce34-eaae-4cca-97c0-3ca01b393ea4@apache.org>
Date: Wed, 23 Sep 2026 12:21:40 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77791: Apache Tomcat: DoS via busy wait during WebSocket close
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M5 through 11.0.25
- Apache Tomcat 10.1.8 through 10.1.59
- Apache Tomcat 9.0.74 through 9.0.121
- Apache Tomcat 8.5.88 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Uncontrolled Resource Consumption vulnerability in Apache Tomcat during 
sending of WebSocket close message enabled a DoS attack.



This issue affects Apache Tomcat: from 11.0.0-M5 through 11.0.25, from 
10.1.8 through 10.1.59, from 9.0.74 through 9.0.121.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.88 through 8.5.100. Other unsupported 
versions may also be affected.




Users are recommended to upgrade to version 11.0.26, 10.1.60 or 9.0.122, 
which fix the issue.

References:

https://lists.apache.org/thread/mb1pjjooqytrl6hbvbt3rw1lqwlon4cz
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77791
