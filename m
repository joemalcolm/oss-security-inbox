X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/20/22
Message-ID: <e24c794e-ba66-4b16-85a3-b05d30e1d1e9@apache.org>
Date: Tue, 20 Oct 2026 14:38:14 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74049: Apache Tomcat: Jasper JSTL plug-in implementation omits page abort (SKIP_PAGE)
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.26
- Apache Tomcat 10.1.0-M1 through 10.1.60
- Apache Tomcat 9.0.0.M1 through 9.0.122
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109

Description:

Execution After Redirect (EAR) vulnerability in Apache Tomcat.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.26, from 
10.1.0-M1 through 10.1.60, from 9.0.0.M1 through 9.0.122.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.0 through 
7.0.109. Other unsupported versions may also be affected.




Users are recommended to upgrade to version 11.0.27, 10.1.61, 9.0.123, 
which fixes the issue.

Credit:

0xCc.zhang (finder)

References:

https://lists.apache.org/thread.html/lolc9wo4tzjog2tnwctv93hz9gjcdnc6
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74049
