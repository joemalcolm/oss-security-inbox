X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/24
Message-ID: <28b02a6e-aa57-d134-9a23-608f9a56218b@apache.org>
Date: Mon, 14 Sep 2026 08:47:50 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87785: Apache Syncope: JWT subject spoofing 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.1.0-M0 through 4.1.2

Description:

Authentication bypass by spoofing vulnerability in Apache Syncope.



When the configured JWKS settings for internal JWT authentication are disclosed (at least protocol and key), an attacker can spoof another user's privileges after completing a successful authentication and obtaining a valid JWT.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

Alon Galili (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-87785

