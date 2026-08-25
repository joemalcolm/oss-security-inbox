X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/26/4
Message-ID: <f1c1d2ad-bd5b-4fbd-8262-264a44b08ede@apache.org>
Date: Tue, 25 Aug 2026 22:52:20 +0100
From: Mark Thomas <markt@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-65905: Apache Tomcat: Limited replay attack possible with DIGEST authentication
Content-Type: text/plain; charset=utf-8

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.24
- Apache Tomcat 10.1.0-M1 through 10.1.57
- Apache Tomcat 9.0.0.M1 through 9.0.120
- Apache Tomcat 8.5.0 through 8.5.100
- Apache Tomcat 7.0.30 through 7.0.109

Description:

Authentication Bypass by Capture-replay vulnerability in Apache Tomcat's 
DIGEST authenticator. If, before windowSize requests have been made, a 
client makes a DIGEST
authenticated request with a nonceCount on the upper boundary of the
replay window then that request is replayable once only while the
associated nonceCount remains within the replay window.





This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.24, from 
10.1.0-M1 through 10.1.57, from 9.0.0.M1 through 9.0.120.



The following versions were EOL at the time the CVE was created but are
known to be affected: from 8.5.0 through 8.5.100, from 7.0.30 through 
7.0.109. Other unsupported versions may also be affected.



Users are recommended to upgrade to version 11.0.25, 10.1.58 or 9.0.121, 
which fix the issue.

Credit:

4ra1n, pyn3rd and unam4 (finder)

References:

https://lists.apache.org/thread/9v114xlpgbzrrbzz5vf9f6r2q4wnxwwj
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-65905
