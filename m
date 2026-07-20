X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/7
Message-ID: <6ed32f89-b8ad-387b-6156-d56f7ca03abd@apache.org>
Date: Mon, 20 Jul 2026 09:20:25 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53421: Apache Syncope: Remote Code Execution via Scripted Connector 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.6
- Apache Syncope 4.1.0-M0 through 4.1.1

Description:

Improper Isolation or Compartmentalization vulnerability in Apache Syncope.



An administrator with adequate entitlements can achieve remote code execution through the connector subsystem by relying on scripted connectors' (REST and SQL) capability to run Groovy scripts.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.6, from 4.1.0-M0 through 4.1.1.




Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue by hardening the Groovy security sandbox.

Credit:

follycat, Y0n3er (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53421

