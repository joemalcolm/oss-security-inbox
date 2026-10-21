X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/21/20
Message-ID: <7fc47827-1e28-83cb-6a01-819043561054@apache.org>
Date: Wed, 21 Oct 2026 10:38:44 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-58663: Apache IoTDB: Auth Bypass in pipeTransfer() interface 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 2.0.0 before 2.0.11

Description:

An authentication bypass vulnerability exists in Apache IoTDB's Thrift RPC service



This issue affects Apache IoTDB: from 2.0.0 before 2.0.11.



Users are recommended to upgrade to version 2.0.11, which fixes the issue.

Credit:

Anurag Kumar (https://www.linkedin.com/in/anurag-kumar-8413a0197) (analyst)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-58663

