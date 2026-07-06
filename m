X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/10
Message-ID: <02401887-9429-79b8-3d8d-0ebe680bf855@apache.org>
Date: Mon, 06 Jul 2026 07:04:02 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-24012: Apache IoTDB: Denial of Service via Resource Exhaustion in Aggregation Query 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 1.3.3 before 2.0.8

Description:

Uncontrolled Resource Consumption vulnerability in Apache IoTDB. 

Some interface fails to impose reasonable
limits on the time span and aggregation interval of the query. An attacker
can construct a request with extreme parameters (e.g., a very large time
range combined with a minimal interval). This forces the DataNode to build
an enormous result set in memory, which exhausts the Java heap and causes
the DataNode process to crash.

This issue affects Apache IoTDB: from 1.3.3 before 2.0.8.

Users are recommended to upgrade to version 2.0.8, which fixes the issue.

Credit:

Yan Nan (Detecon Security Lab) (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-24012

