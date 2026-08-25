X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/7
Message-ID: <7770ad57-07f6-40ae-bbf8-bfdc0087525b@apache.org>
Date: Tue, 25 Aug 2026 22:58:10 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-68525: Apache Tomcat: Redirect after FORM auth may bypass method specific constraints
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown

Description:

Incorrect Authorization vulnerability in Apache Tomcat's FORM 
authentication process allows the bypassing of a security constraint 
that limits user has access to a resource POST but not GET.







This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120.







The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.0 through 
7.0.109. Other unsupported versions may also be affected.















Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fixes the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/x1y2lfsgzxwzc456f8954vbvgn03zhd7
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-68525
