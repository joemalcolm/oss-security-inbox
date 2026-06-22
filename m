X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/22/1
Message-ID: <f9073e24-4263-66e9-18b5-877bc9a74847@apache.org>
Date: Mon, 22 Jun 2026 04:01:34 +0000
From: Calvin Kirs <kirs@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-66336: Apache Doris MCP Server: SQL injection leading the authentication bypass 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Doris MCP Server 0.1.0 before 0.6.1

Description:

Apache Doris MCP Server contains a SQL injection vulnerability in a metadata query path. A user-controlled database name is directly interpolated into a SQL query, and the query is executed without passing the caller's authorization context. This may allow an authenticated attacker, or an anonymous attacker if authentication is disabled, to bypass SQL security validation and access metadata outside the intended database scope.

Affected users are recommended to upgrade to Doris version 0.6.1 or later, which fixes the issue.

Credit:

cherno.x. (reporter)

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-66336

