X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/11
Message-ID: <4e000529-b33a-a779-ab72-9c6a4a7e1deb@apache.org>
Date: Mon, 20 Jul 2026 09:21:14 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-63071: Apache Syncope: RCE via Groovy Sandbox bypass 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0.0-M0 through 4.0.6
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.1.0-M0 through 4.1.1

Description:

Improper Isolation or Compartmentalization vulnerability in Apache Syncope.

An administrator with adequate entitlements for Implementations can create a malicious Groovy class containing untrusted code bypassing the Groovy security sandbox.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.6, from 4.1.0-M0 through 4.1.1.

Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue by tightening the Groovy security sandbox.

Credit:

elin kai (finder)
无聊 (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-63071

