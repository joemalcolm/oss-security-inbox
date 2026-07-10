X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/6
Message-ID: <4cfcd2df-2058-cd6f-3c9c-987d20333582@apache.org>
Date: Fri, 10 Jul 2026 06:33:47 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40009: Apache IoTDB: Authenticated users can escalate to full tree-path access by renaming themselves to __internal_auditor 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 2.0.8 before 2.0.10

Description:

Improper Privilege Management, Improper Access Control vulnerability in Apache IoTDB.
Authenticated users can escalate to full tree-path access by renaming
themselves to __internal_auditor.


This issue affects Apache IoTDB: from 2.0.8 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40009

