X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/23
Message-ID: <681b4c23-ce54-1706-7a7f-3e74cd563821@apache.org>
Date: Fri, 25 Sep 2026 20:16:55 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91204: Apache Roller: Stored javascript: URI in HTML comments 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 6.1 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows an anonymous remote attacker to store a comment containing a javascript: URI link that survives HTML comment formatting and can execute script in the browser of a visitor who clicks it. This affects only sites that enable HTML in comments (users.comments.htmlenabled=true) together with the HTMLSubset comment formatter; comment moderation, where enabled, delays publication. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which restricts restored links to http, https and mailto URIs.

Credit:

姬珏 (CyberLeo) (finder)

References:

https://github.com/apache/roller/pull/190
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91204

