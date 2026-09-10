X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/10/16
Message-ID: <4e815c60-fdd9-1673-e167-7a5ca19a31fb@apache.org>
Date: Thu, 10 Sep 2026 06:42:40 +0000
From: Pasquale Congiusti <pcongiusti@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-80354: Apache Camel K: Camel K Builder trait mavenProfiles ValueSources resolve tenant-named secrets in operator namespace 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache Camel K (apache/camel-k) 2.0.0 before 2.9.3
- Apache Camel K (apache/camel-k) 2.10.1 before 2.10.2

Description:

Authorization bypass through User-Controlled key vulnerability in Apache Camel K.



An authorization vulnerability in custom resource resolution allows a tenant to reference secrets by name in the operator namespace, potentially exposing secrets belonging to other tenants or operator components.



This issue affects Apache Camel K: from 2.0.0 before 2.9.3, from 2.10.1 before 2.10.2.



Users are recommended to upgrade to version 2.9.3, 2.10.2 or 2.11.0, which fixes the issue.

References:

https://camel.apache.org/security/CVE-2026-80354.html
https://camel.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-80354

