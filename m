X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/2
Message-ID: <4dc6fa8a-67ab-8934-1bf8-f4f514dc84ac@apache.org>
Date: Fri, 10 Jul 2026 06:29:24 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40005: Apache IoTDB: Path Traversal in Pipe File Transfer Receiver 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.10

Description:

Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal') vulnerability in Apache IoTDB.
An attacker can write arbitrary files anywhere the IoTDB process has write permissions with unsafe API.


This issue affects Apache IoTDB: from 1.0.0 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

Andrea Cosentino (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40005

