X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/6
Message-ID: <f2dfa9d6-357b-46cf-9483-105bbba828b1@apache.org>
Date: Tue, 25 Aug 2026 22:56:06 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66422: Apache Tomcat: Servlet role references can bypass declarative role constraints
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.25 through 9.0.120
- Apache Tomcat 8.5.46 through 8.5.100
- Apache Tomcat 7.0.97 through 7.0.109
- Apache Tomcat before 7.0.97 unaffected

Description:

Improper Authorization vulnerability in Apache Tomcat cause by 
security-role-ref definitions being incorrectly used as role aliases 
within the Realm in additional to the correct usage with 
Request.isUserInRole().



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.25 through 9.0.120.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.46 through 8.5.100, from 7.0.97 through 
7.0.109. Other unsupported versions may also be affected.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/j5plylz1b2vhqvbkqn7k58nygxhcpk73
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66422
