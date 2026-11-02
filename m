X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/10
Message-ID: <ad946486-868e-11b6-e9ac-0b1a1639a53e@apache.org>
Date: Mon, 02 Nov 2026 12:40:52 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-113687: Apache Syncope: RCE via ProcessGroovyMethodsSandbox bypass 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.8
- Apache Syncope 4.1.0-M0 through 4.1.3

Description:

Improper isolation or compartmentalization vulnerability in Apache Syncope.



An administrator with adequate entitlements for Implementations can create a malicious Groovy class running untrusted code on a separate Thread, thus bypassing the Groovy security sandbox.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.8, from 4.1.0-M0 through 4.1.3.



Users are recommended to upgrade to version 4.0.9 / 4.1.4, which fix this issue.

Credit:

Alex Palinkash (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-113687

