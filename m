X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/19/13
Message-ID: <d4f1a163-e072-7ef5-96cc-c55722b09cb4@apache.org>
Date: Fri, 19 Jun 2026 06:57:04 +0000
From: Abhishek Choudhary <shreemaanabhishek@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49231: Apache APISIX: Identity spoofing issue in APISIX opa plugin 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache APISIX 3.5.0 through 3.16.0

Description:

Authentication Bypass by Spoofing vulnerability in opa plugin.

An attacker could relay spoofed identity headers to upstream capitalising on non-default configuration in opa plugin.

This could allow the attacker to assume higher privileges on the upstream service.
This issue affects Apache APISIX: from 3.5.0 through 3.16.0.

Users are recommended to upgrade to version 3.17.0, which fixes the issue.

Credit:

lokerxxx (reporter)

References:

https://apisix.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-49231

