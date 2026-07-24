X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/32
Message-ID: <02bdc4ae-fc8e-3e96-96fd-cc87c6bef881@apache.org>
Date: Fri, 24 Jul 2026 21:41:56 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-41608: Apache Thrift: Unbounded Zlib Decompression in Python THeaderTransport 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Improper Handling of Highly Compressed Data (Data Amplification) vulnerability in Apache Thrift Python bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-41608

