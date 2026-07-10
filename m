X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/7
Message-ID: <4c8d159b-dd03-5cbd-377d-004500ad4fc9@apache.org>
Date: Fri, 10 Jul 2026 06:34:47 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40452: Apache IoTDB: Authorization bypass in /rest/v2/fastLastQuery exposes last-value data to unauthorized authenticated users 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 1.3.5 before 1.3.8
- Apache IoTDB 2.0.5 before 2.0.10

Description:

Incorrect Authorization, Improper Access Control vulnerability in Apache IoTDB.
Authorization bypass in /rest/v2/fastLastQuery exposes last-value data to unauthorized authenticated users.


This issue affects Apache IoTDB: from 1.3.5 before 1.3.8, from 2.0.5 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40452

