X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/24/4
Message-ID: <02aca859-afdb-6047-9870-641fbf3fa2d9@apache.org>
Date: Tue, 24 Nov 2026 07:10:52 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-135747: Apache IoTDB MCP Server: Connection password logged during startup in iotdb-mcp-server 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache IoTDB MCP Server through 0.2.0

Description:

Apache IoTDB MCP Server logs the IoTDB connection password in plaintext during startup, allowing anyone with access to the logs to obtain the credential.



This issue affects Apache IoTDB MCP Server: through 0.2.0.



Users are recommended to upgrade to version 0.3.0, which fixes the issue.

Credit:

Syed Anas Mohiuddin, Independent Researcher, Maintainer of mcp-safeguard (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-135747

