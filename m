X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/10
Message-ID: <6f5b4c00-204e-c6c1-4641-1c891e013b57@apache.org>
Date: Mon, 23 Nov 2026 07:42:01 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60076: Apache IoTDB: Unbounded in-memory materialization in REST fastLastQuery cache-hit path enables heap-exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 2.0.5 before 2.0.12

Description:

Allocation of resources without limits or throttling vulnerability in Apache IoTDB. Unbounded in-memory materialization in REST fastLastQuery cache-hit path enables heap-exhaustion DoS.



This issue affects Apache IoTDB: from 2.0.5 before 2.0.12.



Users are recommended to upgrade to version 2.0.12, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60076

