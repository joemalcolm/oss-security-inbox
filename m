X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/02/7
Message-ID: <0955bb5d-cc14-6741-de89-d2456661fccb@apache.org>
Date: Mon, 02 Nov 2026 12:40:01 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-109083: Apache Syncope: Remote Code Execution via Flowable JUEL expression 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope 3.0.0-M0 through 3.0.16
- Apache Syncope 4.0.0-M0 through 4.0.8
- Apache Syncope 4.1.0 through 4.1.3

Description:

Improper isolation or compartmentalization vulnerability in Apache Syncope.

An administrator with adequate entitlements can import arbitrary BPMN process definitions via the REST API and then start the process. When a BPMN process containing a JUEL expression is imported and started, the expression is executed directly on the server, with no sandbox.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.8, from 4.1.0 through 4.1.3.



Users are recommended to upgrade to version 4.0.9 / 4.1.4, which fix this issue by rejecting BPMN definitions including expression attributes.

Credit:

Josh Bressers (coordinator)
Yll Berisha (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-109083

