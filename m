X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/33
Message-ID: <518c2c40-8615-eb92-c9e0-f5dc877bad52@apache.org>
Date: Mon, 23 Nov 2026 22:05:05 +0000
From: Andy Seaborne <andy@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-86156: Apache Jena Fuseki: Web requests using SPARQL Update can escape file restrictions for graph data 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Jena Fuseki through 6.2.0

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') can allow  SPARQL Update to access data from local server.



This issue affects Apache Jena Fuseki through 6.2.0.



Users are recommended to upgrade to version 6.3.0, which fixes the issue.

Credit:

Kyle /EY of China (finder)
MopMonk-AI (finder)
Frédéric Pidancier (GAEL Systems) (finder)
Huy Bùi (finder)

References:

https://jena.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-86156

