X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/22
Message-ID: <6115c3fd-fe18-fbe7-b506-518a9f494802@apache.org>
Date: Wed, 21 Oct 2026 11:07:47 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-59562: Apache IoTDB: Remote code execution and Unauthenticated path traversal in legacy pipe sendFile RPC 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 2.0.0 before 2.0.11

Description:

Missing authentication for critical function vulnerability in Apache IoTDB.



This issue affects Apache IoTDB: from 2.0.0 before 2.0.11.



Users are recommended to upgrade to version 2.0.11, which fixes the issue.

Credit:

tonghuaroot (finder)
Opr4 (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-59562

