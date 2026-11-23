X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/34
Message-ID: <0207ba0e-cb93-c3da-b716-f9483196e5c9@apache.org>
Date: Mon, 23 Nov 2026 22:05:38 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-97893: Apache Jena: SPARQL Property Path optimisation can lead to excessive memory consumption. 
Content-Type: text/plain; charset=utf-8

Severity: important 
    CVSS 4.0: 6.6 (medium) CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI:N/VA:H/SC:N/SI:N/SA:N/E:U/S:N/AU:Y/R:U/V:D/RE:M/U:Red

Affected versions:

- Apache Jena through 6.2.0

Description:

A Denial of Service (DoS) vulnerability exists in the ARQ SPARQL Query Optimiser in Apache Jena ARQ prior to version 6.3.0 that allows a SPARQL query to use that cause excessive memory usage.
Users are recommended to upgrade to version 6.3.0, which fixes this issue.






Users who are unable to upgrade immediately, especially those who operate a public facing SPARQL service/application backed by Apache Jena are recommended to configure the ARQ symbol arq:optPathFlatten=false in their SPARQL execution context which disables the problematic optimisation.

Credit:

The ASF (reporter)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-97893

