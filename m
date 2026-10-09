X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/2
Message-ID: <4a355b9a-0037-0433-240f-8cff97391336@apache.org>
Date: Fri, 09 Oct 2026 22:15:43 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103501: Apache DataSketches: datasketches-cpp: HLL CouponList Deserialization Buffer Overflow allows memory corruption via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DataSketches 1.0.0-incubating through 5.2.0

Description:

Heap buffer overflow in the HLL sketch deserialization of Apache DataSketches C++ (repo: datasketches-cpp).

When deserializing a sketch in LIST mode, from either a byte buffer or a stream, the coupon count was read from the input and used as the number of entries to copy into a fixed buffer of 8 entries, without checking it against the buffer's capacity. A crafted sketch could cause a write of up to 988 bytes past the end of this internal heap buffer. This can corrupt heap memory, causing a crash and potentially enabling further exploitation.

This issue affects Apache DataSketches C++: from 1.0.0-incubating before 5.3.0. Only applications that deserialize HLL sketches from untrusted sources are affected.

Users are recommended to upgrade to version 5.3.0, which fixes this issue.

Credit:

Reported anonymously. (finder)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-103501

