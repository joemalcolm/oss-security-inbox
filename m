X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/12
Message-ID: <96c60cbd-9da7-ed20-e402-fb79ee60f3a8@apache.org>
Date: Mon, 14 Sep 2026 08:27:52 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-75015: Apache Syncope: Nested secrets leak cleartext into audit records readable 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.1.0-M0 through 4.1.2

Description:

Insufficiently Protected Credentials vulnerability in Apache Syncope.

Audit events, when sent to the configured store, are not sufficiently masked for the sensitive values they might carry on their payloads, thus allowing administrators to access such sensitive values.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-75015

