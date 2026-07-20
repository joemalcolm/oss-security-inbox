X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/6
Message-ID: <70781351-1d7f-f526-7968-1cff8fd3bc31@apache.org>
Date: Mon, 20 Jul 2026 09:20:15 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-53405: Apache Syncope: Remote Code Execution via Flowable BPMN Groovy ScriptTask 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.ext.flowable:syncope-ext-flowable-bpmn) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.ext.flowable:syncope-ext-flowable-bpmn) 4.0.0-M0 through 4.0.6
- Apache Syncope (org.apache.syncope.ext.flowable:syncope-ext-flowable-bpmn) 4.1.0-M0 through 4.1.1

Description:

Improper Isolation or Compartmentalization vulnerability in Apache Syncope.

An administrator with adequate entitlements can import arbitrary BPMN process definitions via the REST API and then start the process. When a BPMN process containing a Groovy scriptTask is imported and started, the Groovy script is executed directly on the server, with no sandbox.


This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.6, from 4.1.0-M0 through 4.1.1.




Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue by wrapping Flowable's Groovy scriptTasks with security sandbox.

Credit:

follycat, Y0n3er (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-53405

