X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/39
Message-ID: <2abbadd5-e2eb-fd3b-1900-51ec2a5c2473@apache.org>
Date: Fri, 24 Jul 2026 21:43:06 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55968: Apache Thrift: Node.js quadratic-time DoS in server receive transports 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Inefficient Algorithmic Complexity, Allocation of Resources Without Limits or Throttling vulnerability in Apache Thrift Node.js bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Song Jihoon (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55968

