X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/11
Message-ID: <d0c57edb-cc82-c726-632d-cb55026a7645@apache.org>
Date: Mon, 23 Nov 2026 07:44:55 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60077: Apache IoTDB: Authenticated REST clients can bypass row-limit cap to triggerheap-exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 0.13.0 before 2.0.12

Description:

Allocation of resources without limits or throttling vulnerability in Apache IoTDB. Authenticated REST clients can bypass row-limit cap to triggerheap-exhaustion DoS.



This issue affects Apache IoTDB: from 0.13.0 before 2.0.12.



Users are recommended to upgrade to version 2.0.12, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60077

