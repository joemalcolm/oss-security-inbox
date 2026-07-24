X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/38
Message-ID: <c0cb2793-db85-4ea8-2b58-2e985451bd33@apache.org>
Date: Fri, 24 Jul 2026 21:42:58 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-49158: Apache Thrift: Ruby THeaderTransport ZLIB Decompression Bomb 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (ruby bindings) before 0.24.0

Description:

Improper Handling of Highly Compressed Data (Data Amplification) vulnerability in Apache Thrift Ruby bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

LTSHFWJT <1719636402@...com> (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-49158

