X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/15
Message-ID: <a4d0fad8-7db4-f7fd-268f-dc4f98fcc2a9@apache.org>
Date: Fri, 25 Sep 2026 20:11:52 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82382: Apache Roller: Reflected cross-site scripting in the frontpage directory parameter 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 6.1 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows a remote attacker to perform reflected cross-site scripting against a visitor to a weblog using the bundled frontpage theme, by supplying a crafted blog-directory parameter that the directory page reflects without proper escaping. This affects only weblogs that use the bundled frontpage theme, and a victim must follow a crafted link for the script to execute. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which validates and contextually escapes the reflected parameter.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/169
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82382

