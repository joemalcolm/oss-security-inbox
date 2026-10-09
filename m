X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/3
Message-ID: <6098077b-0d24-0ecf-9aa1-e761c3928459@apache.org>
Date: Fri, 09 Oct 2026 22:16:46 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103513: Apache DataSketches: datasketches-cpp: Out-of-bounds read and write in the CPC sketch deserialization allows memory corruption via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: moderate 

Affected versions:

- Apache DataSketches 2.0.0-incubating through 5.2.0

Description:

Out-of-bounds read and write in the CPC sketch deserialization of Apache DataSketches C++ (repo: datasketches-cpp).

A crafted serialized CPC sketch passed to cpc_sketch::deserialize(), from either a byte buffer or a stream, can cause the decompressor to read past the end of the compressed data, because the read position was only checked after decoding finished. In the hybrid flavor, it can also cause a write outside an internal heap buffer, because decoded row indices were not validated. Several other header fields and decoded values, including lg_k, were also not validated. This can corrupt heap memory, causing a crash and potentially enabling further exploitation.

This issue affects Apache DataSketches C++: from 2.0.0-incubating before 5.3.0. Only applications that deserialize CPC sketches from untrusted sources are affected.

Users are recommended to upgrade to version 5.3.0, which fixes this issue.

Credit:

He Huang (finder)
NexusSan (tool)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-103513

