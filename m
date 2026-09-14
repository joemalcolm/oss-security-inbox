X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/8
Message-ID: <161b4e7b-da87-4861-278b-31384dfcffd8@apache.org>
Date: Mon, 14 Sep 2026 08:19:36 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73370: Apache Syncope: Cross-Realm boundaries reconciliation bypass 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.1.0-M0 through 4.1.2

Description:

Incorrect Authorization vulnerability in Apache Syncope.



Delegated administration security checks performed by Reconciliation service's pull and push, being incomplete, could accept calls by administrator not provided with adequate entitlements.





This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73370

