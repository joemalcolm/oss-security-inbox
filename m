X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/30/2
Message-ID: <f99998f5-84a5-012b-bb52-6ae0688cea34@apache.org>
Date: Tue, 30 Jun 2026 11:19:42 +0000
From: Jerry Shao <jshao@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-53648: Apache Gravitino: SQL misconfiguration can access or truncate files 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Gravitino (org.apache.gravitino:catalog-jdbc-common) 0.5.0 before 1.0.0

Description:

SQL misconfiguration in the Gravitino UI, in versions 1.0.0 and below, can allow a malicious user to read or truncate files.
Users are recommended to upgrade to version 1.0.0, which fixes this issue.

Credit:

A1kaid@...eatBook VulTeam (reporter)
Le1a@...eatBook VulTeam (finder)

References:

https://gravitino.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-53648

