X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/25/12
Message-ID: <42082630-46e2-6c9b-af21-ccd05eb13eb6@apache.org>
Date: Fri, 25 Sep 2026 20:11:29 +0000
From: "David M. Johnson" <snoopdave@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82379: Apache Roller: WSSE digest authentication headers can be replayed 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 
    CVSS 3.1: 7.7 (high) CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H/A:L

Affected versions:

- Apache Roller 6.1.5

Description:

Authentication Bypass by Capture-replay in Apache Roller 6.1.5 allows an attacker who captures a valid WSSE digest authentication header to replay it and gain the victim's AtomPub authority, because the authentication does not enforce nonce uniqueness or timestamp freshness. Only installations that enable the non-default AtomPub API with WSSE authentication and plaintext-compatible password storage are affected. Users are recommended to upgrade to Apache Roller 6.1.6 or later, which removes WSSE as an AtomPub authentication method; existing installations configured for WSSE fail closed until an administrator explicitly selects a supported authentication method.

Credit:

meifukun (finder)

References:

https://github.com/apache/roller/pull/166
https://roller.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82379

