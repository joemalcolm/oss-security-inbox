X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/32
Message-ID: <61e2fed9-66e7-4caf-4a99-36c725185d93@apache.org>
Date: Mon, 23 Nov 2026 22:03:37 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86155: Apache Jena Fuseki: SHACL validation can cause SSRF in SHACL SPARQL targets 
Content-Type: text/plain; charset=utf-8

Severity: 
    CVSS 4.0: 10.0 (critical) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:H/VI:H/VA:H/SC:H/SI:H/SA:H

Affected versions:

- Apache Jena Fuseki through 6.2.0

Description:

A vulnerability in Apache Jena Fuseki in the SHACL validation functionality cause server side request forgery (SSRF).



This issue affects Apache Jena Fuseki: through 6.2.0.



Users are recommended to upgrade to version 6.3.0, which fixes the issue.

Credit:

MopMonk-AI (finder)
Immanuel Tikhonov (finder)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86155

