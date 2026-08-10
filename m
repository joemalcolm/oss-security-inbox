X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/10/1
Message-ID: <331c70f4-e449-ddc2-637b-94bfe5e0c934@apache.org>
Date: Mon, 10 Aug 2026 06:47:22 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-44630: Apache IoTDB: RPC service denial of service via unchecked Thrift string length 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB before 1.3.8
- Apache IoTDB 2.0.0 before 2.0.10

Description:

Improper validation of length fields in the Apache IoTDB RPC service may allow a remote unauthenticated attacker to cause a denial of service. By sending a crafted malformed Thrift frame, an attacker can cause IoTDB to allocate an excessive amount of memory and crash with an OutOfMemoryError.


This issue affects Apache IoTDB: before 1.3.8, from 2.0.0 before 2.0.9.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-44630

