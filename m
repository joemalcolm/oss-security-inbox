X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/24/2
Message-ID: <191dcdcd-6f53-63f2-9cec-c7a2c9ba42f1@apache.org>
Date: Fri, 24 Apr 2026 02:19:50 +0000
From: Wenjun Ruan <wenjun@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2025-62233: Apache DolphinScheduler: Deserialization of untrusted data in RPC 
Content-Type: text/plain; charset=utf-8

Severity: Moderate 

Affected versions:

- Apache DolphinScheduler (org.apache.dolphinscheduler:dolphinscheduler-extract-base) 3.2.0 before 3.3.1

Description:

Deserialization of Untrusted Data vulnerability in Apache DolphinScheduler RPC module.

This issue affects Apache DolphinScheduler: 

Version >= 3.2.0 and < 3.3.1.

Attackers who can access the Master or Worker nodes can compromise the system by creating a StandardRpcRequest, injecting a malicious class type into it, and sending RPC requests to the DolphinScheduler Master/Worker nodes.
Users are recommended to upgrade to version [3.3.1], which fixes the issue.

Credit:

75Acol, fcgboy, ch0wn, zer0duck (finder)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=CVE-2025-62233

