X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/11
Message-ID: <937e126f-4956-226a-09ec-14c2c0656f9a@apache.org>
Date: Mon, 14 Sep 2026 08:26:47 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-73668: Apache Syncope: Cross-realm disclosure of confidential ConnId bundles configuration values 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core.idm:syncope-core-idm-logic) 4.1.0-M0 through 4.1.2

Description:

Incorrect Authorization vulnerability in Apache Syncope.





An administrator with adequate entitlements in a given Realm may be able to read via REST the full Connector configuration, confidential properties included, scoped in another Realm and thus be able to effectively duplicate such Connector instance into the Realm they have administration rights for.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.


Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-73668

