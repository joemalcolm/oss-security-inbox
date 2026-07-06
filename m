X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/16
Message-ID: <bdb08261-bdef-3222-02c7-b2e51b467927@apache.org>
Date: Mon, 06 Jul 2026 09:24:02 +0000
From: Federico Mariani <fmariani@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-46588: Apache Camel: CouchDB: Non-Camel-prefixed Exchange headers bypass HeaderFilterStrategy allowing operation override from untrusted input 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Camel through 4.14.7
- Apache Camel 4.15.0 through 4.18.2
- Apache Camel 4.19.0 through 4.20.0

Description:

Improper Input Validation vulnerability in Apache Camel.

This issue affects Apache Camel: through 4.14.7, from 4.15.0 through 4.18.2, from 4.19.0 through 4.20.0.

Users are recommended to upgrade to version 4.14.8, 4.18.3, 4.21.0, which fixes the issue.

Credit:

Yu Bao - yubao@...pal.com, who works for paypal.com. (reporter)

References:

https://camel.apache.org/security/CVE-2026-46588.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-46588

