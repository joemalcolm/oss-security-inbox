X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/11
Message-ID: <31d044fb-c095-ff19-0361-ebdf3fdcde62@apache.org>
Date: Fri, 25 Sep 2026 20:12:42 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82378: Apache Roller: OAuth authorization endpoint trusts request-supplied identity 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 9.0 (critical) CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I:H/A:H

Affected versions:

- Apache Roller 6.1.5

Description:

Incorrect Authorization in the OAuth 1.0a authorization endpoint of Apache Roller 6.1.5 allows an unauthenticated remote attacker who learns an outstanding request token for a configured site-wide consumer to bind that token to an arbitrary user account, including an administrator, by submitting an unsigned authorization request. The endpoint derives the authorizing identity from a request-supplied value rather than the authenticated session. Only installations that configure an OAuth 1.0a site-wide consumer are affected, and exploitation requires knowledge of one of its outstanding request tokens. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which binds authorization to the logged-in session.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/165
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82378

