X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/14/5
Message-ID: <0a3a63b3-f524-42ef-b622-672d1ad9255c@apache.org>
Date: Sat, 14 Nov 2026 04:56:04 +0000
From: Lenny Primak <lprimak@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-74762: Apache Shiro: Possible session fixation with RememberMe 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 5.9 (medium) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:A/VC:H/VI:L/VA:N/SC:N/SI:N/SA:N/S:N/AU:N/R:U/V:D/RE:L/U:Amber

Affected versions:

- Apache Shiro (org.apache.shiro:shiro-core) before 3.0.1
- Apache Shiro (org.apache.shiro:shiro-web) before 3.0.1

Description:

Apache Shiro is vulnerable to session fixation when a user is authenticated via the "Remember me" functionality. In affected versions, when a subject is restored from a "Remember me" cookie, the existing session is not invalidated, nor is a new session created with a new ID.
Additionally, session IDs were accepted from the request URL even when session ID URL rewriting was disabled.
This issue affects all Apache Shiro versions through 3.0.0, only when RememberMe functionality is enabled.

Mitigation: Upgrade to version 3.0.1 or later, which fixes the issue by invalidating the existing session and creating a new session with a new ID when a subject is restored from a "Remember me" cookie, and by ignoring session IDs in the URL when URL rewriting is disabled.

Credit:

n0mi1k (finder)
Lenny Primak <lenny@...wlogix.com> (remediation developer)

References:

https://shiro.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-74762

