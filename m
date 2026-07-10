X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/3
Message-ID: <a26e9247-7912-aafe-5a90-a410ac2cac39@apache.org>
Date: Fri, 10 Jul 2026 06:30:08 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40006: Apache IoTDB: Unauthenticated heap-exhaustion DoS via unbounded allocation in IoTDB AirGap pipe receiver 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.10

Description:

Memory Allocation with Excessive Size Value, Allocation of Resources Without Limits or Throttling, Missing Authentication for Critical Function vulnerability in Apache IoTDB.
When pipe_air_gap_receiver_enabled=true, the IoTDB AirGap pipe receiver
accepts raw TCP connections on port 9780 with no authentication. The
readLength method reads an attacker-controlled 32-bit integer from the
socket and readData passes it directly to new byte[length] with no
upper-bound check. An unauthenticated attacker can cause the JVM to attempt
an allocation of up to 2,147,483,647 bytes per connection, exhausting heap
memory and crashing or severely degrading the DataNode process.


This issue affects Apache IoTDB: from 1.0.0 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40006

