X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/20/9
Message-ID: <dab12e6b-49ed-0bd0-3875-43d9dd8bec79@apache.org>
Date: Mon, 20 Jul 2026 09:20:56 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-62183: Apache Syncope: User self-service privilege escalation 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-workflow-java) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-workflow-java) 4.0.0-M0 through 4.0.6
- Apache Syncope (org.apache.syncope.core:syncope-core-workflow-java) 4.1.0-M0 through 4.1.1

Description:

Improper Privilege Management vulnerability in Apache Syncope.

When:

* the all-Java user workflow adapter is configured, or
* the Flowable user workflow adapter is configured, bearing a BPMN definition not requiring admin approval for user self registration of self update requests

the following scenario could happen.
A REST API call can allow the user to grant themselves one or more of defined Roles, thus gaining their Entitlements and becoming in fact an administrator; the actual Entitlements gained depend on the Roles that are effectively defined on the specific Syncope deployment.


This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.6, from 4.1.0-M0 through 4.1.1.

Users are recommended to upgrade to version 4.0.7 / 4.1.2, which fix this issue.

Credit:

Nic Jones (finder)
elin kai (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-62183

