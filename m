X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/4
Message-ID: <6bb3e23d-09fb-f5e4-60f1-0df9666d68db@apache.org>
Date: Fri, 09 Oct 2026 22:17:30 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103634: Apache DataSketches: datasketches-cpp: Out-of-bounds read and write in Count-Min sketch deserialization allows memory corruption via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DataSketches 4.1.0 through 5.2.0

Description:

Out-of-bounds read and write in the Count-Min sketch deserialization of Apache DataSketches C++ (repo: datasketches-cpp).

count_min_sketch::deserialize() did not include the preamble in its input size check, so a truncated sketch could cause a read of up to 16 bytes past the end of the input. In addition, the table size was computed from the serialized number of buckets and number of hash functions in 32-bit arithmetic. A crafted sketch could make it wrap to zero, so that the sketch deserialized with an empty table, and later updates and estimate queries read and wrote outside the heap allocation. This can corrupt heap memory, causing a crash and potentially enabling further exploitation.

This issue affects Apache DataSketches C++: from 4.1.0 before 5.3.0. Only applications that deserialize Count-Min sketches from untrusted sources are affected.

Users are recommended to upgrade to version 5.3.0, which fixes this issue.

Credit:

He Huang (finder)
NexusSan (tool)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-103634

