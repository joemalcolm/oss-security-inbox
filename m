X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/13/1
Message-ID: <d9afdb5b-f3a2-4e93-4c27-3257e9c1a632@apache.org>
Date: Mon, 13 Jul 2026 02:08:15 +0000
From: Jerry Shao <jshao@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41041: Apache Gravitino: URL path injection via unencoded user-supplied identifiers in MCP REST client f-string URL construction, enabling path traversal to unintended API endpoints. 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache Gravitino 1.0.0 before 1.2.1

Description:

URL path injection via unencoded user-supplied identifiers vulnerability in Apache Gravitino.

This issue affects Apache Gravitino: from 1.0.0 before 1.2.1.

Users are recommended to upgrade to version 1.2.1, which fixes the issue.

References:

https://gravitino.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-41041

