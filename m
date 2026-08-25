X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/5
Message-ID: <2289ded7-b97e-46c3-b34f-bc1effd90088@apache.org>
Date: Tue, 25 Aug 2026 22:53:59 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65927: Apache Tomcat: RewriteValve [N] restarts at the second rule and may bypass access control
Content-Type: text/plain; charset=utf-8

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.0 through 7.0.109 unaffected
- Apache Tomcat before 7.0.0 unaffected

Description:

Off-by-one Error vulnerability in Apache Tomcat impacting the [N] flag 
on the rewrite valves causes rewrite processing to restart at the second 
rule rather than the first rule.







This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100. Other unsupported 
versions may also be affected.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121 
which fix the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/st1dx1zyn5y7ny2s0sscmh6lrv3worr4
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65927
