X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/24/42
Message-ID: <17e63926-7457-b771-565f-481e116ebc28@apache.org>
Date: Fri, 24 Jul 2026 21:43:30 +0000
From: Jens Geyer <jensg@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-55971: Apache Thrift: C++ ZLIB heap buffer overflow (write) in THeaderTransport::untransform() 
Content-Type: text/plain; charset=utf-8

Severity: 

Affected versions:

- Apache Thrift (thrift) before 0.24.0

Description:

Heap-based Buffer Overflow vulnerability in Apache Thrift C++ bindings.

This issue affects Apache Thrift: before 0.24.0.

Users are recommended to upgrade to version 0.24.0, which fixes the issue.

Credit:

Ghaith Abdulreda (finder)

References:

https://thrift.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-55971

