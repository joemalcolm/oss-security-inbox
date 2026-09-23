X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/23/20
Message-ID: <c14bd336-fd79-409d-8cbb-8eff613f587d@apache.org>
Date: Wed, 23 Sep 2026 12:14:41 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75973: Apache Tomcat: Cross-context authentication mix-up with Jakarta Authentication configured
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.25
- Apache Tomcat 10.1.0-M1 through 10.1.59
- Apache Tomcat 9.0.0.M4 through 9.0.121
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat through 7.0.109 unaffected

Description:

Improper Authentication vulnerability in Apache Tomcat. When Jakarta 
Authentication was configured with SimpleAuthConfigProvider as the 
default provider and multiple web application used that provider, the 
realm for the first web application to authenticate a request would be 
used for all web applications.



This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.25, from 
10.1.0-M1 through 10.1.59, from 9.0.0.M4 through 9.0.121.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100. Other unsupported 
versions may also be affected.




Users are recommended to upgrade to version 11.0.26, 10.1.60, 9.0.122, 
which fixes the issue.

Credit:

0xCc.zhang (finder)

References:

https://lists.apache.org/thread/njjcdkkzqyzx4n3ffc4ffjmyh5mpl1gr
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75973
