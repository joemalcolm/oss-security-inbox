X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/03/5
Message-ID: <298e4276-7fa9-ce81-0946-4fd8e8e89b47@apache.org>
Date: Mon, 03 Aug 2026 15:11:44 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-61372: Apache Jena Fuseki: Web requests using SPARQL Update can escape file restrictions 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Jena Fuseki through 6.1.0

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') vulnerability in Apache Jena Fuseki.

This issue affects Apache Jena Fuseki: through 6.1.0.

Users are recommended to upgrade to version 6.2.0, which fixes the issue.

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-61372

