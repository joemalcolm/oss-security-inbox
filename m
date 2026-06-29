X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/29/20
Message-ID: <ff9fe46a-09ab-43a2-ab6a-d3b432399e20@apache.org>
Date: Mon, 29 Jun 2026 21:37:17 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-50229: Apache Tomcat: XSS in number guess example
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.22
- Apache Tomcat 10.1.0-M1 through 10.1.55
- Apache Tomcat 9.0.0.M1 through 9.0.118
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109
- Apache Tomcat before 7.0.0 unknown

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic 
XSS) vulnerability in the number guess example for Apache Tomcat.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.22, from 
10.1.0-M1 through 10.1.55, from 9.0.0.M1 through 9.0.118, from 8.5.0 
through 8.5.100, from 7.0.0 through 7.0.109. Other versions that have 
reached end of support may also be affected.

Users are recommended to upgrade to version 11.0.23, 10.1.56 or 9.0.119, 
which fix the issue.

Credit:

Erichen, Institute of Computing Technology, Chinese Academy of Sciences 
(finder)
Yashar Shahinzadeh (finder)
Amirmohammad Safari (finder)

References:

https://lists.apache.org/thread/wlt2no8bw45zl1w8byop4zfqphldf5j0
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-50229
