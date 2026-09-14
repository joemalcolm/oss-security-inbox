X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/14/17
Message-ID: <f7e79d8f-e33d-5693-1672-bfc5266b6d2c@apache.org>
Date: Mon, 14 Sep 2026 08:41:05 +0000
From: Francesco Chicchiriccò <ilgrosso@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-77883: Apache Syncope: Information disclosure via one-hop JEXL navigation past the JexlContextBuilder name denylist 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 3.0.0-M0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 4.0.0-M0 through 4.0.7
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 4.1.0-M0 through 4.1.2

Description:

Exposure of sensitive information through data queries vulnerability in Apache Syncope.

An administrator with adequate entitlements for Derived Schemas can create a malicious JEXL expression which allows any administrator with sufficient entitlements for User read to access LinkedAccount's (if present) or Manager's (if defined) sensitive information, possibly including hashed credentials.

This issue affects Apache Syncope: from 3.0.0-M0 through 3.0.16, from 4.0.0-M0 Through 4.0.7, from 4.1.0-M0 through 4.1.2.

Users are recommended to upgrade to version 4.0.8 / 4.1.3, which fix this issue.

Credit:

n0mi1k (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-77883

