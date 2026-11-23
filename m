X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/23/12
Message-ID: <eab28fed-d691-5313-87bf-3daeb7dbf322@apache.org>
Date: Mon, 23 Nov 2026 07:24:47 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-60078: Apache IoTDB: Authenticated Grafana clients can bypass row-limit cap to trigger heap-exhaustion DoS 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 0.13.0 through 2.0.11

Description:

Allocation of resources without limits or throttling vulnerability in Apache IoTDB. Authenticated Grafana clients can bypass row-limit cap to trigger heap-exhaustion DoS.



This issue affects Apache IoTDB: from 0.13.0 through 2.0.11.



Users are recommended to upgrade to version 2.0.12, which fixes the issue.

Credit:

Ho1aAs (GitHub: @HolaAsuka) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-60078

