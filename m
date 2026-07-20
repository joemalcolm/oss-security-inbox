X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/10
Message-ID: <a3da8a74-aeb6-c1e0-220f-e58db983e747@apache.org>
Date: Mon, 20 Jul 2026 09:21:05 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62418: Apache Syncope: Low-privileged authenticated SSRF in Connectors and Resources check 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.0.0-M0 through 4.0.6
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.1.0-M0 through 4.1.1

Description:

Low-privileged authenticated Server-Side Request Forgery (SSRF) 
vulnerability in Apache Syncope via Connectors and Resources check.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.6, from 4.1.0-M0 through 4.1.1.



Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue.

Credit:

Adrián Leal Castaño (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62418

