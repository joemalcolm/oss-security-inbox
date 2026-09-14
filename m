X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/6
Message-ID: <3f2c416c-f900-8a1f-a0b2-c6bfbf480af8@apache.org>
Date: Mon, 14 Sep 2026 08:17:26 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73195: Apache Syncope: CSV export spreadsheet formula injection 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-java) 4.1.0-M0 through 4.1.2

Description:

Improper Encoding or Escaping of Output vulnerability in Apache Syncope.



Authenticated users can store a spreadsheet formula payload in one of their own plain attributes. When such users are included in a CSV export and the generated CSV file is opened by a spreadsheet application, the formula may be executed.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

meifukun (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73195

