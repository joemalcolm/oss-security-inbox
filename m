X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/27/4
Message-ID: <4a0c808b-3f6e-a43f-52bb-ad6cfb040596@apache.org>
Date: Mon, 27 Jul 2026 16:21:24 +0000
From: Pedro Henrique Oliveira dos Santos <pedro@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-66390: Apache Wicket: crafted Link URL strings can break out of the JavaScript sequence 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Wicket 9.0.0 through 9.23.0
- Apache Wicket 10.0.0 through 10.9.0

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Scripting') vulnerability in Apache Wicket.

This issue affects Apache Wicket: from 9.0.0 through 9.23.0, from 10.0.0 through 10.9.0.

Users are recommended to upgrade to version 10.10.0, which fixes the issue.

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-66390

