X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/08/10
Message-ID: <4c7df63d-59b6-d40a-6c22-6b42f5ce7279@apache.org>
Date: Mon, 08 Aug 2022 19:33:37 +0000
From: Ryan Skraba <rskraba@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2022-36124: Apache Avro: Memory overconsumption in Avro Rust SDK 
Content-Type: text/plain; charset=utf-8

Severity: moderate

Description:

It is possible for a Reader to consume memory beyond the allowed constraints and thus lead to out of memory on the system. This issue affects Rust applications using Apache Avro Rust SDK prior to 0.14.0 (previously known as avro-rs).  Users should update to apache-avro version 0.14.0 which addresses this issue.

Credit:

This issue was reported to the Apache Avro team by Evan Richter at ForAllSecure and found with Mayhem.

