X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/16
Message-ID: <46d36ac0-d776-d2a1-1bce-9956fc6edd11@apache.org>
Date: Mon, 14 Sep 2026 08:38:47 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77181: Apache Syncope: ClientApp update entitlement not effective 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Syncope (org.apache.syncope.core.am:syncope-core-am-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core.am:syncope-core-am-logic) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core.am:syncope-core-am-logic) 4.1.0-M0 through 4.1.2

Description:

Incorrect Authorization vulnerability in Apache Syncope.



An administrator with ClientApp's update entitlement is unable to perform the related operation, while ClientApp's create entitlement is checked both for create and update operations on ClientApp.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77181

