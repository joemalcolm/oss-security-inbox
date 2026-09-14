X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/20
Message-ID: <04435d6f-6c7e-97a0-04af-a489105894ce@apache.org>
Date: Mon, 14 Sep 2026 08:44:22 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-78336: Apache Syncope: OIDCC4UI provider list discloses client secrets to any authenticated user 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.ext.oidcc4ui:syncope-ext-oidcc4ui-logic) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.ext.oidcc4ui:syncope-ext-oidcc4ui-logic) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.ext.oidcc4ui:syncope-ext-oidcc4ui-logic) 4.1.0-M0 through 4.1.2

Description:

Insertion of sensitive information into sent data vulnerability in Apache Syncope.



Any authenticated user can query for the list of available OIDC providers configured for SSO with Console and Enduser. The returned payload contains all configuration settings, including client secrets, regardless of the entitlements owned by the caller.



This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 through 4.0.7, from 4.1.0-M0 through 4.1.2.



Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

Moritz Theile (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-78336

