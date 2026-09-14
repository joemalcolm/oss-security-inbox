X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/25
Message-ID: <e8574cde-bd72-920b-5062-51c1966f0230@apache.org>
Date: Mon, 14 Sep 2026 08:49:11 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-87802: Apache Syncope: SRA OAuth2 JWT signature verification bypass 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Syncope (org.apache.syncope:syncope-sra) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope:syncope-sra) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope:syncope-sra) 4.1.0-M0 through 4.1.2

Description:

Improper verification of cryptographic signature vulnerability in Apache Syncope.



When SRA is configured for OAuth 2.0 without JWKS set URI assigned, an attacker can forge arbitrary JWTs to impersonate any user identity and permissions, gaining full access to services proxied by SRA.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

MopMonk AI (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-87802

