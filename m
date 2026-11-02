X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/9
Message-ID: <e2d22614-2c51-c514-4f9a-8887774c4417@apache.org>
Date: Mon, 02 Nov 2026 12:40:41 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113511: Apache Syncope: Delegated administration boundaries can be bypassed for Realm update 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.8
- Apache Syncope 4.1.0-M0 through 4.1.3

Description:

Authorization bypass through User-Controlled key vulnerability in Apache Syncope.



A delegated administrator can relocate a Realm subtree across administrative realm boundaries without permission for the destination
This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.8, from 4.1.0-M0 through 4.1.3.



Users are recommended to upgrade to version 4.0.9 / 4.1.4, which fix this issue.

Credit:

Muted Cybersecurity (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-113511

