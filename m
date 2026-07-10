X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/10/4
Message-ID: <905cde28-c6bf-d936-850d-5eded3812c9d@apache.org>
Date: Fri, 10 Jul 2026 06:30:56 +0000
From: Haonan Hou <haonan@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-40007: Apache IoTDB: Unauthenticated unbounded recursion in IoTDB AirGap receiver's E-language prefix parser causes per-connection StackOverflowError 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache IoTDB 1.0.0 before 2.0.10

Description:

Uncontrolled Recursion, Uncontrolled Resource Consumption vulnerability in Apache IoTDB.
When pipe_air_gap_receiver_enabled=true, the IoTDB AirGap receiver's
readLength method calls itself recursively each time it recognises the
E-language prefix in socket data, with no depth limit. An unauthenticated
attacker can send a stream of repeated E-language prefixes that drives the
recursion arbitrarily deep, exhausting the receiver thread's JVM stack and
raising StackOverflowError.


This issue affects Apache IoTDB: from 1.0.0 before 2.0.10.

Users are recommended to upgrade to version 2.0.10, which fixes the issue.

Credit:

bugbunny.ai (finder)

References:

https://iotdb.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-40007

