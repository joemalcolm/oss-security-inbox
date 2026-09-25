X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/21
Message-ID: <f8a5ccd2-cce4-8fbc-cf66-685c78d171dd@apache.org>
Date: Fri, 25 Sep 2026 20:16:46 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82546: Apache Roller: Stored cross-site scripting through incoming Trackback links 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 6.1 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows an unauthenticated remote attacker to store a crafted comment-author URL through the incoming Trackback endpoint when a published entry accepts comments and Trackbacks. The shipped Trackback, verification and moderation defaults allow the value to be approved and rendered as an active link; a visitor who clicks the link executes script in the weblog's origin. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which removes incoming Trackback support and suppresses non-HTTP(S) comment-author links. Users unable to upgrade should disable Trackbacks and remove untrusted Trackback comments.

Credit:

m4dn355 (finder)

References:

https://github.com/apache/roller/pull/178
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82546

