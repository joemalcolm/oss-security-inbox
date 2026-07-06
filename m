X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/12
Message-ID: <808e12fc-9cfd-39e7-c58a-7313a8fe06f6@apache.org>
Date: Mon, 06 Jul 2026 07:27:40 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-24014: Apache IoTDB: Path Traversal in DataNode Internal RPC Trigger JAR Upload Allows Arbitrary File Write 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 1.3.3 before 2.0.8

Description:

Apache IoTDB DataNode’s internal RPC interface for creating Trigger instances uses the uploaded Trigger JAR name to build a file path without sufficient validation. If the internal DataNode RPC port is exposed to an untrusted network, an attacker may use path traversal sequences in the JAR name to write files outside the intended Trigger installation directory. This could allow arbitrary file write with the permissions of the IoTDB process.

This issue affects Apache IoTDB: from 1.3.3 before 2.0.8.

Users are recommended to upgrade to version 2.0.8, which fixes the issue.

Credit:

Yan Nan (Detecon Security Lab). (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-24014

