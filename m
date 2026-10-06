X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/07/13
Message-ID: <266be253-2e21-fcf8-c57a-bce60638b02e@apache.org>
Date: Tue, 06 Oct 2026 19:38:23 +0000
From: "Gary D. Gregory" <ggregory@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-105111: Apache Commons BCEL: Class2HTML emits unescaped class strings, enabling stored XSS 
Content-Type: text/plain; charset=utf-8

Severity: low 
    CVSS 3.1: 4.7 (medium) CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:C/C:L/I:L/A:N
    CVSS 4.0: 2.3 (low) CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:P/VC:N/VI:N/VA:N/SC:L/SI:L/SA:N

Affected versions:

- Apache Commons BCEL before 6.13.0
- Apache Commons BCEL before fb72c225cbc6ec3d94060ed6edb269f07428d504

Description:

Improper neutralization of input during web page generation ('cross-site scripting') vulnerability in Apache Commons BCEL.



This only happens when you're using Class2HTML to generate webpages for possibly-attacker-controlled class files, where Class2HTML emitters write attacker class-file strings into HTML unescaped (stored XSS in reports).



This issue affects Apache Commons BCEL: before 6.13.0.



Users are recommended to upgrade to version 6.13.0, which fixes the issue.

Credit:

The Apache Software Foundation (finder)
Claude Security (tool)

References:

https://github.com/apache/commons-bcel/commit/fb72c225cbc6ec3d94060ed6edb269f07428d504.patch
https://commons.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-105111

