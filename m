X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/1
Message-ID: <8518a778-4999-4dc1-b720-c2acd892dd34@apache.org>
Date: Tue, 25 Aug 2026 22:46:35 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65182: Apache Tomcat: Bypass longest prefix security constraint
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown

Description:

Improper Access Control, Incorrect Authorization vulnerability in Apache 
Tomcat leads to security constraint bypass if a constraint for a longer 
path is specified before a more restrictive constraint for a shorter 
sub-path.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109.



Users are recommended to upgrade to version 11.0.25, 10.1.58, 9.0.121, 
which fixes the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/joosxvzc9b49ttj8lj0jw9mqt0ml767m
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65182
