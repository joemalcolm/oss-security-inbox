X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/24
Message-ID: <06d12123-26c7-c184-d512-598f0d32d67e@apache.org>
Date: Fri, 25 Sep 2026 20:17:00 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-91206: Apache Roller: Reflected XSS in the optional LDAP comment authenticator 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 6.1 (medium) CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L/A:N

Affected versions:

- Apache Roller 6.1.5

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') in Apache Roller 6.1.5 allows a remote attacker to perform reflected cross-site scripting through the optional LDAP comment authenticator, which writes request parameter values into its HTML form without escaping. This affects only sites configured to use LdapCommentAuthenticator, and a victim whose session has already loaded the authenticator form must follow a crafted link. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which escapes the reflected values.

Credit:

姬珏 (CyberLeo) (finder)

References:

https://github.com/apache/roller/pull/191
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-91206

