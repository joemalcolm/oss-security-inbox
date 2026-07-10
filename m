X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/5
Message-ID: <804824c6-e758-67e5-a0b9-96c0110dc76a@apache.org>
Date: Fri, 10 Jul 2026 06:31:54 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40008: Apache IoTDB: Arbitrary Class Instantiation via Pipe Transfer RPC 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.10

Description:

Use of Externally-Controlled Input to Select Classes or Code ('Unsafe Reflection') vulnerability in Apache IoTDB.
The pipe processor reads a fully
qualified Java class name and
instantiates it using Class.forName().newInstance() without any
validation or allowlisting.


This issue affects Apache IoTDB: from 1.0.0 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

Andrea Cosentino (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40008

