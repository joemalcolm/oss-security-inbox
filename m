X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/10/5
Message-ID: <0b2a2d8c-1f86-00d0-3230-d36bb8e56a5c@apache.org>
Date: Fri, 09 Oct 2026 22:18:43 +0000
From: Lee Rhodes <leerho@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-103635: Apache DataSketches: datasketches-cpp: Out-of-bounds read in compact Theta sketch deserialization allows denial of service via a crafted sketch 
Content-Type: text/plain; charset=utf-8

Severity: low 

Affected versions:

- Apache DataSketches 3.1.0 through 5.2.0

Description:

Out-of-bounds read in the compact Theta sketch deserialization of Apache DataSketches C++ (repo: datasketches-cpp).

compact_theta_sketch::deserialize() and wrapped_compact_theta_sketch::wrap() read header fields before checking that the input was long enough. For the compressed format, the size check could be defeated by a 32-bit overflow, and two header fields that control decoding were not validated; this also affected deserialization from a stream. A crafted or truncated sketch could cause a read past the end of the input. In the compressed case the over-read can be large, and the bytes read can become part of the deserialized sketch. This can cause a crash (denial of service) and could expose adjacent memory contents.

This issue affects Apache DataSketches C++: from 3.1.0 before 5.3.0. Only applications that deserialize Theta sketches from untrusted sources are affected.

Users are recommended to upgrade to version 5.3.0, which fixes this issue.

Credit:

He Huang (finder)
NexusSan (tool)

References:

https://datasketches.apache.org
https://www.cve.org/CVERecord?id=CVE-2026-103635

